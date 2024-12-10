-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 10 déc. 2024 à 11:10
-- Version du serveur : 10.6.19-MariaDB
-- Version de PHP : 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nettoyagecasabla_hvnet_nettoyage`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nomprenom` text DEFAULT NULL,
  `ville` text DEFAULT NULL,
  `Tel` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `typlocal` text DEFAULT NULL,
  `sujet` text DEFAULT NULL,
  `messag` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `nomprenom`, `ville`, `Tel`, `email`, `typlocal`, `sujet`, `messag`) VALUES
(466, 'Sana', '3', '0506995548', 'sana@gmail.com', '2', 'Showroom', 'Nettoyage de bureaux 2012'),
(467, 'bako', '1', '0772124585', 'bako@gmail.com', '2', 'Showroom', 'tes2222'),
(468, 'Charlesblomy', '21', '84361746385', 'evalidatort.est@gmail.com', '2', 'usine', 'Hola, queria saber tu precio..'),
(469, 'Tuo ', '4', '0578952478', 'test2054@gmail.com', '2', 'Supermarche', 'Nettoyage bureaux '),
(470, 'Philipdiz', '22', '86149645413', 'mordvinovmilano+qsxp@mail.ru', '2', 'Supermarche', 'nettoyage-casablanca-maroc.net ofeiifeodwpdeofijesdwsfeiiejokdwpdoefigjfidoksfihigjskodwsfiheghifegergsdfsregsfggrgr'),
(471, 'TEST', '1', '0772124585', 'winbest.nettoyage.group@gmail.com', '1', 'Appartement', 'TEST VENDREDI'),
(472, 'WINBEST  Nettoyage', '1', '0772124585', 'winbest.nettoyage.group@gmail.com', '1', 'Villa', 'Nous travaillons pour le compte des particuliers et professionnelle, mais aussi des industries. Notre societe de nettoyage propose le nettoyage industriel. GÃ©nÃ©ralement, aprÃ¨s la fin des travaux sur un chantier, il reste des dÃ©bris de matÃ©riaux quâ€™il faut dÃ©barrasser avant de rendre les ouvrages.\r\n\r\n'),
(473, 'mohamed.test', '1', '0772124585', 'winbest.nettoyage.group@gmail.com', '1', 'Villa', 'test mohamed'),
(474, 'Mohamed test contact', '1', '0772124585', 'Mohamed-contact@gmail.com', '1', 'Villa', 'Mohamed test contact Devis'),
(475, 'MOHAMD TEST Demandez un Devis', '1', '0772124585', 'mohamed.test.nettoyage.group@gmail.com', '1', 'Villa', 'MOHAMD TEST Demandez un Devis'),
(476, 'test final', '1', '0772124585', 'test.nettoyage.vendredi@gmail.com', '1', 'Villa', 'test final'),
(477, 'WINBEST  Nettoyage', '17', '0772124585', 'winbest.nettoyage.group@gmail.com', '2', 'Magasin', 'test'),
(478, 'El ouazzani souad', '1', '0661966985', 'souad.elouazzani00@gmail.com', '2', 'Supermarche', 'Besoin de menage et nettoyage des vitres'),
(479, 'WilliamFrupt', '18', '86624472558', 'zelatcol@gmail.com', '2', 'Hi, i am write about your   price for reseller', 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(480, 'nym1595090krya', '13', '89173371359', 'lyuftung@cigarettemail.ml', '2', 'usine', 'mes1595090ngkyt ba0c1Mc eWYz gdVKEz3'),
(481, 'JeffreyFrupt', '16', '87822293483', 'zelatcol@gmail.com', '2', 'Hi,   writing about   the price', 'Sveiki, es gribÄ“ju zinÄt savu cenu.'),
(482, 'GregoryFrupt', '1', '85995438991', 'zelatcol@gmail.com', '2', 'usine', 'Ndewo, achá»rá» m á»‹mara á»ná»¥ahá»‹a gá»‹.'),
(483, 'BruceFrupt', '17', '84174291369', 'zelatcol@gmail.com', '2', 'Supermarche', 'Kaixo, zure prezioa jakin nahi nuen.'),
(484, 'JordanFrupt', '12', '84872198829', 'zelatcol@gmail.com', '2', 'Showroom', 'Hi, áƒ›áƒ˜áƒœáƒ“áƒáƒ“áƒ áƒ•áƒ˜áƒªáƒáƒ“áƒ” áƒ—áƒ¥áƒ•áƒ”áƒœáƒ˜ áƒ¤áƒáƒ¡áƒ˜.'),
(485, 'GregoryFrupt', '12', '8836444737', 'zelatcol@gmail.com', '2', 'Supermarche', 'Hallo, ek wou jou prys ken.'),
(486, 'KyleFrupt', '22', '8777532422', 'zelatcol@gmail.com', '2', 'Supermarche', 'Hi, kam dashur tÃ« di Ã§mimin tuaj'),
(487, 'WillieFrupt', '2', '8737429252', 'zelatcol@gmail.com', '2', 'Hello  i am wrote about     prices', 'Sveiki, aÅ¡ norÄ—jau suÅ¾inoti jÅ«sÅ³ kainÄ….'),
(488, 'Zakia Adnani kadmiri', '1', '0687032305', 'zakiaadnani54@gmail.com', '1', 'Villa', 'Est-ce que je peux savoir le prix des prestations '),
(489, 'TAMSAMANI', '14', '0691906688', 'tamsamani.yousra@gmail.com', '1', 'Appartement', 'Cristallisation et ponÃ§age du marbre\r\nNettoyage de salle de bain et carrelage \r\nNettoyage de parquet et cristallisation\r\n'),
(490, 'Larhrissi Fatima Ezzahrae ', '14', '0651973360', 'fatimaez-zahrae.l@hotmail.fr', '1', 'Appartement', 'Je souhaite faire un mÃ©nage aprÃ¨s une rÃ©novation de mon appartement de 97m2 situÃ©e Ã  mohammedia. Ã‡a va me coÃ»ter combien svp ? '),
(491, 'Duaneoxymn', '19', '8169734193', 'nsp1psn@gmail.com', '2', 'Showroom', 'Hello \r\nI need to'),
(492, 'RobertFrupt', '17', '8732518342', 'alfredegov@gmail.com', '2', 'Showroom', 'Aloha, makemake wau eÊ»ike i kÄu kumukÅ«Ê»ai.'),
(493, 'RobertFrupt', '22', '8597264482', 'alfredegov@gmail.com', '2', 'usine', 'Kaixo, zure prezioa jakin nahi nuen.'),
(494, 'RobertFrupt', '7', '8475791211', 'alfredegov@gmail.com', '2', 'usine', 'Ciao, volevo sapere il tuo prezzo.'),
(495, 'MarcusVoift', '17', '8113654157', 'zuyev-vadik@bk.ru', '2', 'Ð ÐµÐ¼Ð¾Ð½Ñ‚ Ð“Ð°Ð·Ð¾Ð½Ð¾ÐºÐ¾ÑÐ¸Ð»ÐºÐ¸ Matrix\r\n', '\r\n\r\n\r\nÐ—Ð°Ð¿Ñ‡Ð°ÑÑ‚Ð¸ ÑÑ‚Ð¸Ñ€Ð°Ð»ÑŒÐ½Ñ‹Ñ… Ð¼Ð°ÑˆÐ¸Ð½ ÐºÐ¸Ñ‚Ð°Ð¹ÑÐºÐ¸Ñ… Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´Ð¸Ñ‚ÐµÐ»ÐµÐ¹ Ð¸Ð· Ð·Ð° Ð½Ð¸Ð·ÐºÐ¾Ð³Ð¾ ÐºÐ°Ñ‡ÐµÑÑ‚Ð²Ð° Ð² Ð½Ð°Ð»Ð¸Ñ‡Ð¸Ð¸ Ð½Ðµ Ð´ÐµÑ€Ð¶Ð¸Ð¼, Ð¸Ñ… Ð¿Ñ€Ð¾Ð´Ð°Ð¶ÐµÐ¹ Ð¸ Ð¿Ð¾ÑÑ‚Ð°Ð²ÐºÐ¾Ð¹ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Ð½Ðµ Ð·Ð°Ð½Ð¸Ð¼Ð°ÐµÑ‚ÑÑ, Ð¿Ð¾ÑÑ‚Ð¾Ð¼Ñƒ ÐºÑƒÐ¿Ð¸Ñ‚ÑŒ Ñ‰ÐµÑ‚ÐºÐ¸ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾ Ð´Ð²Ð¸Ð³Ð°Ñ‚ÐµÐ»Ñ Ð·Ð° 300 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ð¸Ð»Ð¸ ÑÐ»Ð¸Ð²Ð½Ð¾Ð¹ Ð½Ð°ÑÐ¾Ñ (Ð¿Ð¾Ð¼Ð¿Ñƒ) Ð·Ð° 450 Ñ€ÑƒÐ±Ð»ÐµÐ¹ Ñƒ Ð½Ð°Ñ Ð½ÐµÐ»ÑŒÐ·Ñ! \r\n\r\n\r\n'),
(496, 'MarcusVoift', '3', '8683312843', 'zuyev-vadik@bk.ru', '2', 'usine', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(497, 'Benjelloun omar ', '1', '0661125200', 'touimibenjelloun@gmail.com', '1', 'Appartement', 'Devis nettoyage fin chantier appartement 107 m Ã  avenue standhal. Merci\r\n'),
(498, 'ShawnTew', '7', '8414899545', 'panova.elena.1992.23.11@bk.ru', '2', 'usine', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(499, 'ShawnTew', '7', '8118514353', 'panova.elena.1992.23.11@bk.ru', '2', 'Supermarche', '\r\n\r\n\r\n\r\n\r\nÐ¡Ð¸ÑÑ‚ÐµÐ¼Ð° Ð¼ÐµÐ½ÐµÐ´Ð¶Ð¼ÐµÐ½Ñ‚Ð° ÐºÐ°Ñ‡ÐµÑÑ‚Ð²Ð° ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸   ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð° Ð¿Ð¾ ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚Ñƒ Ð“ÐžÐ¡Ð¢ Ð  Ð˜Ð¡Ðž 9001:2011 Ð² Ñ‡Ð°ÑÑ‚Ð¸ Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ Ð¸ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²Ð°   ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð°Ð³Ñ€ÐµÐ²Ð°Ñ‚ÐµÐ»ÐµÐ¹   Ð¸ Ð¸Ð·Ð´ÐµÐ»Ð¸Ð¹ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð¼ÐµÑ‚Ñ€Ð¸Ð¸ \r\n'),
(500, 'RobertFrupt', '21', '8111719896', 'alfredegov@gmail.com', '2', 'Showroom', 'Szia, meg akartam tudni az Ã¡rÃ¡t.'),
(501, 'PhilFrupt', '11', '8594682696', 'draikkimr976@gmail.com', '2', 'usine', 'Hai, saya ingin tahu harga Anda.'),
(502, 'Tantane', '1', '0645266620', 'tantane.ghita@gmail.com', '2', 'Immeuble', 'Cristallisation marbre'),
(503, 'RobertFrupt', '13', '8258359841', 'alfredegov@gmail.com', '2', 'Showroom', 'ÐŸÑ€Ñ‹Ð²Ñ–Ñ‚Ð°Ð½Ð½Ðµ, Ñ Ñ…Ð°Ñ†ÐµÑž Ð´Ð°Ð²ÐµÐ´Ð°Ñ†Ñ†Ð° Ð’Ð°Ñˆ Ð¿Ñ€Ð°Ð¹Ñ.'),
(504, 'NABIL SEBTI', '1', '0600039131', 'nabil.sebti@gmail.com', '2', 'Bureau ', 'Bureau de 100m2'),
(505, 'RobertFrupt', '16', '8449385568', 'alfredegov@gmail.com', '2', 'Showroom', 'Ð—Ð´Ñ€Ð°Ð²ÐµÐ¹Ñ‚Ðµ, Ð¸ÑÐºÐ°Ñ… Ð´Ð° Ð·Ð½Ð°Ð¼ Ñ†ÐµÐ½Ð°Ñ‚Ð° Ð²Ð¸.'),
(506, 'PhilFrupt', '1', '8267686671', 'alvinbbm41@gmail.com', '2', 'Hi  i am writing about your   prices', 'Salam, qiymÉ™tinizi bilmÉ™k istÉ™dim.'),
(507, 'RobertFrupt', '9', '8714123393', 'alfredegov@gmail.com', '2', 'usine', 'Hi, kam dashur tÃ« di Ã§mimin tuaj'),
(508, 'KARIMA ACHOUBI', '1', '0666275339', 'karimaachoubi.24@gmail.com', '2', 'bureaux', 'Traitement et nettoyage de la moquette'),
(509, 'Walterrot', '1', '8514798373', 'yasen.krasen.13+75678@mail.ru', '2', 'Showroom', 'Nguheidjiwfefhei ijiwdwjurFEJDKWIJFEIF Ð°Ð¾ÑƒÑˆÐ²Ñ†ÑˆÑƒÑ€Ð³Ð°Ñ€ÑƒÑˆ Ð¨ÐžÐ Ð“ÐŸÐ“ÐžÐ¨Ð Ð“Ð ÐŸÐ“ÐžÐ“Ð Ð“ iryuieoieifegjejj bvncehfedjiehfu nettoyage-casablanca-maroc.net'),
(510, 'khaoula', '1', '0608823420', 'elghazikhawla8@gmail.com', '2', 'cabinet mÃ©dicale', 'prestation de nettoyage CHaque jour '),
(511, 'Petersuh', '14', '8573415447', 'shura.kolesnikov.2003@bk.ru', '2', 'ÐÐ½Ð´Ñ€Ð¾Ð»Ð¾Ð³Ð¸Ñ\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(512, 'ShawnTew', '7', '8446389453', 'panova.elena.1992.23.11@bk.ru', '2', 'usine', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(513, 'PhilFrupt', '15', '8881798137', 'septon36giannixi@gmail.com', '2', 'Showroom', 'Salut, ech wollt Ã„re PrÃ¤is wÃ«ssen.'),
(514, 'MarcusVoift', '11', '8769239479', 'zuyev-vadik@bk.ru', '2', 'usine', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(515, 'RobertFrupt', '14', '8986349362', 'alfredegov@gmail.com', '2', 'Hallo, i am wrote about     price for reseller', 'Ð—Ð´Ñ€Ð°Ð²ÐµÐ¹Ñ‚Ðµ, Ð¸ÑÐºÐ°Ñ… Ð´Ð° Ð·Ð½Ð°Ð¼ Ñ†ÐµÐ½Ð°Ñ‚Ð° Ð²Ð¸.'),
(516, 'MarcusVoift', '7', '8228971638', 'zuyev-vadik@bk.ru', '2', 'Showroom', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(517, 'PhilFrupt', '1', '8214147354', 'septon36giannixi@gmail.com', '2', 'Showroom', 'Aloha, makemake wau eÊ»ike i kÄu kumukÅ«Ê»ai.'),
(518, 'MichaelFrure', '3', '8821299479', 'daucarthank1988@mail.ru', '2', 'Showroom', 'Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ°Ð»ÑŒÐ½Ð°Ñ Ð´ÐµÑ‚ÑÐºÐ°Ñ (Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ ÐºÐ°Ðº Ð´Ð»Ñ Ð¼Ð°Ð»ÑŒÑ‡Ð¸ÐºÐ° Ñ‚Ð°Ðº Ð¸ Ð´Ð»Ñ Ð´ÐµÐ²Ð¾Ñ‡ÐºÐ¸) \r\nÐ£Ð½Ð¸Ð²ÐµÑ€ÑÐ°Ð»ÑŒÐ½Ð°Ñ Ð´ÐµÑ‚ÑÐºÐ°Ñ (Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ ÐºÐ°Ðº Ð´Ð»Ñ Ð¼Ð°Ð»ÑŒÑ‡Ð¸ÐºÐ° Ñ‚Ð°Ðº Ð¸ Ð´Ð»Ñ Ð´ÐµÐ²Ð¾Ñ‡ÐºÐ¸) \r\nÐ£Ð½Ð¸Ð²ÐµÑ€ÑÐ°Ð»ÑŒÐ½Ð°Ñ Ð´ÐµÑ‚ÑÐºÐ°Ñ (Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ ÐºÐ°Ðº Ð´Ð»Ñ Ð¼Ð°Ð»ÑŒÑ‡Ð¸ÐºÐ° Ñ‚Ð°Ðº Ð¸ Ð´Ð»Ñ Ð´ÐµÐ²Ð¾Ñ‡ÐºÐ¸) \r\nÐ£Ð½Ð¸Ð²ÐµÑ€ÑÐ°Ð»ÑŒÐ½Ð°Ñ Ð´ÐµÑ‚ÑÐºÐ°Ñ (Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ ÐºÐ°Ðº Ð´Ð»Ñ Ð¼Ð°Ð»ÑŒÑ‡Ð¸ÐºÐ° Ñ‚Ð°Ðº Ð¸ Ð´Ð»Ñ Ð´ÐµÐ²Ð¾Ñ‡ÐºÐ¸) \r\nÐ£Ð½Ð¸Ð²ÐµÑ€ÑÐ°Ð»ÑŒÐ½Ð°Ñ Ð´ÐµÑ‚ÑÐºÐ°Ñ (Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ ÐºÐ°Ðº Ð´Ð»Ñ Ð¼Ð°Ð»ÑŒÑ‡Ð¸ÐºÐ° Ñ‚Ð°Ðº Ð¸ Ð´Ð»Ñ Ð´ÐµÐ²Ð¾Ñ‡ÐºÐ¸) \r\nÐ´Ð¾ 100 ÐºÐ³ (113) Ð´Ð¾ 110 ÐºÐ³ (2) Ð´Ð¾ 120 ÐºÐ³ (4) Ð´Ð¾ 130 ÐºÐ³ (1) Ð´Ð¾ 150 ÐºÐ³ (129) Ð´Ð¾ 30 ÐºÐ³ (1) Ð´Ð¾ 35 ÐºÐ³ (2) Ð´Ð¾ 40 ÐºÐ³ (3) Ð´Ð¾ 50 ÐºÐ³ (13) Ð´Ð¾ 55 ÐºÐ³ (2) Ð´Ð¾ 60 ÐºÐ³ (12) Ð´Ð¾ 70 ÐºÐ³ (4) Ð´Ð¾ 80 ÐºÐ³ (51) Ð´Ð¾ 85 ÐºÐ³ (2) Ð´Ð¾ 90 ÐºÐ³ (13) \r\n'),
(519, 'MarcusVoift', '18', '8712295212', 'zuyev-vadik@bk.ru', '2', 'Mtd T205 Ð—Ð°Ð¿Ñ‡Ð°ÑÑ‚Ð¸ Ð¨ÐµÑÑ‚ÐµÑ€Ð½Ñ Ð ÐµÐ´ÑƒÐºÑ‚Ð¾Ñ€Ð°\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(520, 'MarcusVoift', '11', '8226188746', 'zuyev-vadik@bk.ru', '2', 'Supermarche', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(521, 'RobertFrupt', '12', '8444496689', 'lucido.leinteract@gmail.com', '2', 'Hi, i wrote about   the price for reseller', 'Salam, qiymÉ™tinizi bilmÉ™k istÉ™dim.'),
(522, 'RobertFrupt', '5', '8584267742', 'lucido.leinteract@gmail.com', '2', 'Hallo,   writing about your the prices', 'Hej, jeg Ã¸nskede at kende din pris.'),
(523, 'PhilFrupt', '19', '8477222311', 'septon36giannixi@gmail.com', '2', 'Hello  i am write about     price', 'Hi, áƒ›áƒ˜áƒœáƒ“áƒáƒ“áƒ áƒ•áƒ˜áƒªáƒáƒ“áƒ” áƒ—áƒ¥áƒ•áƒ”áƒœáƒ˜ áƒ¤áƒáƒ¡áƒ˜.'),
(524, 'RobertFrupt', '1', '8838593984', 'lucido.leinteract@gmail.com', '2', 'Supermarche', 'Hi, kam dashur tÃ« di Ã§mimin tuaj'),
(525, 'Brandonskino', '3', '8855159137', 'lenya-ufimtsev@mail.ru', '2', 'Ð”Ð¸ÑÐºÐ¸ ÐÐ° Ð“Ñ€ÑƒÐ·Ð¾Ð²Ð¸ÐºÐ¸\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n'),
(526, 'Abdelhak Samih', '1', '0637620743', 'Samihabbe@hotmail.com', '1', 'Appartement', 'Bonjour,\r\nEst ce que vous aver votre service de menage Ã  Dar Bouazza pour un appartement Airbnb de 2 chambre et salon plus balcon?\r\n\r\nMerci,\r\n\r\nCordialement \r\nAbdelhak Samih');

-- --------------------------------------------------------

--
-- Structure de la table `devis`
--

CREATE TABLE `devis` (
  `id` int(11) NOT NULL,
  `nomprenom` text DEFAULT NULL,
  `ville` text DEFAULT NULL,
  `tel` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `ProOrPar` text DEFAULT NULL,
  `sujet` text DEFAULT NULL,
  `messag` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `devis`
--

INSERT INTO `devis` (`id`, `nomprenom`, `ville`, `tel`, `email`, `ProOrPar`, `sujet`, `messag`) VALUES
(44, 'Karim', '3', '0589221462', 'tes@gmail.com', '1', 'Maison', 'NETTOYAGE BUREAUX'),
(45, 'WINBEST  Nettoyage', '1', '0788270861', 'winbest.nettoyage.group@gmail.com', '2', 'usine', 'devis2222222222222'),
(46, 'sana', '8', '0587952144', 'test@gmail.com','2', 'Magasin', 'Nettoyage Magasin');

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id` int(11) NOT NULL,
  `libelle` text DEFAULT NULL,
  `typ` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sujet`
--

INSERT INTO `sujet` (`id`, `libelle`, `typ`) VALUES
(1, 'Studio', 'Particulier'),
(2, 'Appartement', 'Particulier'),
(3, 'Maison', 'Particulier'),
(4, 'Villa', 'Particulier'),
(5, 'Autre', 'Particulier'),
(6, 'Magasin', 'Professionnel'),
(7, 'Showroom', 'Professionnel'),
(8, 'Supermarche', 'Professionnel'),
(9, 'usine', 'Professionnel'),
(10, 'Autre', 'Professionnel');

-- --------------------------------------------------------

--
-- Structure de la table `typelocal`
--

CREATE TABLE `typelocal` (
  `id` int(11) NOT NULL,
  `LibtypeLocal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typelocal`
--

INSERT INTO `typelocal` (`id`, `LibtypeLocal`) VALUES
(1, 'Particulier'),
(2, 'Professionnel');

-- --------------------------------------------------------

--
-- Structure de la table `typnet`
--

CREATE TABLE `typnet` (
  `id` int(11) NOT NULL,
  `libtypNet` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typnet`
--

INSERT INTO `typnet` (`id`, `libtypNet`) VALUES
(1, 'Nettoyage Femme de ménage'),
(2, 'Nettoyage Bureaux'),
(3, 'Nettoyage fin de chantier'),
(4, 'Nettoyage moquette'),
(5, 'Nettoyage vitres'),
(6, 'Autre');

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `libVille` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `libVille`) VALUES
(1, 'Casablanca'),
(2, 'Fes'),
(3, 'Tanger'),
(4, 'Marrakech'),
(5, 'Sale'),
(6, 'Meknes'),
(7, 'Oujda'),
(8, 'Rabat'),
(9, 'Kenitra'),
(10, 'Agadir'),
(11, 'Tetouan'),
(12, 'Temara'),
(13, 'Safi'),
(14, 'Mohammedia'),
(15, 'Khouribga'),
(16, 'El Jadida'),
(17, 'Beni Mellal'),
(18, 'Nador'),
(19, 'Taza'),
(20, 'Khemisset'),
(21, 'laayoune'),
(22, 'Berkane');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `devis`
--
ALTER TABLE `devis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typelocal`
--
ALTER TABLE `typelocal`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `typnet`
--
ALTER TABLE `typnet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;

--
-- AUTO_INCREMENT pour la table `devis`
--
ALTER TABLE `devis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `typelocal`
--
ALTER TABLE `typelocal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `typnet`
--
ALTER TABLE `typnet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
