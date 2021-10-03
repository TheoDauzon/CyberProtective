-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 08 mai 2021 à 17:38
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog2`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

DROP TABLE IF EXISTS `answer`;
CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b141d712647f', '5b141d71485e0'),
('5b141d718f873', '5b141d71978cc'),
('5b141d71ddb46', '5b141d71e5f2b'),
('5b141d721a738', '5b141d7222884'),
('5b141d7260b7d', '5b141d7268b8a'),
('5b141d72a6fa1', '5b141d72aefe0'),
('5b141d72d7a1c', '5b141d72dfa8b'),
('5b141d731429b', '5b141d731c242'),
('5b141d7345176', '5b141d734cd10'),
('5b141d737ddfc', '5b141d73858d0'),
('5b1422651fdde', '5b1422654ab51'),
('5b14226574ed5', '5b1422657d069'),
('5b142265b5d08', '5b142265c09e3'),
('5b1422661d93f', '5b14226635df5'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8dc'),
('5b142266c525c', '5b142266cd353'),
('5b14226711d91', '5b14226719fa0'),
('5b1422674286d', '5b1422674a9ee'),
('5b1422677371f', '5b1422677b3e9');

-- --------------------------------------------------------

--
-- Structure de la table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('suryaprasadtripathy8@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:56:00'),
('pinky@gmail.com', '5b141b8009cf0', 30, 10, 10, 0, '2018-06-03 16:57:45'),
('priyanka@gmail.com', '5b141b8009cf0', 22, 10, 8, 2, '2018-06-03 16:59:06'),
('suryaprasadtripathy8@gmail.com', '5b141f1e8399e', 26, 10, 9, 1, '2018-06-03 17:17:26'),
('theo.dauzon@gmail.com', '5b141f1e8399e', 2, 10, 3, 7, '2021-04-28 14:28:25'),
('real@gmail.com', '5b141f1e8399e', -6, 10, 1, 9, '2021-04-28 20:28:24'),
('real@gmail.com', '5b141b8009cf0', -10, 10, 0, 10, '2021-04-28 20:32:23'),
('juju@gmail.com', '5b141f1e8399e', -6, 10, 1, 9, '2021-04-28 21:41:50'),
('juju@gmail.com', '5b141b8009cf0', 2, 10, 3, 7, '2021-04-28 21:42:22');

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b141d712647f', '30', '5b141d71485b9'),
('5b141d712647f', '35', '5b141d71485dc'),
('5b141d712647f', '40', '5b141d71485e0'),
('5b141d712647f', '45', '5b141d71485e4'),
('5b141d718f873', '400 000 personnes', '5b141d71978be'),
('5b141d718f873', '500 000 personnes', '5b141d71978cc'),
('5b141d718f873', '600 000 personnes', '5b141d71978d1'),
('5b141d718f873', '700 000 personnes', '5b141d71978d4'),
('5b141d71ddb46', 'L Autorite bancaire', '5b141d71e5f2b'),
('5b141d71ddb46', 'Parlement europeen', '5b141d71e5f3c'),
('5b141d71ddb46', 'Services interinstitutionnels', '5b141d71e5f43'),
('5b141d71ddb46', 'Conseil de l Union europeenne', '5b141d71e5f48'),
('5b141d721a738', 'Fuite de donnees', '5b141d7222820'),
('5b141d721a738', 'Probleme de chiffrement', '5b141d722282f'),
('5b141d721a738', 'Defaut de qualite du code', '5b141d7222880'),
('5b141d721a738', 'Des Bugs', '5b141d7222884'),
('5b141d7260b7d', 'Une plateforme qui permet de securiser un site et ses donnees', '5b141d7268b8a'),
('5b141d7260b7d', 'Un antivirus', '5b141d7268b95'),
('5b141d7260b7d', 'Un pare-feu', '5b141d7268b98'),
('5b141d7260b7d', 'Un VPN', '5b141d7268b9a'),
('5b141d72a6fa1', '2', '5b141d72aefcb'),
('5b141d72a6fa1', '2.5', '5b141d72aefd8'),
('5b141d72a6fa1', '3', '5b141d72aefdc'),
('5b141d72a6fa1', '3.5', '5b141d72aefe0'),
('5b141d72d7a1c', 'Les chevaux de Troie', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Les ransomwares', '5b141d72dfa85'),
('5b141d72d7a1c', 'Les spywares', '5b141d72dfa88'),
('5b141d72d7a1c', 'Le firewall', '5b141d72dfa8b'),
('5b141d731429b', '28', '5b141d731c234'),
('5b141d731429b', '33', '5b141d731c242'),
('5b141d731429b', '38', '5b141d731c248'),
('5b141d731429b', '43', '5b141d731c24b'),
('5b141d7345176', '123456', '5b141d734cd10'),
('5b141d7345176', 'root', '5b141d734cd1b'),
('5b141d7345176', 'password', '5b141d734cd1d'),
('5b141d7345176', 'azerty', '5b141d734cd20'),
('5b141d737ddfc', 'Une technique permettant d obtenir des informations personnelles', '5b141d73858d0'),
('5b141d737ddfc', 'Un programme charge de recueillir des informations sur l utilisateur de l ordinateur sur lequel il est installe', '5b141d73858df'),
('5b141d737ddfc', 'Des logiciels malveillants qui infectent votre ordinateur et affichent des messages demandant de verser une certaine somme afin que votre systeme fonctionne a nouveau', '5b141d73858e3'),
('5b141d737ddfc', 'Un logiciel en apparence legitime, mais qui contient une fonctionnalite malveillante. Son but est de faire entrer cette fonctionnalite malveillante sur l ordinateur et de l installer a l insu de l utilisateur', '5b141d73858e8'),
('5b1422651fdde', 'Une authentification par un mot de passe trop souple', '5b1422654ab3a'),
('5b1422651fdde', 'Rendre un compte client accessible depuis une URL incrementale', '5b1422654ab48'),
('5b1422651fdde', 'L absence de chiffrement des donnees', '5b1422654ab4d'),
('5b1422651fdde', 'Des problemes avec l URL', '5b1422654ab51'),
('5b14226574ed5', 'Les virus mutants', '5b1422657d052'),
('5b14226574ed5', 'Les virus polymorphes', '5b1422657d05f'),
('5b14226574ed5', 'Les virus de secteur d amorcage', '5b1422657d064'),
('5b14226574ed5', 'Les virus escargots', '5b1422657d069'),
('5b142265b5d08', 'Une connexion securisee et chiffree entre deux reseaux ou entre un utilisateur individuel et un reseau', '5b142265c09e3'),
('5b142265b5d08', 'Un composant logiciel informatique qui joue le role d intermediaire en se placant entre deux hotes pour faciliter ou surveiller leurs echanges', '5b142265c09f5'),
('5b142265b5d08', 'Un logiciel et/ou un materiel permettant de faire respecter la politique de securite du reseau', '5b142265c09fa'),
('5b142265b5d08', 'Un ensemble de regles qui regissent les echanges de donnees ou le comportement collectif de processus ou d ordinateurs en reseaux ou d objets connectes', '5b142265c09ff'),
('5b1422661d93f', 'Reseau prive virtuel', '5b14226635df5'),
('5b1422661d93f', 'Reseau public virtuel', '5b14226635e04'),
('5b1422661d93f', 'Reseau prive naturel', '5b14226635e09'),
('5b1422661d93f', 'Reseau public naturel', '5b14226635e0d'),
('5b14226663cf4', 'Un logiciel capable de detecter les virus informatiques et de les eliminer', '5b1422666bf2b'),
('5b14226663cf4', 'Un logiciel et/ou un materiel permettant de faire respecter la politique de securite du reseau', '5b1422666bf39'),
('5b14226663cf4', 'Une connexion securisee et chiffree entre deux reseaux ou entre un utilisateur individuel et un reseau', '5b1422666bf3e'),
('5b14226663cf4', 'Un ensemble de regles qui regissent les echanges de donnees ou le comportement collectif de processus ou d ordinateurs en reseaux ou d objets connectes', '5b1422666bf42'),
('5b1422669481b', 'Un appareil utilise pour acceder a Internet, consulter ses mails, stocker des fichiers et gerer une base de donnees par exemple', '5b1422669c8dc'),
('5b1422669481b', 'Un peripherique d ordinateur qui imprime sur papier des textes ou des elements graphiques', '5b1422669c8ea'),
('5b1422669481b', 'Un boitier fourni par un fournisseur d acces a Internet a ses abonnes, qui offre une connexion a Internet haut débit et des services additionnels comme la telephonie et la television', '5b1422669c8ef'),
('5b1422669481b', 'Un ensemble de programmes permettant de faire fonctionner et controler un appareil informatique', '5b1422669c8f3'),
('5b142266c525c', 'Un logiciel malveillant qui prend en otage des donnees personnelles', '5b142266cd353'),
('5b142266c525c', 'Un logiciel en apparence legitime, mais qui contient une fonctionnalite malveillante', '5b142266cd361'),
('5b142266c525c', 'Un logiciel espion, un mouchard ou un espiogiciel est un logiciel malveillant qui s installe dans un ordinateur ou autre appareil mobile, dans le but de collecter et transferer des informations', '5b142266cd365'),
('5b142266c525c', 'Un logiciel malveillant qui se reproduit sur plusieurs ordinateurs en utilisant un reseau informatique comme Internet', '5b142266cd369'),
('5b14226711d91', 'Commission Nationale de l Informatique et des Libertes', '5b14226719fa0'),
('5b14226711d91', 'Commission Nationale de l Information et des Libertes', '5b14226719fb1'),
('5b14226711d91', 'Commission Nationale de l Information et des Lois', '5b14226719fb7'),
('5b14226711d91', 'Commission Nationale de l Informatique et des Lois', '5b14226719fbb'),
('5b1422674286d', 'Agence Nationale de la Securite des Systemes d Information', '5b1422674a9ee'),
('5b1422674286d', 'Agence Nationale de la Securite des Systemes d Informatiques', '5b1422674aa01'),
('5b1422674286d', 'Agence Nationale de la Securite des Systemes d Infectes', '5b1422674aa06'),
('5b1422674286d', 'Agence Nationale de la Securite des Systemes d Infaillibles', '5b1422674aa0b'),
('5b1422677371f', 'Elle apporte son expertise et son assistance technique aux administrations et aux entreprises avec une mission renforcee au profit des operateurs d importance vitale', '5b1422677b3e9'),
('5b1422677371f', 'Elle accompagne les professionnels dans leur mise en conformite et aide les particuliers a maitriser leurs donnees personnelles et exercer leurs droits', '5b1422677b3f7'),
('5b1422677371f', 'Un reglement europeen permettant d encadrer davantage les responsables de traitement ainsi que les sous-traitants des donnees au sein de l Union Europeenne sur l utilisation des donnees des personnes physiques', '5b1422677b3fc'),
('5b1422677371f', 'Une entreprise qui permet a ses clients de se connecter a Internet. Il s occupe de relier le domicile de l utilisateur au reseau Internet', '5b1422677b400');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b141b8009cf0', '5b141d712647f', 'Combien de milliards d euros a coute la cybercriminalite de la Russie en 2020 ?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'Un fichier comportant les donnees medicales de Francais circule sur internet. Combien de francais sont concernes ?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'Quel organisme europeen a ete victime d une cyberattaque liee au piratage de Microsoft Exchange ?', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Quels est la vulnerabilite la moins souvent repere dans les applications ?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Qu est-ce que WebTotem ?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'De combien de milliards de dollars est estime le butin des cybercriminels aux Etats-Unis sur l annee 2020 ?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'Parmi les programmes suivants, lequel n est pas malveillant ?', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Combien de millions de donnees de clients, le directeur du site de Cdiscount aurait revendu en ligne ?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'Quel est le mot de passe le plus couramment utilise ?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'Qu est-ce que le phishing ?', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'Quel est le probleme de securite le moins souvent constate sur les sites web ?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Parmi les types de virus suivants, lequel n est pas un type de virus ?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'Qu est-ce qu un VPN ?', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Que signifie le sigle VPN en francais ?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'Qu est-ce qu un antivirus ?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Qu est-ce qu un serveur informatique ?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'Qu est-ce que le rancongiciel ?', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'Que signifie le sigle CNIL ?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'Que signifie le sigle ANSSI ?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'Quel est le role de l ANSSI ?', 4, 10);

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'Php & Mysqli', 3, 1, 10, '2018-06-03 16:46:56'),
('5b141f1e8399e', 'Ip Networking', 3, 1, 10, '2018-06-03 17:02:22');

-- --------------------------------------------------------

--
-- Structure de la table `rank`
--

DROP TABLE IF EXISTS `rank`;
CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('juju@gmail.com', 2, '2021-04-28 21:42:22');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
