-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 08. 12:13
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
-- Adatbázis: `users`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `newuser`
--

CREATE TABLE `newuser` (
  `id` varchar(40) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `License` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `newuser`
--

INSERT INTO `newuser` (`id`, `Name`, `Age`, `License`) VALUES
('f6a0b4b2-d6d3-4fc7-81ab-ffef0937572f', 'Emlyn Burnage', 89, '1'),
('89e21888-8876-40e1-bc71-b02ccc95ff4f', 'Britteny Fearnley', 51, '0'),
('b25db65e-e0e7-41c5-bfa3-37c4832dfd03', 'Margalit Prestidge', 59, '1'),
('8a980ad4-a30f-4a3d-90a5-9192e45769ad', 'Briny Wasselin', 54, '0'),
('6b9c7a08-ff67-49a3-a5b6-9d75d406a23c', 'Cynthea Doldon', 35, '0'),
('54a90486-6085-4426-8665-6325b09c1fca', 'Cloris Dawnay', 97, '1'),
('e4a3ed3d-be84-47b5-ad85-3c2c150ddffb', 'Garek Doumerque', 4, '1'),
('4916e6aa-e024-4e04-a749-53251a20daec', 'Natty McSperron', 36, '1'),
('695c266c-dedc-4061-a4cd-c0d8defc777a', 'Janeen Gaynor', 97, '1'),
('04191285-31f5-47e8-8aaa-5d735cf8fa19', 'Milly Coddrington', 98, '1'),
('79801199-b8b2-4892-afe3-13e9d8b859d4', 'Morty Baskerville', 20, '1'),
('1e4832f4-3d6a-4413-9918-6507343e0e38', 'Winona Marquot', 60, '0'),
('b36290d9-08f9-46a1-acf8-15a728ef2a53', 'Cy Andrzejewski', 6, '0'),
('031aecb5-63d3-4fe8-b2f4-4970379200c8', 'Sonny Soares', 40, '1'),
('599c4a7a-1495-4eca-8994-2f92cde1b18d', 'Mordecai Maling', 35, '0'),
('3e18e6f0-f726-41e4-a617-10c9816eb6aa', 'Starlene Deeble', 27, '0'),
('736eaf8c-4c67-4d82-9c1d-7eaf48edd8db', 'Mitchael Redgrove', 98, '1'),
('218b0e78-9dd2-4d2c-b000-c91911361fc9', 'Dorey Fesby', 47, '0'),
('2e6c8dff-f20c-4239-9031-f89960ca37ae', 'Damien Dillway', 7, '1'),
('e8aab069-6c4d-4bc5-a045-7e989d509ab0', 'Carrol Wanklyn', 59, '0'),
('95a46def-b9ac-4b07-90ad-6677ccdde536', 'Grace Shirlaw', 78, '0'),
('02c979f0-5373-49d3-8f2f-17d264fa0620', 'Maddalena Bottomer', 14, '0'),
('9f7009f8-5954-4ac7-974a-c4e48b79ed7c', 'Grady Nassy', 88, '1'),
('cbf1b513-c8c1-4820-90ab-64c7fc5b43f1', 'Deedee Clemanceau', 58, '1'),
('cffe7260-fbaa-4f48-855d-0207c64d07ad', 'Horace Hearson', 78, '1'),
('1b8298aa-70e1-4730-84ef-8062e188d1c7', 'Levey Dekeyser', 47, '0'),
('aef061c2-0705-440f-8c37-ad4749b613a1', 'Garry Allport', 81, '1'),
('02409fe3-d7c7-4b57-b223-293abbc7cc76', 'Katleen Dytham', 97, '0'),
('47f9fe36-5f7c-4516-95bd-b1e6c11176db', 'Goddard Bass', 20, '0'),
('ffbe08b8-bea8-4b17-b8ef-f016dbdc3222', 'Laverna Langman', 18, '1'),
('0c381e66-d719-45ac-ba14-0eeceddd4e28', 'Amalee Hillburn', 70, '0'),
('62c80d87-f73f-4bbb-b66a-f3a42825a7d8', 'Lane Barti', 60, '1'),
('8c6e9b38-8cda-42da-8024-b4ed6af4a6ea', 'Milt Dundendale', 3, '1'),
('5e9d2bcc-49b3-4e20-9c81-6e624d3b04fc', 'Charles Leeming', 60, '1'),
('18237ed9-84ff-4416-ad7f-308777c2c806', 'Trudi Ronchka', 98, '0'),
('1d18a2a5-5053-46e7-975f-26c892b59231', 'Freeman Aikett', 70, '0'),
('ede533c9-d062-4a9e-8139-c387d4ea6cc7', 'Zaria Knibley', 3, '0'),
('4db08e2b-2a4a-44d2-aa1c-3fd5ed826cb7', 'Carlota Deme', 25, '1'),
('b4408921-ea8a-4d2c-acc9-159f420e2769', 'Farrell Gotts', 7, '0'),
('e7c3edfc-7c47-497d-b315-299039e53a27', 'Norman Gorrie', 96, '1'),
('0231f0d8-46bb-4ba5-bd22-a3651603df7b', 'Britt Cavil', 54, '1'),
('b4d241a2-e314-43c7-ad9d-2b19a8d73c53', 'Shane Pankettman', 21, '0'),
('71d56752-a6ab-4b78-9047-cd9b8742c5aa', 'Daryle Hurford', 58, '1'),
('ec956749-4785-4992-8a1f-4e5390a6ed9c', 'Michaeline Trowler', 77, '0'),
('7811e4ba-f5ea-4ac5-8444-ba2c6636910a', 'Algernon Hannen', 56, '0'),
('7ff06aab-6d3b-49fb-98f1-6a4090f60a0a', 'Cornell Heggison', 70, '1'),
('4fef4088-c01f-49d6-a748-96924d405bf5', 'Barth Manueli', 42, '1'),
('c38242a7-3964-490d-b8c3-4be2535a5631', 'Mirabella Busfield', 28, '1'),
('7b030ce0-0e85-4d81-a4f3-303e717170a2', 'Natividad Eaves', 39, '0'),
('a21e17aa-73cd-4ae5-941a-8d9ced2d429f', 'Jonell Thumann', 50, '1'),
('4ec0d805-c61d-45c7-a636-510ee79989fc', 'Cyndia Sprowell', 6, '0'),
('d24b167e-576f-46fd-acc3-1920632739b2', 'Saba Tustin', 60, '0'),
('3ef72da1-0c8c-4861-8da3-48e3862d6244', 'Paton Kinavan', 34, '1'),
('3c8a3753-d961-49da-a4da-23e048e1dca3', 'Rose Petruskevich', 20, '0'),
('ad5364b9-c1ba-4cc0-bbc7-55dd94d69963', 'Dalt Steenson', 98, '0'),
('b24d3a5f-352a-41fe-b7ca-3a84ce2cd69a', 'Farlay Saberton', 75, '1'),
('d3232c0d-b3a4-466d-a4c8-e66a12f00ca9', 'Dorree Itzakovitz', 17, '0'),
('3944572c-a733-487d-8c1a-f9f2b19cb4ea', 'Mommy Cona', 59, '1'),
('3b9d9363-fc2d-4d3e-ab6c-2fe32ab85452', 'Ches Anthoine', 49, '0'),
('93cf1d2b-6478-4916-943c-c2442d061234', 'Marina Prozescky', 66, '0'),
('586b2458-dec5-4bff-98e6-db9c5605dbec', 'Erica Walton', 60, '0'),
('a5c452e0-b5e5-4b47-8945-e2d9819d53e7', 'Lief Pakes', 6, '1'),
('e45f922a-e520-4a63-8402-91a8f38012c8', 'Krishna Cullimore', 10, '1'),
('bb91d454-207c-4cac-9c0c-efd1f097ca14', 'Yale Blumsom', 72, '1'),
('90a7596e-fe3a-47a3-a6cf-6d16422b6c20', 'Gianna Edgeon', 98, '1'),
('756ec4aa-39ec-4e1f-9e10-74192e899bd1', 'Tobe Anscott', 23, '1'),
('74940d2a-0610-4769-bab5-419767f175c0', 'Aloysius Cleere', 14, '1'),
('773e03e1-fd69-462e-b4db-e7200ffef8d8', 'Antone Deverock', 17, '1'),
('3ea04eea-2dc2-4c83-9246-24b6e35a6f4c', 'Stefano Matuszinski', 82, '1'),
('e9eadb0e-241c-4139-b837-aa1d992b50a7', 'Pincus Benech', 60, '0'),
('a940252e-6921-4006-a52e-bae1c59a1126', 'Antin Hambright', 19, '0'),
('6ce17d74-9d45-4a2a-9f9f-10e55337de03', 'Florenza Covill', 86, '1'),
('bdb13696-e404-4c5a-9a08-74ec51bc96a9', 'Clareta Micklewicz', 86, '0'),
('bdfb251b-273f-4fca-b5dc-5982d2509b55', 'Solly Marshall', 42, '0'),
('37a15fd9-e7e4-4e04-893b-2a25081e72d5', 'Haydon Kilpatrick', 18, '1'),
('c6ebacd0-705b-4252-aba6-1ced05f82f84', 'Trula Dri', 61, '0'),
('f46802dc-c1e0-40d2-add0-7c512cabe532', 'Vidovic Perrone', 20, '1'),
('6e0cedd5-c94c-4e63-877a-f24e0df1ec57', 'Robinetta McIlory', 53, '1'),
('3b47f873-8de0-43d7-b7c9-6a55b02b31a6', 'Charlton Mansbridge', 50, '1'),
('81c8eff9-0041-409e-96e5-b6925be4a299', 'Burnard Bungey', 73, '0'),
('cd2d6547-49ed-45f3-ab89-200cf747a4a1', 'Karlik Woodington', 11, '0'),
('6eee342e-7168-431a-956b-f2662f71f696', 'Cayla Sabbatier', 64, '1'),
('cecdd44a-ccf8-4b82-b99c-fa20e45daf2c', 'Tarrance Josefer', 72, '0'),
('3653f166-ea05-4dd4-a6de-3d653a29a71b', 'Sargent Longstaff', 65, '0'),
('16667858-0510-4f58-8bc2-eca60366261a', 'Wait Birk', 36, '0'),
('b5c300a5-5562-4d12-879f-90a65a84ad7d', 'Ferrell Simonutti', 13, '0'),
('a59730af-4016-46c5-bc52-767f1037d3c9', 'Jase Inns', 18, '0'),
('46f274ef-44d8-40c1-9a2d-7724df215629', 'Pammie Brunt', 54, '1'),
('204cca25-f2d6-467d-adc9-f3150e4fbb29', 'Kath Vernau', 26, '1'),
('5075a8cf-8709-4f98-84e4-b4bfd1f6ed8b', 'Cathryn Matusiak', 11, '0'),
('0917c5cd-e555-42dd-895b-b3485ddbba29', 'Juliette Zmitrovich', 59, '1'),
('116056df-c0c9-4a01-a164-fb9086c3efbb', 'Joseph Nesby', 96, '1'),
('6b381a3a-2269-4bf1-be22-03e981768d84', 'Mose Ritch', 99, '0'),
('a7785ecd-e765-467d-9f15-32963a51ad9e', 'Giulia Tarpey', 50, '1'),
('6a602253-3081-4fa9-9b62-59909fd5ce06', 'Opaline MacAllen', 93, '0'),
('638e3b45-1ef0-48e1-a873-a12d2d98ca9b', 'Bjorn Jewers', 99, '0'),
('13b4046d-3360-44d5-a75c-684ebcdca20e', 'Editha Habbert', 58, '1'),
('e4b4d54e-4bed-49a7-bccd-3b85c0d47f93', 'Arabelle Treven', 82, '0'),
('ab706982-d5dd-400a-bb62-322015b60e03', 'Goraud Cottell', 95, '1'),
('c2a8e1ad-9e91-471e-8278-ea31403dbd84', 'Murdock Fleury', 12, '0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
