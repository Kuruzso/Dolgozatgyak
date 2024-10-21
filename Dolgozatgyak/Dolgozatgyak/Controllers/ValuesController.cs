using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using Dolgozatgyak.Models;

namespace Dolgozatgyak.Controllers
{
    [Route("Doga")]
    [ApiController]
    public class ValuesController : ControllerBase
    {

        Connect conn = new();
        [HttpGet]

        public List<Doga> Get()
        {
            List<Doga> jegyek = new List<Doga>();

            conn.Connection.Open();

            string sql = "SELECT * FROM `dogak`";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            do
            {
                var result = new Doga
                {
                    Azon = reader.GetGuid(0),
                    Jegy = reader.GetInt32(1),
                    Leiras = reader.GetString(2),
                    Letrehozas_ideje = reader.GetDateTime(3),
                };
                jegyek.Add(result);
            }
            while (reader.Read());

            conn.Connection.Close();

            return jegyek;
        }
        [HttpPost]
        public IActionResult Post([FromBody] Doga jegyek)
        {
            conn.Connection.Open();

            string sql = "INSERT INTO `dogak` (Jegy, Leiras, Letrehozas_ideje) VALUES (@Jegy, @Leiras, NOW());";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            cmd.Parameters.AddWithValue("@Jegy", jegyek.Jegy);
            cmd.Parameters.AddWithValue("@Leiras", jegyek.Leiras);

            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            return Ok("Siker");


        }
        [HttpPut("{Azon}")]
        public IActionResult Put(Guid Azon,[FromBody] Doga jegyek)
        {
            conn.Connection.Open();

            string sql = "UPDATE `dogak` SET Jegy = @Jegy , Leiras = @Leiras WHERE Azon = @Azon;";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            cmd.Parameters.AddWithValue("@Azon", Azon);
            cmd.Parameters.AddWithValue("@Jegy", jegyek.Jegy);
            cmd.Parameters.AddWithValue("@Leiras", jegyek.Leiras);

            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            return Ok("Siker");


        }
        [HttpGet("{Azon}")]
        public IActionResult Get(Guid Azon)
        {
            conn.Connection.Open();

            string sql = "SELECT * FROM `dogak` WHERE Azon = @Azon;";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.Parameters.AddWithValue("@Azon", Azon);

            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            // Adatok kinyerése és objektumba helyezése
            var data = new Doga
                    {
                        Azon = reader.GetGuid("Azon"),
                        Jegy = reader.GetInt32("Jegy"),
                        Leiras = reader.GetString("Leiras"),
                        Letrehozas_ideje = reader.GetDateTime("Letrehozas_ideje")
                    };

                    conn.Connection.Close();
                    return Ok(data);
                
               
            
        }
        [HttpDelete("{Azon}")]
        public IActionResult Delete(Guid Azon)
        {
            conn.Connection.Open();

            string sql = "DELETE FROM `dogak` WHERE Azon = @Azon;";

            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);

            cmd.Parameters.AddWithValue("@Azon", Azon);

            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            return Ok("Siker");


        }


    }
}
