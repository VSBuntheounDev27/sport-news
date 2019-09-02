-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Sep 02, 2019 at 01:57 AM
-- Server version: 8.0.17
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportnews_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategories`
--

CREATE TABLE `tblcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcategories`
--

INSERT INTO `tblcategories` (`id`, `name`, `isdeleted`, `menu_id`) VALUES
(1, 'Football', 1, 2),
(2, 'boxing', 1, 2),
(3, 'valley ball', 1, 2),
(4, 'tennis', 1, 2),
(5, 'basket ball', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblcompanies`
--

CREATE TABLE `tblcompanies` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmenus`
--

CREATE TABLE `tblmenus` (
  `id` int(11) NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sequence` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblmenus`
--

INSERT INTO `tblmenus` (`id`, `name`, `link`, `isdeleted`, `sequence`) VALUES
(1, 'Home', 'http://localhost/project-site/sportnews-website/index.php', 1, 1),
(2, 'Sport category', 'http://localhost/project-site/sportnews-website/index.php', 1, 2),
(3, 'About Us', 'http://localhost/project-site/sportnews-website/about-us.php', 1, 3),
(4, 'Contact Us', 'http://localhost/project-site/sportnews-website/contact-us.php', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblnews`
--

CREATE TABLE `tblnews` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descript` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `featured_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblnews`
--

INSERT INTO `tblnews` (`id`, `title`, `short_descript`, `description`, `category_id`, `type`, `user_id`, `featured_image`, `isdeleted`) VALUES
(1, 'គ្រូបង្វឹកកម្ពុជា ប្រាប់ហេតុផល​កីឡាករ​ល្បី​ឈ្មោះ ​មិន​របួស តែអត់ឈ្មោះ​លេង​', 'បញ្ជីឈ្មោះ​ក្រុមជម្រើសជាតិកម្ពុជា​នៅ​វគ្គជម្រុះ World Cup 2022 ​ខាង​មុខ​នេះ គឺ​មិន​មាន​ឈ្មោះ​ខ្សែ​ប្រយុទ្ធ​មុត​ស្រួចកម្ពុជា ចាន់ វឌ្ឍនាកា និង​កីឡាករ​ល្បីៗជា​ច្រើន​ទៀត​​នោះ​ទេ ដែល​ធ្វើ​ឱ្យ​អ្នក​គាំទ្រ​ភ្ញាក់ផ្អើល​ជា​ខ្លាំង។', 'បញ្ជីឈ្មោះ​ក្រុមជម្រើសជាតិកម្ពុជា​នៅ​វគ្គជម្រុះ World Cup 2022 ​ខាង​មុខ​នេះ គឺ​មិន​មាន​ឈ្មោះ​ខ្សែ​ប្រយុទ្ធ​មុត​ស្រួចកម្ពុជា ចាន់ វឌ្ឍនាកា និង​កីឡាករ​ល្បីៗជា​ច្រើន​ទៀត​​នោះ​ទេ ដែល​ធ្វើ​ឱ្យ​អ្នក​គាំទ្រ​ភ្ញាក់ផ្អើល​ជា​ខ្លាំង។\r\n\r\nជាមួយ​រឿង​នេះ​ដែរ លោក Felix ​គ្រូ​បង្វឹក​ក្រុម​ជម្រើស​ជាតិ​កម្ពុជា ​បាន​និយាយ​ពន្យល់​ថា​​ការ​ជ្រើសរើស​របស់​លោកគឺ​ទៅ​តាម​អ្វីដែល​លោក​មើល​ឃើញ និងវិភាគតាមដានយ៉ាងច្បាស់។ លោកតាមដានកីឡាករយ៉ាងច្បាស់ ទាំងក្រៅទីលាន និងក្នុងទីលាន។ មិនថាអង្គុយកៅអីបម្រុង ឬ​ចូល​លេង​នោះ​ទេ គឺ​លោក​មើល​យ៉ាងយកចិត្តទុកដាក់បំផុត។\r\n\r\nលោក Felix ​បាន​បន្ថែម​ទៀត​ថា​ក្រុមកីឡាករ​ដែល​លោក​ជ្រើសរើស​នេះ បាន​ត្រៀម​ខ្លួន​រួច​ជា​ស្រេច ​ហើយ​ក៏​បាន​បង្ហាញ​ថា​ពួកគេ​មាន​អ្វី​មួយ​សម្រាប់​អ្នក​គាំទ្រ​ពេញ​ចិត្ត​មិន​ខាន​សម្រាប់​ការ​ប្រកួត​ខាងមុខ​នេះ។\r\n\r\nសម្រាប់​ការ​ប្រកួត​វគ្គ​ទី​២ ​ជម្រុះ World Cup 2022 ​ក្នុង​ទ្វីប​អាស៊ី ​ក្រុម​កម្ពុជា​ស្ថិត​នៅ​ពូល​C ជាមួយ​ ប៉ារែន ហុងកុង អីរ៉ាក់ និង អីរ៉ង់៕', 1, 'football', 1, 'http://cdn.sabay.com/cdn/media.sabay.com/media/113/Football-11/5d6a06ada3460_1567229580_medium.jpg', 1),
(2, 'ជម្រុះ World Cup៖ ប្រធាន​ក្រុម​ជម្រើសជាតិ​វៀតណាម ប្រា​ប់ឱ្យ​ប្រយ័ត្ន​ចំពោះ​​កីឡាករ​ថៃ​មួយរូប', 'មុនប៉ះ​គ្នា​នៅវគ្គជម្រុះ​World​Cup​នាថ្ងៃទី៥កញ្ញា​ខាងមុខនេះ​កីឡាករ​Que​Ngoc​Hai​ប្រធាន​ក្រុមជម្រើស​ជាតិ​វៀតណាម​បាន​បង្ហាញ​ក្តីបារម្ភ​និង​ប្រាប់​ឱ្យខ្សែការពារ​​ត្រូវ​ប្រយ័ត្ន​ខ្ពស់​ចំពោះ​កីឡាករថៃមួយ​រូប​គឺ​Chanathip​Songkrasin។', 'មុនប៉ះ​គ្នា​នៅវគ្គជម្រុះ​World​Cup​នាថ្ងៃទី៥កញ្ញា​ខាងមុខនេះ​កីឡាករ​Que​Ngoc​Hai​ប្រធាន​ក្រុមជម្រើស​ជាតិ​វៀតណាម​បាន​បង្ហាញ​ក្តីបារម្ភ​និង​ប្រាប់​ឱ្យខ្សែការពារ​​ត្រូវ​ប្រយ័ត្ន​ខ្ពស់​ចំពោះ​កីឡាករថៃមួយ​រូប​គឺ​Chanathip​Songkrasin។\r\n\r\nQue​Ngoc​Hai​ត្រូវបាន​សារព័ត៌មាន​ដកស្រង់សម្តី​កាលពីថ្ងៃទី​២៨សីហា​កន្លងទៅ​ថា៖​«Chanathip​បានក្លាយ​ជាកីឡាករ​ថៃ​ឆ្នើម​បំផុត​ក្នុង​រយៈពេល៥ឆ្នាំ​មកនេះ​ដូច្នេះ​យើងត្រូវតែ​តាម​ឃ្លាំមើល​គាត់​ពេញ​ការប្រកួត​នេះ។​ប៉ុន្តែ​ខ្ញុំគិតថា​មិនមែន​មានតែគាត់​ទេ​គឺថា​កីឡាករថៃ​ជាច្រើន​សុទ្ធតែ​មាន​គុណភាព​ខ្ពស់»។\r\n\r\nគ្រូ​ជម្រើសជាតិ​វៀតណាម​លោក​Park​Hang-Seo​ក៏ធ្លាប់​បាន​ព្រមាន​កូនក្រុម​លោក​ផងដែរពី​​Messi​ថៃ​​ខាងលើ​នេះ។​លោកថា​បច្ចុប្បន្ន​​ថៃ​មានកីឡាករ​សំខាន់៣រូប​ដែល​កំពុងលេង​នៅលីគ​ជប៉ុន​J1​League​រួមមាន​ទាំង​Chanathip​ផងដែរ។\r\n\r\nលោក​Park​បញ្ជាក់​ថា​បើទោះ​បីជាខ្សែបម្រើប្រយុទ្ធថៃ​រូបនេះ​ពុំបាន​លេងនៅ​King\'s​Cup​ក៏ដោយ​ប៉ុន្តែក្រុម​វៀតណាម​បាន​មើលពី​របៀប​ដែលគេបាន​លេង​នៅ​Asian​Cup​2019​រួចមក​ហើយ។​«យើង​ក៏បាន​មើលវីដេអូ​ពីការ​លេងរបស់​Chanathip​យ៉ាងច្រើន​ផងដែរ។​វាអាច​និយាយថា​វៀតណាម​មិនត្រូវធ្វេសប្រហែស​ជាមួយកីឡាកររូបនេះ​ឡើយ»៕', 1, '2', 1, 'http://cdn.sabay.com/cdn/media.sabay.com/media/Kley-Kley/Phy/Week3-August/5d69d8c6d0ef5_1567217820_medium.jpg', 1),
(3, 'Valverde ៖ \"Neymar? រាប់​ពី​១​ដល់​១០ ខ្ញុំ​ស្ថិត​ក្នុង​អត្រា ៩,៥ ហត់​នឿយ​ណាស់\"', 'Ernesto Valverde គ្រូ​បង្វឹក​របស់ FC Barcelona ត្រូវ​ឆ្លើយ​សំណួរ​ជា​ច្រើន​ដែល​មិន​ចេះ​ចប់​អំពី​ទីផ្សារ​ដោះដូរ​កីឡាករ ជា​ពិសេស​ការ​វិល​ត្រលប់​មក​វិញ​របស់ Neymar ដែល​​គេ​តែង​សួរ​លោក​អំឡុង​ពេល​សន្និសីទ​សារព័ត៌មាន​មុន​ការ​ប្រកួត La Liga ។', 'Ernesto Valverde គ្រូ​បង្វឹក​របស់ FC Barcelona ត្រូវ​ឆ្លើយ​សំណួរ​ជា​ច្រើន​ដែល​មិន​ចេះ​ចប់​អំពី​ទីផ្សារ​ដោះដូរ​កីឡាករ ជា​ពិសេស​ការ​វិល​ត្រលប់​មក​វិញ​របស់ Neymar ដែល​​គេ​តែង​សួរ​លោក​អំឡុង​ពេល​សន្និសីទ​សារព័ត៌មាន​មុន​ការ​ប្រកួត La Liga ។\r\n\r\nអ្នកចាត់ការ​រូប​នេះ​មាន​ការ​ធុញ​ទ្រាន់​នឹង​រឿង​ Neymar មែនទែន​ ហើយ​លោក​បន់​ឲ្យ​តែ​ថ្ងៃ​បិទ​ទីផ្សារ​ដោះដូរ​កីឡាករ​​នៅ​ថ្ងៃ​ចន្ទ ទី​២​ខែ​កញ្ញា​​មក​ដល់​ឲ្យ​ឆាប់ៗ។\r\n\r\nការវិវឌ្ឍន៍​ចុងក្រោយ​រវាង Barca និង PSG លើ​សំណើ Neymar កាន់​តែ​​គ្មាន​សង្ឃឹម នៅ​ពេល​ដែល​ក្លឹប​យក្ស Ligue 1 ទាមទារ​តម្លៃ​ខ្លួន​​កីឡាករ​ប្រេស៊ីល​ហួសហេតុ​ពេក។\r\n\r\n\"វា​មាន​រយៈ​ពេល​យូរ​ណាស់។ ខ្ញុំ​​ចង់​ឲ្យ​ថ្ងៃ​នោះ​មក​ដល់​ឆាប់ៗ ​ដូច្នេះ​យើង​អាច​សម្រាក​ទាំង​អស់​គ្នា។ ខ្ញុំ​មិន​មាន​អ្វី​ដែល​ត្រូវ​និយាយ​អំពី Neymar ទេ​ពីព្រោះ​គាត់​ជា​កីឡាករ​មក​ពី​ក្លឹប​ផ្សេង ហើយ​យើង​ត្រូវ​គោរព​គូប្រជែង​របស់​យើង។ បើ​វា​កើត​ឡើង​ វា​នឹង​កើត​ឡើង។ ខ្ញុំ​ស្ថិត​នៅ​ក្នុង​អត្រា ៩,៥ លើ​១០ ដែល​រឿង​នេះ​ធ្វើ​ឲ្យ​ខ្ញុំ​នឿយ​ហត់​​នឿយមែនទែន\"។ Valverde ប្រាប់​អ្នកសារព័ត៌មាន​នៅ​សន្និសីទ​កាសែត។\r\n\r\nនៅ​ក្នុង​សំណើ​ដែល PSG ទាមទារ​កីឡាករ Dembele, Rakitic និង Todibo ហើយ​ថែម​លុយ​ប្រមាណ ១៣០ លាន​ផោន​​ទៀត ជា​ថ្នូរ​នឹង Neymar ត្រូវ​បាន​លោក Valverde ថាទៅ​មិន​រួច​ឡើយ។ លោក​ថ្លែងការពារ ដោយ​ពោល​ថា Rakitic លេង​ច្រើន​ប្រកួត​ជាមួយ Barca ហើយ​គ្មាន​ហេតុផល​ណា​ដែល​ក្លឹប​ដូរ​គាត់​​យក​ Neymar នោះ​ទេ។ រីឯ Dembele លោក​មិន​ចង់​អត្ថាធិប្បាយ​ឡើយ ដោយសារ​កីឡាករ​រូប​នេះ​កំពុង​មាន​របួស៕', 1, '1', 1, 'http://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Football/Freelancer3/Freelancer26/5d6a22b20f214_1567236780_medium.jpg', 1),
(4, 'Navas អស់​និស្ស័យ​ជាមួយ​ Real និង​បង្ហាញ​ខ្លួន​ឲ្យ​ PSG ផ្លូវ​ការ​នៅ​ថ្ងៃ​ច័ន្ទ', 'Keylor Navas នឹង​ក្លាយ​ជា​កីឡាករ​របស់​ Paris Saint-Germain នៅ​ថ្ងៃ​ចន្ទ​សប្ដាហ៍​ ជា​ថ្ងៃ​ចុង​ក្រោយ​នៃ​ការ​បើក​ទីផ្សារ​ដោះដូរ​កីឡាករ​។​', 'Keylor Navas នឹង​ក្លាយ​ជា​កីឡាករ​របស់​ Paris Saint-Germain នៅ​ថ្ងៃ​ចន្ទ​សប្ដាហ៍​ ជា​ថ្ងៃ​ចុង​ក្រោយ​នៃ​ការ​បើក​ទីផ្សារ​ដោះដូរ​កីឡាករ​។​\r\nNavas\r\n\r\nក្លឹប​ជើង​ឯក​ Ligue 1 នឹង​ចំណាយ​ឲ្យ​ Real Madrid ចំនួន​១៥​លាន​អឺរ៉ូ​​និង​ឲ្យ​ខ្ចី​ជើង​អ្នក​ចាំ​ទី​យុវជន​ម្នាក់​ឈ្មោះ​ Alphonse Areola ជា​ថ្នូរ​នឹង​ការ​យក​ Navas ទៅ​កាន់​ទឹកដី​នៃ​ប្រទេស​បារាំង។​ កីឡាករ​សញ្ជាតិ​កូស្តារីកា​ នឹង​ចុះ​ហត្ថលេខា​៣​ឆ្នាំ​ជាមួយ​ PSG ដោយ​ទទួល​ថ្លៃ​ពលកម្ម​៦​លាន​អឺរ៉ូ​ ក្នុង​មួយ​រដូវ​កាល។​​​\r\n\r\nNavas នៅ​តែ​ស្ថិត​​ក្នុង​បញ្ជី​ឈ្មោះ​ Real Madrid សម្រាប់​ប្រកួត​ទល់​នឹង​ Villarreal យប់​ថ្ងៃ​អាទិត្យ​ ហើយ​វា​ក៏​ជា​ប្រកួត​ចុង​ក្រោយ​របស់​គេ​ដែរ​ជា​មួយ​ក្លឹប​យក្ស​របស់​អេស្ប៉ាញ​ក្រោយ​ចំណាយ​ពេល​៥​រដូវ​កាល​ លេង​បាន​១៦២​ប្រកួត​ និង​ឈ្នះ​ Champions League ៣​ដង​ជាប់​គ្នា៕', 1, '1', 1, 'http://media.sabay.com/media/sabay-news/Sport-News/International-Sports/soccer/Soccer54/Soccer136/5d6a23c4b1bad_1567237020.jpg', 1),
(5, 'Icardi ប្តឹង Inter និង ទាមទារ​​ជា​កីឡាករ​ជម្រើស​ដំបូង​មក​វិញ', 'Mauro Icardi បាន​ប្តឹង Inter ដើម្បី​ទាមទារ​ជា​កីឡាករ​ជម្រើស​ដំបូង​មក​វិញ នៅ​ពេល​ដែល​ខ្សែ​ប្រយុទ្ធ​រូប​នេះ​​មិន​ស្ថិត​នៅ​ក្នុង​ជម្រើស​១១​នាក់​ដំបូង​របស់​លោក Antonio Conte។', 'Mauro Icardi បាន​ប្តឹង Inter ដើម្បី​ទាមទារ​ជា​កីឡាករ​ជម្រើស​ដំបូង​មក​វិញ នៅ​ពេល​ដែល​ខ្សែ​ប្រយុទ្ធ​រូប​នេះ​​មិន​ស្ថិត​នៅ​ក្នុង​ជម្រើស​១១​នាក់​ដំបូង​របស់​លោក Antonio Conte។\r\n\r\nនៅ​ពេល​មក​ដល់​លោក Conte បាន​បញ្ជាក់​យ៉ាង​ច្បាស់​ថា​លោក​គ្មាន​កន្លែង​សម្រាប់ Icardi នៅ​ក្នុង​ក្រុម​របស់​គាត់​ទេ​ដោយ​មាន Romelu Lukaku។\r\n\r\n​Icardi ត្រូវ​បាន​​ត្រូវ​បាន​បង្កក​​ក្រោយ​លោក Conte បាន​មក​ដល់ Inter កាល​ពី​រដូវ​កាល​មុន សូម្បី​​លេខ​៩​របស់​កីឡាករ​អាហ្សង់ទីន​រូប​នេះ​ក៏​ត្រូវ​ផ្តល់​ឲ្យ Lukaku ជំនួស​ដែរ។\r\n\r\nយោងតាម La Gazzetta dello Sport បាន​ឲ្យ​ដឹង​ថា ខ្សែ​ប្រយុទ្ធ​វ័យ​២៦​ឆ្នាំ បាន​សម្រេច​ប្តឹង Inter ដោយ​ទាមទារ​សំណង ១,៥ លាន​អឺរ៉ូ (១,៦៥ លាន​ដុល្លារ) និង តំណែង​ជា​កីឡាករ​ជម្រើស​ដំបូង​មក​វិញ។\r\n\r\nជាមួយ​កុងត្រា​នៅ​សល់​២​រដូវកាល​ទៀត អតីត​ប្រធាន​ក្រុម​រូប​នេះ​បដិសេធ​មិន​ព្រម​ចាកចេញ​ពី​ក្លឹប​នៅ​អ៊ីតាលី​នេះ​ឡើយ បើទោះ​ជា​​នាយក​ប្រតិបត្តិ​ក្លឹប​​​គឺ​លោក Giuseppe Marotta ថា​លោក​ធ្វើ​តាម​ការ​សម្រេច​ចិត្ត​របស់​គ្រូ​បង្វឹក ហើយ​ក្លឹប​សង្ឃឹម​ថា​នឹង​លក់ Icardi ដាច់​នៅ​មុន​ពេល​ទីផ្សារ​ដោះដូរ​កីឡាករ​បិទទ្វារ​នៅ​​ថ្ងៃ​ចន្ទ។\r\n\r\nប្រភព​ខាង​លើ​បន្ត​ថា Icardi ដែល​ត្រូវ​បាន​​​រាយការណ៍​ថា​មាន​ការ​ចាប់​អារម្មណ៍​ពី Monaco មិន​ត្រឹម​តែ​មិន​​មាន​បំណង​ចាកចេញ​ពី Inter ហើយ​ថែមទាំង​បាន​ប្តឹង Inter ទៀត​ផង។\r\n\r\nនេះ​មិន​មែន​ជា​លើក​ទី​១​ទេ​ដែល Conte បាន​បង្ក​សង្គ្រាម​ជាមួយ​កីឡាករ។ ជាក់ស្តែង លោក​ធ្លាប់​ប៉ះ​ទង្គិច​ជាមួយ Diego Costa នៅ Chelsea។ គ្រូ​បង្វឹក​សញ្ជាតិ​អ៊ីតាលី​បាន​ផ្ញើសារ​ត្រង់ៗ​ទៅ Costa ថា​​លោក​មិន​ស្វាគមន៍ Costa នៅ Stamford Bridge ឡើយ​ហើយ Costa បាន​ចាកចេញ​ទៅ​កាន់ Atletico Madrid នៅ​៦​ខែ​បន្ទាប់៕', 1, '1', 1, 'http://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/Football/Freelancer3/Freelancer26/5d6a34ead26c1_1567241400_medium.jpg', 1),
(6, 'Klopp ៖​UEFA\'s best ​របស់​កីឡាករ​ LFC គ្រប់​គ្នា​​​ Van Dijk គ្រាន់ជាតំណាង​', 'Virgil van Dijk បាន​យក​ឈ្នះ​ Lionel Messi និង​ C-Ronaldo ឈ្នះ​ពាន​កីឡាករ​ឆ្នើម​ទ្វីប​អឺរ៉ុប​ ឬ​ UEFA\'s best player of the year។​', 'Virgil van Dijk បាន​យក​ឈ្នះ​ Lionel Messi និង​ C-Ronaldo ឈ្នះ​ពាន​កីឡាករ​ឆ្នើម​ទ្វីប​អឺរ៉ុប​ ឬ​ UEFA\'s best player of the year។​\r\n\r\nកីឡាករ​សញ្ជាតិ​ហូឡង់​បាន​ក្លាយ​ជា​ ខ្សែ​ការពារ​ដំបូង​ដែល​លើក​ពាន​ខាង​លើ​នេះ​ បន្ទាប់​ពី​រូប​គេ​មាន​គុណ​សម្បត្តិ​ជួយ​ក្លឹប​ឈ្នះ​ Champions League, Super Cup និង​រង​ជើង​ឯក​ Premier League ហើយ​នៅ​ជម្រើស​ជាតិ​វិញ​ Van dijk ​មាន​ចំណែក​សំខាន់​នាំ​ក្លឹប​បាន​លេខ​២​ពាន​ Nation League។​\r\n\r\nយ៉ាង​ណា​ Jurgen Klopp ដែល​ជា​អ្នក​ចាត់ការ​ទូទៅ​ បាន​ចាត់​ទុក​ការ​ឈ្នះ​របស់​ Van dijk ជា​ជោគជ័យ​របស់​ក្លឹប​ទាំង​មូល។ អ្នក​ចាត់​ការ​សញ្ជាតិ​អាល្លឺម៉ង់​បាន​និយាយ​ថា៖ “UEFA\'s best ជា​ពាន​របស់​កីឡាករ​គ្រាប់​គ្នា​ គ្រាន់​តែ​ Liverpool បញ្ជូន​តំណាង​ម្នាក់​ឲ្យទៅ​ទទួល​ជំនួស​ប៉ុណ្ណោះ\"។\r\n\r\nក្រៅ​ពី​ពាន​នេះ​ កីឡាករ​កម្ពស់​ខ្ពស់​វ័យ​២៨​ឆ្នាំ​ត្រូវ​គេ​រំពឹង​ថា​ នឹង​ឈ្នះ​ពាន​ធំៗ​២​ផ្សេង​ទៀត​សម្រាប់​ឆ្នាំ​២០១៩​នេះ​មាន​ដូចជា​ FIFA Best និង​ Ballon d\'Or ជា​ដើម៕ ​​', 1, '1', 1, 'http://cdn.sabay.com/cdn/media.sabay.com/media/sabay-news/Sport-News/International-Sports/soccer/Soccer54/Soccer136/5d6a2bf9658a6_1567239120_medium.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpartner`
--

CREATE TABLE `tblpartner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(10) NOT NULL,
  `firstname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photos` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `isdeleted` tinyint(4) NOT NULL DEFAULT '1',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `firstname`, `lastname`, `email`, `phone`, `address`, `username`, `password`, `photos`, `isdeleted`) VALUES
(1, 'buntheoun', 'dev', 'buntheoundev@gmail.com', 12012012, 'phnom penh, cambodia', 'buntheoundev', '0192023a7bbd73250516f069df18b500', 'default.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategories`
--
ALTER TABLE `tblcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `tblcompanies`
--
ALTER TABLE `tblcompanies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmenus`
--
ALTER TABLE `tblmenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpartner`
--
ALTER TABLE `tblpartner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategories`
--
ALTER TABLE `tblcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblcompanies`
--
ALTER TABLE `tblcompanies`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmenus`
--
ALTER TABLE `tblmenus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblnews`
--
ALTER TABLE `tblnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpartner`
--
ALTER TABLE `tblpartner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblnews`
--
ALTER TABLE `tblnews`
  ADD CONSTRAINT `tblnews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbluser` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tblnews_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tblcategories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
