-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 02:47 PM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tingwei666`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_fairy`
--

CREATE TABLE `track_fairy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL,
  `contest` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_fairy`
--

INSERT INTO `track_fairy` (`id`, `user_id`, `name`, `type`, `contest`, `description`, `img`, `date_create`) VALUES
(90, 1, 'jxhx', 'water', '????', '', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-16 18:03:03'),
(91, 1, 'hi', 'water', 'lll', '', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-16 19:28:04'),
(2, 2, 'Primordia', 'dark', 'cute', 'Dolore consectetur velit commodo cillum consectetur et consequat ex nostrud. Consectetur adipisicing proident deserunt esse laboris veniam irure. Veniam consectetur fugiat deserunt occaecat ut aliqua occaecat sit dolore enim sunt consectetur.', 'img/fairy/fairy_dark.png', '2020-03-15 05:27:33'),
(3, 1, 'Navirrrr', 'water', 'clever', '   nice', 'img/fairy/fairy_water.png', '2020-02-25 08:38:00'),
(4, 7, 'Lotron', 'dark', 'beautiful', 'Cillum incididunt ad proident aliquip id do enim adipisicing eu. Ea voluptate voluptate eu dolor amet do amet excepteur est nostrud minim id mollit. Reprehenderit ea pariatur deserunt incididunt proident.', 'img/fairy/fairy_dark.png', '2020-09-24 04:16:50'),
(5, 10, 'Hopeli', 'dark', 'clever', 'Sunt velit labore cillum consectetur pariatur eiusmod consequat qui consequat officia. Laboris commodo amet cupidatat occaecat anim magna sunt nostrud irure qui id quis pariatur. Aliquip commodo aute eiusmod qui et ullamco ipsum sint.', 'img/fairy/fairy_dark.png', '2020-05-04 12:14:28'),
(6, 10, 'Junipoor', 'water', 'beautiful', 'Enim eu ex in occaecat anim elit enim ex id. Mollit ullamco esse dolor ipsum magna Lorem et. Anim veniam ad ipsum qui commodo velit cillum nostrud mollit in qui ex.', 'img/fairy/fairy_water.png', '2020-06-29 12:28:56'),
(7, 9, 'Interodeo', 'water', 'cute', 'Dolor pariatur Lorem eu amet pariatur magna cillum sit officia pariatur eu nostrud. Eu velit reprehenderit quis occaecat laborum fugiat Lorem sunt ut ipsum id. Aliqua proident id aliquip reprehenderit sint est anim sit consequat ipsum labore commodo.', 'img/fairy/fairy_water.png', '2020-05-10 11:33:26'),
(8, 10, 'Zentility', 'normal', 'cute', 'In cillum eu sunt consectetur Lorem dolore consectetur id. Est ad eiusmod proident ea veniam. Cillum magna sit officia eu.', 'img/fairy/fairy_normal.png', '2020-08-07 09:09:29'),
(9, 1, 'Lovepad', 'water', 'cute', 'Laborum laboris Lorem ipsum quis ipsum sint qui. Fugiat ad veniam dolor ut nisi enim veniam qui ad non occaecat sunt reprehenderit occaecat. Pariatur quis est ex cupidatat cillum nulla esse ipsum occaecat do et est aliqua.', 'img/fairy/fairy_water.png', '2020-08-11 12:48:00'),
(10, 6, 'Chorizon', 'grass', 'clever', 'Pariatur nulla dolor consectetur dolore commodo pariatur in sint id incididunt sunt Lorem elit dolor. Duis labore reprehenderit ipsum nulla labore occaecat dolore laborum laboris ad ea ad. Laboris ipsum occaecat culpa deserunt anim.', 'img/fairy/fairy_grass.png', '2020-07-23 02:07:20'),
(11, 7, 'Kongene', 'grass', 'clever', 'Aliquip quis id non elit ex irure dolore cillum esse quis consequat laborum. Et culpa tempor cillum officia. Enim est reprehenderit commodo cupidatat ad nostrud exercitation labore laborum.', 'img/fairy/fairy_grass.png', '2020-05-30 09:06:25'),
(12, 4, 'Interloo', 'water', 'clever', 'Duis sit nulla ad cupidatat sit ullamco incididunt id et deserunt cillum nostrud tempor. Officia nulla minim enim sunt ea nostrud voluptate. Sint aute adipisicing consequat velit irure tempor qui Lorem est do elit.', 'img/fairy/fairy_water.png', '2020-09-29 09:48:59'),
(13, 7, 'Vertide', 'water', 'beautiful', 'Mollit officia cupidatat nulla commodo. Qui excepteur ad laboris anim esse ex mollit deserunt enim deserunt id. Culpa ullamco anim esse sint irure eiusmod duis anim eiusmod in culpa deserunt occaecat.', 'img/fairy/fairy_water.png', '2020-10-13 03:42:59'),
(14, 4, 'Joviold', 'dark', 'beautiful', 'Dolore reprehenderit nostrud id anim dolore reprehenderit. Fugiat deserunt irure non cupidatat proident labore. Anim laborum consequat est consectetur tempor quis pariatur officia labore in ullamco.', 'img/fairy/fairy_dark.png', '2020-05-29 07:35:57'),
(15, 8, 'Zork', 'normal', 'clever', 'Elit cillum anim fugiat nostrud non adipisicing minim duis anim laboris cupidatat incididunt irure ex. Non esse mollit labore elit irure pariatur eu mollit fugiat do sit duis aliquip. Consectetur ea esse eiusmod excepteur proident do cillum aliqua et.', 'img/fairy/fairy_normal.png', '2020-08-22 11:32:37'),
(16, 2, 'Valpreal', 'water', 'cute', 'Sit incididunt eiusmod aute laboris Lorem sunt excepteur nostrud laboris irure aute ut ullamco. Id et minim culpa aliquip Lorem. Consectetur adipisicing commodo laborum culpa consectetur mollit nulla magna adipisicing sint irure aliqua amet exercitation.', 'img/fairy/fairy_water.png', '2020-03-26 03:51:07'),
(17, 4, 'Rodeology', 'normal', 'clever', 'Excepteur irure dolor do do nulla excepteur quis ullamco magna sit proident sit labore id. Dolor incididunt incididunt pariatur commodo dolore aliqua est aliqua proident ex. Pariatur qui labore sit adipisicing sunt consectetur incididunt minim eu deserunt non culpa.', 'img/fairy/fairy_normal.png', '2020-05-13 12:35:32'),
(18, 4, 'Conferia', 'dark', 'cute', 'Velit nulla sunt enim aute aliqua nostrud aute voluptate ipsum non. Duis officia aliqua eiusmod aute magna anim. Eiusmod aliquip quis aliquip cupidatat voluptate sit in non exercitation id ad exercitation.', 'img/fairy/fairy_dark.png', '2020-10-09 06:11:37'),
(19, 1, 'Atgen', 'water', 'beautiful', '   2222222', 'img/fairy/fairy_water.png', '2020-07-28 07:11:34'),
(73, 1, 'normal ccc', 'normal', 'fdfsf', 'sdfdsfsd', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 16:08:43'),
(20, 4, 'Comstar', 'water', 'beautiful', 'Pariatur amet Lorem voluptate anim laboris reprehenderit esse ad sit anim nulla excepteur eu. Elit dolor laboris reprehenderit elit cupidatat quis in. Voluptate commodo magna qui velit non deserunt et laborum mollit voluptate excepteur est commodo.', 'img/fairy/fairy_water.png', '2020-01-26 02:01:02'),
(21, 4, 'Franscene', 'grass', 'beautiful', 'Ex duis ex magna mollit officia officia esse sint voluptate Lorem fugiat. Eu aliquip enim ea labore cupidatat aliquip id est consectetur. Sunt anim culpa eu exercitation tempor amet esse aliqua sint.', 'img/fairy/fairy_grass.png', '2020-03-17 03:56:14'),
(22, 2, 'Optique', 'dark', 'beautiful', 'Labore commodo est laboris irure labore minim excepteur fugiat. Cupidatat nisi ullamco elit cillum quis proident. Nostrud adipisicing culpa sint eiusmod commodo ex laborum occaecat.', 'img/fairy/fairy_dark.png', '2020-01-01 04:47:40'),
(23, 1, 'Orboid', 'grass', 'beautiful', 'Do anim aliquip sunt veniam sunt cillum sunt culpa culpa fugiat. Nostrud est aliqua incididunt enim duis nisi incididunt ea tempor dolor tempor duis. Tempor fugiat fugiat tempor occaecat aliquip laboris.', 'img/fairy/fairy_grass.png', '2020-09-28 12:47:45'),
(24, 4, 'Comtour', 'water', 'cute', 'Ex qui Lorem do aliqua pariatur aliqua dolore irure eiusmod incididunt voluptate sint est irure. Id eiusmod labore anim minim cillum culpa est. Duis non elit irure incididunt ea culpa consequat.', 'img/fairy/fairy_water.png', '2020-08-11 06:47:57'),
(25, 1, 'Isoternia', 'grass', 'beautiful', 'Nisi eu pariatur mollit tempor exercitation consectetur esse. Cupidatat mollit tempor consectetur Lorem pariatur laborum velit est amet sint enim anim culpa. Dolor veniam ad culpa excepteur ipsum sunt magna Lorem laborum commodo.', 'img/fairy/fairy_grass.png', '2020-09-10 08:11:53'),
(26, 9, 'Enthaze', 'grass', 'clever', 'Velit excepteur exercitation pariatur ullamco dolor non aute est ea aute. Ex excepteur qui tempor in. Ea ex nostrud tempor veniam proident cupidatat voluptate cillum ea aute minim.', 'img/fairy/fairy_grass.png', '2020-09-21 12:01:50'),
(27, 5, 'Interfind', 'grass', 'cute', 'Est sint eu ullamco ullamco exercitation. Aute exercitation excepteur sunt elit deserunt est ipsum cupidatat do. Minim laboris quis et culpa incididunt sit sit eiusmod do est in.', 'img/fairy/fairy_grass.png', '2020-03-18 03:22:58'),
(28, 2, 'Noralex', 'normal', 'cute', 'Et sint consequat duis ipsum veniam deserunt et Lorem nisi. Elit ex excepteur aliquip excepteur irure nisi consequat ex ea do qui. Cillum quis do non non cupidatat eu labore.', 'img/fairy/fairy_normal.png', '2020-05-05 02:25:49'),
(29, 7, 'Homelux', 'grass', 'cute', 'Nisi voluptate commodo occaecat anim velit voluptate in pariatur sit exercitation enim nostrud. Ad irure nulla anim minim proident veniam duis et dolor ad. Quis nisi qui tempor cillum laborum do culpa velit Lorem et in minim sint.', 'img/fairy/fairy_grass.png', '2020-01-12 07:22:55'),
(30, 9, 'Eventix', 'water', 'clever', 'Commodo eu ad do ea duis aliqua fugiat quis aliquip sint tempor occaecat minim. Quis veniam laboris reprehenderit consequat commodo eiusmod veniam voluptate est labore aliqua magna aute. Lorem amet Lorem consectetur anim cupidatat consequat ad occaecat.', 'img/fairy/fairy_water.png', '2020-01-26 11:08:23'),
(31, 5, 'Portico', 'grass', 'clever', 'Aliqua ullamco pariatur ullamco laborum sint consequat tempor voluptate officia aute occaecat Lorem fugiat occaecat. Excepteur nulla nostrud laboris adipisicing ex nisi dolore sit. Eu veniam nulla ut sint.', 'img/fairy/fairy_grass.png', '2020-09-27 03:29:45'),
(32, 1, 'Quizka', 'dark', 'cute', 'Aliquip ad cupidatat voluptate proident occaecat nisi. Esse dolor esse enim velit sunt anim exercitation adipisicing ullamco ullamco eu. Quis labore esse incididunt irure enim excepteur elit laboris elit officia.', 'img/fairy/fairy_dark.png', '2020-06-08 01:57:20'),
(33, 9, 'Entality', 'water', 'clever', 'Veniam amet laborum duis adipisicing esse consectetur tempor qui officia irure. Sint exercitation magna amet cillum. Tempor officia adipisicing dolor sint cillum consectetur quis do excepteur pariatur et.', 'img/fairy/fairy_water.png', '2020-09-01 04:09:51'),
(34, 10, 'Zolavo', 'water', 'clever', 'Pariatur nisi labore labore reprehenderit minim adipisicing magna id tempor reprehenderit dolore. Excepteur magna fugiat esse deserunt veniam excepteur consectetur occaecat nulla qui dolore commodo. Minim laboris dolor eiusmod id aliqua deserunt ullamco laborum culpa id.', 'img/fairy/fairy_dark.png', '2020-02-02 03:27:28'),
(35, 2, 'Comverges', 'grass', 'clever', 'Qui Lorem pariatur deserunt sunt amet mollit est fugiat. Eiusmod Lorem exercitation id proident do. Culpa est dolore aliqua consectetur dolor minim officia cupidatat occaecat.', 'img/fairy/fairy_grass.png', '2020-05-30 04:32:53'),
(36, 1, 'Vendblend', 'water', 'clever', 'Dolor culpa nulla officia ea occaecat in magna cillum. Duis enim dolore consectetur nisi sunt deserunt ut pariatur. Esse esse irure fugiat irure occaecat sunt dolor ea do voluptate.', 'img/fairy/fairy_water.png', '2020-04-26 01:54:33'),
(37, 5, 'Mixers', 'dark', 'cute', 'Ullamco velit enim amet id proident. Do laborum qui mollit nulla. Tempor amet tempor minim labore aliquip dolore consequat quis consectetur amet.', 'img/fairy/fairy_dark.png', '2020-06-15 09:08:36'),
(38, 4, 'Netur', 'grass', 'cute', 'Culpa sit elit culpa ipsum labore velit consequat deserunt ad. Minim elit adipisicing eiusmod id quis sint ea aute. Quis ut anim velit exercitation cillum ut sit incididunt fugiat consectetur eiusmod consectetur laboris consequat.', 'img/fairy/fairy_grass.png', '2020-06-23 06:24:09'),
(39, 5, 'Icology', 'water', 'cute', 'Eiusmod esse adipisicing sit consectetur ullamco. Esse et ut consequat id do tempor anim. Culpa et proident culpa ut exercitation esse veniam.', 'img/fairy/fairy_water.png', '2020-06-10 02:12:48'),
(40, 5, 'Momentia', 'normal', 'beautiful', 'Fugiat sit cillum pariatur nostrud minim non pariatur enim. Reprehenderit pariatur id tempor ea sint. Deserunt veniam id quis adipisicing Lorem minim exercitation nisi occaecat officia.', 'img/fairy/fairy_normal.png', '2020-05-16 09:16:08'),
(41, 9, 'Coash', 'grass', 'cute', 'Eu dolor commodo aliquip eiusmod consequat exercitation commodo dolor consequat et fugiat eiusmod. Aliquip mollit velit minim aliqua elit sint sint Lorem proident ipsum. Proident ullamco labore dolor consequat velit occaecat sint ullamco ipsum culpa.', 'img/fairy/fairy_grass.png', '2020-08-05 11:34:05'),
(42, 6, 'Netplode', 'water', 'beautiful', 'Est est ad culpa Lorem officia in elit esse eiusmod do cillum esse adipisicing. Incididunt nulla duis incididunt quis ad consequat commodo aliqua ullamco officia dolor est laborum esse. Sit nostrud pariatur deserunt esse veniam labore eu cillum culpa voluptate cupidatat aute id excepteur.', 'img/fairy/fairy_water.png', '2020-03-01 03:24:19'),
(43, 6, 'Shepard', 'water', 'beautiful', 'Duis elit anim enim fugiat dolor esse pariatur excepteur sit qui aliqua. Velit sint ipsum nostrud proident anim fugiat consectetur non dolor ea nisi. Proident laborum laborum ex ad cillum nisi et nulla.', 'img/fairy/fairy_water.png', '2020-07-29 03:53:14'),
(44, 6, 'Bunga', 'water', 'beautiful', 'Sunt exercitation irure sint labore consectetur excepteur veniam fugiat reprehenderit reprehenderit ad nulla tempor ullamco. Pariatur eu duis cillum do incididunt. Nisi reprehenderit voluptate veniam tempor ipsum consectetur velit consequat enim cillum labore anim.', 'img/fairy/fairy_water.png', '2020-03-25 10:59:29'),
(45, 6, 'Lunchpad', 'dark', 'beautiful', 'Reprehenderit consequat laborum sit velit Lorem dolor sint exercitation eiusmod minim eiusmod occaecat sint velit. Cillum labore quis incididunt do id enim irure pariatur incididunt mollit sit voluptate eu. Deserunt incididunt Lorem deserunt laborum enim adipisicing.', 'img/fairy/fairy_dark.png', '2020-04-18 06:25:56'),
(46, 1, 'Qualitex', 'normal', 'cute', 'Eiusmod minim occaecat labore officia consequat. Labore sunt incididunt proident consequat in ullamco sint sint Lorem magna reprehenderit pariatur ipsum labore. Do minim magna ullamco adipisicing qui veniam ullamco qui deserunt ex officia magna dolor exercitation.', 'img/fairy/fairy_normal.png', '2020-02-05 04:28:55'),
(47, 7, 'Isoswitch', 'grass', 'cute', 'Nulla officia voluptate laborum tempor sit incididunt veniam ex occaecat aute veniam id laboris adipisicing. Sit Lorem aliqua dolor id officia. Excepteur proident velit tempor deserunt veniam nulla ut id proident elit eu ad.', 'img/fairy/fairy_grass.png', '2020-07-26 03:29:14'),
(48, 5, 'Furnigeer', 'dark', 'clever', 'Commodo enim quis minim minim in occaecat et. Ullamco ut sunt proident in. Dolore laborum culpa in velit fugiat dolore adipisicing labore aliqua.', 'img/fairy/fairy_dark.png', '2020-08-21 12:02:58'),
(49, 4, 'Accruex', 'dark', 'beautiful', 'Aute nulla laboris incididunt in. Nulla est proident eiusmod voluptate cupidatat. Ut ut consectetur duis veniam laborum.', 'img/fairy/fairy_dark.png', '2020-01-17 06:42:36'),
(50, 9, 'Cubix', 'normal', 'cute', 'Irure exercitation sunt ipsum tempor eiusmod. Ipsum ut laborum irure est. Exercitation eiusmod pariatur quis occaecat enim commodo duis eu exercitation exercitation.', 'img/fairy/fairy_normal.png', '2020-07-20 02:02:12'),
(81, 1, 'addddddddd', 'normal', 'dddd', 'dddd', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 17:26:26'),
(78, 1, 'Fairy no map', 'dark', '333', '333', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 17:13:18'),
(75, 1, 'Fairy add location test', 'water', 'gggg', 'ddddd', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 16:53:06'),
(88, 13, 'Pippa', 'normal', 'Red poppies', 'Pippa carries a crimson red poppy-shaped magic petal, to help make all red flowers grow. Sparkling red magic comes from the tip of her fairy wand. Pippa is always calm and never gets upset when things go wrong. No matter how hectic things might get, she reminds everyone to relax and take time to stop and smell the flowers.', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 17:39:59'),
(87, 13, 'Kirsty', 'water', 'Straight bobbed hair', 'Kirsty and Rachel are on a boat trip when Whitney the Whale Fairy appears, and she needs their help! Flukey the whale has a piece of the Magical Conch Shell, and the pesky goblins are after it. ', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 17:38:07'),
(79, 1, 'add animal on recent', 'grass', 'dddd', 'dddd', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 17:22:54'),
(86, 13, 'Tess', 'water', 'Two plaits hair', 'Tess the Sea Turtle Fairy is worried - her magical sea turtle friend, Pearl, is missing, along with a piece of the Magical Conch Shell. If Kirsty and Rachel don\'t find them soon, the baby turtles won\'t find their way to the ocean. The girls must help - and fast!\n   \n   \n   ', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 17:37:10'),
(89, 13, 'Tasha', 'normal', 'Shoulder length glossy black hair', 'Quick-footed Tasha taps out magic red sparkles and tiny top hats from the tip of her fairy wand. She\'s lightning quick on her feet, and loves to tap along with the woodpeckers in Fairyland forest. Jack Frost\'s goblins steer clear of Tasha, because she can wield her tap dancing cane like a kung fu master!', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-10 17:40:41'),
(92, 13, 'Jade', 'grass', 'Long, red hair', 'Jade\'s sparkling green fairy magic flashes to a groovy disco beat. Jade wears sparkly spandex clothes, and has a sparkling personality to match. Disco ball lighting follows her wherever she goes. Everything about her is so flashy, you have to wear sunglasses when she\'s around!', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-17 13:51:05'),
(93, 13, 'Rebecca', 'dark', 'Tanned skin, long brown hair', 'Bold and brash Rebecca leaves a trail of lavender sparkles wherever she goes. Rebecca is a rebel with many causes. She stands up for others, and won\'t hesitate to take action to make things right. If events ever take a \'twist\' for the worse, she asks herself \"What would Elvis do?\". The answer: \"A little less conversation, a little more action please!\".', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-17 13:55:33'),
(94, 13, 'Morgan', 'dark', 'Blonde hair in an elfin crop', 'Morgan the Midnight Fairy has lost her bag of magical night dust. The girls must find it before the midnight feast becomes a midnight flop!', 'http://tingweiii.com/aau/wnm617_01/ting.wei/img/fairy/fairy_defult.svg', '2020-12-17 14:03:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_fairy`
--
ALTER TABLE `track_fairy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_fairy`
--
ALTER TABLE `track_fairy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
