-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 15. 13:24
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `dolgozat`
--
CREATE DATABASE IF NOT EXISTS `dolgozat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `dolgozat`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dogak`
--

CREATE TABLE `dogak` (
  `Azon` varchar(40) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `Jegy` int(11) DEFAULT NULL,
  `Leiras` text COLLATE utf8mb4_hungarian_ci DEFAULT NULL,
  `Letrehozas_ideje` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `dogak`
--

INSERT INTO `dogak` (`Azon`, `Jegy`, `Leiras`, `Letrehozas_ideje`) VALUES
('00f1fba3-e7e3-4a63-859d-337baa5557d8', 4, 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', '2024-09-12'),
('04b51a71-ba12-4fa6-8fee-534359286166', 4, 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', '2024-03-22'),
('0760dc3f-4eb1-450a-b56b-a9469c174aa0', 3, 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum', '2024-06-18'),
('0766a44a-3177-435f-a4f6-db45d3cead95', 1, 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo', '2024-04-29'),
('0d96a9a0-8896-4618-95f6-3b48605ce1ec', 5, 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', '2023-10-26'),
('0e697e0c-e60d-4623-848f-46c9dcc21254', 4, 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', '2024-02-18'),
('0f564ea9-0d9b-48a7-96a5-b86075f55c10', 2, 'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', '2023-11-08'),
('132e45f9-5f65-483b-8e96-a07d4307841f', 4, 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '2024-05-12'),
('1a4e2bd3-0ab5-4ab7-adbb-985d77b47729', 2, 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere', '2024-04-12'),
('1ebe4fd2-a627-4c01-ba87-ee14452cabeb', 5, 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing', '2024-06-03'),
('1f2ebb71-76c6-4f0f-9343-5a888879772f', 1, 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', '2024-01-26'),
('201b101d-756a-4d08-bdb0-8b334d7e10a4', 3, 'mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non', '2024-05-17'),
('2a909cfb-5cbe-4358-a82b-b3c70ff88586', 4, 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis', '2023-10-17'),
('2b62b745-c090-40d6-a4ec-cf8c90e760e3', 5, 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id', '2024-07-11'),
('2eeb0b55-d8e7-44d3-b25a-21d955bdc03e', 1, 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '2024-04-09'),
('3168b182-6015-434c-ba28-659aba9658e0', 1, 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', '2024-03-21'),
('31a132ee-1327-46bb-807b-34e03056100a', 5, 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', '2024-10-09'),
('33cc0158-9564-4680-ad07-eff1f9a77caf', 4, 'duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', '2024-02-27'),
('34069b25-c83d-4bb9-a806-c1b98bae3f4f', 4, 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '2024-08-12'),
('356eaee4-12f5-4f0f-abf4-ee6fa17e546c', 5, 'hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', '2024-01-11'),
('366c1ed0-dcbc-4a24-badf-084746d8bf19', 2, 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', '2024-06-22'),
('38dc87f2-f9b2-4f1a-9176-86befd50da42', 2, 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', '2023-11-24'),
('40d0c80e-ef22-40ab-8b81-74498b4f3ea6', 1, 'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi', '2024-06-11'),
('41308e8f-95b3-48a8-83cb-327769726d1e', 1, 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu', '2024-07-07'),
('41d1731a-a0fd-4b34-b1a3-347f4166a020', 2, 'non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', '2024-08-23'),
('44f95772-0c2c-4c70-ad0f-bbd3d286ef9b', 5, 'fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet', '2024-08-04'),
('44fbfbb4-c1c2-4d81-a7a7-016dc9630d7d', 3, 'sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', '2024-04-14'),
('45fbb2c6-ca61-4d77-b4f8-43f1d3f23034', 2, 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', '2023-10-26'),
('4c265619-0452-4f2d-b830-9c3d68b6411a', 3, 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', '2024-10-02'),
('5083385e-d6b5-40d6-8dd7-279e3071b7db', 2, 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse', '2024-04-15'),
('56693e59-e47a-4c6c-a5e8-6eb56bca3003', 5, 'in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra', '2024-03-16'),
('57134c06-2a37-445c-82f2-bec4c5d2d3b3', 2, 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', '2023-11-19'),
('587f5cd9-2686-4070-afad-62528ae63371', 5, 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea', '2023-11-03'),
('59f8bf4e-c753-4df2-995b-576014174517', 5, 'aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', '2024-07-01'),
('60239ea2-cdb3-46b1-8122-3e8ae665d6ec', 3, 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at', '2024-06-14'),
('62107b23-7e00-4065-a99e-ab10607d3d31', 2, 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', '2024-07-06'),
('632043cb-6ef2-4136-ba1c-44eb37b5c051', 3, 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', '2024-02-18'),
('635b1136-c90c-4390-88e0-c670a26ab80e', 4, 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est', '2024-09-21'),
('660f2552-f120-4ca0-88f5-01f62fb40755', 1, 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', '2023-12-30'),
('667532b6-6d5d-4a9b-8bbc-7cea1729984e', 3, 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', '2024-02-08'),
('6d0b80cf-de48-4670-9d27-a56abe91550a', 4, 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', '2024-05-27'),
('6d61a73b-0a97-4ccd-a446-d01da7bf8a7c', 1, 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', '2024-01-06'),
('74308df0-adc9-4680-ade2-cd4b78c65412', 3, 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', '2023-12-29'),
('787a991b-d34f-4d53-bb20-f81301802e8a', 5, 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', '2024-04-22'),
('798e381d-6b56-4a74-86ae-2087176cbade', 2, 'vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', '2023-11-16'),
('799f7dd2-ea75-4473-9fce-9fa4d5f65926', 4, 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', '2024-06-09'),
('79ef7f25-cf71-4339-b3be-f5e70e1a8287', 5, 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', '2023-12-16'),
('83f8f3eb-24d4-4858-aed7-5463375c35a8', 2, 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', '2024-02-06'),
('849e0427-a4d6-4de8-bee7-456289ad8dcb', 3, 'quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', '2024-01-06'),
('88f22728-3ebf-40cd-8d66-5c3265e33e06', 2, 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', '2024-02-09'),
('89687469-61a8-4118-83df-c30e6de4827e', 2, 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', '2024-03-08'),
('928f06e0-9826-4b6f-b8eb-5289306e5db2', 4, 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', '2023-11-30'),
('936d42c8-be19-4161-8230-494a378790c6', 5, 'rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa', '2023-10-31'),
('947d053f-d495-46b0-acd5-fc93c177cae0', 2, 'in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', '2024-05-17'),
('95a80a61-0a6f-41c7-a379-75bfac01251a', 1, 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum', '2024-03-09'),
('9609c1df-f412-44b5-aa82-8672af96c447', 2, 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit', '2024-01-30'),
('986f960a-3101-4383-b8f5-dbb7502c8521', 5, 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', '2023-12-04'),
('994de7f9-5d60-419e-a879-1cbc8968ebc9', 1, 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', '2023-12-02'),
('9a5bc00a-f6d5-4292-b366-557b366422e7', 5, 'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula', '2024-04-16'),
('9de841a9-be6a-4f3d-bd10-844a510e3696', 5, 'sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', '2023-12-16'),
('a4eaa27c-3d92-4f77-a4d4-0b76e71eebb7', 3, 'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', '2024-01-14'),
('a57f31d4-2634-461e-83ea-df4bcb7185ea', 1, 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas', '2024-08-01'),
('a8822a38-ace3-4c65-bb97-fb739a17fea2', 4, 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', '2023-10-26'),
('ae9d75a8-a149-4373-b6c5-1dcf428371b0', 5, 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', '2024-03-15'),
('af868eae-46c1-41f8-9aa1-e206d6572ea7', 4, 'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl', '2024-01-14'),
('b0b14f34-a1c5-48b3-abed-16d36bfe0ef6', 1, 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', '2023-12-07'),
('b145eb18-a476-44cf-bbc1-a7d2a0011d1e', 1, 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', '2024-06-14'),
('b1bfb667-0d68-4cf4-9a89-2e5310f90ede', 3, 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque', '2024-07-30'),
('b283ac4a-9185-4b2a-ab2e-f427287714f7', 5, 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at', '2024-09-18'),
('b99e14da-95f3-4ebe-a9f6-484543257d84', 3, 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus', '2023-11-14'),
('bd205415-8832-4915-befc-713f3a91349d', 3, 'luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque', '2024-08-25'),
('bdf8d791-986a-4531-8338-216d18a7b1ff', 4, 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim', '2024-03-08'),
('beaf789c-1e19-471f-a753-9c9dff9bff2d', 2, 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut', '2024-03-22'),
('c21dae33-c5cd-454b-a7a1-a96c26cc7467', 4, 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo', '2024-06-15'),
('c2365e2e-23d0-4626-87bc-de5dadf45200', 2, 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in', '2024-10-06'),
('c394eaee-3c40-445a-9588-2577cb433644', 4, 'molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', '2024-03-10'),
('c49aab82-f967-4d86-b042-d4c41e5160e9', 2, 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor', '2024-05-13'),
('ca835522-c6b6-42e3-bb44-70a97491e61b', 5, 'eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '2024-05-18'),
('d0687806-64f5-4f45-9b45-5fc85df81bcc', 4, 'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a', '2024-02-22'),
('d07ce3a2-8148-4ca9-b6c7-a212c8c78333', 4, 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', '2024-06-28'),
('d0976217-bbea-4c54-8736-d9d71343890c', 1, 'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', '2023-11-08'),
('d4cfd6a9-ea77-4150-a056-6764d4280cd0', 4, 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis', '2023-12-01'),
('d62f72c5-7fb3-4e2e-b4f9-92e3ce9301f7', 4, 'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy', '2024-01-11'),
('d66b161e-cbde-4892-81a1-0f275db9c320', 5, 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', '2024-01-07'),
('db136277-1a8f-48d9-a999-6c0c8fc4bff1', 1, 'justo eu massa donec dapibus duis at velit eu est', '2024-09-27'),
('de157c24-a6ca-4ab7-a3fa-f811659bc642', 2, 'in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', '2024-09-21'),
('de35379f-2e8e-4834-9a63-6fcddf5e9687', 2, 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', '2024-07-26'),
('df6dbdcd-44fd-444c-8954-e5ba06c8bb0d', 2, 'rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', '2024-10-05'),
('e0b2b880-de6f-4d20-afa8-284d2e415084', 1, 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', '2024-03-24'),
('e8455a45-d74d-473e-9c56-508b6734cf67', 3, 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', '2024-09-09'),
('e911e308-2a76-45fa-b8be-bf27e281af58', 5, 'faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', '2024-08-19'),
('e959ce9e-f5e7-4ec3-a5a9-2237e4de76e7', 2, 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', '2024-02-29'),
('ed0f0472-3844-4993-83eb-aa47df215ccd', 4, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', '2023-12-31'),
('f38a3823-8cf7-4859-a663-26aa73dbd991', 3, 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', '2024-07-31'),
('f41c804f-7419-4a4e-8682-2d21823feac3', 1, 'vel sem sed sagittis nam congue risus semper porta volutpat', '2024-09-25'),
('f7e56aa8-295e-4d34-8466-f94cabf25777', 3, 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a', '2024-02-01'),
('f8024b97-6fdd-470e-9a6e-9909e45ba05f', 2, 'eget semper rutrum nulla nunc purus phasellus in felis donec semper', '2024-09-14'),
('fa66413a-8e95-4253-9444-95c037154747', 3, 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', '2023-10-27'),
('fad517f4-88c7-4009-b27a-e38b5eaf58ab', 1, 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', '2024-06-21'),
('ffb8070a-b483-44c1-b0fd-0b789fbca678', 1, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget', '2024-03-12');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `dogak`
--
ALTER TABLE `dogak`
  ADD PRIMARY KEY (`Azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
