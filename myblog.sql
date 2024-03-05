-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 07:33 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Event Portal', 'ninja@mail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Web Develpoment'),
(2, 'Graphic Design'),
(3, 'Video Editing'),
(4, 'Fronend'),
(5, 'Backend'),
(10, 'ashu');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `post_id`, `created_at`) VALUES
(1, 'this is awesome article', 'Monu Sharma', 21, '2021-02-20 19:08:11'),
(2, 'i like thispost', 'Sunidhi Chauhan', 21, '2021-02-20 19:08:11'),
(3, 'this is a test comment', 'Sonali Rana', 21, '2021-02-20 19:32:13'),
(4, 'this is my first comment on this post', 'Monu Giri', 4, '2021-02-20 19:33:31'),
(5, 'this is my another comment', 'Mohan Rana', 4, '2021-02-20 19:35:53'),
(6, 'this was awesome i learned a lot', 'Monu Giri', 20, '2021-02-20 19:36:37'),
(7, 'i love it ', 'Shruti Sharma', 20, '2021-02-20 19:36:52'),
(8, 'it was awesome man', 'Pankaj Udas', 20, '2021-02-20 19:37:48'),
(9, 'i like this post', 'Piyush Raj', 20, '2021-02-20 19:38:05'),
(10, 'this is super cool', 'Shivam Sharma', 20, '2021-02-20 19:38:21'),
(11, 'yeah i like this ', 'Adity Bisht', 20, '2021-02-20 19:38:38'),
(12, 'sdsd', 'sdsd', 21, '2021-02-23 16:31:47'),
(13, 'very good', 'sawan', 37, '2022-09-18 01:05:17'),
(14, 'this is quite nice', 'NANDU', 39, '2022-09-21 09:19:19'),
(15, 'This is quite nice', 'ASha', 12, '2022-09-21 13:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `post_id`, `image`) VALUES
(1, 11, '1.jpg'),
(2, 11, '2.jpg'),
(3, 0, '3.jpg'),
(4, 20, '4.jpg'),
(5, 20, '5.jpg'),
(6, 20, '1.jpg'),
(7, 33, 'moon-2048727_1920.jpg'),
(8, 33, 'children-5833685_1920.jpg'),
(9, 34, 'moon-2048727_1920.jpg'),
(10, 34, 'children-5833685_1920.jpg'),
(11, 35, 'moon-2048727_1920.jpg'),
(12, 35, 'children-5833685_1920.jpg'),
(13, 36, '7-76366_avengers-infinity-war-hd.jpg'),
(14, 36, 'moon-2048727_1920.jpg'),
(15, 37, '20201218_173814.jpg'),
(16, 37, '20201218_174044.jpg'),
(17, 38, 'Screenshot_20220820-125909.png'),
(18, 39, 'app_android.png'),
(19, 40, 'PicsArt_09-21-01.35.18.jpg'),
(20, 40, 'WhatsApp Image 2022-09-21 at 1.34.46 PM.jpeg'),
(21, 40, 'MPPA Post 02.jpg'),
(22, 41, 'learnwin.jpeg'),
(23, 41, 'mtspch.jpeg'),
(24, 42, 'learnwin.jpeg'),
(25, 42, 'mtspch.jpeg'),
(26, 43, 'learnwin.jpeg'),
(27, 43, 'mtspch.jpeg'),
(28, 44, 'learnwin.jpeg'),
(29, 44, 'mtspch.jpeg'),
(30, 45, 'learnwin.jpeg'),
(31, 45, 'mtspch.jpeg'),
(32, 46, 'learnwin.jpeg'),
(33, 46, 'mtspch.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `action`) VALUES
(1, 'Home', 'index.php'),
(3, 'Categories', '#'),
(6, 'Admin Login', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `like` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `category_id`, `like`) VALUES
(41, 'Sample 1', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae molestie ante. Sed sapien sapien, malesuada vitae euismod et, volutpat eget neque. Nulla faucibus vitae augue ut varius. <em>Pellentesque</em> tincidunt leo quis nibh gravida, ac mollis metus tincidunt. Maecenas sed vestibulum massa. Aenean eu justo ut mauris pellentesque efficitur sit amet a nisl. <strong>Vestibulum non pellentesque lac<img alt=\"\" src=\"https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.olympus-imaging.co.in%2Fcontent%2F000101300.jpg&amp;imgrefurl=https%3A%2F%2Fwww.olympus-imaging.co.in%2Fproduct%2Fcompact%2Ftg6%2Fsample.html&amp;tbnid=26v4UQtNAvkrTM&amp;vet=12ahUKEwik17Lqvrr6AhWALrcAHR98DCYQMygLegUIARD_AQ..i&amp;docid=gRwCQNJ-T04fbM&amp;w=4000&amp;h=3000&amp;q=sample%20photo&amp;ved=2ahUKEwik17Lqvrr6AhWALrcAHR98DCYQMygLegUIARD_AQ\" />us. Sed suscipit dapibus ligula, vel porttitor quam sollicitudin sit amet.</strong></p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis ex nunc, iaculis ut faucibus at, pulvinar sit amet nibh. Sed dolor eros, pulvinar et dictum sit amet, efficitur fringilla velit. Nunc eget neque vitae dolor facilisis ornare nec et nulla. Nunc faucibus dolor sit amet posuere tempus. Nam tristique urna non turpis varius, vitae efficitur sem rhoncus. Nulla quis nibh odio. Integer id porta velit. Pellentesque vehicula gravida enim, ut egestas mi euismod at. Sed enim lorem, fermentum id nisi ac, convallis fringilla enim. Fusce dapibus ac nunc eu feugiat. Phasellus varius varius enim, eget malesuada risus finibus malesuada. Sed turpis mauris, fringilla eget eros id, vehicula hendrerit ipsum. Aenean fermentum lacinia neque ut accumsan.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi sagittis accumsan turpis, non faucibus nisi congue at. Nunc varius luctus laoreet. Aliquam in dolor malesuada, dignissim odio ut, accumsan tellus. Suspendisse vitae pellentesque nulla. Donec lacinia erat sapien, eget porta nibh hendrerit eu. Sed egestas bibendum maximus. Vivamus tempor ac augue at convallis. Nunc tortor nisi, finibus lacinia metus a, vestibulum ornare quam. Cras ullamcorper tellus nec urna molestie, nec bibendum felis feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dictum purus vitae felis bibendum, id finibus velit efficitur. Nullam urna lacus, ultrices eget odio sit amet, posuere consectetur mi. Donec commodo consectetur nisl, sed commodo ligula consectetur sit amet. Vivamus varius dolor in pulvinar consectetur. Cras odio mi, semper bibendum cursus ut, imperdiet ac orci.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">In non augue viverra purus volutpat viverra. Fusce pretium leo mauris, quis accumsan turpis interdum vel. Ut eu semper dolor. Morbi facilisis, turpis nec volutpat fringilla, purus nisi volutpat arcu, in scelerisque turpis purus interdum magna. Fusce in augue ac arcu lacinia scelerisque eget at tortor. Nam nunc ex, sagittis nec purus in, scelerisque dictum mi. Donec finibus nisi ut elit varius, sed condimentum ante lacinia. Proin sagittis lectus lacus, efficitur euismod nulla dignissim vel. Maecenas a elit neque. Phasellus imperdiet finibus dolor, sed molestie turpis porta at. Phasellus at dapibus enim, eget ullamcorper nibh. Vestibulum erat orci, tempus fringilla leo eget, scelerisque viverra est.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer ac nisl eget lacus venenatis molestie. Vestibulum metus arcu, convallis nec nisi sit amet, pulvinar blandit est. Suspendisse feugiat massa eu lorem tempus aliquet. Nulla tempus elementum turpis sed porttitor. Nullam at hendrerit leo, sit amet lacinia sem. Morbi vitae ante eu lorem venenatis gravida. In maximus rhoncus augue pulvinar cursus.</p>\r\n', '2022-09-29 17:09:44', 1, 0),
(42, 'Sample 2', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae molestie ante. Sed sapien sapien, malesuada vitae euismod et, volutpat eget neque. Nulla faucibus vitae augue ut varius. Pellentesque tincidunt leo quis nibh gravida, ac mollis metus tincidunt. Maecenas sed vestibulum massa. Aenean eu justo ut mauris pellentesque efficitur sit amet a nisl. Vestibulum non pellentesque lacus. Sed suscipit dapibus ligula, vel porttitor quam sollicitudin sit amet.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis ex nunc, iaculis ut faucibus at, pulvinar sit amet nibh. Sed dolor eros, pulvinar et dictum sit amet, efficitur fringilla velit. Nunc eget neque vitae dolor facilisis ornare nec et nulla. Nunc faucibus dolor sit amet posuere tempus. Nam tristique urna non turpis varius, vitae efficitur sem rhoncus. Nulla quis nibh odio. Integer id porta velit. Pellentesque vehicula gravida enim, ut egestas mi euismod at. Sed enim lorem, fermentum id nisi ac, convallis fringilla enim. Fusce dapibus ac nunc eu feugiat. Phasellus varius varius enim, eget malesuada risus finibus malesuada. Sed turpis mauris, fringilla eget eros id, vehicula hendrerit ipsum. Aenean fermentum lacinia neque ut accumsan.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi sagittis accumsan turpis, non faucibus nisi congue at. Nunc varius luctus laoreet. Aliquam in dolor malesuada, dignissim odio ut, accumsan tellus. Suspendisse vitae pellentesque nulla. Donec lacinia erat sapien, eget porta nibh hendrerit eu. Sed egestas bibendum maximus. Vivamus tempor ac augue at convallis. Nunc tortor nisi, finibus lacinia metus a, vestibulum ornare quam. Cras ullamcorper tellus nec urna molestie, nec bibendum felis feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dictum purus vitae felis bibendum, id finibus velit efficitur. Nullam urna lacus, ultrices eget odio sit amet, posuere consectetur mi. Donec commodo consectetur nisl, sed commodo ligula consectetur sit amet. Vivamus varius dolor in pulvinar consectetur. Cras odio mi, semper bibendum cursus ut, imperdiet ac orci.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">In non augue viverra purus volutpat viverra. Fusce pretium leo mauris, quis accumsan turpis interdum vel. Ut eu semper dolor. Morbi facilisis, turpis nec volutpat fringilla, purus nisi volutpat arcu, in scelerisque turpis purus interdum magna. Fusce in augue ac arcu lacinia scelerisque eget at tortor. Nam nunc ex, sagittis nec purus in, scelerisque dictum mi. Donec finibus nisi ut elit varius, sed condimentum ante lacinia. Proin sagittis lectus lacus, efficitur euismod nulla dignissim vel. Maecenas a elit neque. Phasellus imperdiet finibus dolor, sed molestie turpis porta at. Phasellus at dapibus enim, eget ullamcorper nibh. Vestibulum erat orci, tempus fringilla leo eget, scelerisque viverra est.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer ac nisl eget lacus venenatis molestie. Vestibulum metus arcu, convallis nec nisi sit amet, pulvinar blandit est. Suspendisse feugiat massa eu lorem tempus aliquet. Nulla tempus elementum turpis sed porttitor. Nullam at hendrerit leo, sit amet lacinia sem. Morbi vitae ante eu lorem venenatis gravida. In maximus rhoncus augue pulvinar cursus.</p>\r\n', '2022-09-29 17:13:53', 1, 0),
(43, 'Sample 3', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae molestie ante. Sed sapien sapien, malesuada vitae euismod et, volutpat eget neque. Nulla faucibus vitae augue ut varius. Pellentesque tincidunt leo quis nibh gravida, ac mollis metus tincidunt. Maecenas sed vestibulum massa. Aenean eu justo ut mauris pellentesque efficitur sit amet a nisl. Vestibulum non pellentesque lacus. Sed suscipit dapibus ligula, vel porttitor quam sollicitudin sit amet.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis ex nunc, iaculis ut faucibus at, pulvinar sit amet nibh. Sed dolor eros, pulvinar et dictum sit amet, efficitur fringilla velit. Nunc eget neque vitae dolor facilisis ornare nec et nulla. Nunc faucibus dolor sit amet posuere tempus. Nam tristique urna non turpis varius, vitae efficitur sem rhoncus. Nulla quis nibh odio. Integer id porta velit. Pellentesque vehicula gravida enim, ut egestas mi euismod at. Sed enim lorem, fermentum id nisi ac, convallis fringilla enim. Fusce dapibus ac nunc eu feugiat. Phasellus varius varius enim, eget malesuada risus finibus malesuada. Sed turpis mauris, fringilla eget eros id, vehicula hendrerit ipsum. Aenean fermentum lacinia neque ut accumsan.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi sagittis accumsan turpis, non faucibus nisi congue at. Nunc varius luctus laoreet. Aliquam in dolor malesuada, dignissim odio ut, accumsan tellus. Suspendisse vitae pellentesque nulla. Donec lacinia erat sapien, eget porta nibh hendrerit eu. Sed egestas bibendum maximus. Vivamus tempor ac augue at convallis. Nunc tortor nisi, finibus lacinia metus a, vestibulum ornare quam. Cras ullamcorper tellus nec urna molestie, nec bibendum felis feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dictum purus vitae felis bibendum, id finibus velit efficitur. Nullam urna lacus, ultrices eget odio sit amet, posuere consectetur mi. Donec commodo consectetur nisl, sed commodo ligula consectetur sit amet. Vivamus varius dolor in pulvinar consectetur. Cras odio mi, semper bibendum cursus ut, imperdiet ac orci.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">In non augue viverra purus volutpat viverra. Fusce pretium leo mauris, quis accumsan turpis interdum vel. Ut eu semper dolor. Morbi facilisis, turpis nec volutpat fringilla, purus nisi volutpat arcu, in scelerisque turpis purus interdum magna. Fusce in augue ac arcu lacinia scelerisque eget at tortor. Nam nunc ex, sagittis nec purus in, scelerisque dictum mi. Donec finibus nisi ut elit varius, sed condimentum ante lacinia. Proin sagittis lectus lacus, efficitur euismod nulla dignissim vel. Maecenas a elit neque. Phasellus imperdiet finibus dolor, sed molestie turpis porta at. Phasellus at dapibus enim, eget ullamcorper nibh. Vestibulum erat orci, tempus fringilla leo eget, scelerisque viverra est.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer ac nisl eget lacus venenatis molestie. Vestibulum metus arcu, convallis nec nisi sit amet, pulvinar blandit est. Suspendisse feugiat massa eu lorem tempus aliquet. Nulla tempus elementum turpis sed porttitor. Nullam at hendrerit leo, sit amet lacinia sem. Morbi vitae ante eu lorem venenatis gravida. In maximus rhoncus augue pulvinar cursus.</p>\r\n', '2022-09-29 17:14:17', 1, 0),
(44, 'Sample 4', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae molestie ante. Sed sapien sapien, malesuada vitae euismod et, volutpat eget neque. Nulla faucibus vitae augue ut varius. Pellentesque tincidunt leo quis nibh gravida, ac mollis metus tincidunt. Maecenas sed vestibulum massa. Aenean eu justo ut mauris pellentesque efficitur sit amet a nisl. Vestibulum non pellentesque lacus. Sed suscipit dapibus ligula, vel porttitor quam sollicitudin sit amet.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis ex nunc, iaculis ut faucibus at, pulvinar sit amet nibh. Sed dolor eros, pulvinar et dictum sit amet, efficitur fringilla velit. Nunc eget neque vitae dolor facilisis ornare nec et nulla. Nunc faucibus dolor sit amet posuere tempus. Nam tristique urna non turpis varius, vitae efficitur sem rhoncus. Nulla quis nibh odio. Integer id porta velit. Pellentesque vehicula gravida enim, ut egestas mi euismod at. Sed enim lorem, fermentum id nisi ac, convallis fringilla enim. Fusce dapibus ac nunc eu feugiat. Phasellus varius varius enim, eget malesuada risus finibus malesuada. Sed turpis mauris, fringilla eget eros id, vehicula hendrerit ipsum. Aenean fermentum lacinia neque ut accumsan.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi sagittis accumsan turpis, non faucibus nisi congue at. Nunc varius luctus laoreet. Aliquam in dolor malesuada, dignissim odio ut, accumsan tellus. Suspendisse vitae pellentesque nulla. Donec lacinia erat sapien, eget porta nibh hendrerit eu. Sed egestas bibendum maximus. Vivamus tempor ac augue at convallis. Nunc tortor nisi, finibus lacinia metus a, vestibulum ornare quam. Cras ullamcorper tellus nec urna molestie, nec bibendum felis feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dictum purus vitae felis bibendum, id finibus velit efficitur. Nullam urna lacus, ultrices eget odio sit amet, posuere consectetur mi. Donec commodo consectetur nisl, sed commodo ligula consectetur sit amet. Vivamus varius dolor in pulvinar consectetur. Cras odio mi, semper bibendum cursus ut, imperdiet ac orci.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">In non augue viverra purus volutpat viverra. Fusce pretium leo mauris, quis accumsan turpis interdum vel. Ut eu semper dolor. Morbi facilisis, turpis nec volutpat fringilla, purus nisi volutpat arcu, in scelerisque turpis purus interdum magna. Fusce in augue ac arcu lacinia scelerisque eget at tortor. Nam nunc ex, sagittis nec purus in, scelerisque dictum mi. Donec finibus nisi ut elit varius, sed condimentum ante lacinia. Proin sagittis lectus lacus, efficitur euismod nulla dignissim vel. Maecenas a elit neque. Phasellus imperdiet finibus dolor, sed molestie turpis porta at. Phasellus at dapibus enim, eget ullamcorper nibh. Vestibulum erat orci, tempus fringilla leo eget, scelerisque viverra est.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer ac nisl eget lacus venenatis molestie. Vestibulum metus arcu, convallis nec nisi sit amet, pulvinar blandit est. Suspendisse feugiat massa eu lorem tempus aliquet. Nulla tempus elementum turpis sed porttitor. Nullam at hendrerit leo, sit amet lacinia sem. Morbi vitae ante eu lorem venenatis gravida. In maximus rhoncus augue pulvinar cursus.</p>\r\n', '2022-09-29 17:14:37', 1, 0),
(45, 'Sample 5', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae molestie ante. Sed sapien sapien, malesuada vitae euismod et, volutpat eget neque. Nulla faucibus vitae augue ut varius. Pellentesque tincidunt leo quis nibh gravida, ac mollis metus tincidunt. Maecenas sed vestibulum massa. Aenean eu justo ut mauris pellentesque efficitur sit amet a nisl. Vestibulum non pellentesque lacus. Sed suscipit dapibus ligula, vel porttitor quam sollicitudin sit amet.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis ex nunc, iaculis ut faucibus at, pulvinar sit amet nibh. Sed dolor eros, pulvinar et dictum sit amet, efficitur fringilla velit. Nunc eget neque vitae dolor facilisis ornare nec et nulla. Nunc faucibus dolor sit amet posuere tempus. Nam tristique urna non turpis varius, vitae efficitur sem rhoncus. Nulla quis nibh odio. Integer id porta velit. Pellentesque vehicula gravida enim, ut egestas mi euismod at. Sed enim lorem, fermentum id nisi ac, convallis fringilla enim. Fusce dapibus ac nunc eu feugiat. Phasellus varius varius enim, eget malesuada risus finibus malesuada. Sed turpis mauris, fringilla eget eros id, vehicula hendrerit ipsum. Aenean fermentum lacinia neque ut accumsan.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi sagittis accumsan turpis, non faucibus nisi congue at. Nunc varius luctus laoreet. Aliquam in dolor malesuada, dignissim odio ut, accumsan tellus. Suspendisse vitae pellentesque nulla. Donec lacinia erat sapien, eget porta nibh hendrerit eu. Sed egestas bibendum maximus. Vivamus tempor ac augue at convallis. Nunc tortor nisi, finibus lacinia metus a, vestibulum ornare quam. Cras ullamcorper tellus nec urna molestie, nec bibendum felis feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dictum purus vitae felis bibendum, id finibus velit efficitur. Nullam urna lacus, ultrices eget odio sit amet, posuere consectetur mi. Donec commodo consectetur nisl, sed commodo ligula consectetur sit amet. Vivamus varius dolor in pulvinar consectetur. Cras odio mi, semper bibendum cursus ut, imperdiet ac orci.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">In non augue viverra purus volutpat viverra. Fusce pretium leo mauris, quis accumsan turpis interdum vel. Ut eu semper dolor. Morbi facilisis, turpis nec volutpat fringilla, purus nisi volutpat arcu, in scelerisque turpis purus interdum magna. Fusce in augue ac arcu lacinia scelerisque eget at tortor. Nam nunc ex, sagittis nec purus in, scelerisque dictum mi. Donec finibus nisi ut elit varius, sed condimentum ante lacinia. Proin sagittis lectus lacus, efficitur euismod nulla dignissim vel. Maecenas a elit neque. Phasellus imperdiet finibus dolor, sed molestie turpis porta at. Phasellus at dapibus enim, eget ullamcorper nibh. Vestibulum erat orci, tempus fringilla leo eget, scelerisque viverra est.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer ac nisl eget lacus venenatis molestie. Vestibulum metus arcu, convallis nec nisi sit amet, pulvinar blandit est. Suspendisse feugiat massa eu lorem tempus aliquet. Nulla tempus elementum turpis sed porttitor. Nullam at hendrerit leo, sit amet lacinia sem. Morbi vitae ante eu lorem venenatis gravida. In maximus rhoncus augue pulvinar cursus.</p>\r\n', '2022-09-29 17:15:02', 1, 0),
(46, 'Sample 6', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vitae molestie ante. Sed sapien sapien, malesuada vitae euismod et, volutpat eget neque. Nulla faucibus vitae augue ut varius. Pellentesque tincidunt leo quis nibh gravida, ac mollis metus tincidunt. Maecenas sed vestibulum massa. Aenean eu justo ut mauris pellentesque efficitur sit amet a nisl. Vestibulum non pellentesque lacus. Sed suscipit dapibus ligula, vel porttitor quam sollicitudin sit amet.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Duis ex nunc, iaculis ut faucibus at, pulvinar sit amet nibh. Sed dolor eros, pulvinar et dictum sit amet, efficitur fringilla velit. Nunc eget neque vitae dolor facilisis ornare nec et nulla. Nunc faucibus dolor sit amet posuere tempus. Nam tristique urna non turpis varius, vitae efficitur sem rhoncus. Nulla quis nibh odio. Integer id porta velit. Pellentesque vehicula gravida enim, ut egestas mi euismod at. Sed enim lorem, fermentum id nisi ac, convallis fringilla enim. Fusce dapibus ac nunc eu feugiat. Phasellus varius varius enim, eget malesuada risus finibus malesuada. Sed turpis mauris, fringilla eget eros id, vehicula hendrerit ipsum. Aenean fermentum lacinia neque ut accumsan.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Morbi sagittis accumsan turpis, non faucibus nisi congue at. Nunc varius luctus laoreet. Aliquam in dolor malesuada, dignissim odio ut, accumsan tellus. Suspendisse vitae pellentesque nulla. Donec lacinia erat sapien, eget porta nibh hendrerit eu. Sed egestas bibendum maximus. Vivamus tempor ac augue at convallis. Nunc tortor nisi, finibus lacinia metus a, vestibulum ornare quam. Cras ullamcorper tellus nec urna molestie, nec bibendum felis feugiat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed dictum purus vitae felis bibendum, id finibus velit efficitur. Nullam urna lacus, ultrices eget odio sit amet, posuere consectetur mi. Donec commodo consectetur nisl, sed commodo ligula consectetur sit amet. Vivamus varius dolor in pulvinar consectetur. Cras odio mi, semper bibendum cursus ut, imperdiet ac orci.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">In non augue viverra purus volutpat viverra. Fusce pretium leo mauris, quis accumsan turpis interdum vel. Ut eu semper dolor. Morbi facilisis, turpis nec volutpat fringilla, purus nisi volutpat arcu, in scelerisque turpis purus interdum magna. Fusce in augue ac arcu lacinia scelerisque eget at tortor. Nam nunc ex, sagittis nec purus in, scelerisque dictum mi. Donec finibus nisi ut elit varius, sed condimentum ante lacinia. Proin sagittis lectus lacus, efficitur euismod nulla dignissim vel. Maecenas a elit neque. Phasellus imperdiet finibus dolor, sed molestie turpis porta at. Phasellus at dapibus enim, eget ullamcorper nibh. Vestibulum erat orci, tempus fringilla leo eget, scelerisque viverra est.</p>\r\n\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Integer ac nisl eget lacus venenatis molestie. Vestibulum metus arcu, convallis nec nisi sit amet, pulvinar blandit est. Suspendisse feugiat massa eu lorem tempus aliquet. Nulla tempus elementum turpis sed porttitor. Nullam at hendrerit leo, sit amet lacinia sem. Morbi vitae ante eu lorem venenatis gravida. In maximus rhoncus augue pulvinar cursus.</p>\r\n', '2022-09-29 17:15:24', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `parent_menu_id`, `name`, `action`) VALUES
(1, 3, 'Web Development', '#'),
(2, 3, 'Graphic Design', '#'),
(3, 3, 'User InterFace', '#'),
(7, 3, 'Video Editing', '#'),
(8, 3, 'Backend', '#');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
