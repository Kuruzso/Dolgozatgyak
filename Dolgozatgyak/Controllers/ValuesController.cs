﻿using Microsoft.AspNetCore.Http;
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






    }
}
