-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2019 at 12:38 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portal_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE `tb_berita` (
  `id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `tanggal_posting` date NOT NULL,
  `isi_berita` text NOT NULL,
  `penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `foto`, `judul_berita`, `tanggal_posting`, `isi_berita`, `penulis`) VALUES
(1, 'foto_1.jpg', 'Mau 17 Agustus-an di Gunung, Kerinci Hingga Rinjani Buka Lho', '2019-07-09', 'Gunung jadi salah satu pilihan untuk merayakan hari kemerdekaan RI atau 17 Agustus-an. Gunung-gunung yang populer seperti Kerinci, Semeru dan Rinjani bisa kamu daki. Dikonfirmasi detikcom, Selasa (9/7/2019), dimulai dari Gunung Kerinci akan ada upacara tujuh belasan di area puncak. Itu seperti perayaan pada tahun lalu. </br></br>\r\n\"Gunung Kerinci tetap membuka jalur pendakian dan pas perayaan 17 Agustus akan ada upacara di puncaknya. Seperti tahun kemarin yang ada Rocky Gerung,\" kata KBTU TNKS Agusman. Dijelaskan Agusman bahwa meski musim kemarau, di Gunung Kerinci tetap sering terjadi hujan di sore hari. Dan, terjadi peningkatan jumlah pendaki di tiap tahunnya.</br></br>\r\nJika kamu ingin mendaki Gunung Kerinci ada dua jalur di sana, yakni melaluoi Solok Selatan dengan lama perjalanan 3 hari pendakian. Satunya lagi dari Jambi dengan 10 jam perjalanan hingga lokasi kemping. \"Pantangan di Gunung Kerinci yakni makan pakai piring dan jangan langsung dari periuk, lalu jangan sombong. Karena pernah terjadi kesurupan,\" tegas Agusman.</br></br>\r\nMenurut data, Gunung Kerinci pernah didaki paling banyak 3.000 orang dalam satu hari dan di puncaknya sudah nggak ada tempat kemping. Tahun ini akan ada penyusunan aturan pembatasan jumlah pendaki. \"Baru tahun ini mau disusun, carriying capacity tahun depan diterapkan. Sekarang baru ada aturan ramah sampah, kita tahan KTP lalu kita itung sampah dan saat turun kita hitung kembali baru diambil KTP-nya,\" urai dia.', 'Antonio Sikumbang'),
(2, 'foto_2.jpg', 'Hai Para Pendaki, Ini yang Harus Kamu Tahu Tentang Hipotermia', '2019-01-08', 'Salah satu hal yang dihindari saat pendakian gunung adalah hipotermia. Berikut, hal-hal penting yang harus kamu tahu tentangnya. Di awal tahun 2019 ini, tak sedikit pendaki gunung terkena hipotermia. Ada di Gunung Slamet dan Semeru, serta menjadi perbincangan di media sosial\r\n</br></br>\r\nApa itu hipotermia?\r\n</br>\r\n\"Hipotermia itu adalah suhu tubuh turun sampai di bawah 37 derajat Celcius (suhu tubuh normal manusia), karena kedinginan. Itu ada beberapa stadiumnya,\" terang Tjahjadi Nurtantio, guide pendakian gunung dari DAKS Die Welt der Berge (German Alpine and Climbing School), operator wisata minat khusus dari Jerman, Selasa (8/1/2019).\r\n</br></br>\r\n\"Hipotermia bisa sampai membuat orang meninggal dunia, jika tidak dilakukan penanganan yang cepat dan tepat,\" tegas Tjahjadi. Cuaca yang dingin menjadi faktor utama para pendaki terkena hipotermia. Namun selain itu, Tjahjadi menyebut satu hal penting lainnya yang sering terlupakan yakni angin.\r\n</br></br>\r\n\"Yang paling sering dilupakan pendaki adalah pakaian tahan angin atau windproof. Begini, puncak-puncak gunung di Indonesia itu ketinggiannya rata-rata 3.000-an mdpl dan suhunya tidak sampai minus. Mungkin paling dingin bisa sampai 5 derajat Celcius. Tapi, kalau ditambah kecepatan angin yang kencang, itu bisa membuat terkena hipotermia lebih cepat karena kita sudah kehilangan banyak energi dan akan cepat sekali suhu tubuh turun,\" paparnya.\r\n</br></br>\r\nBagaimana tanda-tanda orang terkena hipotermia?\r\n</br>\r\n\"Tanda pertamanya adalah jari kaki dan jari tangan yang dingin. Kemudian, badan menggigil terus menerus. Namun menggigil itu wajar ya, karena itu reaksi alamiah tubuh untuk melawan dingin, akan tetapi kalau terus-terusan itu sudah harus dicek benar kondisi tubuhnya,\" ujar Tjahjadi.</br></br>\r\nBagaimana cara mengantisipasi hipotermia?\r\n</br>\r\n\"Pakaiannya yang basah harus segera diganti supaya tetap menjaga suhu tubuh, beri selimut, beri minuman hangat dan hindari paparan angin,\" tutur Tjahjadi yang juga co-founder CSVakansi, operator wisata minat khusus di Indonesia.\r\n</br></br>\r\n\"Tjahjadi berpesan, keselamatan saat mendaki gunung adalah nomor satu dan tidak bisa ditawar. Kalau dirasa kondisi tubuh tidak kuat, alangkah baiknya turun dan membatalkan pendakian.\r\n\r\n\"Selalu ingat, safety first. Nyawa kamu tidak bisa ditawar dengan apapun,\" tutupnya.	(aff/aff)', 'Yahya Matana'),
(3, 'foto_3.jpg', 'Libur Lebaran, Pendakian Gunung Merbabu Mulai Ramai', '2018-03-07', 'Bersamaan dengan libur Lebaran, pendakian menuju Gunung Merbabu melalui Basecamp Thekelan di Kabupaten Semarang mulai ramai. Bahkan sejak Lebaran hingga hari ini tercatat sekitar 365 pendaki.\r\n</br></br>\r\nBerdasarkan data di Basecamp Thekelan, Desa Batur, Kecamatan Getasan, Kabupaten Semarang, jumlah pendaki Gunung Merbabu sejak, Sabtu (16/6/2018) hingga hari ini, Rabu (20/6/2018), pukul 16.00 WIB, ada 365 orang. Mereka yang melakukan pendakian melalui jalur Thekelan dan melakukan registrasi datang dari berbagai kota. Bahkan, halaman basecamp penuh dengan parkiran sepeda motor milik para pendaki. \r\n</br></br>\r\nSalah satu pengelola Basecamp Thekelan, Bento Abhi Dhamma mengatakan, sejak tanggal 16 Juni hingga hari ini tanggal 20 Juni 2018 ada 365 pendaki.\r\n</br></br>\r\n\"Sejak tanggal 16-20 Juni 2018, pukul 16.00 WIB, ada 365 pendaki. Sedangkan khusus hari ini yang melakukan registrasi untuk melakukan pendakian ada 55 orang,\" kata Bento saat ditemui di Basecamp Thekelan, Getasan, Rabu (20/6/2018).\r\n</br></br>\r\nSeorang pendaki, Ahmad Hidayat (28), asal Sumedang, Jawa Barat, mengatakan, datang bersama tiga temannya. Kemudian sampai di basecamp, Senin (18/6/2018) dan terus naik Gunung Merbabu. \r\n\r\n\"Pada tanggal 19 Juni 2018, sekitar pukul 16.00 WIB, kami turun dari puncak dan sampai base camp pukul 20.00 WIB. Terus kami bermalam di Base Camp,\" katanya saat ditemui di Basecamp Thekelan.\r\n</br></br>\r\n\"Lebaran tahun lalu naik gunung di Jawa Barat, sekarang di Merbabu. Kami pilih saat Lebaran karena waktu liburnya panjang,\" kata dia. Pendaki lainnya, Sopirin (21), asal Purwodadi yang datang bersama tiga temannya. \"Kami naik tanggal 19 Juni pukul 21.00 WIB, sampai puncak dua, terus pukul 05.00 WIB, langsung turun. Kalau tiga teman kami lanjut naik sampai puncak,\" katanya.	\r\n', 'Made Irawan\r\n'),
(4, 'foto_4.jpg', '6 Hal Buruk yang Dilakukan Pendaki Saat Mendaki Gunung', '2019-06-29', 'Berikut hal-hal buruk yang dilakukan pendaki saat mendaki gunung seperti dirangkum KompasTravel dari berbagai pemberitaan.\r\n\r\n1. Mendaki tanpa persiapan Mendaki gunung merupakan aktivitas outdoor atau luar ruangan yang tidak bisa dilakukan secara sembarangan. Perlu persiapan, mulai fisik, peralatan, hingga pengetahuan mengenai jalur agar pendakian berjalan dengan lancar.\r\n\r\n2. Memakai setelan pakaian yang tidak cocok untuk mendaki Sebagai sebuah aktivitas fisik, tentu mendaki gunung juga memerlikan setelan pakaian yang sesuai. Setelan pakaian yang nyaman tidak hanya membantu pendaki untuk nyaman bergerak, tetapi juga ketika menghadapi kondisi cuaca di gunung seperti panas dan dingin.\r\n\r\n3. Berisik di tenda saat malam hari Bercanda dengan kawan mendaki memang merupakan aktivitas yang mengasyikkan dalam pendakian. Selain agar semakin akrab, pendakian bisa jadi tidak terasa lelah jika diselingi dengan candaan bersama teman.\r\n\r\n4. Membuat api unggun Banyak pengelola basecamp pendakian yang melarang pendaki gunung membuat api unggun atau perapian, khususnya ketika musim kemarau. Hal itu karena perapian rawan membuat gunung mengalami kebakaran hutan dan lahan.\r\n\r\n5. Meninggalkan rekan tim Saat mendaki bersama tim, idealnya anggota tim harus berjalan berdekatan. Tak boleh ada satu orang yang memisahkan diri dengan berjalan terlebih dahulu atau tertinggal di belakang. Hal itu agar semua anggota tim bisa selamat hingga sampai basecamp kembali.\r\n\r\n6. Membuang sampah sembarangan dan melakukan vandalisme\r\nInilah salah satu kebiasaan buruk yang dilakukan banyak pendaki. Mereka membuang sampah seperti properti foto seperti kertas, plastik bungkus makanan, mencoret-coret batu, dan lainnya.\r\n\r\n', 'Anggara Wikan Prasetya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_info`
--

CREATE TABLE `tb_info` (
  `id_jalur` int(100) NOT NULL,
  `foto_ig` varchar(100) NOT NULL,
  `judul_gunung` varchar(40) NOT NULL,
  `desc_gunung` text NOT NULL,
  `ketinggan` varchar(15) NOT NULL,
  `biaya` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_info`
--
ALTER TABLE `tb_info`
  ADD PRIMARY KEY (`id_jalur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_info`
--
ALTER TABLE `tb_info`
  MODIFY `id_jalur` int(100) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
