-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2020 pada 07.36
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exoticfish`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `namaadmin` varchar(100) NOT NULL,
  `emailadmin` varchar(100) NOT NULL,
  `telefonadmin` varchar(100) NOT NULL,
  `fotoadmin` varchar(500) NOT NULL,
  `loginterakhir` datetime NOT NULL,
  `alamatadmin` text NOT NULL,
  `tladmin` date NOT NULL,
  `posisiadmin` enum('Admin Website','Admin Direksi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namaadmin`, `emailadmin`, `telefonadmin`, `fotoadmin`, `loginterakhir`, `alamatadmin`, `tladmin`, `posisiadmin`) VALUES
(1, 'fay', 'c8837b23ff8aaa8a2dde915473ce0991', 'alfahriz gustav', 'alfahrizgust@gmail.com', '082310709794', 'foto.jpg', '2020-01-06 02:06:37', 'jatiwaringin', '1999-06-06', 'Admin Direksi'),
(2, 'rara', 'd8830ed2c45610e528dff4cb229524e9', 'syafira', 'rara@gmail.com', '087876112413', '300266.jpg', '2019-12-29 13:29:53', 'Medan', '1997-07-07', 'Admin Website');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `idkurir` int(11) NOT NULL,
  `namakurir` varchar(100) NOT NULL,
  `telefonkurir` varchar(100) NOT NULL,
  `emailkurir` varchar(100) NOT NULL,
  `alamatkurir` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`idkurir`, `namakurir`, `telefonkurir`, `emailkurir`, `alamatkurir`) VALUES
(1, 'JNE', '088672283684', 'jne@gmail.com', 'Jakarta Selatan'),
(2, 'Tiki', '081767823221', 'tiki@gmail.com', 'Bekasi Timur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `idlog` int(11) NOT NULL,
  `idadmin` int(11) NOT NULL,
  `namadmin` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL,
  `log` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `idmember` int(11) NOT NULL,
  `namamember` varchar(100) NOT NULL,
  `telefonmember` varchar(100) NOT NULL,
  `jkmember` enum('Laki-Laki','Perempuan') NOT NULL,
  `tlmember` date NOT NULL,
  `alamatmember` text NOT NULL,
  `emailmember` varchar(100) NOT NULL,
  `fotomember` varchar(500) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pertanyaanlupa` varchar(250) NOT NULL,
  `jawabanlupa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`idmember`, `namamember`, `telefonmember`, `jkmember`, `tlmember`, `alamatmember`, `emailmember`, `fotomember`, `username`, `password`, `pertanyaanlupa`, `jawabanlupa`) VALUES
(1, 'Afi Al Fahriz', '082310709497', 'Laki-Laki', '1999-03-06', 'Jalan Mawar 3 No.14B Bintaro Pesanggrahan', 'afialfahriz.99@gmail.com', '1545079_894180553950116_32401761208460743_n.jpg', 'fay', 'c8837b23ff8aaa8a2dde915473ce0991', 'Warna Kesukaan', 'Biru'),
(2, 'Sandro Hamonangan', '098878981662', 'Laki-Laki', '1999-06-17', 'Jl. Bekasi, Pondok Gede', 'sandman@gmail.com', '_20170627_075625.JPG', 'sandman', '74be16979710d4c4e7c6647856088456', 'Aplikasi Kesukaan', 'ppt'),
(3, 'Syafira', '081344151664', 'Perempuan', '1997-07-07', 'Jl. Medan', 'rarasyaf@gmail.com', 'defaultprofil.png', 'rara', 'bd134207f74532a8b094676c4a2ca9ed', 'Buku Kesukaan', 'Novel'),
(4, 'Adjie Fajar Ramadhan', '081212431515', 'Laki-Laki', '2020-12-15', 'Komplek Bank Of Tokyo', 'adjiefr@gmail.com', 'defaultprofil.png', 'adjiefr1945', '9660955a67cf42c666c9131c1412476e', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `idongkir` int(11) NOT NULL,
  `idkurir` int(11) NOT NULL,
  `namakurir` varchar(100) NOT NULL,
  `wilayah` varchar(250) NOT NULL,
  `tarif` int(11) NOT NULL,
  `waktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`idongkir`, `idkurir`, `namakurir`, `wilayah`, `tarif`, `waktu`) VALUES
(1, 1, 'JNE', 'Jabodetabek', 20000, 2),
(2, 1, 'JNE', 'Jawa Barat', 25000, 3),
(3, 2, 'Tiki', 'Jabodetabek', 18000, 2),
(4, 2, 'Tiki', 'Jawa Tengah', 23000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idpembayaran` int(11) NOT NULL,
  `idpembelian` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tlbayar` date NOT NULL,
  `buktibayar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`idpembayaran`, `idpembelian`, `nama`, `bank`, `jumlah`, `tlbayar`, `buktibayar`) VALUES
(1, 1, 'afi', 'BCA', 296500, '2020-01-05', '20170926_143851.jpg'),
(2, 2, 'Adjie Fajar Ramadhan', '0123630129', 94000, '2020-12-15', 'pt-varuna-tirta-prakasya-persero BACKGROUND.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `idpembelian` int(11) NOT NULL,
  `idmember` int(11) NOT NULL,
  `pemesan` varchar(100) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `idongkir` int(11) NOT NULL,
  `alamatkirim` text NOT NULL,
  `tlbeli` date NOT NULL,
  `totalharga` int(11) NOT NULL,
  `wilayah` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `catatan` text NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Menunggu Pembayaran',
  `resi` varchar(100) NOT NULL,
  `kurir` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`idpembelian`, `idmember`, `pemesan`, `telefon`, `idongkir`, `alamatkirim`, `tlbeli`, `totalharga`, `wilayah`, `tarif`, `catatan`, `status`, `resi`, `kurir`) VALUES
(1, 1, 'afi', '082310709497', 1, 'bekasi', '2020-01-05', 296500, 'Jabodetabek', 20000, '', 'Pembayaran Berhasil', '', ''),
(2, 4, 'Adjie Fajar Ramadhan', '081212431515', 1, 'Komplek Bank of Tokyo Jl. Jayawijaya no.A49', '2020-12-15', 94000, 'Jabodetabek', 20000, 'Langsung ke mak saya', 'Pembayaran Berhasil', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pempro`
--

CREATE TABLE `pempro` (
  `idpempro` int(11) NOT NULL,
  `idpembelian` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hargaproduk` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pempro`
--

INSERT INTO `pempro` (`idpempro`, `idpembelian`, `idproduk`, `namaproduk`, `jumlah`, `hargaproduk`, `subharga`) VALUES
(1, 1, 1, 'Ikan Mas', 20, 2500, 50000),
(2, 1, 2, 'Ikan Lele', 51, 3500, 178500),
(3, 1, 4, 'Ikan Gurame', 2, 24000, 48000),
(4, 2, 4, 'Ikan Gurame', 1, 24000, 24000),
(5, 2, 3, 'Ikan Cupang', 1, 50000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `fotoproduk` varchar(500) NOT NULL,
  `namaproduk` varchar(250) NOT NULL,
  `kategoriproduk` enum('Ikan Hias','Ikan Konsumsi') NOT NULL,
  `hargaproduk` int(11) NOT NULL,
  `beratproduk` int(11) NOT NULL,
  `stokproduk` varchar(50) NOT NULL,
  `deskripsiproduk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idproduk`, `fotoproduk`, `namaproduk`, `kategoriproduk`, `hargaproduk`, `beratproduk`, `stokproduk`, `deskripsiproduk`) VALUES
(1, 'ikanmas1.jpg', 'Ikan Mas', 'Ikan Hias', 2500, 30, '100', 'Ikan Mas Umur 3 bulan, sehat, lincah. Bisa dipelihara atau dibuat pakan.'),
(2, 'ikanlele1.jpg', 'Ikan Lele', 'Ikan Konsumsi', 3500, 150, '500', 'Ikan Lele Umur 2 bulan, sehat, dagingnya gurih. Cocok untuk menu masakan.'),
(3, 'cupang1.jpg', 'Ikan Cupang', 'Ikan Hias', 50000, 25, '5', 'Ikan Cupang Beta Red Hias'),
(4, 'gurame1.jpg', 'Ikan Gurame', 'Ikan Konsumsi', 24000, 700, '10', 'Gurame Air Tawar Besar, enak untuk dimasak bersama keluarga'),
(5, 'ikanairwarna.jpg', 'Ikan Airwarna', 'Ikan Hias', 12000000, 2000, '2', 'Ikan hias airwarna red flame usia 8 bulan'),
(6, 'guppy.jpg', 'Ikan Guppy Blue Moon', 'Ikan Hias', 800000, 200, '2', 'Ikan Hias Guppy Blue moon '),
(7, 'kerapu.jpg', 'Ikan Kerapu Batik', 'Ikan Konsumsi', 250000, 400, '600', 'Kerapu Batik tangkapan selalu fresh dari laut'),
(8, 'patin.jpg', 'Ikan Patin', 'Ikan Konsumsi', 26000, 1000, '10000', 'Ikan Patin Konsumsi, harga untuk per kilogram'),
(9, 'koi.jpg', 'Ikan Koi Hias', 'Ikan Hias', 2000000, 900, '10', 'Ikan Koi Hias umur 1.5 tahun, berat 900 gram berbagai warna'),
(10, 'bawal.jpg', 'Ikan Bawal', 'Ikan Konsumsi', 4000, 12500, '1000', 'Ikan Bawal konsumsi, harga jual per kilogram. Hasil budidaya dan selalu fresh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `idpromo` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `namaproduk` varchar(250) NOT NULL,
  `harganormal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `hargadiskon` int(11) NOT NULL,
  `fotoproduk` varchar(500) NOT NULL,
  `deskripsiproduk` text NOT NULL,
  `kategoriproduk` enum('Ikan Hias','Ikan Konsumsi') NOT NULL,
  `beratproduk` int(11) NOT NULL,
  `stokproduk` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`idpromo`, `idproduk`, `namaproduk`, `harganormal`, `diskon`, `hargadiskon`, `fotoproduk`, `deskripsiproduk`, `kategoriproduk`, `beratproduk`, `stokproduk`) VALUES
(1, 1, 'Ikan Mas', 2500, 30, 1750, 'ikanmas1.jpg', 'Ikan Mas Umur 3 bulan, sehat, lincah. Bisa dipelihara atau dibuat pakan.', 'Ikan Hias', 30, '<20'),
(2, 3, 'Ikan Cupang', 50000, 10, 45000, 'cupang1.jpg', 'Ikan Cupang Beta Red lebar', 'Ikan Hias', 25, '<2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `idulasan` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `namamember` varchar(100) NOT NULL,
  `fotomember` varchar(500) NOT NULL,
  `tu` datetime NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `ulasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`idkurir`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`idlog`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idmember`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`idongkir`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idpembayaran`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`idpembelian`);

--
-- Indeks untuk tabel `pempro`
--
ALTER TABLE `pempro`
  ADD PRIMARY KEY (`idpempro`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`idpromo`);

--
-- Indeks untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`idulasan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `idkurir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `idlog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `idmember` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `idongkir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idpembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `idpembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pempro`
--
ALTER TABLE `pempro`
  MODIFY `idpempro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `idpromo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `idulasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
