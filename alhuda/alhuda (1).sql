-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Des 2021 pada 14.27
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alhuda`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `created_at`, `updated_at`, `email`, `password`, `name`, `c_password`) VALUES
(3, NULL, NULL, 'lama@gmail.com', '$2y$10$jaA.O6fJariecc/2D58/fOeeMx/m2aIXm5Pr/.BMOhwmnJen1m0HG', 'lama', 'lama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `prestasi` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `testimoni` varchar(500) NOT NULL,
  `foto` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`id`, `nama`, `prestasi`, `judul`, `testimoni`, `foto`) VALUES
(1, 'maya hapsari', 'juara dunia', 'tetap semangat', 'sangat bagus sekali', 'gambar-hp-iphone-x-wallpaper-dummy-handphone-dengan-layar-berwarna-model-iphone-x-untuk-png-preview.jpg'),
(3, 'maya', 'juara dunia', 'tetap semangat', 'sangat bagus sekali', 'gambar-hp-iphone-x-wallpaper-dummy-handphone-dengan-layar-berwarna-model-iphone-x-untuk-png-preview.jpg'),
(4, 'maya', 'juara dunia', 'tetap semangat', 'sangat bagus sekali', 'a4810f6cfeb9105575334401952f4c20.jpg'),
(5, 'maya', 'juara dunia', 'tetap semangat', 'sangat bagus sekali', 'a4810f6cfeb9105575334401952f4c20.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `keterangan`, `foto`, `tanggal`) VALUES
(3, 'kita', 'pasti', '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', '2021-12-08'),
(4, 'INI BERITA', 'HAI', 'b3.JPG', '2021-12-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `eskul`
--

CREATE TABLE `eskul` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jadwal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `eskul`
--

INSERT INTO `eskul` (`id`, `nama`, `keterangan`, `foto`, `jadwal`) VALUES
(1, 'tennis', 'olaharaga di sekolah', '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', ''),
(3, 'Mengaji', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 'Venellope and the princess Venellope e as princesas Ralphs break the internet Detona Ralph Wallpaper pc Wallpaper desktop.png', 'Senin 13.00-15.00\nKamis 14.00-16.00'),
(4, 'Mengaji', 'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.', 'Venellope and the princess Venellope e as princesas Ralphs break the internet Detona Ralph Wallpaper pc Wallpaper desktop.png', 'Senin 13.00-15.00\nKamis 14.00-16.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `fasilitas`
--

INSERT INTO `fasilitas` (`id`, `foto`, `keterangan`) VALUES
(2, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', '12314314'),
(3, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', 'dsklasdsa'),
(4, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', 'dsklasdsa'),
(5, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', 'dsklasdsa'),
(6, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', 'dsklasdsa'),
(7, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', 'dsklasdsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id` int(11) NOT NULL,
  `foto` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id`, `foto`) VALUES
(1, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `link`) VALUES
(3, 'Venellope and the princess Venellope e as princesas Ralphs break the internet Detona Ralph Wallpaper pc Wallpaper desktop.png', '', ''),
(4, 'Venellope and the princess Venellope e as princesas Ralphs break the internet Detona Ralph Wallpaper pc Wallpaper desktop.png', '', ''),
(5, 'Venellope and the princess Venellope e as princesas Ralphs break the internet Detona Ralph Wallpaper pc Wallpaper desktop.png', 'bisa', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbabelprov.go.id%2Fcontent%2Fwujudkan-sekolah-bersih-dan-sehat-dengan-uks&psig=AOvVaw15izbbdAUXmpXc7CMj1uzC&ust=1638951678835000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMjn0Pag0fQCFQAAAAAdAAAAABAJ'),
(6, '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', 'pembagian dana sosial', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fbabelprov.go.id%2Fcontent%2Fwujudkan-sekolah-bersih-dan-sehat-dengan-uks&psig=AOvVaw15izbbdAUXmpXc7CMj1uzC&ust=1638951678835000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMjn0Pag0fQCFQAAAAAdAAAAABAJ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `pesan` varchar(500) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id`, `email`, `pesan`, `nama`) VALUES
(1, 'lala@gmail.com', 'pengajuan surat rekomendasi', 'malalala'),
(2, 'lala@gmail.com', 'pengajuan surat rekomendasi', 'malalala'),
(3, 'tasya', 'hai', 'tasya'),
(4, 'tasya', 'hai', 'tasya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `keterangan`, `foto`) VALUES
(1, 'email', 'sditalhuda@gmail.com', '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg'),
(2, 'whatsapp', '+62 234 564 425', ''),
(3, 'facebook', 'SDIT Al-Huda', ''),
(4, 'youtube', 'SDIT Al-Huda', ''),
(5, 'instagram', 'sdit_alhuda', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_11_11_150637_create_settings_table', 1),
(10, '2021_12_08_141143_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `misi`
--

CREATE TABLE `misi` (
  `id` int(11) NOT NULL,
  `misi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `misi`
--

INSERT INTO `misi` (`id`, `misi`) VALUES
(1, 'hai'),
(3, 'persatuan bangsa'),
(4, 'persatuan bangsa'),
(5, 'persatuan bangsa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('11541b3c4c1b0a30db571d1cc79c433d2813b2a44e9d51e740a7ef99309e4682559f267e38dbc7f4', 1, 1, 'nApp', '[]', 0, '2021-12-08 09:22:08', '2021-12-08 09:22:08', '2022-12-08 16:22:08'),
('258aef8997d66e311872d4357ca379cf30527a676738de1c48436b16f7297d63179e0420bd7677eb', 2, 1, 'nApp', '[]', 0, '2021-12-08 08:57:11', '2021-12-08 08:57:11', '2022-12-08 15:57:11'),
('44465a2fc49727556d8d607c1616359048a1904935fe0f05fd7831b620a07358787d7a9f8e6fa77e', 4, 1, 'nApp', '[]', 0, '2021-12-08 09:49:53', '2021-12-08 09:49:53', '2022-12-08 16:49:53'),
('5b622925e24b8c2812681de8c801366c585ab71c74a03b49c27beebdede9fd508e3818fc1b82ad67', 2, 1, 'MyApp', '[\"admin\"]', 0, '2021-12-08 09:32:20', '2021-12-08 09:32:20', '2022-12-08 16:32:20'),
('639f764327dcbfb852cd3f19fe7b57e88eb1d823b9e420d55f8adc7df8c189df79ca31562849d289', 3, 1, 'MyApp', '[\"user\"]', 0, '2021-12-08 09:15:00', '2021-12-08 09:15:00', '2022-12-08 16:15:00'),
('669e1bcd1eb8f45f2e487faada77a1f6912ed787eb8d54c888c273eabff1a30b9f896d26cfab56a9', 2, 1, 'MyApp', '[\"admin\"]', 0, '2021-12-08 09:25:38', '2021-12-08 09:25:38', '2022-12-08 16:25:38'),
('76e8fc40fdca019686369f74786729731bd9011991945ea201feb674b19eb5d95ffca49a079e0f46', 2, 1, 'MyApp', '[\"admin\"]', 0, '2021-12-08 09:29:37', '2021-12-08 09:29:37', '2022-12-08 16:29:37'),
('893a365bfae368dc9aebcb98a02011dfcf49a22f2cde139a9946bac64ab8a13fb813e0554c2af1c5', 3, 1, 'MyApp', '[\"admin\"]', 0, '2021-12-08 10:56:03', '2021-12-08 10:56:03', '2022-12-08 17:56:03'),
('bb19854e541f7b581bfda3888950669735324bba266381498ef2f5a5444afa629423904155525eec', 2, 1, 'MyApp', '[\"admin\"]', 0, '2021-12-08 09:26:30', '2021-12-08 09:26:30', '2022-12-08 16:26:30'),
('caba4e122f358056780407c1e6fd270584e929de7c0e9d2a65edc7a0b2e8411744a2b82b21a2333d', 3, 1, 'MyApp', '[\"user\"]', 0, '2021-12-08 09:02:42', '2021-12-08 09:02:42', '2022-12-08 16:02:42'),
('cebb16c8e57eafa1a65fe2ffc16a836438cd7798ea3da2f3f8a5374d04c4c0db38c96dd19e7874e0', 3, 1, 'nApp', '[]', 0, '2021-12-08 09:47:26', '2021-12-08 09:47:26', '2022-12-08 16:47:26'),
('df1c3557b1d64ef177f6517e6f2dd44fe7028dcd6a6900663a5d4d12c542ab4ce6c3250e10e61d85', 3, 1, 'nApp', '[]', 0, '2021-12-08 09:02:25', '2021-12-08 09:02:25', '2022-12-08 16:02:25'),
('e837d62fc144507be72f66340ef98e7ee1e46fba9e380bb04dafece8620d5ed3f6c43667c7427321', 2, 1, 'nApp', '[]', 0, '2021-12-08 09:25:32', '2021-12-08 09:25:32', '2022-12-08 16:25:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'xWFuiZ2eU8JJlJ2Lz6pNbpeWNYbDAZnrO3QNvYpT', NULL, 'http://localhost', 1, 0, 0, '2021-12-08 07:11:33', '2021-12-08 07:11:33'),
(2, NULL, 'Laravel Password Grant Client', 'eMmEnvlnqYdEad47lhEbz8FSVze4FxsqVXdN78DT', 'users', 'http://localhost', 0, 1, 0, '2021-12-08 07:11:33', '2021-12-08 07:11:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-08 07:11:33', '2021-12-08 07:11:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengajar`
--

INSERT INTO `pengajar` (`id`, `nama`, `foto`, `jabatan`) VALUES
(1, 'fina', 'Aesthetic bohemian moon phase wall art.jpg', 'guru koding'),
(3, 'Ichi', 'a4810f6cfeb9105575334401952f4c20.jpg', 'waka');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `judul`, `isi`, `foto`, `tanggal`) VALUES
(4, 'Analysing Potential Problems', 'Consider that for a moment: everything we see around us is assumed to have had a cause and is contingent upon something else. However, when it comes to existence itself, it takes on the opposite. It’s mind boggling to think that something has always been and always will be. It goes contrary to what we experience in our lives.', 'Venellope and the princess Venellope e as princesas Ralphs break the internet Detona Ralph Wallpaper pc Wallpaper desktop.png', '2021-12-08'),
(5, 'tasya', 'Consider that for a moment: everything we see around us is assumed to have had a cause and is contingent upon something else. However, when it comes to existence itself, it takes on the opposite. It’s mind boggling to think that something has always been and always will be. It goes contrary to what we experience in our lives.', '10 Top New York City 1080P Wallpaper FULL HD 1080p For PC Background.jpg', '2021-12-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `lomba` varchar(255) NOT NULL,
  `peringkat` varchar(255) NOT NULL,
  `tingkat` varchar(255) NOT NULL,
  `tahun` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id`, `nama`, `lomba`, `peringkat`, `tingkat`, `tahun`) VALUES
(1, 'Ichi', 'Ngoding', '1', 'Internasional', 2021),
(3, 'Tasya', 'Ngoding', '1', 'Internasional', 2021);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sambutan`
--

CREATE TABLE `sambutan` (
  `id` int(11) NOT NULL,
  `sambutan` text NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sambutan`
--

INSERT INTO `sambutan` (`id`, `sambutan`, `nama`, `jabatan`, `foto`) VALUES
(1, 'Memasuki pergaulan global yang penuh dengan kompetisi ini, kita perlu menyiapkan mental anak-anak kita agar mampu bersaing dengan baik dengan memiliki moral/adab islami, kemandirian, kecerdasan, juga tentunya kreatifitas-inovasi sesuai tumbuh kembangnya.\\r\\n\\r\\nDi SDIT Al-Huda setiap siswa memiliki hak untuk berprestasi dan mendapatkan pelayanan yang baik. Karena kami memandang ini semua adalah amanah yang akan kami pertanggung jawabkan di hadapan Allah SWT. Tentu hal ini semakin terasa mudah dengan adanya kerjasama dari para orang tua siswa dalam menjalankan program sekolah.', 'Scarlett Johansson', 'Kepala Sekolah SDIT Al-Huda', 'Group 2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@gmail.com', NULL, 'superadmin', NULL, NULL, NULL),
(3, 'user', 'user@gmail.com', NULL, '$2y$10$bll19.IvKWUaaDquodPM8evXzvFi4YAnKnbg5lne9v0BulPkh2xk6', NULL, '2021-12-08 09:02:25', '2021-12-08 09:02:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vedeo`
--

CREATE TABLE `vedeo` (
  `id` int(11) NOT NULL,
  `vedeo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `vedeo`
--

INSERT INTO `vedeo` (`id`, `vedeo`) VALUES
(1, 'https://youtu.be/AU3W-_N0GyE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi`
--

CREATE TABLE `visi` (
  `id` int(11) NOT NULL,
  `visi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visi`
--

INSERT INTO `visi` (`id`, `visi`) VALUES
(1, 'tetap semangat tetap kompak');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `eskul`
--
ALTER TABLE `eskul`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `misi`
--
ALTER TABLE `misi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sambutan`
--
ALTER TABLE `sambutan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `vedeo`
--
ALTER TABLE `vedeo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visi`
--
ALTER TABLE `visi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `eskul`
--
ALTER TABLE `eskul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `misi`
--
ALTER TABLE `misi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengajar`
--
ALTER TABLE `pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
