-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 04:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fadelia`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `bukuID` int(11) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `kategoriID` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahunTerbit` int(11) DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`bukuID`, `sampul`, `kategoriID`, `judul`, `penulis`, `penerbit`, `tahunTerbit`, `stok`, `deskripsi`) VALUES
(8, 'samudra.jpg', 9, 'Wow! Ensiklopedia 4D: Rahasia Samudra', 'Devar Entertainment', 'Gramedia Pustaka Utama', 2021, 30, 'Apa kau penasaran dasar samudra seperti apa? Jangan khawatir, tidak perlu kapal selam untuk menjelajahi samudra-samudra misterius di dunia! Dengan teknologi Augmented Reality (AR), Ensiklopedia Rahasia Samudra akan membawamu bertemu makhluk-makhluk laut langka dan membuatmu berdecak kagum pada keindahan bawah laut. Jadi, tunggu apa lagi? Ayo selidiki keragaman samudra-samudra dunia!'),
(13, 'doramenyon.jpg', 12, 'Doraemon Petualangan 18', 'Fujiko F Fujio', 'Gramedia Komik', 2017, 7, '\"Berawal dari tugas sekolah yang mewajibkan siswa meneliti tentang laut, Nobita dkk. melakukan petualangan ke pulau harta karun yang terletak di pantai selatan.\r\nDengan bantuan peralatan dari Doraemon, mereka akhirnya memulai petualangan mengarungi lautan. Namun dalam perjalanan kapal yang mereka tumpangi dihantam badai dahsyat!\"'),
(14, 'biografi.jpg', 10, 'Biografi Gus Dur', 'Greg Barton', 'Ircisod', 2019, 24, 'Pada tahun 1989 dia tinggal di Jakarta dan berkenalan dengan Gus Dur untuk pertama kalinya. Dari pertemuan yang hangat dan menyenangkan itu Greg akhirnya menjadi sahabat Gus Dur hingga sisa hidupnya. Tak jarang Gus Dur mengajak mahasiswa ini menemaninya dalam berbagai tugas kenegaraan ketika menjadi presiden. Dan hubungan pribadi inilah yang menjadi sumber informasi dari buku biografi Gus Dur. Gus Dur memang kita kenal sebagai seorang tokoh Indonesia yang nyeleneh, yang asal ngomong. Kadang–kadang pernyataannya lucu, kadang membingungkan, dan lebih sering tajam dan kasar.'),
(15, 'raja dan ratu.jpg', 13, 'Raja untuk Ratu', 'Tresia', 'Coconutbook', 2021, 19, 'Raja Gemilang, salah satu murid yang paling disegani dan ditakuti di SMA Garuda. Bersama dengan Ratu Setia Wijaya, mereka berdua menjalani kehidupan di masa putih abu-abu dengan manis dan sederhana. Tidak ada satu pun seulas sapa yang terlewati pada setiap harinya. Hingga sampai suatu saat, keadaan berbalik dengan begitu hebat. Tidak ada lagi Raja dengan kelembutannya. Hanya ada kebencian yang tersirat ketika melihat Ratu dengan sendunya berusaha untuk mengembalikan keadaan seperti sebelumnya. Ditambah lagi dengan teror dan teka-teki yang mulai bermunculan, membuat hubungan keduanya menjadi lebih rumit dari biasanya.'),
(16, 'cdg.jpg', 14, 'Buku Mahir Web Programming', 'Ir. Yuniar Supardi dan Defri Faizal Maulana S.', 'Elex Media Komputindo', 2019, 48, '“Buku Mahir Web Programming” ini berisi tentang cara-cara pembuatan program web dengan PHP secara mudah dan lengkap melalui contoh dari beberapa studi kasus.\r\nBuku ini akan memandu Anda dalam membuat program web dengan mudah dalam waktu singkat, serta dapat dipakai mahasiswa atau programmer yang ingin belajar pemrograman PHP tingkat lanjut. Buku ini juga mempunyai nilai lebih, yaitu pembahasan pembuatan aplikasi web yang lebih dinamik dan sangat bermanfaat bagi pengguna.'),
(17, 'jjk.jpg', 12, 'Jujutsu Kaisen', 'Gege Akutami', 'Elex Media Komputindo', 2021, 15, 'Yūji Itadori adalah seorang siswa SMA dengan atletisitas yang tidak wajar yang tinggal di Sendai bersama kakeknya. Ia sering menghindari Klub Lari karena keengganannya pada bidang atletik, meskipun dia memiliki bakat bawaan untuk olahraga tersebut. Sebaliknya, dia memilih untuk bergabung dengan Klub Penelitian Ilmu Gaib, agar dirinya dapat bersantai dan bergaul dengan para seniornya. Setiap hari, Yūji meninggalkan sekolah pada pukul 17.00 untuk mengunjungi kakeknya di rumah sakit.');

-- --------------------------------------------------------

--
-- Table structure for table `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `kategoriID` int(11) NOT NULL,
  `namaKategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategoribuku`
--

INSERT INTO `kategoribuku` (`kategoriID`, `namaKategori`) VALUES
(9, 'Ensiklopedia'),
(10, 'Biografi'),
(12, 'Komik'),
(13, 'Novel'),
(14, 'Buku Pelajaran');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `peminjamanID` int(11) NOT NULL,
  `kodePinjam` char(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `bukuID` int(11) DEFAULT NULL,
  `tgl_peminjaman` date DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `statusPeminjaman` enum('dipinjam','dikembalikan','','') DEFAULT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`peminjamanID`, `kodePinjam`, `userID`, `bukuID`, `tgl_peminjaman`, `tgl_pengembalian`, `statusPeminjaman`, `jumlah`) VALUES
(49, 'PB011', 2, 8, '2024-02-21', '2024-02-28', 'dikembalikan', 1),
(50, 'PB012', 6, 16, '2024-02-20', '2024-02-27', 'dipinjam', 2);

--
-- Triggers `peminjaman`
--
DELIMITER $$
CREATE TRIGGER `kembali_buku` AFTER UPDATE ON `peminjaman` FOR EACH ROW BEGIN 
UPDATE buku SET stok = stok + old.jumlah
WHERE bukuID = old.bukuID;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pinjam_buku` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN 
UPDATE buku SET stok = stok-new.jumlah
WHERE bukuID = new.bukuID;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ulasanbuku`
--

CREATE TABLE `ulasanbuku` (
  `ulasanID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `bukuID` int(11) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasanbuku`
--

INSERT INTO `ulasanbuku` (`ulasanID`, `userID`, `bukuID`, `ulasan`, `rating`) VALUES
(9, 2, 8, 'KITA SEPERTI IKUT MASUK KE DALAM CERITA MENYELAMI SAMUDRA, REKOMENDASI BANGET BUAT TEMAN-TEMAN!', 9),
(13, 2, 14, 'Ceritanya seruu, kita jadi bisa tahu latar belakang pak Gusdur', 8),
(14, 2, 13, 'well', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `namaLengkap` varchar(150) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `level` enum('admin','petugas','anggota','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `email`, `telp`, `namaLengkap`, `alamat`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@email.com', NULL, 'administrator', 'admin', 'admin'),
(2, 'dell', 'ddc8d92e26e5c05ceab762757a90f4a3', 'deliaa@gmail.com', '08727328632', 'fdelia p', 'citapen', 'anggota'),
(4, 'bayu', '92360c2c392c85b23f38c188996f8d74', 'bayuu123@gmail.com', '0892847367', 'bayuuuuuu', 'batujajar', 'petugas'),
(5, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas@gmail.com', '08887773322', 'petugas2', 'galanggang', 'petugas'),
(6, 'alaska', '26fb123c6a31d77a3ec3d99545df216b', 'alaskaa@email.com', '0812345678', 'alaska imanuel', 'bandung', 'anggota');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`bukuID`),
  ADD KEY `kategoriID` (`kategoriID`);

--
-- Indexes for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`kategoriID`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`peminjamanID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bukuID` (`bukuID`);

--
-- Indexes for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD PRIMARY KEY (`ulasanID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bukuID` (`bukuID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `bukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `kategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `peminjamanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  MODIFY `ulasanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategoriID`) REFERENCES `kategoribuku` (`kategoriID`) ON DELETE CASCADE;

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `fk_bukuID_peminjaman` FOREIGN KEY (`bukuID`) REFERENCES `buku` (`bukuID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_userID_peminjaman` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`bukuID`) REFERENCES `buku` (`bukuID`);

--
-- Constraints for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD CONSTRAINT `fk_bukuID_ulasanbuku` FOREIGN KEY (`bukuID`) REFERENCES `buku` (`bukuID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_userID_ulasanbuku` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE,
  ADD CONSTRAINT `ulasanbuku_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `ulasanbuku_ibfk_2` FOREIGN KEY (`bukuID`) REFERENCES `buku` (`bukuID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
