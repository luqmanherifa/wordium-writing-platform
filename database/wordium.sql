-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 04:34 AM
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
-- Database: `wordium`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web', 'web', '2023-03-13 18:27:09', '2023-03-13 18:27:09'),
(2, 'Design', 'design', '2023-03-13 18:27:09', '2023-03-13 18:27:09'),
(3, 'Game', 'game', '2023-03-13 18:27:09', '2023-03-13 18:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_07_025505_create_posts_table', 1),
(6, '2023_03_07_092416_create_categories_table', 1),
(7, '2023_03_14_032413_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(29, 2, 1, 'Apple’s Next Big Thing: A Business Model Change', 'apple-s-next-big-thing-a-business-model-change', 'post-images/DqQSQVJpsRMK4aPZiKJPjpgt4fjcOYRhItUVMD7C.png', 'The past three Monday Notes looked at possible candidates for Apple’s NBT (Next Big Thing), a product category that could launch an iPhone-like growth wave now that the smartphone market approaches sa...', '<div>The past three Monday Notes looked at possible candidates for Apple’s NBT (Next Big Thing), a product category that could launch an iPhone-like growth wave now that the smartphone market approaches saturation. For perspective, 2021 iPhone revenue was $192B, more than half of Apple’s total revenue of $366B, this from almost nothing ($123M) in 2007. And this doesn’t count App Store revenue, mostly for iPhone apps. The numbers aren’t directly disclosed but reliable sources estimate tens of billions of dollars in net revenue, the riches Apple gets to keep after paying developers.<br><br>We’ve looked at three fields of opportunity: The unacknowledged Apple Car (the “Titan” project), Augmented Reality (AR) devices, and forays into the healthcare market, none of which is a feasible candidate. The car project looks unrealistically adventurous; AR devices, while more likely, probably wouldn’t enjoy the everywhere-all-the-time use that is the mark of smartphones; and, while the healthcare field is huge and open to more effective ways to spend our money, doing-well-while-doing-good devices, such as hearing aids, don’t offer iPhone-like potential. I hope I’m wrong on one or more of these opportunities, but I just don’t see a huge new Apple hardware growth wave in our future.</div>', NULL, '2023-03-26 23:43:08', '2023-03-27 00:02:02'),
(30, 1, 1, 'Our Statement on the Passing of Her Majesty Queen Elizabeth II', 'our-statement-on-the-passing-of-her-majesty-queen-elizabeth-ii', 'post-images/4otqoo2z7T2xghpBAkvp21ACdign4BdlEr1ldf90.png', 'From the day of her coronation 70 years ago — the first one ever televised — to this very moment, as countless tributes are being posted online in her honor, Her Majesty Queen Elizabeth II has captiva...', '<div>From the day of her coronation 70 years ago — the first one ever televised — to this very moment, as countless tributes are being posted online in her honor, Her Majesty Queen Elizabeth II has captivated the world. Today, Michelle and I join so many others who are celebrating her life and mourning her passing.<br><br>Her Majesty was just 25 years old when she took on the enormous task of helming one of the world’s great democracies. In the decades that followed, she would go on to make the role of Queen her own — with a reign defined by grace, elegance, and a tireless work ethic, defying the odds and expectations placed on women of her generation.</div>', NULL, '2023-03-26 23:52:22', '2023-03-26 23:52:22'),
(31, 3, 1, 'How the Principles of Architecture Can Help Your Writing', 'how-the-principles-of-architecture-can-help-your-writing', 'post-images/DNi5WtmzXbbfYDCVuTkZ5nPqSBLbnbULyhsavRZd.png', 'I always dread trying to talk about structuring pieces of writing because it’s just so damn hard to talk about. And yet its importance is enormous, so we need to talk about it! In fact, structure migh...', '<div>I always dread trying to talk about structuring pieces of writing because it’s just so damn hard to talk about. And yet its importance is enormous, so we need to talk about it! In fact, structure might be the difference between good writing and great writing. There are lots of people who can research and report.<br><br>I always dread trying to talk about structuring pieces of writing because it’s just so damn hard to talk about. And yet its importance is enormous, so we need to talk about it! In fact, structure might be the difference between good writing and great writing. There are lots of people who can research and report.</div>', NULL, '2023-03-26 23:53:34', '2023-03-26 23:53:34'),
(32, 1, 1, 'Quiet Quitting & Strategy', 'quiet-quitting', 'post-images/CgUJAIuhbxeCQONkZtR4uaOMhZo0ZTgFTRGe4i8A.png', 'Quiet Quitting has come to define the concept of ceasing to commit meaningfully to one’s job and just doing enough to meet the definitions in one’s job description, essentially a form of ‘work to rule...', '<div>Quiet Quitting has come to define the concept of ceasing to commit meaningfully to one’s job and just doing enough to meet the definitions in one’s job description, essentially a form of ‘work to rule.’ The general view is that it has become a more prevalent phenomenon of late — increasing in frequency.</div><div><br>It is interesting to note the alliterative name of this phenomenon. Research shows that alliteration improves processing fluency for our brains, which results in a term featuring alliteration being perceived as truer than one without — see this for a nice overview of the processing fluency field. I believe that Quiet Quitting has become an important concept in the mind of the public because the processing fluency of its awesome new name has resulted in it being perceived as ‘the truth.’</div>', NULL, '2023-03-26 23:54:45', '2023-03-26 23:54:45'),
(33, 1, 1, 'When My Mother Wrote a Letter to the Queen', 'when-my-mother-wrote-a-letter-to-the-queen', 'post-images/2zG3vWanIKvhYnJiUUzH62oiPqJ2MyraMz3m5rc3.png', 'My mother was raised on a farm in Southern California, but her grandmother, Isabel, had been a Downton Abbey-era downstairs domestic at ‘a fine house’ outside London.My mother was born on the Queen’s...', '<div>My mother was raised on a farm in Southern California, but her grandmother, Isabel, had been a Downton Abbey-era downstairs domestic at ‘a fine house’ outside London.</div><div><br>My mother was born on the Queen’s tenth birthday. This delighted her grandmother.</div><div><br>My mother adored her grandmother. Her grandmother adored the Queen.</div><div><br>During WWII, my mother’s family sent fresh fruit and vegetables to their bombed out, hungry, working-class relatives in England — to Isabel’s brothers and sisters and nieces and nephews.</div>', NULL, '2023-03-26 23:55:36', '2023-03-26 23:55:36'),
(34, 2, 1, 'The Secret Ingredient to Telling a Good Story', 'the-secret-ingredient-to-telling-a-good-story', 'post-images/vZowOmxVHCgbCVpJPReooqGc7NhqX2ftwSLRnkm6.png', 'I have this friend who considers himself a professional in his field. When he encounters other professionals acting unprofessionally, he reacts with some reserved disgust, as well he should. I’m like...', '<div>I have this friend who considers himself a professional in his field. When he encounters other professionals acting unprofessionally, he reacts with some reserved disgust, as well he should. I’m like that too. Everyone I care to know is like that, because it’s a sign of pride; frustration at a peer acting carelessly, with no respect for the art you both work in, is a sign you Give A Shit.</div><div><br>One of the things I Give A Shit about the most is telling stories <em>effectively, </em>and it’s frustrating to see so many people fail to do so. I’ve talked about it before, but for me, a lot of this comes down to the simple fact that <em>everyone</em> thinks they can tell a story.</div>', NULL, '2023-03-26 23:56:48', '2023-03-26 23:56:48'),
(35, 2, 1, 'A linear thinker, a design thinker and a systems thinker walk into a bar…', 'a-linear-thinker-a-design-thinker-and-a-systems-thinker-walk-into-a-bar', 'post-images/RYxACS2GZNIYNCnRGAPFW93hP0EsJX2PDVUZxz7B.png', 'The linear thinker draws a floor plan. He details the bedrooms, kitchen, bathroom, lounge, etc. He makes sure that each room has adequate light, heating, the correct number of plugs, etc.The linear th...', '<div>The linear thinker draws a floor plan. He details the bedrooms, kitchen, bathroom, lounge, etc. He makes sure that each room has adequate light, heating, the correct number of plugs, etc.<br><br>The linear thinker draws a floor plan. He details the bedrooms, kitchen, bathroom, lounge, etc. He makes sure that each room has adequate light, heating, the correct number of plugs, etc.<br><br>The linear thinker draws a floor plan. He details the bedrooms, kitchen, bathroom, lounge, etc. He makes sure that each room has adequate light, heating, the correct number of plugs, etc.</div>', NULL, '2023-03-26 23:57:47', '2023-03-26 23:57:47'),
(36, 3, 1, 'Why Printers Are So Terrible', 'why-printers-are-so-terrible', 'post-images/7K4Kmd5CIKDRU6EoDdOsVJnwZFK6kpMRhV1XLJeG.png', 'Recently I participated in a discussion on Twitter started by someone who was looking for a new printer.This prompted conversation on a subject that’s both common and dismal:“Why are printers so terri...', '<div>Recently I participated in a discussion on Twitter started by someone who was looking for a new printer.</div><div><br>This prompted conversation on a subject that’s both common and dismal:</div><blockquote><br>“Why are printers so terrible?”</blockquote><div>Recently I participated in a discussion on Twitter started by someone who was looking for a new printer.</div><div><br>This prompted conversation on a subject that’s both common and dismal:</div><blockquote><br>“Why are printers so terrible?”</blockquote>', NULL, '2023-03-26 23:58:51', '2023-03-26 23:58:51'),
(37, 3, 1, 'How I Structure My Teams for Growth', 'how-i-structure-my-teams-for-growth', 'post-images/PjIjwZO2e2DYRbnOV1A4oCDVBm1KByvv8T0SSulT.png', 'Having worked in a number of scale-ups in the last 10 years, there are a few principles I have adopted for scaling Tech and Product teams.The first one, is to organize teams to be cross-functional. Ge...', '<div>Having worked in a number of scale-ups in the last 10 years, there are a few principles I have adopted for scaling Tech and Product teams.</div><div><br>The first one, is to organize teams to be cross-functional. Generally, to get any product built, you need Product Managers to represent the business, Product Designers to represent the customer and Engineers to build.</div><div><br>I tend to organize teams to be 5–10 people, following the two pizza teams rule, made famous at AWS, with a Product Trio leading each team.</div>', NULL, '2023-03-27 00:00:02', '2023-03-27 00:00:02'),
(38, 1, 1, 'Let’s Talk More About Rejection', 'let-s-talk-more-about-rejection', 'post-images/pcXcgXpjeKg3bLIvJHnKEnd8RGKZYCVDB2StAu02.png', 'The amount of rejection is staggering. It’s a constant drumbeat. It’s a deluge. It’s drinking water from a firehose, lips right up against the cold blast.I published a book last summer with Simon &amp...', '<div>The amount of rejection is staggering. It’s a constant drumbeat. It’s a deluge. It’s drinking water from a firehose, lips right up against the cold blast.<br><br>I published a book last summer with Simon &amp; Schuster, which is to say, a major publisher — as an unknown writer, snagging them, and my powerhouse of an editor, felt like a magic trick. My book is a collection of memoiristic essays about race, gender.</div>', NULL, '2023-03-27 00:01:12', '2023-03-27 00:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Luqman Herifa', 'luqmanherifa', 'luqmanherifa@gmail.com', NULL, '$2y$10$zvpM5V0anmSozJvA/LKTb.jScYy.XJPOc0dw0zfNWJxsg7.GdEV2C', NULL, '2023-03-13 18:27:09', '2023-03-13 18:27:09', 1),
(2, 'Anya Kessler', 'mack.nicolas', 'pmante@example.net', '2023-03-13 18:27:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GkGgJWOfZs1FEj5b02X0jIWYMh6lfWIdZ5jECJhkMeCQh4FugoFjTYHsxXeh', '2023-03-13 18:27:09', '2023-03-13 18:27:09', 0),
(3, 'Bettye Conroy', 'guiseppe.hamill', 'camylle73@example.com', '2023-03-13 18:27:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fD0EactMAV8OKfQ1EkUFbPGYq7qEOX2OW6rU1K90qTWMOPeREyOyhdUPXd9L', '2023-03-13 18:27:09', '2023-03-13 18:27:09', 0),
(4, 'ininama', 'iniusername', 'iniemail@gmail.com', NULL, '$2y$10$glYoqmAVgN5UfKdi.Q1/GOimGGWIOFY3P3mcGvUhorHMT0QzP8onW', NULL, '2023-03-22 01:15:02', '2023-03-22 01:15:02', 0),
(5, 'sebuah nama', 'sebuahusername', 'sebuah@gmail.com', NULL, '$2y$10$TV2LZsXvuxZR0nPfbKFgi.L97QeD9Prs/S5gcTyM9XX3YeSoOMBQu', NULL, '2023-03-22 01:16:12', '2023-03-22 01:16:12', 0),
(6, 'Hanni Pham', 'hannipham', 'hanni@nj.com', NULL, '$2y$10$7O8ziBMYu2lzjIAa8ZPC7OzOvrZCKoRNCe779akvKXVfS/8NkWmqG', NULL, '2023-08-15 05:32:38', '2023-08-15 05:32:38', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
