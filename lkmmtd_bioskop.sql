-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2017 at 09:56 AM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lkmmtd_bioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` int(11) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`, `gender`, `telpon`, `email`) VALUES
(1, 'Billy Jonathan', 'Biljo', '12345', 0, '081217841555', 'm26415058@john.petra.ac.id');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `duration` int(255) NOT NULL,
  `genre` int(11) NOT NULL,
  `rilis` varchar(15) NOT NULL,
  `producer` varchar(200) NOT NULL,
  `director` varchar(200) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `production` varchar(200) NOT NULL,
  `cast` varchar(200) NOT NULL,
  `imdb` varchar(100) NOT NULL,
  `sinopsis` varchar(2000) NOT NULL,
  `trailer` varchar(1000) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `tayang` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `title`, `duration`, `genre`, `rilis`, `producer`, `director`, `writer`, `production`, `cast`, `imdb`, `sinopsis`, `trailer`, `gambar`, `status`, `tayang`) VALUES
(1, 'Jumanji', 120, 0, '2017-12-20', 'Jake Kasdan', 'Jake Kasdan', 'Chris McKenna , Jeff Pinkner, Scott Rosenberg , Erik Sommers', 'Ted Field', 'Dwayne Johnson , Kevin Hart , 	Karen Gillan', '-', 'Film "Jumanji" menceritakan tentang sebuah permainan papan ajaib yang menyebabkan tanaman dan makhluk hutan keluar dari dunianya dan menyerang pinggiran kota di Amerika yang tadinya aman dan tenteram.  Film yang sudah dirilis film sebelumnya ini akan muncul dalam cersi modern dan merupakan kelanjutan kisah sebelumnya. Makhluk aneh yang keluar dari papan permainan ini mencoba memasuki dunia sekarang.  Beberapa dari makhluk aneh itu merupakan orang-orang dari masa depan yang memiliki beragam alat canggih yang tidak ditemui di dunia saat ini. Film Jumanji ini juga terinspirasi dari sebuah nnovel anak-anak karya Chris van Allsburg.', 'https://www.youtube.com/embed/mnlUcCaGoaQ', 'jumanji.jpg', 1, '2017-05-20'),
(17, 'Wonder Woman', 120, 1, '2017-06-08', 'Patty Jenkins', 'Patty Jenkins', 'Patty Jenkins', 'Patty Jenkins', 'Patty Jenkins', '8.2', 'Before she was Wonder Woman she was Diana, princess of the Amazons, trained warrior. When a pilot crashes and tells of conflict in the outside world, she leaves home to fight a war to end all wars, discovering her full powers and true destiny.', 'https://www.youtube.com/embed/VSB4wGIdDwo', 'wonderwoman2.jpg', 1, '2017-06-09'),
(18, 'The Mummy', 150, 1, '2017-06-08', 'Alex Kurtzman', 'Alex Kurtzman', 'Alex Kurtzman', 'Alex Kurtzman', 'Tom Cruise', '5.9', 'An ancient princess is awakened from her crypt beneath the desert, bringing with her malevolence grown over millennia, and terrors that defy human comprehension.', 'https://www.youtube.com/embed/vJxgxVH0Fsk', 'themummy.jpg', 1, '2017-06-09'),
(19, 'Beauty and The Beast', 180, 4, '2017-05-25', 'Bill Condon', 'Bill Condon', 'Bill Condon', 'Bill Condon', 'Emma Watson', '7.5', 'An adaptation of the fairy tale about a monstrous-looking prince and a young woman who fall in love.', 'https://www.youtube.com/embed/iXfEc4wG208', 'beautyandthebeast.jpg', 1, '2017-06-14'),
(20, 'Captain Underpants', 180, 8, '2017-06-10', 'David Soren', 'David Soren', 'David Soren', 'David Soren', 'Kevin Hart', '7.0', 'Two overly imaginative pranksters named George and Harold, hypnotize their principal into thinking he''s a ridiculously enthusiastic, incredibly dimwitted superhero named Captain Underpants.', 'https://www.youtube.com/embed/BJgL9pbDLBE', 'captainunderpants.jpg', 1, '2017-06-15'),
(21, 'Megan Leavey', 180, 1, '2017-06-08', 'Gabriela Cowperthwaite', 'Gabriela Cowperthwaite', 'Gabriela Cowperthwaite', 'Gabriela Cowperthwaite', 'Kate Mara', '7.0', 'Based on the true life story of a young Marine corporal whose unique discipline and bond with her military combat dog saved many lives during their deployment in Iraq.', 'https://www.youtube.com/embed/IGGcFbW__XI', 'meganleavey.jpg', 1, '2017-06-09'),
(22, 'Baywatch', 180, 2, '2017-06-08', 'Seth Gordon', 'Seth Gordon', 'Seth Gordon', 'Seth Gordon', 'Dwayne Johnson, Zac Efron', '5.7', 'Devoted lifeguard Mitch Buchannon butts heads with a brash new recruit, as they uncover a criminal plot that threatens the future of the bay.', 'https://www.youtube.com/embed/eyKOgnaf0BU', 'baywatch.jpg', 1, '2017-06-09'),
(23, 'Guardian Of The Galaxy Vol 2', 150, 1, '2017-06-08', 'James Gunn', 'James Gunn', 'James Gunn', 'James Gunn', 'Chris Pratt, Zoe Saldana, Dave Bautista', '8.1', 'The Guardians must fight to keep their newfound family together as they unravel the mystery of Peter Quill''s true parentage.', 'https://www.youtube.com/embed/dW1BIid8Osg', 'guardianofthegalaxy2.jpg', 1, '2017-06-08'),
(24, 'Cars 3', 180, 9, '2017-06-08', 'Brian Fee', 'Brian Fee', 'Brian Fee', 'Brian Fee', 'Owen Wilson, Cristela Alonzo, Chris Cooper', '7.8', 'Lightning McQueen sets out to prove to a new generation of racers that he''s still the best race car in the world.', 'https://www.youtube.com/embed/2LeOH9AGJQM', 'cars3.jpg', 2, '2017-06-30'),
(25, 'Transformer : The Last Knight', 180, 1, '2017-06-08', 'Michael Bay', 'Michael Bay', 'Michael Bay', 'Michael Bay', 'Mark Wahlberg, Laura Haddock, Gemma Chan', '', 'Humans and Transformers are at war, Optimus Prime is gone. The key to saving our future lies buried in the secrets of the past, in the hidden history of Transformers on Earth.', 'https://www.youtube.com/embed/6Vtf0MszgP8', 'transformerlastknight.jpg', 2, '2017-06-30'),
(26, 'Despicable Me 3', 150, 9, '2017-06-08', 'Kyle Balda', 'Kyle Balda', 'Kyle Balda', 'Kyle Balda', 'Jenny Slate, Kristen Wiig, Steve Carell', '8.2', 'Gru meets his long-lost charming, cheerful, and more successful twin brother Dru who wants to team up with him for one last criminal heist.', 'https://www.youtube.com/embed/euz-KBBfAAo', 'despicableme3.jpg', 2, '2017-06-30'),
(27, 'Spider-Man : HomeComing', 180, 1, '2017-06-08', 'Jon Watts', 'Jon Watts', 'Jon Watts', 'Jon Watts', 'Tom Holland, Chris Evans, Robert Downey Jr.', '', 'Following the events of Captain America: Civil War (2016), Peter Parker attempts to balance his life in high school with his career as the web-slinging superhero Spider-Man.', 'https://www.youtube.com/embed/U0D3AOldjMU', 'spidermanhomecoming.jpg', 2, '2017-06-30'),
(28, 'Percobaan', 52, 5, '2017-06-29', 'anton', 'anton', 'anton', 'anton', 'anton', '5', 'anton', 'anton', 'seq_15058.jpg', 0, '2017-06-30'),
(29, 'Doraemon', 120, 1, '2017-06-15', 'Kaito', 'Kaito', 'Kaito', 'Kaito', 'Kaito', '7.5', 'Nobita', 'www.youtube.com', 'dfinstall.log', 2, '2017-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` varchar(20) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `tanggal`, `hari`, `jam`) VALUES
(2, '4 Juni 2017', 'Sunday', '15:00'),
(1, '4 June 2017', 'Saturday', '16:00'),
(5, '20 Juni 2017', '19', '18.30'),
(6, '20 Juli 2017', '09', '19.00'),
(7, '15 Juni 2017', 'Saturday', '15:00');

-- --------------------------------------------------------

--
-- Table structure for table `kursi`
--

CREATE TABLE IF NOT EXISTS `kursi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `idstudio` int(11) NOT NULL,
  `usertemp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `kursi`
--

INSERT INTO `kursi` (`id`, `kode`, `status`, `idstudio`, `usertemp`) VALUES
(1, 'A1', '1', 1, 0),
(2, 'A2', '0', 1, 0),
(3, 'A3', '0', 1, 0),
(4, 'A4', '0', 1, 0),
(5, 'A5', '1', 1, 0),
(6, 'A6', '0', 1, 0),
(7, 'A7', '0', 1, 0),
(8, 'A8', '0', 1, 0),
(9, 'A9', '0', 1, 0),
(10, 'A10', '0', 1, 0),
(11, 'B11', '0', 1, 0),
(12, 'B12', '0', 1, 0),
(13, 'B13', '0', 1, 0),
(14, 'B14', '1', 1, 0),
(15, 'B15', '0', 1, 0),
(16, 'B16', '0', 1, 0),
(17, 'B17', '0', 1, 0),
(18, 'B18', '0', 1, 0),
(19, 'B19', '0', 1, 0),
(20, 'B20', '0', 1, 0),
(21, 'C21', '0', 1, 0),
(22, 'C22', '0', 1, 0),
(23, 'C23', '0', 1, 0),
(24, 'C24', '0', 1, 0),
(25, 'C25', '0', 1, 0),
(26, 'C26', '0', 1, 0),
(27, 'C27', '0', 1, 0),
(28, 'C28', '0', 1, 0),
(29, 'C29', '1', 1, 0),
(30, 'C30', '0', 1, 0),
(31, 'D31', '0', 1, 0),
(32, 'D32', '0', 1, 0),
(33, 'D33', '0', 1, 0),
(34, 'D34', '0', 1, 0),
(35, 'D35', '0', 1, 0),
(36, 'D36', '0', 1, 0),
(37, 'D37', '0', 1, 0),
(38, 'D38', '0', 1, 0),
(39, 'D39', '0', 1, 0),
(40, 'D40', '0', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kursitemp`
--

CREATE TABLE IF NOT EXISTS `kursitemp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idkursi` int(11) NOT NULL,
  `idpemutaran` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `kursitemp`
--

INSERT INTO `kursitemp` (`id`, `idkursi`, `idpemutaran`, `iduser`) VALUES
(1, 28, 1, 21),
(2, 27, 1, 21),
(3, 17, 1, 21);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `about` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `about`) VALUES
(1, 'DISKON', 'HALO SEMUANYA DISINI KITA MENYEDIAKAN DISKON UNTUK HARI LEBARAN DAN DISKON INI 20% UNTUK PEMBELIAN TICKET ONLINE.'),
(2, 'Sale', '30K only'),
(3, 'Sale', '25K only');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idkursi` int(11) NOT NULL,
  `idpemutaran` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pembayaran` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `idkursi`, `idpemutaran`, `iduser`, `harga`, `pembayaran`) VALUES
(1, 4, 1, 1, 50000, 0),
(2, 5, 1, 1, 50000, 0),
(3, 6, 1, 1, 50000, 0),
(4, 33, 1, 1, 50000, 0),
(5, 34, 1, 1, 50000, 1),
(6, 35, 1, 1, 50000, 1),
(7, 36, 1, 1, 50000, 0),
(8, 37, 1, 1, 50000, 0),
(9, 38, 1, 1, 50000, 0),
(10, 2, 1, 1, 50000, 0),
(11, 3, 1, 1, 50000, 0),
(12, 1, 1, 1, 50000, 0),
(13, 14, 1, 1, 50000, 0),
(14, 15, 1, 1, 50000, 0),
(15, 16, 1, 1, 50000, 0),
(16, 8, 1, 1, 50000, 0),
(17, 9, 1, 1, 50000, 0),
(18, 10, 1, 1, 50000, 0),
(19, 8, 1, 1, 50000, 0),
(20, 9, 1, 1, 50000, 0),
(21, 10, 1, 1, 50000, 0),
(22, 18, 1, 1, 50000, 0),
(23, 19, 1, 1, 50000, 0),
(24, 20, 1, 1, 50000, 1),
(25, 29, 1, 1, 50000, 0),
(26, 30, 1, 1, 50000, 0),
(27, 21, 1, 1, 50000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pemutaran`
--

CREATE TABLE IF NOT EXISTS `pemutaran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtheater` int(11) NOT NULL,
  `idstudio` int(11) NOT NULL,
  `idfilm` int(11) NOT NULL,
  `idjadwal` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `pemutaran`
--

INSERT INTO `pemutaran` (`id`, `idtheater`, `idstudio`, `idfilm`, `idjadwal`) VALUES
(1, 1, 1, 1, 1),
(2, 1, 1, 1, 2),
(6, 1, 1, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE IF NOT EXISTS `studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(10) NOT NULL,
  `idtheater` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`id`, `nama`, `idtheater`) VALUES
(1, 'Studio 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE IF NOT EXISTS `theater` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `kota` varchar(20) NOT NULL,
  `hargabiasa` int(11) NOT NULL,
  `hargaweekend` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `langitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`id`, `nama`, `alamat`, `telpon`, `kota`, `hargabiasa`, `hargaweekend`, `latitude`, `langitude`) VALUES
(1, 'Tunjungan Plaza Mall', 'Jalan Tunjungan 21', '081217841555', 'Surabaya', 40000, 50000, -7.2630531, 112.7381256),
(2, 'Galaxy Mall', 'Kertajaya Indah 21', '081217841515', 'Surabaya', 40000, 50000, -7.2760473, 112.7796588),
(4, 'Senayan', 'Jalan Asia Afrika', '385673806t', 'Jakarta', 50000, 75000, -6.2276545, 106.7947817),
(6, 'Grand City Mall', 'Jalan Dr Soetomo', '12345678', 'Surabaya', 40000, 50000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `username`, `password`, `gender`, `phone`, `status`) VALUES
(1, 'm26415079@gmail.com', 'Verrell', 'verrell', '123', 0, '08981202096', 1),
(2, 'm26415080@gmail.com', 'Yosia', 'yosia', '123', 0, '08981202096', 1),
(5, 'm26415153@john.petra.ac.id', 'Gunawan Setiawan', 'gunawan', '123', 0, '08981202096', 1),
(4, 'm26415082@gmail.com', 'Mina', 'mina', '123', 1, '08981202096', 0),
(17, 'tino@gmail.com', '', '', '123', 0, '', 0),
(18, 'aaaa@gmail.com', 'anton', 'anton', '123', 0, '123', 0),
(21, 'anto@anton.com', 'Antonio Chandra', 'anton', 'anton', 1, '12345', 1),
(22, 'm26415058@john.petra.ac.id', 'Billy Jonathan', 'Biljo', '12345', 0, '0248958236', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
