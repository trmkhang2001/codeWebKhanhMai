-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2024 at 02:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datawebsite`
--
CREATE DATABASE IF NOT EXISTS `datawebsite` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `datawebsite`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `displayhomepage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `displayhomepage`) VALUES
(1, 0, 'Toyota', 0),
(2, 1, 'Camry', 0),
(3, 1, 'Tesla', 0),
(4, 0, 'Bulgati', 0),
(5, 4, 'KIA', 0),
(7, 0, 'Nissan', 1),
(8, 0, 'Ford', 0),
(9, 8, 'BMW', 0),
(10, 8, 'Vinfast', 0),
(11, 8, 'Volkswagen', 0),
(12, 7, 'Mercedes-Benz', 0),
(14, 7, 'Honda', 0),
(15, 7, 'Chevrolet', 0),
(16, 4, 'Hyundai', 0),
(17, 4, 'Audi ', 0),
(18, 4, 'Land Rover', 0),
(19, 1, 'Volvo ', 0),
(20, 1, 'Porsche ', 0),
(21, 8, 'Ferrari ', 0),
(22, 8, 'Lamborghini', 0),
(24, 23, 'Bugatti', 0),
(25, 23, 'Mitsubishi', 0),
(26, 23, 'BYD', 0),
(27, 0, 'NIO', 0),
(29, 27, 'Xpeng', 0),
(30, 27, 'Galaxy Tab S', 0),
(31, 1, 'BYD', 0),
(33, 32, 'Màn Hình Thông Minh', 0),
(34, 32, 'Màn Hình Độ Phân Giải Cao', 0),
(35, 32, 'Màn Hình Odyssey', 0),
(37, 0, 'Lexus', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `address`, `phone`, `password`) VALUES
(19, 'user', 'user@gmail.com', 'Hà Nội', '0987654321', '25f9e794323b453885f5181f1b624d0b'),
(20, 'đă', 'admindadw@gmail.om', 'Viet Nam, Viet Nam, Ha Noi', '0879428091', 'fcc5c1addf92fefa9466af579fefb383'),
(21, 'NGUYEN MANH HUNG', 'root@gmai.com', 'Viet Nam, Viet Nam, Ha Noi', '0879428091', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `description`, `content`, `hot`, `photo`) VALUES
(6, 'Cảm biến mực nước là gì? Có bao nhiêu loại và ứng dụng ra sao?', '<p>Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ c&ugrave;ng nhau t&igrave;m hiểu về cảm biến mực nước l&agrave; g&igrave; v&agrave; c&aacute;c loại phổ biến nhất được sử dụng tr&ecirc;n thị trường hiện nay.</p>\r\n', '<h2><strong>Cảm biến mực nước l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p><a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/tim-hieu-ve-cac-loai-cam-bien-muc-nuoc-pho-bien-nhat-hien-nay-136253\">Cảm biến mực nước</a>&nbsp;l&agrave; một thiết bị chuy&ecirc;n dụng để đo lường c&aacute;c loại chất lỏng như nước, nước thải, c&aacute;c chất dạng lỏng trong c&ocirc;ng nghiệp. Với c&aacute;c t&iacute;nh năng cũng như c&aacute;c th&ocirc;ng số đặc trưng th&igrave; c&aacute;c loại cảm biến n&agrave;y c&oacute; thể hoạt động kh&aacute; tốt trong nhiều m&ocirc;i trường kh&aacute;c nhau, thay thế con người trong c&ocirc;ng việc đo lường v&agrave; gi&uacute;p ch&uacute;ng ta tiết kiệm thời gian hơn.</p>\r\n\r\n<p>Một v&iacute; dụ thực tế l&agrave; khi l&ecirc;n xe, bạn thường nh&igrave;n v&agrave;o&nbsp;<a href=\"https://fptshop.com.vn/dong-ho\">đồng hồ</a>&nbsp;đo xăng để biết m&igrave;nh c&oacute; phải đổ xăng hay kh&ocirc;ng. Đ&acirc;y l&agrave; một loại cảm biến mực nước. Trong nhiều lĩnh vực của cuộc sống, một số loại cảm biến mực nước kh&aacute;c nhau sẽ được ứng dụng để thực hiện c&aacute;c mục đ&iacute;ch kh&aacute;c nhau.</p>\r\n\r\n<h2><strong>Ph&acirc;n loại cảm biến mực nước</strong></h2>\r\n\r\n<p>Cảm biến mực nước c&oacute; thể được chia th&agrave;nh hai loại:</p>\r\n\r\n<ul>\r\n	<li>Đo theo điểm</li>\r\n	<li>Đo li&ecirc;n tục</li>\r\n</ul>\r\n\r\n<p>Ph&eacute;p đo theo điểm sẽ cho biết mực nước c&oacute; mặt tại một điểm nhất định. Mặt kh&aacute;c, ph&eacute;p đo li&ecirc;n tục cho biết mức độ thay đổi li&ecirc;n tục của mực nước theo thời gian thực.</p>\r\n\r\n<p><strong><img alt=\"Cảm biến mực nước là gì?\" id=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136253/Originals/cam-bien-do-muc-nuoc-01.jpg\" title=\"\" /></strong></p>\r\n\r\n<p><em>Cảm biến mực nước c&oacute; rất nhiều loại</em></p>\r\n\r\n<p>C&aacute;c cảm biến mực nước đo theo điểm gồm c&oacute; c&aacute;c loại:</p>\r\n\r\n<ul>\r\n	<li>Điện dung</li>\r\n	<li>Quang học</li>\r\n	<li>Điện trở</li>\r\n	<li>Rung</li>\r\n	<li>Phao</li>\r\n</ul>\r\n\r\n<p>C&aacute;c cảm biến mực nước đo li&ecirc;n tục c&oacute; c&aacute;c loại:</p>\r\n\r\n<ul>\r\n	<li>Si&ecirc;u &acirc;m</li>\r\n	<li>Radar</li>\r\n</ul>\r\n\r\n<p><em>Tham khảo:&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/ban-da-biet-gi-ve-cam-bien-nhiet-do-136058\">Cảm biến nhiệt độ l&agrave; g&igrave;? Nguy&ecirc;n l&yacute; hoạt động v&agrave; ứng dụng của cảm biến nhiệt</a></em></p>\r\n\r\n<h3><strong>1. Cảm biến mực nước đo theo điểm</strong></h3>\r\n\r\n<p><strong>1.1/ Cảm biến điện dung</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; loại cảm biến mực nước t&iacute;ch hợp cảm biến khoảng c&aacute;ch c&oacute; khả năng ph&aacute;t ra v&ugrave;ng điện trường. Khi nước tăng hoặc giảm v&agrave; tiếp x&uacute;c v&agrave;o v&ugrave;ng điện trường, th&ocirc;ng tin sẽ được truyền về để hiển thị mức nước đ&oacute;.</p>\r\n\r\n<p><strong><img alt=\"Cảm biến mực nước điện dung\" id=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136253/Originals/cam-bien-do-muc-nuoc-06.jpg\" title=\"\" /></strong></p>\r\n\r\n<p><em>Cảm biến mực nước điện dung​</em></p>\r\n\r\n<p>Loại cảm biến mực nước n&agrave;y c&oacute; rất nhiều lợi &iacute;ch như k&iacute;ch thước nhỏ, chi ph&iacute; lắp đặt rẻ v&agrave; ch&iacute;nh x&aacute;c. Tuy nhi&ecirc;n, ch&uacute;ng phải được hiệu chuẩn v&agrave; chỉ c&oacute; khả năng đo một số loại chất lỏng nhất định. Cảm biến mực nước điện dung c&oacute; thể được sử dụng trong c&aacute;c bể chứa chất lỏng.</p>\r\n\r\n<p><strong>1.2/ Cảm biến quang học</strong></p>\r\n\r\n<p>Loại cảm biến đo mực nước n&agrave;y hoạt động bằng c&aacute;ch chuyển đổi c&aacute;c tia s&aacute;ng th&agrave;nh t&iacute;n hiệu điện để đo một lượng &aacute;nh s&aacute;ng khi tiếp x&uacute;c vật l&yacute; với chất lỏng. Do đ&oacute;, ch&uacute;ng sẽ kh&ocirc;ng c&oacute; bộ phận chuyển động cũng như kh&ocirc;ng bị ảnh hưởng bởi &aacute;p suất hoặc nhiệt độ cao.</p>\r\n\r\n<p><strong>1.3/ Cảm biến điện trở</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; loại cảm biến sử dụng một đầu d&ograve; để đọc độ dẫn điện. Đầu d&ograve; c&oacute; một cặp điện cực v&agrave; c&oacute; d&ograve;ng điện xoay chiều đi qua. Khi chất lỏng bao phủ đầu d&ograve;, c&aacute;c điện cực sẽ tạo th&agrave;nh một phần tr&ecirc;n mạch điện, tạo ra d&ograve;ng điện chạy qua b&aacute;o mức cao hoặc mức thấp. Loại cảm biến n&agrave;y sẽ kh&ocirc;ng c&oacute; bộ phận chuyển động, chi ph&iacute; thấp v&agrave; kh&aacute; dễ sử dụng.</p>\r\n\r\n<p><img alt=\"Cảm biến mực nước điện trở\" id=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136253/Originals/cam-bien-do-muc-nuoc-08.jpg\" title=\"\" /></p>\r\n\r\n<p><em>Cảm biến mực nước điện trở</em></p>\r\n\r\n<p><em>Xem th&ecirc;m:&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/day-la-moi-thu-ban-can-biet-ve-cam-bien-chuyen-dong-135795\">Cảm biến chuyển động l&agrave; g&igrave;? C&oacute; bao nhi&ecirc;u loại v&agrave; ứng dụng ra sao?</a></em></p>\r\n\r\n<p><strong>1.4/ Cảm biến rung</strong></p>\r\n\r\n<p>Trong loại cảm biến n&agrave;y, c&aacute;c nh&agrave; sản xuất sẽ sử dụng một bộ phận h&igrave;nh nĩa với hai mũi nhọn. Nĩa sẽ dao động ở tần số cộng hưởng tự nhi&ecirc;n. Khi mức chất lỏng thay đổi, tần số của nĩa sẽ thay đổi.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; thế, cảm biến rung c&oacute; thể được sử dụng kh&ocirc;ng giới hạn trong c&aacute;c loại chất lỏng kh&aacute;c nhau. C&aacute;c ng&agrave;nh c&ocirc;ng nghiệp khai th&aacute;c, thực phẩm, đồ uống v&agrave; chế biến h&oacute;a chất thường sử dụng c&aacute;c cảm biến n&agrave;y.</p>\r\n\r\n<p><strong>1.5/ Cảm biến phao</strong></p>\r\n\r\n<p>N&oacute; sử dụng một phao nổi để n&acirc;ng l&ecirc;n hạ xuống tr&ecirc;n bề mặt chất lỏng khi mực chất lỏng thay đổi. Cảm biến loại n&agrave;y sẽ mở ra hoặc đ&oacute;ng một mạch khi phao di chuyển tới một vị tr&iacute; nhất định. Do đ&oacute;, cảm biến phao sẽ chỉ cho biết mức cao hoặc thấp m&agrave; kh&ocirc;ng thể đo mức thay đổi.</p>\r\n\r\n<p><img alt=\"Cảm biến mực nước dạng phao\" id=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136253/Originals/cam-bien-do-muc-nuoc-03.jpg\" title=\"\" /></p>\r\n\r\n<p><em>Cảm biến mực nước dạng phao</em></p>\r\n\r\n<p><em>Xem th&ecirc;m:&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/danh-gia/nhung-thong-tin-thu-vi-ve-cam-bien-anh-sang-ma-ban-nen-biet-135347\">Cảm biến &aacute;nh s&aacute;ng l&agrave; g&igrave;? C&oacute; t&aacute;c dụng g&igrave; với c&aacute;c thiết bị th&ocirc;ng minh?</a></em></p>\r\n\r\n<h3><strong>2. Cảm biến mực nước đo li&ecirc;n tục</strong></h3>\r\n\r\n<p><strong>2.1/ Cảm biến si&ecirc;u &acirc;m</strong></p>\r\n\r\n<p>N&oacute; hoạt động bằng c&aacute;ch ph&aacute;t v&agrave; nhận s&oacute;ng si&ecirc;u &acirc;m. Thời gian thu t&iacute;n hiệu s&oacute;ng phản xạ trở lại l&agrave; c&aacute;ch để n&oacute; đo được mức chất lỏng thay đổi. Đ&acirc;y l&agrave; loại cảm biến kh&aacute; hiện đại n&ecirc;n ch&uacute;ng thường c&oacute; gi&aacute; th&agrave;nh cao hơn so với những loại kh&aacute;c.</p>\r\n\r\n<p><strong><img alt=\"Cảm biến mực nước siêu âm\" id=\"\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136253/Originals/cam-bien-do-muc-nuoc-05.jpg\" title=\"\" /></strong></p>\r\n\r\n<p><em>Cảm biến mực nước si&ecirc;u &acirc;m​</em></p>\r\n\r\n<p><strong>2.2/ Cảm biến radar</strong></p>\r\n\r\n<p>Loại cảm biến mực nước n&agrave;y sử dụng truyền s&oacute;ng vi ba bằng một ăng ten (t&iacute;ch hợp tr&ecirc;n cảm biến radar). Sau đ&oacute;, ăng ten lại thu s&oacute;ng phản xạ trở lại v&agrave; t&iacute;nh to&aacute;n thời gian s&oacute;ng quay trở lại để nhận biết được mực chất lỏng.</p>\r\n\r\n<p>Do đ&oacute;, cảm biến radar sẽ kh&ocirc;ng bị ảnh hưởng bởi nhiệt độ, &aacute;p suất hoặc bụi. Phạm vi ứng dụng của loại cảm biến n&agrave;y v&ocirc; c&ugrave;ng rộng lớn m&agrave; người vận h&agrave;nh lại kh&ocirc;ng phải hiệu chỉnh.</p>\r\n', 1, '1624602568_tintuc4.jpg'),
(7, 'Công nghệ Adaptive-Sync là gì?', '<p>Adaptive-Sync hay FreeSync l&agrave; một c&ocirc;ng nghệ đồng bộ khung h&igrave;nh tương tự như G-Sync của NVIDIA, c&oacute; t&aacute;c dụng giảm thiểu c&aacute;c t&igrave;nh trạng m&agrave;n h&igrave;nh bị răng cưa hay nhiễu, lag khi chơi game cấu h&igrave;nh cao.</p>\r\n', '<p>Trong b&agrave;i n&agrave;y sẽ giới thiệu cho bạn sơ qua về c&ocirc;ng nghệ Adaptive-Sync thường thấy tr&ecirc;n c&aacute;c laptop gaming.</p>\r\n\r\n<h2><strong>C&ocirc;ng nghệ Adaptive-Sync l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>Adaptive-Sync l&agrave; một c&ocirc;ng nghệ đồng bộ giữa tốc độ l&agrave;m tươi của m&agrave;n h&igrave;nh v&agrave; tốc độ dựng của GPU do Hiệp hội c&aacute;c ti&ecirc;u chuẩn video điện tử (VESA) nghi&ecirc;n cứu v&agrave; ph&aacute;t triển. Tr&ecirc;n m&agrave;n h&igrave;nh được trang bị c&ocirc;ng nghệ Adaptive-Synce, tốc độ l&agrave;m tươi (Refresh Rate - số lần m&agrave; h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh được cập nhật trong 1 gi&acirc;y) của m&agrave;n h&igrave;nh v&agrave; tốc độ dựng h&igrave;nh (Render Rate) của GPU sẽ được đồng bộ với nhau, cho ph&eacute;p m&agrave;n h&igrave;nh tự động khớp với tốc độ kết xuất của GPU, từ đ&oacute; giảm thiểu tối đa t&igrave;nh trạng h&igrave;nh ảnh bị răng cưa ở những khung h&igrave;nh chuyển động nhanh khi chơi&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/giai-tri\">game</a>.</p>\r\n\r\n<p>Năm 2014, AMD đ&atilde; hợp t&aacute;c với VESA để ho&agrave;n thiện v&agrave; sử dụng c&ocirc;ng nghệ Adaptive-Sync th&agrave;nh một c&ocirc;ng nghệ của m&igrave;nh với t&ecirc;n gọi mới l&agrave; FreeSync. Về bản chất c&oacute; thể n&oacute;i Adaptive-Sync v&agrave; FreeSync l&agrave; như nhau. FreeSync của AMD hiện đang cạnh tranh trực tiếp với G-Sync của NVIDIA.</p>\r\n\r\n<p><img alt=\"công nghệ adaptive-sync - hình 1\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136313/Originals/ay.png\" /></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://fptshop.com.vn/tin-tuc/thu-thuat/cong-nghe-dong-bo-hoa-amd-freesync-la-gi-131114\">C&ocirc;ng nghệ đồng bộ h&oacute;a AMD Freesync l&agrave; g&igrave;?</a></p>\r\n\r\n<h2><strong>Lợi &iacute;ch của c&ocirc;ng nghệ Adaptive-Sync</strong></h2>\r\n\r\n<p>Vấn đề cốt l&otilde;i của những m&agrave;n h&igrave;nh khi chơi game đ&oacute; l&agrave; bị hiện tượng khung ảnh bị răng cưa, lag hoặc nhiễu.</p>\r\n\r\n<p>Hiện nay c&aacute;c m&agrave;n h&igrave;nh đều chạy ở một tần số qu&eacute;t (hay c&ograve;n gọi l&agrave; tốc độ l&agrave;m tươi &ndash; refresh rate) cố định l&agrave; 60Hz, c&ograve;n tấm nền m&agrave;n h&igrave;nh LCD lại kh&ocirc;ng y&ecirc;u cầu một tần số qu&eacute;t cố định mới hoạt động được. Do đ&oacute;, khi m&agrave; tấm nền m&agrave;n h&igrave;nh cập nhật h&igrave;nh ảnh theo một tần suất cố định c&ograve;n bộ xử l&iacute; đồ họa GPU lại dựng khung h&igrave;nh l&uacute;c nhanh l&uacute;c l&acirc;u t&ugrave;y theo chất lượng h&igrave;nh ảnh, sẽ dẫn đến kết quả l&agrave; h&igrave;nh ảnh mỗi khung h&igrave;nh được dựng li&ecirc;n tục m&agrave; m&agrave;n h&igrave;nh lại hiển thị kh&ocirc;ng kịp, khiến một phần của h&igrave;nh ảnh trước chồng l&ecirc;n một phần của h&igrave;nh ảnh sau tạo n&ecirc;n h&igrave;nh ảnh răng cưa. T&igrave;nh trạng răng cưa n&agrave;y sẽ gặp c&agrave;ng đặc biệt nhiều mỗi khi c&oacute; những khung h&igrave;nh chuyển động nhanh, đem đến trải nghiệm kh&ocirc;ng liền mạch cực k&igrave; kh&oacute; chịu với c&aacute;c game thủ.</p>\r\n\r\n<p><img alt=\"công nghệ adaptive-sync - hình 2\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136313/Originals/adaptive-sync.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau n&agrave;y, c&ocirc;ng nghệ Vsync (vertical sync) giải quyết được vấn đề n&agrave;y bằng c&aacute;ch đồng bộ GPU với tần số qu&eacute;t của m&agrave;n h&igrave;nh, &eacute;p m&agrave;n h&igrave;nh phải chờ cho tới khi GPU bắt đầu chu tr&igrave;nh l&agrave;m tươi kế tiếp th&igrave; mới hiển thị, nhằm đảm bảo hiển thị khung h&igrave;nh trọn vẹn v&agrave; loại bỏ t&igrave;nh trạng răng cưa. Tuy nhi&ecirc;n với cơ chế n&agrave;y th&igrave; GPU lại dễ rơi v&agrave;o t&igrave;nh trạng phải chờ tần số qu&eacute;t của m&agrave;n h&igrave;nh qu&aacute; l&acirc;u v&agrave; bỏ lỡ chu tr&igrave;nh l&agrave;m tươi mới, kết quả l&agrave; h&igrave;nh ảnh mới kh&ocirc;ng hiển thị kịp thời g&acirc;y ra hiện tượng h&igrave;nh ảnh bị giật, trễ v&agrave; lag.</p>\r\n\r\n<p>Adaptive-Sync (FreeSync) đ&atilde; khắc phục được hạn chế n&agrave;y của Vsync bằng c&aacute;ch cho GPU trở th&agrave;nh nguồn xử l&iacute; ch&iacute;nh, tự GPU sẽ đưa ra những tần số qu&eacute;t kh&aacute;c nhau cho ph&ugrave; hợp với tần số dựng h&igrave;nh.</p>\r\n\r\n<p><img alt=\"công nghệ adaptive-sync - hình 3\" src=\"https://images.fpt.shop/unsafe/filters:quality(90)/fptshop.com.vn/uploads/images/tin-tuc/136313/Originals/amd-adaptive-sync-800x428.jpg\" /></p>\r\n\r\n<p>C&ocirc;ng nghệ Adaptive-Sync hiện được trang bị tr&ecirc;n một số m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh hay laptop gaming của ASUS như ASUS LCD ProArt PA247CV hay laptop&nbsp;<a href=\"https://fptshop.com.vn/may-tinh-xach-tay/asus-tuf-gaming\">ASUS TUF</a>&nbsp;Gaming FX516PM, gi&uacute;p người d&ugrave;ng c&oacute; được trải nghiệm mượt m&agrave; hơn khi chơi c&aacute;c game cấu h&igrave;nh cao.</p>\r\n', 1, '1624602474_tintuc2.jpg'),
(8, 'Đánh giá chi tiết Volkswagen Viloran 2024: Thiết kế sang trọng, trang bị đẳng cấp cùng vận hành êm ái, tiết kiệm', '<h2>1. GIỚI THIỆU CHUNG &amp; ƯỚC T&Iacute;NH GI&Aacute; VOLKSWAGEN VILORAN 2024 - KHUYẾN M&Atilde;I</h2>\r\n\r\n<p>Ph&acirc;n kh&uacute;c MPV lu&ocirc;n c&oacute; chỗ đứng nhất định tại Việt Nam d&ugrave; kh&ocirc;ng nhiều sự lựa chọn như ph&acirc;n kh&uacute;c xe SUV v&agrave; CUV. B&ecirc;n cạnh sự đa dạng của ph&acirc;n kh&uacute;c phổ th&ocirc;ng với những d&ograve;ng xe b&aacute;n chạy nhất nh&igrave; thị trường, ph&acirc;n kh&uacute;c MPV cao cấp trong năm 2023 xuất hiện nhiều t&ecirc;n tuổi mới được kh&aacute;ch h&agrave;ng Việt ch&uacute; &yacute; như Hyundai Custin,&nbsp;<a href=\"https://www.danhgiaxe.com/toyota-innova\" title=\"Toyota Innova\">Toyota Innova</a>&nbsp;Cross thế hệ mới.</p>\r\n', '<p>V&agrave;&nbsp;<a href=\"https://www.danhgiaxe.com/volkswagen/\" title=\"Volkswagen\">Volkswagen</a>&nbsp;Viloran l&agrave; d&ograve;ng MPV mới nhất tham gia v&agrave;o ph&acirc;n kh&uacute;c cao cấp, hướng đến nh&oacute;m kh&aacute;ch h&agrave;ng thương gia, doanh nghiệp v&agrave; gia đ&igrave;nh nhiều thế hệ. Đ&acirc;y l&agrave; nh&oacute;m kh&aacute;ch h&agrave;ng cao cấp, vốn c&oacute; nhu cầu vượt khả năng đ&aacute;p ứng của d&ograve;ng xe MPV quốc d&acirc;n&nbsp;<a href=\"https://www.danhgiaxe.com/kia\" title=\"Kia\">Kia</a>&nbsp;Carnival, trong khi thị trường lại qu&aacute; thiếu lựa chọn.</p>\r\n\r\n<p>Volkswagen Viloran 2024 được giới thiệu trong những ng&agrave;y cuối năm 2023, như l&agrave; một m&oacute;n qu&agrave; m&agrave; h&atilde;ng xe Đức muốn gửi đến kh&aacute;ch h&agrave;ng trước dịp Tết Nguy&ecirc;n Đ&aacute;n 2024 đang đến gần. Mẫu MPV cỡ lớn của Volkswagen được nhập khẩu nguy&ecirc;n chiếc từ Trung Quốc v&agrave; ph&acirc;n phối dưới 2 phi&ecirc;n bản, đi k&egrave;m gi&aacute; ni&ecirc;m yết lần lượt:</p>\r\n\r\n<p>&bull; Volkswagen Viloran Premium: 1,989 tỷ đồng</p>\r\n\r\n<p>&bull; Volkswagen Viloran Luxury: 2,188 tỷ đồng</p>\r\n', 1, '1704514095_anhbia2.jpg'),
(9, 'Đánh giá Kia Carnival 2024: Nâng cấp toàn diện, trải nghiệm xứng tầm', '<h2>1. TỔNG QUAN &amp; ƯỚC T&Iacute;NH GI&Aacute; - KHUYẾN M&Atilde;I KIA CARNIVAL 2024</h2>\r\n\r\n<p>C&aacute;c d&ograve;ng xe 7 chỗ dưới 2 tỷ đồng tại Việt Nam thường kh&oacute; c&oacute; khả năng chở full tải, h&agrave;ng ghế thứ 3 đa phần chỉ đ&oacute;ng vai tr&ograve; tăng t&iacute;nh thẩm mỹ v&agrave; hấp dẫn cho xe hơn l&agrave; t&iacute;nh thực tế, nhưng&nbsp;<a href=\"https://www.danhgiaxe.com/kia\" title=\"Kia\">Kia</a>&nbsp;Sedona đ&atilde; khắc phục được nhược điểm n&agrave;y. Gia nhập thị trường Việt Nam từ năm 2006,&nbsp;<a href=\"https://www.danhgiaxe.com/kia-sedona\" title=\"KIA Sedona\">KIA Sedona</a>&nbsp;định vị l&agrave; mẫu MPV cao cấp cỡ lớn d&agrave;nh cho gia đ&igrave;nh với kh&ocirc;ng gian bậc nhất đi c&ugrave;ng thiết kế sang trọng, nam t&iacute;nh.</p>\r\n', '<p>Bước sang thế hệ thứ 4, mẫu xe được đổi t&ecirc;n th&agrave;nh Carnival để đồng nhất với t&ecirc;n gọi tr&ecirc;n to&agrave;n cầu, đồng thời nhận về n&acirc;ng cấp to&agrave;n diện từ thiết kế, nội thất, trang bị đến khung gầm, động cơ... Kh&ocirc;ng c&ograve;n g&oacute;i gọn trong ph&acirc;n kh&uacute;c MPV như trước, Kia Carnival 2024 mang định hướng mới theo kiểu SUV đ&ocirc; thị, đối đầu trực tiếp với c&aacute;c đối thủ đ&aacute;ng gờm như&nbsp;<a href=\"https://www.danhgiaxe.com/hyundai-santafe\" title=\"Hyundai SantaFe\">Hyundai SantaFe</a>,&nbsp;<a href=\"https://www.danhgiaxe.com/toyota-fortuner\" title=\"Toyota Fortuner\">Toyota Fortuner</a>,&nbsp;<a href=\"https://www.danhgiaxe.com/ford-everest\" title=\"Ford Everest\">Ford Everest</a>&hellip;</p>\r\n', 1, '1704514069_anhbia3.jpg'),
(10, 'Đánh giá Kia Sportage 2024: Nâng cấp mạnh mẽ, lột xác toàn diện', '<h2>1. GIỚI THIỆU CHUNG &amp; ƯỚC T&Iacute;NH GI&Aacute; - KHUYẾN M&Atilde;I KIA SPORTAGE 2024</h2>\r\n\r\n<p>Sau gần 6 năm vắng b&oacute;ng tr&ecirc;n thị trường Việt kể từ năm 2017 do doanh số kh&ocirc;ng khả quan, v&agrave;o ng&agrave;y 17/06/2022,&nbsp;<a href=\"https://www.danhgiaxe.com/kia\" title=\"Kia\">Kia</a>&nbsp;Sportage đ&atilde; c&oacute; m&agrave;n &quot;comeback&quot; đầy ấn tượng với diện mạo ho&agrave;n to&agrave;n &quot;lột x&aacute;c&quot;, n&acirc;ng cấp c&ocirc;ng nghệ v&agrave; mang đến 3 g&oacute;i t&ugrave;y chọn động cơ. Lần ra mắt n&agrave;y cho thấy mẫu xe H&agrave;n đ&atilde; lấy lại tự tin tham chiến ở ph&acirc;n kh&uacute;c CUV cỡ C, hứa hẹn sẽ l&agrave; đối thủ đ&aacute;ng gờm&nbsp;của&nbsp;<a href=\"https://www.danhgiaxe.com/honda-cr-v\" title=\"Honda CR-V\">Honda CR-V</a>,&nbsp;<a href=\"https://www.danhgiaxe.com/hyundai-tucson\" title=\"Hyundai Tucson\">Hyundai Tucson</a>,&nbsp;<a href=\"https://www.danhgiaxe.com/ford-territory\" title=\"Ford Territory\">Ford Territory</a>&nbsp;hay&nbsp;<a href=\"https://www.danhgiaxe.com/mazda-cx-5\" title=\"Mazda CX-5\">Mazda CX-5</a>.</p>\r\n', '<p>Kia Sportage 2024 hiện được lắp r&aacute;p trong nước với 8 phi&ecirc;n bản, gi&aacute; ni&ecirc;m yết v&agrave; khuyến m&atilde;i cụ thể của từng phi&ecirc;n bản như sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" dir=\"ltr\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Phi&ecirc;n bản</strong></td>\r\n			<td><strong>Gi&aacute; b&aacute;n lẻ</strong></td>\r\n			<td><strong>Khuyến m&atilde;i th&aacute;ng&nbsp;01-2024</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 2.0G Luxury</td>\r\n			<td>799,000,000</td>\r\n			<td rowspan=\"8\">Theo chương tr&igrave;nh khuyến m&atilde;i của đại l&yacute;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 2.0G Premium</td>\r\n			<td>852,000,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 2.0G Signature X-Line</td>\r\n			<td>919,000,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 2.0G Signature</td>\r\n			<td>939,000,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 2.0D Signature X-Line</td>\r\n			<td>939,000,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 2.0D Signature</td>\r\n			<td>939,000,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 1.6T Signature AWD</td>\r\n			<td>1,014,000,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Sportage 1.6T Signature AWD (X-Line)</td>\r\n			<td>1,019,000,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, '1657444867_3644-5256.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `product_id`, `number`, `price`) VALUES
(46, 29, 44, 1, 4490000),
(47, 30, 13, 1, 1850000),
(48, 30, 56, 1, 26900000),
(49, 31, 44, 1, 4490000),
(50, 32, 32, 4, 44990000),
(51, 33, 32, 1, 44990000),
(52, 33, 56, 2, 26900000),
(53, 34, 32, 1, 44990000),
(54, 35, 44, 1, 4490000),
(55, 36, 32, 1, 44990000),
(56, 37, 32, 1, 44990000),
(57, 38, 44, 1, 4490000),
(58, 39, 32, 1, 44990000),
(59, 40, 32, 1, 44990000),
(60, 41, 56, 1, 26900000),
(61, 42, 66, 1, 10000),
(62, 43, 65, 1, 100000),
(63, 44, 66, 2, 10000),
(64, 45, 56, 2, 2571740000),
(65, 46, 56, 3, 2571740000),
(66, 47, 70, 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `create_at` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `create_at`, `status`) VALUES
(31, 19, '2024-01-01', 1),
(32, 19, '2024-01-01', 0),
(33, 19, '2024-01-03', 0),
(34, 19, '2024-01-03', 0),
(35, 19, '2024-01-03', 0),
(36, 19, '2024-01-03', 0),
(37, 19, '2024-01-03', 0),
(38, 19, '2024-01-03', 0),
(39, 19, '2024-01-03', 0),
(40, 19, '2024-01-03', 0),
(41, 19, '2024-01-04', 0),
(42, 19, '2024-01-04', 0),
(43, 19, '2024-01-04', 0),
(44, 19, '2024-01-04', 0),
(45, 19, '2024-01-06', 1),
(46, 21, '2024-01-06', 1),
(47, 21, '2024-01-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `content` text NOT NULL,
  `hot` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) DEFAULT 100,
  `photo` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `quantity`, `photo`, `price`, `discount`, `category_id`, `created_at`) VALUES
(3, 'Toyota Raize', '<h2>Ngay trong th&aacute;ng đầu ti&ecirc;n ra mắt thị trường, mặc d&ugrave; Toyota Raize chỉ b&aacute;n được 189 xe nhưng lại rơi v&agrave;o t&igrave;nh trạng khan hiếm, số lượng nhập về nước &iacute;t ỏi. Con số n&agrave;y kh&ocirc;ng phản &aacute;nh đ&uacute;ng về độ hot của&nbsp;mẫu SUV hạng A n&agrave;y bởi đ&atilde; ch&aacute;y h&agrave;ng trong đợt mở b&aacute;n đầu ti&ecirc;n.</h2>\r\n', '<p>Đ&acirc;y l&agrave; một trong những mẫu SUV c&oacute; gi&aacute; b&aacute;n hợp l&yacute;, dễ d&agrave;ng được kh&aacute;ch h&agrave;ng tiếp cận với gi&aacute; 527 triệu đồng. Đồng thời, sức mạnh thương hiệu của Toyota từ trước đến nay đều đ&atilde; được kh&aacute;ch h&agrave;ng c&ocirc;ng nhận. Hiện tại, Raize được nhập khẩu nguy&ecirc;n chiếc về Việt Nam từ Indonesia với duy nhất một phi&ecirc;n bản.</p>\r\n\r\n<p>Mẫu mini SUV của h&atilde;ng xe Nhật Bản n&agrave;y được trang bị động cơ tăng &aacute;p 1.0L, 3 xi lanh sản sinh c&ocirc;ng suất cực đại 98 m&atilde; lực tại 6.000 v&ograve;ng/ph&uacute;t, m&ocirc; men xoắn tối đa đạt được l&agrave; 140 Nm tại 4.000 v&ograve;ng/ph&uacute;t. Kết hợp với khối động cơ n&agrave;y l&agrave; hộp số tự động v&ocirc; cấp CVT c&ugrave;ng hệ dẫn động cầu trước. Đặc biệt, mẫu xe n&agrave;y c&oacute; khả năng tiết kiệm nhi&ecirc;n liệu rất hiệu quả với 5,6 l&iacute;t cho 100km đường hỗn hợp.</p>\r\n', 0, 100, '1657443092_9400.jpg', 2665870000, 6, 1, '2023-12-18 14:19:19'),
(5, 'Audi Q8', '<h2>Q8 l&agrave; chiếc SUV lớn v&agrave; cao cấp nhất của h&atilde;ng xe Đức. Để cạnh tranh những đối thủ như BMW X6, Mercedes GLE Coupe, Audi ph&aacute;t triển Q8 như phi&ecirc;n bản coupe của chiếc Q7. Xe lần đầu ti&ecirc;n c&oacute; mặt tr&ecirc;n thị trường v&agrave;o 2018.</h2>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>Khoảng một năm sau khi ra mắt tại triển l&atilde;m Vietnam Motorshow hồi th&aacute;ng 10/2019, d&ograve;ng SUV kiểu coupe hạng sang Audi Q8 cập cảng S&agrave;i G&ograve;n. Đại diện h&atilde;ng cho biết đang chuẩn bị c&aacute;c thủ tục th&ocirc;ng quan, giao kh&aacute;ch trong những th&aacute;ng tới. Xe nhập khẩu từ Đức.</p>\r\n\r\n<p>Q8 gia nhập v&agrave;o d&ograve;ng Q nh&agrave; Audi tại Việt Nam nhưng thiết kế kh&aacute;c biệt, điểm nhấn tập trung ở lưới tản nhiệt, cụm đ&egrave;n hậu LED như một thanh ngang nối với nhau. Xe trang bị đ&egrave;n pha LED Matrix, đ&egrave;n LED ban ng&agrave;y. Nội thất l&agrave; nơi tập trung c&ocirc;ng nghệ nh&agrave; Audi, thiết kế hiện đại. Trung t&acirc;m bảng điều khiển l&agrave; hai m&agrave;n h&igrave;nh cảm ứng MMI k&iacute;ch thước lớn. Bảng đồng hồ kỹ thuật số, v&ocirc;-lăng bọc da 3 chấu, hệ thống điều h&ograve;a 4 v&ugrave;ng độc lập.</p>\r\n\r\n<p>Mẫu SUV phong c&aacute;ch coupe đến tay kh&aacute;ch h&agrave;ng thuộc phi&ecirc;n bản Q8 TFSI 55 quattro. Ngo&agrave;i những trang bị ti&ecirc;u chuẩn theo xe, kh&aacute;ch h&agrave;ng Việt Nam c&oacute; th&ecirc;m những lựa chọn d&agrave;nh ri&ecirc;ng như hiển thị th&ocirc;ng tin l&ecirc;n k&iacute;nh chắn gi&oacute;, kiểm so&aacute;t h&agrave;nh tr&igrave;nh th&iacute;ch ứng, đ&egrave;n ch&agrave;o mừng, g&oacute;i thể thao S line, da Valcona, g&oacute;i trang tr&iacute; lưới tản nhiệt v&agrave; gi&aacute; n&oacute;c, hệ thống &acirc;m thanh cao cấp Bang &amp; Olufsen 3D, cửa sổ trời to&agrave;n cảnh, v&agrave;nh hợp kim 21 inch. T&ugrave;y chọn ghế da Valcona đục lỗ với chức năng sưởi v&agrave; l&agrave;m m&aacute;t, k&egrave;m massage. Nội thất t&ugrave;y chọn 6 m&agrave;u, 8 kiểu v&agrave;nh hợp kim từ 19-22 inch.</p>\r\n', 1, 100, '1657260199_a12.jpg', 8741360000, 24, 17, '2023-12-18 14:19:19'),
(6, 'ford everest', '<h2>Ford ra mắt Everest thế hệ mới tại Việt Nam h&ocirc;m 1/7, với&nbsp;4 phi&ecirc;n bản, 3&nbsp;t&ugrave;y chọn&nbsp;Ambiente, Sport, Titanium đều dẫn động một cầu, turbo đơn&nbsp;v&agrave; Titanium+ dẫn động 2 cầu, turbo k&eacute;p.</h2>\r\n', '<p>Hiện tr&ecirc;n trang web ch&iacute;nh thức của Ford Việt Nam đang cập nhật&nbsp;<strong>bảng gi&aacute; xe Ford</strong>&nbsp;Everest 2023 như sau:</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\">Bảng gi&aacute; Ford Everest 2023</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phi&ecirc;n bản</strong></td>\r\n			<td><strong>M&agrave;u sắc</strong></td>\r\n			<td><strong>Gi&aacute; xe (tỷ đồng)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Wildtrak 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u đen</td>\r\n			<td>1,499</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Wildtrak 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u Trắng tuyết/ M&agrave;u Đỏ cam/ M&agrave;u V&agrave;ng Luxe</td>\r\n			<td>1,506</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u kh&aacute;c</td>\r\n			<td>1,468</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u Trắng tuyết / M&agrave;u Đỏ cam</td>\r\n			<td>1,475</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>Nội thất da m&agrave;u hạt dẻ</td>\r\n			<td>1,475</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u Trắng tuyết /<br />\r\n			M&agrave;u Đỏ cam kết hợp với Nội thất da m&agrave;u hạt dẻ</td>\r\n			<td>1,482</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium 2.0L AT 4&times;2</td>\r\n			<td>M&agrave;u kh&aacute;c</td>\r\n			<td>1,299</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium 2.0L AT 4&times;2</td>\r\n			<td>M&agrave;u Trắng tuyết / M&agrave;u Đỏ cam</td>\r\n			<td>1,306</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium 2.0L AT 4&times;2</td>\r\n			<td>Nội thất da m&agrave;u hạt dẻ</td>\r\n			<td>1,306</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium 2.0L AT 4&times;2</td>\r\n			<td>M&agrave;u Trắng tuyết /<br />\r\n			M&agrave;u Đỏ cam kết hợp với Nội thất da m&agrave;u hạt dẻ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 100, '1657436791_99e61dc20bdac977de4c3cd24cc96d45-product.jpg', 6709190000, 5, 8, '2024-01-04 14:19:19'),
(7, 'Tesla Cybertruck', '<h2>Si&ecirc;u xe b&aacute;n tải điện &ldquo;lập dị&rdquo; Tesla Cybertruck &ndash; B&aacute;n tải đến từ tương lai</h2>\r\n', '<h3><strong>Tesla Cybertruck</strong>&nbsp;l&agrave; chiếc xe &ldquo;hot&rdquo; nhất tr&ecirc;n truyền th&ocirc;ng thế giới những ng&agrave;y vừa qua. Với m&agrave;n ra mắt theo phong c&aacute;ch kh&ocirc;ng thể bất ngờ hơn, Cybertruck khiến tất cả thế giới phải nhắc đến t&ecirc;n m&igrave;nh.&nbsp;</h3>\r\n', 0, 100, '1657262428_s22 ultra.jpg', 6821870000, 23, 3, '2023-12-18 14:19:19'),
(8, 'Toyota Vios', '<h2>Với lợi thế bền bỉ, chi ph&iacute; &ldquo;nu&ocirc;i thấp&rdquo;, giữ gi&aacute; cực tốt, t&iacute;nh thanh khoản cao,&nbsp;<a href=\"https://xetot.com/tin-xe/danh-gia-xe-toyota-vios/\" rel=\"noopener\" target=\"_blank\" title=\"Đánh giá xe Toyota Vios 2022\">Toyota Vios 2022</a>&nbsp;lu&ocirc;n mang đến sự an t&acirc;m cho chủ nh&acirc;n. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao Vios b&aacute;n rất chạy tại Việt Nam đến mức được đặt biệt danh &ldquo;mẫu xe quốc d&acirc;n&rdquo;.</h2>\r\n', '<h3>Kh&ocirc;ng thể phủ nhận Vios c&ograve;n c&oacute; những điểm hạn chế hơn đối thủ, đặc biệt về mặt tiện nghi. Tuy nhi&ecirc;n, model hiện h&agrave;nh đ&atilde; được cải tiến về kiểu d&aacute;ng, bổ sung trang bị, t&iacute;nh năng nhằm cải thiện trải nghiệm người d&ugrave;ng.</h3>\r\n', 1, 100, '1657436767_samsung-galaxy-z-flip-3-1-1.jpg', 3981790000, 25, 1, '2024-01-04 14:19:19'),
(9, 'Honda City 2021', '<h2>Hiện tại, c&aacute;c đại l&yacute; v&agrave; showroom của Honda tại Việt Nam cũng đ&atilde; bắt đầu nhận đặt xe v&agrave; dự kiến giao xe trong th&aacute;ng 1/2021, c&aacute;c bạn c&oacute; thể đến đại l&yacute; để l&agrave;m thủ tục mua xe ngay từ b&acirc;y giờ.&nbsp;</h2>\r\n', '<p>Honda City 2021 đ&atilde; c&oacute; m&agrave;n ra mắt trực tuyến tại Việt Nam. Gi&aacute; xe kh&ocirc;ng qu&aacute; cao so với thế hệ tiền nhiệm, cụ thể như sau:&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Honda City 2021 bản 1.5G: 529 triệu đồng&nbsp;</li>\r\n	<li>Honda City 2021 bản 1.5L: 569 triệu đồng</li>\r\n	<li>Honda City 2021 bản 1.5RS: 599 triệu đồng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đối với bản RS v&agrave; bản L nếu mua m&agrave;u đỏ người mua sẽ phải trả th&ecirc;m 5 triệu đồng v&agrave; m&agrave;u đỏ chỉ xuất hiện tr&ecirc;n 2 phi&ecirc;n bản cao cấp nhất của Honda City thế hệ 5.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '1657443805_vn-top-loader-wa12t5360bv-wa12t5360bv-sv-514995811.jpg', 8443350000, 27, 22, '2023-12-18 14:19:19'),
(10, 'KIA Carnival', '<h2>KIA Carnival l&agrave; mẫu MPV cỡ lớn th&agrave;nh c&ocirc;ng ở nhiều thị trường, trong đ&oacute; c&oacute; Việt Nam ngay từ khi c&ograve;n mang t&ecirc;n Sedona (Tham khảo:&nbsp;<a href=\"https://xetot.com/toan-quoc/mua-ban-oto/kia--sedona\" rel=\"noopener\" target=\"_blank\" title=\"Xe Kia Sedona cũ\">Xe Kia Sedona cũ</a>). Kh&ocirc;ng chỉ mang đến một kh&ocirc;ng gian rộng r&atilde;i, thế hệ mới của KIA Carnival ra mắt hơn 3 năm trước đ&atilde; được chắp b&uacute;p bởi nh&agrave; thiết kế từng nhiều năm l&agrave;m việc cho BMW. Nhờ đ&oacute;, KIA Carnival đ&atilde; c&oacute; bước đột ph&aacute; về diện mại.</h2>\r\n', '<h2><strong>Th&ocirc;ng số kỹ thuật</strong></h2>\r\n\r\n<ul>\r\n	<li><strong>Ph&acirc;n kh&uacute;c: MPV cỡ lớn</strong></li>\r\n	<li><strong>Số chỗ ngồi: 4 &ndash; 7 &ndash; 9</strong></li>\r\n	<li>Chiều D&agrave;i&nbsp; x Rộng x Cao (mm):&nbsp;5.155 x 1.995 x 1.775</li>\r\n	<li>Chiều d&agrave;i cơ sở (mm): 3.090</li>\r\n	<li>Khoảng s&aacute;ng gầm (mm): 172</li>\r\n	<li>B&aacute;n k&iacute;nh v&ograve;ng quay tối thiểu (m): 5,8</li>\r\n	<li>Động cơ:</li>\r\n	<li>Hybrid 1.6L tăng &aacute;p mới</li>\r\n	<li>Diesel 2.2L</li>\r\n	<li>Xăng 3.5L V6&nbsp;</li>\r\n	<li>C&ocirc;ng suất (m&atilde; lực):\r\n	<ul>\r\n		<li>242</li>\r\n		<li>199</li>\r\n		<li>268</li>\r\n	</ul>\r\n	</li>\r\n	<li>M&ocirc; men xoắn (Nm):\r\n	<ul>\r\n		<li>367</li>\r\n		<li>440</li>\r\n		<li>331</li>\r\n	</ul>\r\n	</li>\r\n	<li>Hệ dẫn động:</li>\r\n</ul>\r\n', 0, 100, '1657443637_vn-front-loading-washer-ww10t634dles3-ww90t634dle-sv-514976699.jpg', 1271380000, 37, 5, '2024-01-04 14:19:19'),
(11, 'Honda City 2021', '<h2><strong>Cập nhật gi&aacute; xe Honda City 2021 v&agrave; th&ocirc;ng tin xe, th&ocirc;ng số kỹ thuật, h&igrave;nh ảnh, tin khuyến m&atilde;i, ưu đ&atilde;i k&egrave;m gi&aacute; lăn b&aacute;nh Honda City mới nhất th&aacute;ng 01/2024 tại Việt Nam.</strong></h2>\r\n', '<p>Honda City 2021 đ&atilde; c&oacute; m&agrave;n ra mắt trực tuyến tại Việt Nam. Gi&aacute; xe kh&ocirc;ng qu&aacute; cao so với thế hệ tiền nhiệm, cụ thể như sau:&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Honda City 2021 bản 1.5G: 529 triệu đồng&nbsp;</li>\r\n	<li>Honda City 2021 bản 1.5L: 569 triệu đồng</li>\r\n	<li>Honda City 2021 bản 1.5RS: 599 triệu đồng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đối với bản RS v&agrave; bản L nếu mua m&agrave;u đỏ người mua sẽ phải trả th&ecirc;m 5 triệu đồng v&agrave; m&agrave;u đỏ chỉ xuất hiện tr&ecirc;n 2 phi&ecirc;n bản cao cấp nhất của Honda City thế hệ 5.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 100, '1657442833_vn-air-purifier-ax60r5080wdsv-ax60r5080wd-sv-frontwhite-189196503.jpg', 9026830000, 35, 14, '2023-12-18 14:19:19'),
(12, ' Ford Escape', '<h2>Nhắc đến Ford Escape, nhiều kh&aacute;ch h&agrave;ng đ&atilde; kh&ocirc;ng khỏi tiếc nuối cho một huyền thoại đ&atilde; từng &ldquo;l&agrave;m mưa l&agrave;m gi&oacute;&rdquo; tại thị trường Việt Nam. Với khả năng vận h&agrave;nh mạnh mẽ đ&aacute;ng kinh ngạc, Ford Escape từng l&agrave; sự lựa chọn h&agrave;ng đầu v&agrave;o thời điểm 13 năm trước.</h2>\r\n', '<h2><strong>Năm 2001-2004 (thời kỳ ho&agrave;ng kim của Ford Escape tại Việt Nam)</strong></h2>\r\n\r\n<p><strong>Ford Escape ra mắt lần đầu ti&ecirc;n tại thị trường Việt Nam v&agrave;o th&aacute;ng 10/2001</strong>. Đ&acirc;y cũng ch&iacute;nh l&agrave; mẫu xe đặt nền m&oacute;ng đầu ti&ecirc;n để mở ra ph&acirc;n kh&uacute;c Crossover 5 chỗ hạng C ho&agrave;n to&agrave;n mới tại nước ta.</p>\r\n\r\n<p>Ford Escape thời điểm mới ra mắt được trang bị khối động cơ V6 3.0L, hộp số c&oacute; 2 tuỳ chọn gồm số s&agrave;n 5 cấp hoặc tự động 4 cấp. Đi k&egrave;m l&agrave; tuỳ chọn dẫn động 1 hoặc 2 cầu. Nhờ cấu h&igrave;nh khủng n&agrave;y, Ford Escape c&oacute; thể sản sinh c&ocirc;ng suất tối đa 200 m&atilde; lực.&nbsp;</p>\r\n', 0, 100, '1657442646_vn-wall-mount-outdoor-ar24tyhycwkxsv-f-ar24tyhycw20-217615165.jpg', 2820010000, 17, 8, '2024-01-04 14:19:19'),
(13, 'Hyundai Grand I10', '<h2>Tại thị trường Ấn Độ, Hyundai Grand i10 l&agrave; mẫu hatchback b&aacute;n chạy nhất với doanh số b&aacute;n hơn 10.000 xe mỗi th&aacute;ng. Để c&oacute; thể duy tr&igrave; được đ&agrave; tăng trưởng n&agrave;y, Hyundai đ&atilde; quyết định sẽ cho ra mắt&nbsp;<strong>Hyundai Grand i10 2022&nbsp;</strong>với nhiều n&acirc;ng cấp đắt gi&aacute;.&nbsp;</h2>\r\n', '<p>Hyundai cũng hy vọng rằng Grand i10 2022 c&oacute; thể tiếp tục nới rộng khoảng c&aacute;ch với c&aacute;c đối thủ&nbsp;<a href=\"https://xetot.com/toan-quoc/mua-ban-oto/suzuki--swift\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"Giá xe Suzuki Swift 2020\">Suzuki Swift</a>&nbsp;v&agrave; Ford Figo trong ph&acirc;n kh&uacute;c hatchback tại thị trường Ấn Độ.<strong>&nbsp;</strong></p>\r\n\r\n<p><strong>Hyundai Grand i10&nbsp;2022&nbsp;bản NIOS c&oacute; gi&aacute; khởi điểm 9.700 USD</strong>. Hyundai Grand i10 NIOS c&oacute; 6 t&ugrave;y chọn m&agrave;u sắc ngoại thất gồm: đỏ, trắng, bạc, x&aacute;m, xanh v&agrave; xanh &aacute;nh kim.</p>\r\n', 0, 100, '1657442105_vn-stick-handy-vs15r8544s1-vs15r8544s1-sv-frontblue-216174216.jpg', 5519560000, 35, 16, '2023-12-18 14:19:19'),
(14, 'Ford Ranger Hybrid', '<h2><em>Ford Ranger Hybrid 2024 l&agrave; phi&ecirc;n bản hybrid sạc điện PHEV của mẫu b&aacute;n tải cỡ trung Mỹ. Xe sở hữu ngoại h&igrave;nh vạm vỡ đậm chất Mỹ c&ugrave;ng tầm vận h&agrave;nh thuần điện l&ecirc;n đến 45 km.</em></h2>\r\n', '<p>Ng&agrave;y 19/09-2023, phi&ecirc;n bản Hybrid sạc điện PHEV của Ford Ranger l&agrave;&nbsp;<strong>Ranger Hybrid 2024 ch&iacute;nh thức được c&ocirc;ng bố với người ti&ecirc;u d&ugrave;ng.</strong></p>\r\n\r\n<p>Theo những th&ocirc;ng tin h&atilde;ng xe cung cấp, c&oacute; thể thấy diện mạo của Ford Ranger Hybrid 2024 kh&ocirc;ng kh&aacute;c biệt nhiều so với bản sử dụng động cơ đốt trong đang b&aacute;n tr&ecirc;n thị trường hiện nay. Xe duy tr&igrave; thiết kế mạnh mẽ, vạm vỡ đặc trưng.</p>\r\n\r\n<p>Vượt trội hơn cả trong lần xuất hiện n&agrave;y của Ford Ranger Hybrid 2024 nằm ở khả năng vận h&agrave;nh thuần điện l&ecirc;n đến 45 km.</p>\r\n\r\n<p>Cũng theo th&ocirc;ng tin được cung cấp bởi h&atilde;ng xe, Ford Ranger Hybrid 2024 sẽ được đưa v&agrave;o sản xuất từ cuối năm 2024, với đợt giao h&agrave;ng đầu ti&ecirc;n dự kiến v&agrave;o đầu năm 2025.</p>\r\n', 1, 100, '1657441919_vn-robot-vr05r5050wk-vr05r5050wk-sv-519428263.jpg', 9137800000, 39, 8, '2024-01-04 14:19:19'),
(15, 'VinFast VF5', '<h2>Với thiết kế hiện đại, độc đ&aacute;o, được trang bị c&aacute;c c&ocirc;ng nghệ v&agrave; t&iacute;nh năng&nbsp;th&ocirc;ng minh&nbsp;vượt trội, khả năng vận h&agrave;nh mạnh mẽ, an to&agrave;n,&nbsp;VF 5&nbsp;hội tụ đầy đủ c&aacute;c yếu tố người d&ugrave;ng trẻ t&igrave;m kiếm cho một chiếc xe điện đ&ocirc; thị l&yacute; tưởng.</h2>\r\n', '<p>VF 5 sở hữu thiết kế hiện đại, trẻ trung, c&aacute; t&iacute;nh v&agrave; nổi bật với c&aacute;c lựa chọn phối m&agrave;u nội ngoại thất, đảm bảo c&aacute; nh&acirc;n h&oacute;a theo phong c&aacute;ch sống, c&aacute; t&iacute;nh v&agrave; sở th&iacute;ch của mỗi kh&aacute;ch h&agrave;ng.</p>\r\n', 0, 100, '1657439198_vn-microwaves-oven-grill-mg23t5018ck-324512-mg23t5018ce-sv-505450992.jpg', 9630290000, 25, 10, '2023-12-18 14:19:19'),
(16, 'Toyota Camry', '<h2>Chiếc xe gắn liền với nhiều cơ quan c&ocirc;ng quyền với kh&ocirc;ng gian rộng, nhiều trang bị tiện nghị cho h&agrave;ng ghế thứ hai, doanh số mẫu n&agrave;y lu&ocirc;n ổn định mặc d&ugrave; c&oacute; giai đoạn đi xuống nhưng Camry vẫn l&agrave; mẫu xe được y&ecirc;u th&iacute;ch trong ph&acirc;n kh&uacute;c sedan cỡ D.</h2>\r\n', '<h2><strong>Bảng gi&aacute; Toyota Camry 2022</strong></h2>\r\n\r\n<p>Tại Việt Nam, Toyota Camry 2022 được ph&acirc;n ph&acirc;n phối ch&iacute;nh h&atilde;ng 4 phi&ecirc;n bản. Gi&aacute; lăn b&aacute;nh tham khảo như sau:</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<th>T&ecirc;n phi&ecirc;n bản</th>\r\n			<th>Gi&aacute; ni&ecirc;m yết</th>\r\n			<th>Lăn b&aacute;nh tại HN</th>\r\n			<th>Lăn b&aacute;nh tại TP.HCM</th>\r\n			<th>Lăn b&aacute;nh tại H&agrave; Tĩnh</th>\r\n			<th>Lăn b&aacute;nh tại c&aacute;c tỉnh kh&aacute;c</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>2.0G</td>\r\n			<td>1 tỷ 070 triệu VNĐ</td>\r\n			<td>1.220.737.000 VNĐ</td>\r\n			<td>1.199.337.000 VNĐ</td>\r\n			<td>1.191.037.000 VNĐ</td>\r\n			<td>1.180.337.000 VNĐ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.0Q</td>\r\n			<td>1 tỷ 185 triệu VNĐ</td>\r\n			<td>1.349.537.000 VNĐ</td>\r\n			<td>1.325.837.000 VNĐ</td>\r\n			<td>1.318.687.000 VNĐ</td>\r\n			<td>1.306.837.000 VNĐ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.5Q</td>\r\n			<td>1 tỷ 370 triệu VNĐ</td>\r\n			<td>1.556.737.000 VNĐ</td>\r\n			<td>1.529.337.000 VNĐ</td>\r\n			<td>1.524.037.000 VNĐ</td>\r\n			<td>1.510.337.000 VNĐ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.5HV</td>\r\n			<td>1 tỷ 460 triệu VNĐ</td>\r\n			<td>1.657.537.000 VNĐ</td>\r\n			<td>1.628.337.000 VNĐ</td>\r\n			<td>1.623.937.000 VNĐ</td>\r\n			<td>1.609.337.000 VNĐ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 100, '1657439027_vn-bespoke-mw8000r-mc35r8088le-sv-505437378.jpg', 1238050000, 25, 1, '2024-01-04 14:19:19'),
(17, 'Land Cruiser 2022 bản 4 chỗ', '<h2><em>Land Cruiser 2022&nbsp;bản 4 chỗ nhập khẩu Trung Đ&ocirc;ng được h&atilde;ng MBS l&agrave;m lại khoang nội thất sang trọng với 4 ghế ngồi, c&ugrave;ng với đ&oacute; l&agrave; t&iacute;ch hợp nhiều tiện nghi hiện đại. So với c&aacute;c phi&ecirc;n bản Land Cruiser ti&ecirc;u chuẩn, phi&ecirc;n bản n&agrave;y kh&ocirc;ng c&oacute; kh&aacute;c biệt đ&aacute;ng ch&uacute; &yacute; về thiết kế ngoại thất.</em></h2>\r\n', '<h3><span style=\"font-size:14px\">M</span>BS l&agrave; h&atilde;ng độ nội thất nổi tiếng tr&ecirc;n thế giới, chuy&ecirc;n n&acirc;ng cấp tiện nghi ở h&agrave;ng ghế sau tr&ecirc;n c&aacute;c mẫu xe sang như&nbsp;<a href=\"https://muaxegiatot.com/xe-lexus-lx600.html\" rel=\"noopener\" target=\"_blank\" title=\"Giá xe Lexus LX600\">Lexus LX600</a>, Mercedes-Benz G-Class, V-Class v&agrave; GLS. Land Cruiser 2022 bản 4 chỗ l&agrave; một dự &aacute;n n&acirc;ng cấp mới nhất của MBS.</h3>\r\n', 0, 100, '1657437648_vn-the-premiere-lsp9t-sp-lsp9tkaxxv-414047979.jpg', 5299390000, 5, 14, '2023-12-18 14:19:19'),
(18, 'Audi Q3', '<p>Q3 l&agrave; chiếc SUV 5 chỗ cỡ nhỏ hạng sang, nơi nhiều đối thủ như Mercedes GLA, BMW X1 tham chiến. Q3 ngo&agrave;i bản thiết kế SUV truyền thống, xe c&ograve;n c&oacute; th&ecirc;m biến thể kiểu d&aacute;ng coupe mang t&ecirc;n Q3 Sportback.&nbsp;</p>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>Mẫu SUV cỡ nhỏ hạng sang bản ch&iacute;nh h&atilde;ng về Việt Nam, thiết kế thể thao hơn, lắp động cơ 1.5, b&aacute;n ra hai phi&ecirc;n bản.</p>\r\n\r\n<p>Trung tuần th&aacute;ng 4/2020, Audi giới thiệu Q3 mới.&nbsp;Mẫu SUV cỡ nhỏ hạng sang mới thiết kế lại lưới tản nhiệt lớn hơn, kiểu khung đơn h&igrave;nh b&aacute;t gi&aacute;c ph&acirc;n chia bởi những thanh dọc cũng như hai hốc gi&oacute; hai b&ecirc;n. C&aacute;c bề mặt với những đường g&acirc;n dập nổi, tổng thể thiết kế thể thao v&agrave; mạnh mẽ hơn.</p>\r\n\r\n<p>Đ&egrave;n pha LED mảnh hướng v&agrave;o trong với định dạng chữ V. Tr&ecirc;n bản Q3 Advanced v&agrave; S line trang bị đ&egrave;n pha LED Matrix ti&ecirc;u chuẩn. Phần đu&ocirc;i tạo h&igrave;nh khối chia hai phần bởi một đường ngang. Dải đ&egrave;n hậu LED h&igrave;nh chữ L nằm, bộ khuếch t&aacute;n hầm hố, ốp trang tr&iacute; ống xả.</p>\r\n\r\n<p>So với bản cũ, Q3 mới tăng k&iacute;ch thước. Xe d&agrave;i 4.484 mm (tăng 96 mm), rộng 1.849 mm (tăng 18 mm), cao 1.585 mm (giảm 5 mm). Chiều d&agrave;i cơ sở cũng tăng th&ecirc;m 77 mm đạt 2.680 mm.</p>\r\n', 0, 100, '1657437411_vn-the-freestyle-lsp3b-sp-lsp3blaxxv-530663510.jpg', 3282790000, 7, 17, '2024-01-04 14:19:19'),
(19, 'KIA Carnival ', '<h2><span style=\"font-size:16px\"><strong>T</strong></span>rong th&aacute;ng 02/2022, lượng&nbsp;<a href=\"https://xetot.com/toan-quoc/mua-ban-oto\" rel=\"noopener\" target=\"_blank\" title=\"xe ô tô bán ra toàn thị trường\">xe &ocirc; t&ocirc; b&aacute;n ra to&agrave;n thị trường</a>&nbsp;giảm mạnh, thứ hạng xe b&aacute;n chạy nhất th&aacute;ng cũng c&oacute; sự x&aacute;o trộn. Đ&aacute;ng ch&uacute; &yacute;, KIA Carnival lần đầu g&oacute;p mặt trong danh s&aacute;ch xe b&aacute;n chạy của th&aacute;ng.</h2>\r\n', '<h3>Mẫu SUV cỡ B Toyota Corolla Cross bất ngờ vươn l&ecirc;n dẫn đầu to&agrave;n thị trường với doanh số 1.358 xe b&aacute;n ra trong th&aacute;ng 2 vừa qua. Trước đ&oacute; v&agrave;o hồi th&aacute;ng 11 v&agrave; th&aacute;ng 12 năm 2021, mẫu xe n&agrave;y từng được đứng ở vị tr&iacute; thứ 3 trong Top 10 xe b&aacute;n chạy nhất th&aacute;ng. C&oacute; thể thấy, Corolla Cross đang dần dần trở th&agrave;nh &ldquo;con g&agrave; đẻ trứng v&agrave;ng&rdquo; của h&atilde;ng xe Nhật Bản, thay thế cho &ldquo;người anh em&rdquo; Toyota Vios. Hiện xe đang c&oacute; gi&aacute; b&aacute;n từ 720-910 triệu đồng.</h3>\r\n', 0, 100, '1657433062_vn-soundbar-hw-s61b-hw-s61b-xv-531573869.jpg', 9515770000, 0, 5, '2023-12-18 14:19:19'),
(20, 'Honda Brio', '<h2>Honda Brio l&agrave; mẫu Hatchback đ&ocirc; thị cỡ nhỏ xuất hiện lần đầu v&agrave;o năm 2010 v&agrave; được thương hiệu Nhật Bản định vị hướng v&agrave;o nh&oacute;m kh&aacute;ch h&agrave;ng phổ th&ocirc;ng của những thị trường mới nổi như Th&aacute;i Lan, Ấn Độ.&nbsp;</h2>\r\n', '<p>Honda Brio xuất hiện với một vẻ ngo&agrave;i trẻ trung, bắt mắt. Tuy tr&ocirc;ng to lớn hơn đ&ocirc;i ch&uacute;t so với đối thủ mạnh nhất ph&acirc;n kh&uacute;c n&agrave;y l&agrave; Hyundai Grand I10 nhưng Brio lại thua k&eacute;m về chiều d&agrave;i trục cơ sở.&nbsp;</p>\r\n', 0, 100, '1657432829_vn-q-series-soundbar-hw-q700b-hw-q700b-xv-531574180.jpg', 8730500000, 5, 14, '2024-01-04 14:19:19'),
(21, ' bộ đôi Peugeot 3008 va 5008', '<h2>Mới đ&acirc;y, nh&agrave; ph&acirc;n phối Thaco Trường Hải đ&atilde; ch&iacute;nh thức ra mắt thị trường Việt 2 phi&ecirc;n bản gi&aacute; rẻ mới của bộ đ&ocirc;i SUV 5 chỗ v&agrave; 7 chỗ của h&atilde;ng xe Ph&aacute;p l&agrave;<strong>&nbsp;Peugeot 3008 Active v&agrave; Peugeot 5008 Active</strong>&nbsp;được cắt giảm nhiều option để đem đến mức gi&aacute; giảm 50-150 triệu đồng, ph&acirc;n phối song song với c&aacute;c bản &ldquo;full option&rdquo; trước đ&acirc;y l&agrave; Peugeot 3008 (1.149 tỷ đồng) v&agrave; Peugeot 5008 (1.349 tỷ đồng).</h2>\r\n', '<p>Bước đi mới n&agrave;y nhằm bổ sung th&ecirc;m sự lựa chọn, gi&uacute;p kh&aacute;ch h&agrave;ng Việt dễ d&agrave;ng tiếp cận được những sản phẩm cao cấp của h&atilde;ng với gi&aacute; cả hợp l&yacute; m&agrave; vẫn giữ được những gi&aacute; trị tinh t&uacute;y nhất của của Peugeot to&agrave;n cầu.</p>\r\n\r\n<p>Tại Việt Nam, mẫu SUV 7 chỗ Peugeot 5008 Active được xếp &ldquo;chung m&acirc;m&rdquo; với Toyota Fortuner, Ford Everest, Hyundai SantaFe; trong khi đ&oacute;, Peugeot 3008 Active 2022 nằm c&ugrave;ng ph&acirc;n kh&uacute;c SUV 5 chỗ ngồi như Mazda CX-5, Honda CR-V, Nissan X-Trail v&agrave; Tucson.</p>\r\n', 0, 100, '1657432344_vn-serif-tv-ls01t-qa55ls01takxxv-frontwhite-221737538.jpg', 5105170000, 35, 17, '2023-12-18 14:19:19'),
(22, 'Ford Everest Ambiente', '<p>Ford ra mắt Everest thế hệ mới tại Việt Nam h&ocirc;m 1/7, với&nbsp;4 phi&ecirc;n bản, 3&nbsp;t&ugrave;y chọn&nbsp;Ambiente, Sport, Titanium đều dẫn động một cầu, turbo đơn&nbsp;v&agrave; Titanium+ dẫn động 2 cầu, turbo k&eacute;p.</p>\r\n\r\n<h2><strong>Xe</strong>&nbsp;<strong>Ford Everest​&nbsp;2023&nbsp;gi&aacute; bao nhi&ecirc;u?</strong></h2>\r\n', '<p>Hiện tr&ecirc;n trang web ch&iacute;nh thức của Ford Việt Nam đang cập nhật&nbsp;<strong>bảng gi&aacute; xe Ford</strong>&nbsp;Everest 2023 như sau:</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"3\">Bảng gi&aacute; Ford Everest 2023</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phi&ecirc;n bản</strong></td>\r\n			<td><strong>M&agrave;u sắc</strong></td>\r\n			<td><strong>Gi&aacute; xe (tỷ đồng)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Wildtrak 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u đen</td>\r\n			<td>1,499</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Wildtrak 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u Trắng tuyết/ M&agrave;u Đỏ cam/ M&agrave;u V&agrave;ng Luxe</td>\r\n			<td>1,506</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u kh&aacute;c</td>\r\n			<td>1,468</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u Trắng tuyết / M&agrave;u Đỏ cam</td>\r\n			<td>1,475</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>Nội thất da m&agrave;u hạt dẻ</td>\r\n			<td>1,475</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium+ 2.0L AT 4&times;4</td>\r\n			<td>M&agrave;u Trắng tuyết /<br />\r\n			M&agrave;u Đỏ cam kết hợp với Nội thất da m&agrave;u hạt dẻ</td>\r\n			<td>1,482</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Everest Titanium 2.0L AT 4&times;2</td>\r\n			<td>M&agrave;u kh&aacute;c</td>\r\n			<td>1,299</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 100, '1657419885_vn-the-frame-qa75ls03bakxxv-front-black-531139141.jpg', 8334370000, 5, 8, '2024-01-04 14:19:19'),
(23, 'Volkswagen T Cross', '<h2>Ng&agrave;y 17/3 vừa qua, Volkswagen Việt Nam đưa ra th&ocirc;ng b&aacute;o nhận&nbsp;<strong>đặt h&agrave;ng mẫu xe Volkswagen T-Cross 2022 qua h&igrave;nh thức showroom online</strong>. Đến thời điểm hiện tại, gi&aacute; b&aacute;n vẫn chưa được lộ. Được biết, xe sẽ ra mắt v&agrave;o th&aacute;ng 4/2022 trước khi giao đến kh&aacute;ch h&agrave;ng trong th&aacute;ng 5 v&agrave; th&aacute;ng 6 năm 2022. Như vậy T-Cross 2022 trở th&agrave;nh&nbsp;<a href=\"https://muaxegiatot.com/gia-xe-suv-co-b.html\" rel=\"noopener\" target=\"_blank\" title=\"mẫu SUV hạng B\">mẫu SUV hạng B</a>&nbsp;đầu ti&ecirc;n của Volkswagen tại thị trường Việt Nam.</h2>\r\n', '<h3>V&igrave; thế, ngay sau khi được ra mắt đến nay, mẫu SUV cỡ B n&agrave;y đ&atilde; được ph&acirc;n phối tại nhiều thị trường kh&aacute;c nhau tr&ecirc;n thế giới, bao gồm cả Đ&ocirc;ng Nam &Aacute; như Indonesia, Singapore, Philippines. V&agrave; trong th&aacute;ng 4 sắp tới sẽ được ra mắt tại Việt Nam.</h3>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '1657418600_vn-qled-qn85b-qa65qn85bakxxv-530992953.jpg', 6856330000, 7, 11, '2023-12-18 14:19:19'),
(24, 'Hyundai Ioniq 5', '<h2>Ng&agrave;y 31/7/2023, Hyundai Th&agrave;nh C&ocirc;ng ch&iacute;nh thức ph&acirc;n phối Ioniq 5 - d&ograve;ng &ocirc;t&ocirc; điện đầu ti&ecirc;n của h&atilde;ng ở Việt Nam. Hyundai Ioniq 5 lắp r&aacute;p tại Việt Nam. Hyundai định vị Ioniq 5 cạnh tranh với VinFast VF 8.</h2>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>Hơn một năm đưa về thăm d&ograve; thị trường,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/hang-xe/hyundai-9\" rel=\"dofollow\">Hyundai</a>&nbsp;Th&agrave;nh C&ocirc;ng ch&iacute;nh thức ph&acirc;n phối Ioniq 5. D&ograve;ng &ocirc;t&ocirc; điện đầu ti&ecirc;n của Hyundai lắp r&aacute;p tại Việt Nam với 2 phi&ecirc;n bản, gồm Exclusive gi&aacute; 1,3 tỷ v&agrave; Prestige gi&aacute; 1,45 tỷ đồng.&nbsp;Hyundai Ioniq 5 2023&nbsp;nằm c&ugrave;ng cỡ với&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/vinfast-vf-8-208\" rel=\"dofollow\">VinFast VF 8</a>. Mẫu xe điện thương hiệu Việt c&oacute; 2 phi&ecirc;n bản, gồm Eco gi&aacute; 1,094 tỷ v&agrave; Plus gi&aacute; 1,263 tỷ đồng chưa pin. Nếu c&oacute; pin, gi&aacute; xe VF 8 l&agrave; 1,29 tỷ v&agrave; 1,47 tỷ. Như vậy, gi&aacute; của Ioniq 5 v&agrave; VF 8 l&agrave; tương đương nhau.</p>\r\n', 0, 100, '1657418255_vn-qled-qn700b-qa65qn700bkxxv-531504242.jpg', 8778530000, 5, 16, '2024-01-04 14:19:19'),
(25, 'Line-Up SUV', '<h2>Thu h&uacute;t mọi &aacute;nh nh&igrave;n bằng một thiết kế hiện đại, thể thao, Kia Sonet sở hữu lưới tản nhiệt mũi hổ đặc trưng c&ugrave;ng với đ&egrave;n LED Heart Beat đặc trưng của h&atilde;ng xe H&agrave;n Quốc.</h2>\r\n', '<p>Nội thất Kia Sonet được đầu tư chỉn chu với t&aacute;p-l&ocirc; kiểu đối xứng, trang tr&iacute; ốp nhựa v&agrave; giả da, v&ocirc;-lăng v&aacute;t đ&aacute;y thể thao c&ugrave;ng cụm đồng hồ kỹ thuật số. Xe sở hữu c&aacute;c tiện nghi hấp dẫn như m&agrave;n h&igrave;nh giải tr&iacute; 8 inch, điều h&ograve;a tự động, d&agrave;n &acirc;m thanh 6 loa, cửa sổ trời.</p>\r\n\r\n<p>Dưới nắp capo Kia Sonet l&agrave; động cơ xăng Smartstream 1.5L, sản sinh 113 m&atilde; lực v&agrave; 144 Nm, kết hợp với hộp số v&ocirc; cấp. Xe hỗ trợ 3 chế độ l&aacute;i v&agrave; 3 chế độ địa h&igrave;nh kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>Điểm đặc biệt nữa của mẫu SUV đ&ocirc; thị cỡ nhỏ nh&agrave; Kia l&agrave; thiết kế khoảng s&aacute;ng gầm xe cao đến 205 mm &ndash; cực kỳ năng động tr&ecirc;n c&aacute;c địa h&igrave;nh phức tạp của đ&ocirc; thị Việt Nam.&nbsp;</p>\r\n\r\n<p>Kia Sonet đang được ph&acirc;n phối tại Việt Nam theo h&igrave;nh thức lắp r&aacute;p trong nước, bao gồm 4 phi&ecirc;n bản c&oacute;&nbsp;<a href=\"https://muaxegiatot.com/gia-xe-kia.html\" rel=\"noopener\" target=\"_blank\" title=\"giá bán xe KIA\">gi&aacute; b&aacute;n xe KIA</a>&nbsp;n&agrave;y từ 499 &ndash; 624 triệu đồng.&nbsp;</p>\r\n', 0, 100, '1657271332_active2nhom.jpg', 3823660000, 5, 5, '2023-12-18 14:19:19'),
(26, 'Hyundai Tucson', '<p>Mẫu Tucson thế hệ mới xe giữ nguy&ecirc;n 4 phi&ecirc;n bản, th&ecirc;m t&ugrave;y chọn 4 b&aacute;nh v&agrave; th&ecirc;m g&oacute;i t&iacute;nh năng an to&agrave;n chủ động.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>Cuối th&aacute;ng 12/2021, TC Motor tung ra thị trường mẫu Hyundai Tucson 2022 với h&agrave;ng loạt thay đổi ở thiết kế v&agrave; n&acirc;ng cấp t&iacute;nh năng, c&ocirc;ng nghệ cũng như khả năng vận h&agrave;nh. Trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/phan-khuc/phan-khuc-c-4#crossover\" rel=\"dofollow\">crossover cỡ C</a>, Hyundai Tucson đứng thứ hai về doanh số, sau&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mazda-cx-5-100\" rel=\"dofollow\">Mazda CX-5</a>&nbsp;v&agrave; xếp tr&ecirc;n c&aacute;c đối thủ như&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/honda-cr-v-44\" rel=\"dofollow\">Honda CR-V</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mitsubishi-outlander-122\" rel=\"dofollow\">Mitsubishi Outlander</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/kia-sportage-206\" rel=\"dofollow\">Kia Sportage</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/peugeot-3008-128\" rel=\"dofollow\">Peugeot 3008</a>.</p>\r\n\r\n<p>Mẫu crossover n&agrave;y vẫn c&oacute; bốn lựa chọn phi&ecirc;n bản như thế hệ trước, với c&aacute;c lựa chọn động cơ xăng v&agrave; dầu c&ugrave;ng t&ugrave;y chọn 7 m&agrave;u sắc.</p>\r\n', 0, 100, '1657274325_watchlte44.jpg', 1782710000, 15, 16, '2024-01-04 14:19:19'),
(27, 'Hyundai Stargazer', '<h2>Stargazer l&agrave; chiếc MPV cỡ nhỏ m&agrave; Hyundai Th&agrave;nh C&ocirc;ng b&aacute;n ra để cạnh tranh c&aacute;c đối thủ Mitsubishi Xpander, Toyota Veloz, Suzuki Ertiga...</h2>\r\n', '<h2><strong>Bảng gi&aacute; Hyundai Stargazer 2022</strong></h2>\r\n\r\n<p>Tại Việt Nam, Hyundai Stargazer 2022 được ph&acirc;n ph&acirc;n phối ch&iacute;nh h&atilde;ng 4 phi&ecirc;n bản. Gi&aacute; lăn b&aacute;nh tham khảo như sau:</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<th>T&ecirc;n phi&ecirc;n bản</th>\r\n			<th>Gi&aacute; ni&ecirc;m yết</th>\r\n			<th>Lăn b&aacute;nh tại HN</th>\r\n			<th>Lăn b&aacute;nh tại TP.HCM</th>\r\n			<th>Lăn b&aacute;nh tại H&agrave; Tĩnh</th>\r\n			<th>Lăn b&aacute;nh tại c&aacute;c tỉnh kh&aacute;c</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>1.5 Ti&ecirc;u chuẩn</td>\r\n			<td>575 triệu VNĐ</td>\r\n			<td>666.694.000 VNĐ</td>\r\n			<td>655.194.000 VNĐ</td>\r\n			<td>641.944.000 VNĐ</td>\r\n			<td>636.194.000 VNĐ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.5 Đặc biệt</td>\r\n			<td>625 triệu VNĐ</td>\r\n			<td>722.694.000 VNĐ</td>\r\n			<td>710.194.000 VNĐ</td>\r\n			<td>697.444.000 VNĐ</td>\r\n			<td>691.194.000 VNĐ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.5 Cao cấp</td>\r\n			<td>675 triệu VNĐ</td>\r\n			<td>778.694.000 VNĐ</td>\r\n			<td>765.194.000 VNĐ</td>\r\n			<td>752.944.000 VNĐ</td>\r\n			<td>746.194.000 VNĐ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.5 Cao cấp 6 chỗ</td>\r\n			<td>685 triệu VNĐ</td>\r\n			<td>789.894.000 VNĐ</td>\r\n			<td>776.194.000 VNĐ</td>\r\n			<td>764.044.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 100, '1657273893_watch4.jpg', 6442560000, 15, 16, '2023-12-18 14:19:19'),
(28, 'Hyundai Palisade', '<h2>Mẫu xe gầm cao cỡ E lần đầu ra mắt thị trường Việt Nam, lắp r&aacute;p trong nước, b&aacute;n ra 4 phi&ecirc;n bản, lắp một động cơ dầu 2.2.</h2>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>Hyundai ra mắt Palisade cho thị trường Việt Nam ng&agrave;y 15/9. Palisade l&agrave; mẫu SUV 3 h&agrave;ng ghế lớn v&agrave; đắt nhất của&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/hang-xe/hyundai-9\" rel=\"dofollow\">Hyundai</a>, cạnh tranh với những đối thủ đ&aacute;ng gờm như&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/ford-explorer-202\" rel=\"dofollow\">Ford&nbsp;Explorer</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/volkswagen-teramont-191\" rel=\"dofollow\">Volkswagen Teramont</a>. Palisade bổ sung th&ecirc;m d&ograve;ng sản phẩm xe gầm cao của Hyundai, b&ecirc;n cạnh Santa Fe, Tucson.</p>\r\n\r\n<p>Ngoại h&igrave;nh Palisade hầm hố, xe d&agrave;i 4.995 mm, rộng 1.975 mm, cao 1.785 mm v&agrave; chiều d&agrave;i cơ sở 2.900 mm. Khoảng s&aacute;ng gầm 203 mm. Lưới tản nhiệt k&iacute;ch thước lớn, tạo h&igrave;nh th&aacute;c nước, đ&egrave;n pha LED, đ&egrave;n ban ng&agrave;y LED đặc trưng bao quanh lưới tản nhiệt, tạo th&agrave;nh khối liền mạch. V&agrave;nh 18 hoặc 20 inch t&ugrave;y phi&ecirc;n bản. Cản trước tạo h&igrave;nh kh&iacute; động học. Nắp ca-p&ocirc; tạo h&igrave;nh với đường g&acirc;n nổi. Trụ C thiết kế tr&agrave;n viền giấu cột trụ. Cụm đ&egrave;n hậu LED to bản chạy dọc, cản sau k&iacute;ch thước lớn, ống xả k&eacute;p thể thao.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '1657270948_active2.jpg', 7364690000, 5, 16, '2024-01-04 14:19:19'),
(30, 'Hyundai Venue', '<p>Venue thuộc ph&acirc;n kh&uacute;c A, mẫu xe c&ograve;n thiếu trong dải sản phẩm crossover/SUV của Hyundai, b&ecirc;n cạnh những Creta (cỡ B), Tucson (cỡ C), Santa Fe (cỡ D), Palisade (cỡ E).</p>\r\n\r\n<p>Tại thị trường Việt Nam, t&acirc;n binh Venue cạnh tranh với đối thủ Kia Sonet v&agrave; Toyota Raize. Mẫu xe gầm cao cỡ A của Hyundai chia sẻ nền tảng khung gầm với Kia Sonet. Venue cũng l&agrave; sản phẩm to&agrave;n cầu của h&atilde;ng xe H&agrave;n Quốc.</p>\r\n', '<h2><strong>Th&ocirc;ng số kỹ thuật cơ bản</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Động cơ</strong></p>\r\n\r\n	<p>I3 Kappa 1.0 Turbo GDI</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>C&ocirc;ng suất (m&atilde; lực)</strong></p>\r\n\r\n	<p>120/6.000</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>M&ocirc;-men xoắn (Nm)</strong></p>\r\n\r\n	<p>172/1.500-4.000</p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Hộp số</strong></p>\r\n\r\n	<p>7DCT, DCT 7 cấp</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hệ dẫn động</strong></p>\r\n\r\n	<p>FWD</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Số chỗ</strong></p>\r\n\r\n	<p>5</p>\r\n	</li>\r\n</ul>\r\n', 0, 100, '1657270308_fit2.jpg', 7495750000, 30, 16, '2024-01-04 14:19:19'),
(32, 'MG5', '<h2><em>MG 5 2023 l&agrave; c&aacute;i t&ecirc;n mới nhất của thương hiệu MG tại thị trường Việt Nam, ch&iacute;nh thức gia nhập từ th&aacute;ng 2 năm 2023. Hiện mẫu sedan hạng C n&agrave;y đang được mở b&aacute;n với 2 phi&ecirc;n bản.&nbsp;</em></h2>\r\n\r\n<p>&nbsp;</p>\r\n', '<h3><strong>Giới thiệu chung</strong></h3>\r\n\r\n<p>Thế hệ đầu ti&ecirc;n của MG 5 ra mắt v&agrave;o th&aacute;ng 3 năm 2012 do MG Motor ph&aacute;t triển, doanh nghiệp n&agrave;y hiện do SAIC, tập đo&agrave;n Trung Quốc nắm quản l&yacute;. Theo đ&oacute; tại Trung Quốc, MG 5 được mở b&aacute;n với biến thể hatchback. Trong khi, ở một số thị trường kh&aacute;c ph&acirc;n phối biến thể sedan với t&ecirc;n gọi l&agrave; MG GT.&nbsp;</p>\r\n\r\n<p><strong>Thế hệ thứ 2 của MG 5&nbsp;</strong>tiếp tục được&nbsp;<a href=\"https://tapchicongthuong.vn/bai-viet/mg5-2021-moi-lo-dien-truoc-khi-ra-mat-chinh-thuc-75316.htm\" rel=\"noopener\" target=\"_blank\">ra mắt tại Triển l&atilde;m &ocirc; t&ocirc; Bắc Kinh 2020</a>. Sau đ&oacute;, MG 5 bắt đầu tiếp cận thị trường Đ&ocirc;ng Nam &Aacute;, mở đầu l&agrave; tại Th&aacute;i Lan.&nbsp;</p>\r\n', 1, 100, '1657436740_samsung-galaxy-z-fold3-5g-xanh-reu-2.jpg', 5384670000, 20, 21, '2024-01-04 14:19:19'),
(33, 'Audi Q6 e-tron', '<h2>Đối với những gia đ&igrave;nh cần một chiếc xe rộng r&atilde;i, di chuyển &ecirc;m &aacute;i, nhẹ nh&agrave;ng v&agrave; theo xu hướng tương lai th&igrave;&nbsp;<strong>xe điện Audi Q6 e-tron 2024</strong>&nbsp;l&agrave; lựa chọn tuyệt vời thời điểm n&agrave;y. Kh&ocirc;ng chỉ đ&aacute;p ứng những nhu cầu tr&ecirc;n, Audi Q6 e-tron c&ograve;n sở hữu thiết kế khiến nhiều người &ldquo;m&ecirc; mẩn&rdquo;.</h2>\r\n', '<table border=\"2\" cellpadding=\"2\" cellspacing=\"2\">\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Số chỗ ngồi</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Chiều D&agrave;i x Rộng x Cao (mm)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>4.962 x 1.964 x 1.667</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Chiều d&agrave;i cơ sở (mm)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>2960</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Động cơ</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<ul>\r\n				<li>2 động cơ điện</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>C&ocirc;ng suất (m&atilde; lực)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<ul>\r\n				<li>375 hoặc 396</li>\r\n				<li>483 hoặc 510</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>M&ocirc; men xoắn (Nm)</p>\r\n\r\n			<p><ins><iframe frameborder=\"0\" height=\"0\" id=\"aswift_3\" name=\"aswift_3\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-3655642957264955&amp;output=html&amp;h=250&amp;slotname=3659613648&amp;adk=2098039687&amp;adf=3338857826&amp;pi=t.ma~as.3659613648&amp;w=300&amp;fwrn=4&amp;lmt=1704509981&amp;rafmt=11&amp;format=300x250&amp;url=https%3A%2F%2Fxetot.com%2Ftin-xe%2Fdanh-gia-xe-audi-q6-e-tron%2F&amp;ea=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTIwLjAuNjA5OS4xMzEiLG51bGwsMCxudWxsLCI2NCIsW1siTm90X0EgQnJhbmQiLCI4LjAuMC4wIl0sWyJDaHJvbWl1bSIsIjEyMC4wLjYwOTkuMTMxIl0sWyJHb29nbGUgQ2hyb21lIiwiMTIwLjAuNjA5OS4xMzEiXV0sMF0.&amp;dt=1704509977072&amp;bpp=2&amp;bdt=1308&amp;idt=189&amp;shv=r20240103&amp;mjsv=m202401020101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D8ecfa8f7fc6fbb05%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MZu59AfG7SEhZsiqUrJLfZ2QcyMpA&amp;gpic=UID%3D00000cd241fe4406%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MaUE0k2KD2JwSFxXXfa0vCWZTCOTg&amp;prev_fmts=0x0%2C728x280%2C300x1032&amp;nras=1&amp;correlator=4442336072511&amp;frm=20&amp;pv=1&amp;ga_vid=667453784.1704509977&amp;ga_sid=1704509977&amp;ga_hid=326654973&amp;ga_fc=0&amp;rplot=4&amp;u_tz=420&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=259&amp;ady=3659&amp;biw=1519&amp;bih=738&amp;scr_x=0&amp;scr_y=718&amp;eid=44759875%2C44759926%2C31080114%2C95320893%2C95321626%2C31078663%2C31078665%2C31078668%2C31078670&amp;oid=2&amp;pvsid=2269810442761852&amp;tmod=440930262&amp;uas=3&amp;nvt=1&amp;ref=https%3A%2F%2Fxetot.com%2Ftin-xe%2Ftin-tuc%2Fpage%2F2%2F&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C738&amp;vis=1&amp;rsz=%7Co%7CeoEbr%7C&amp;abl=NS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;td=1&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=4&amp;uci=a!4&amp;btvi=3&amp;fsb=1&amp;dtd=4629\" width=\"300\"></iframe></ins></p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Đang cập nhật</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Hệ dẫn động</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Quatro</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Dung lượng pin</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>100 kWh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Khả năng tăng tốc 0-96 Km/h</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>&lt; 4,4 gi&acirc;y</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Phạm vi di chuyển (km)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>600</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>M&acirc;m xe</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>21 inch</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 100, '1657258744_a13.jpg', 3936110000, 26, 9, '2023-12-18 14:19:19'),
(34, 'VinFast VF9', '<h2><a href=\"https://xetot.com/tin-xe/danh-gia-xe-vinfast-vf-9/\" rel=\"noopener\" target=\"_blank\" title=\"Giá xe VinFast VF9 2024\"><strong>VinFast VF9</strong></a>&nbsp;l&agrave; mẫu xe chạy điện của h&atilde;ng xe Việt được giới thiệu c&ocirc;ng ch&uacute;ng c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u. Kh&aacute;ch h&agrave;ng chỉ mới được chi&ecirc;m ngưỡng h&igrave;nh ảnh của xe tại buổi ra mắt hoặc c&aacute;c h&igrave;nh ảnh demo. Hiện tại, hoạt động thử nghiệm xe VinFast VF9 vẫn đang diễn ra lặng lẽ, rất &iacute;t khi thấy được c&aacute;c h&igrave;nh ảnh thực tế của mẫu xe n&agrave;y.</h2>\r\n', '<p>VinFast VF9 bản Eco c&oacute; qu&atilde;ng đường tối đa đi được l&agrave; 485 km, bản Plus l&agrave; 680 km. K&iacute;ch thước tổng thể chiều d&agrave;i x chiều rộng x chiều cao lần lượt l&agrave; 5.120 x 2.000 x 1.721 (mm). Với k&iacute;ch thước n&agrave;y, VF9 được xếp v&agrave;o ph&acirc;n kh&uacute;c SUV full-size, tương tự như Lexus LX 600,&nbsp;<a href=\"https://xetot.com/tin-xe/danh-gia-xe-bmw-x7/\" rel=\"noopener\" target=\"_blank\" title=\"Giá xe BMW X7\">BMW X7</a>, Mercedes-Benz GLS,&hellip;</p>\r\n\r\n<p>VinFast VF9 được trang bị hai động cơ điện, sản sinh c&ocirc;ng suất cực đại 402 m&atilde; lực v&agrave; momen xoắn 640 Nm. C&ugrave;ng với hai động cơ điện n&agrave;y l&agrave; hệ dẫn động bốn b&aacute;nh to&agrave;n thời gian. Ngo&agrave;i ra, VF9 c&oacute; thể tăng tốc từ 0 &ndash; 100 km/h trong 6,5 gi&acirc;y.</p>\r\n', 0, 100, '1657261899_s22.jpg', 3026560000, 28, 10, '2024-01-04 14:19:19'),
(35, 'Lexus LS', '<h2>Mẫu sedan hạng sang cỡ lớn của Lexus cạnh tranh với S-class nhưng giống như GX gi&aacute; cao, trang bị kh&ocirc;ng tương xứng khiến LS kh&aacute; k&eacute;n người mua v&agrave; cũng &iacute;t bắt gặp tr&ecirc;n đường.</h2>\r\n', '<h2><strong>Bảng gi&aacute; Lexus LS 2021</strong></h2>\r\n\r\n<p>Tại Việt Nam, Lexus LS 2021 được ph&acirc;n ph&acirc;n phối ch&iacute;nh h&atilde;ng 2 phi&ecirc;n bản. Gi&aacute; lăn b&aacute;nh tham khảo như sau:</p>\r\n\r\n<table cellpadding=\"0\" cellspacing=\"0\">\r\n	<thead>\r\n		<tr>\r\n			<th>T&ecirc;n phi&ecirc;n bản</th>\r\n			<th>Gi&aacute; ni&ecirc;m yết</th>\r\n			<th>Lăn b&aacute;nh tại HN</th>\r\n			<th>Lăn b&aacute;nh tại TP.HCM</th>\r\n			<th>Lăn b&aacute;nh tại H&agrave; Tĩnh</th>\r\n			<th>Lăn b&aacute;nh tại c&aacute;c tỉnh kh&aacute;c</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>LS500</td>\r\n			<td>7 tỷ 650 triệu VNĐ</td>\r\n			<td>8.590.337.000 VNĐ</td>\r\n			<td>8.437.337.000 VNĐ</td>\r\n			<td>8.494.837.000 VNĐ</td>\r\n			<td>8.418.337.000 VNĐ</td>\r\n		</tr>\r\n		<tr>\r\n			<td>LS500h</td>\r\n			<td>8 tỷ 360 triệu VNĐ</td>\r\n			<td>9.385.537.000 VNĐ</td>\r\n			<td>9.218.337.000 VNĐ</td>\r\n			<td>9.282.9</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '1657436716_glass-samsung-galaxy-note-20-1.jpg', 2824450000, 5, 1, '2023-12-18 14:19:19'),
(36, 'Ford Everest 2023', '<h2>Đầu th&aacute;ng 3 vừa qua,&nbsp;Ford Everest 2023 đ&atilde; ra mắt to&agrave;n cầu với sự thay đổi to&agrave;n diện về thiết kế v&agrave; nhận được sự quan t&acirc;m lớn của người d&ugrave;ng. Đặc biệt, Th&aacute;i Lan đ&atilde; l&agrave; thị trường Đ&ocirc;ng Nam &Aacute; đầu ti&ecirc;n đ&oacute;n nhận&nbsp;<a href=\"https://giaxehoi.vn/gia-xe-everest-hang-ford\" rel=\"noopener\" target=\"_blank\" title=\"Ford Everest 2023 All New\">Ford Everest 2023 All New</a>&nbsp;tại Triển l&atilde;m &Ocirc;t&ocirc; Bangkok 2022 v&agrave; Việt Nam dự kiến l&agrave; thị trường tiếp theo.</h2>\r\n', '<h3>Th&ocirc;ng tin n&agrave;y c&agrave;ng c&oacute; cơ sở hơn khi nhiều tư vấn b&aacute;n h&agrave;ng của đại l&yacute; Ford tiết lộ Everest v&agrave; Ranger thế hệ mới sẽ ra mắt Việt Nam v&agrave;o cuối năm 2022. Trong đ&oacute;, Ford Everest 2023 c&oacute; thể sẽ được ra mắt trước, việc b&agrave;n giao xe sẽ diễn ra trong qu&yacute; III/2022. Hiện tại, nhiều đại l&yacute; th&ocirc;ng b&aacute;o đ&atilde; nhận đặt cọc chiếc SUV n&agrave;y.</h3>\r\n', 0, 100, '1657436862_ce593674025f851b260a3de7facac8cb.jpg', 4542560000, 35, 8, '2024-01-04 14:19:19'),
(37, 'Honda Civic Type R', '<h2>Honda Civic Type R l&agrave; mẫu xe b&aacute;n ế nhất thị trường th&aacute;ng 11/2023 chỉ vỏn vẹn 1 chiếc. Tuy nhi&ecirc;n kh&aacute;c với c&aacute;c mẫu xe b&aacute;n ế kh&aacute;c, Civic Type R kh&ocirc;ng phải l&agrave; mẫu xe c&oacute; tiền l&agrave; c&oacute; thể mua được.</h2>\r\n', '<h3>Lượng đặt h&agrave;ng thực tế theo Honda cho biết kh&aacute; lớn nhưng số lượng sản xuất rất hạn chế do đ&acirc;y l&agrave; phi&ecirc;n bản hiệu suất cao đặc biệt. T&iacute;nh đến thời điểm hiện tại chỉ mới c&oacute; 19 chiếc Civic Type R được b&agrave;n giao đến tay kh&aacute;ch h&agrave;ng.&nbsp;</h3>\r\n', 0, 100, '1657261034_a23.jpg', 4239470000, 21, 14, '2023-12-18 14:19:19'),
(38, 'Honda City', '<h2>Honda City<strong>&nbsp;</strong>ra mắt thị trường &ocirc; t&ocirc; Việt Nam v&agrave;o năm 2013 v&agrave; nhanh ch&oacute;ng trở th&agrave;nh đối thủ đ&aacute;ng gờm của loạt mẫu xe thuộc ph&acirc;n kh&uacute;c hạng B thời điểm đ&oacute;.&nbsp;Đến nay, đ&acirc;y vẫn l&agrave; một trong những sản phẩm &quot;trụ cột&quot; của Honda tr&ecirc;n dải đất h&igrave;nh chữ S.</h2>\r\n', '<p>ước v&agrave;o cuộc chiến gi&agrave;nh thị phần v&ocirc; c&ugrave;ng gay gắt với loạt c&aacute;i t&ecirc;n mạnh như&nbsp;Toyota Vios, Hyundai Accent ... Honda City 2023&nbsp;vẫn c&oacute; chỗ đứng ri&ecirc;ng của m&igrave;nh nhờ sở hữu&nbsp;ngoại thất trẻ trung, tr&agrave;n ngập&nbsp;c&ocirc;ng nghệ cũng như&nbsp;tiện nghi vượt trội.</p>\r\n\r\n<h3><img alt=\"Ngoại thất xe Honda City.\" src=\"https://img1.oto.com.vn/2023/07/04/OpzfnMD2/dnb07139-5764.jpg\" title=\"Ngoại thất xe Honda City\" /></h3>\r\n\r\n<p><em><strong><a href=\"https://oto.com.vn/bang-gia-xe-o-to-honda-city-moi-nhat\" title=\"Giá xe Honda City mới nhất\">Gi&aacute; xe Honda City mới nhất</a></strong>&nbsp;th&aacute;ng 1/2024:&nbsp;<strong>Từ 559 triệu đồng</strong></em></p>\r\n\r\n<p>Honda City&nbsp;m&ocirc; h&igrave;nh n&acirc;ng cấp giữa v&ograve;ng đời được cập nhật v&agrave;o ng&agrave;y 4/7/2023 với 3 phi&ecirc;n bản. Theo đ&oacute;,&nbsp;gi&aacute; xe Honda City ni&ecirc;m yết từ 559 triệu đồng đến 609 triệu đồng. Cụ thể:</p>\r\n', 0, 100, '1657261350_a33.jpg', 7069660000, 27, 14, '2024-01-04 14:19:19');
INSERT INTO `products` (`id`, `name`, `description`, `content`, `hot`, `quantity`, `photo`, `price`, `discount`, `category_id`, `created_at`) VALUES
(39, 'Hyundai Tucson', '<h2>Mẫu Tucson thế hệ mới xe giữ nguy&ecirc;n 4 phi&ecirc;n bản, th&ecirc;m t&ugrave;y chọn 4 b&aacute;nh v&agrave; th&ecirc;m g&oacute;i t&iacute;nh năng an to&agrave;n chủ động.</h2>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>Cuối th&aacute;ng 12/2021, TC Motor tung ra thị trường mẫu Hyundai Tucson 2022 với h&agrave;ng loạt thay đổi ở thiết kế v&agrave; n&acirc;ng cấp t&iacute;nh năng, c&ocirc;ng nghệ cũng như khả năng vận h&agrave;nh. Trong ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/phan-khuc/phan-khuc-c-4#crossover\" rel=\"dofollow\">crossover cỡ C</a>, Hyundai Tucson đứng thứ hai về doanh số, sau&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mazda-cx-5-100\" rel=\"dofollow\">Mazda CX-5</a>&nbsp;v&agrave; xếp tr&ecirc;n c&aacute;c đối thủ như&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/honda-cr-v-44\" rel=\"dofollow\">Honda CR-V</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mitsubishi-outlander-122\" rel=\"dofollow\">Mitsubishi Outlander</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/kia-sportage-206\" rel=\"dofollow\">Kia Sportage</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/peugeot-3008-128\" rel=\"dofollow\">Peugeot 3008</a>.</p>\r\n\r\n<p>Mẫu crossover n&agrave;y vẫn c&oacute; bốn lựa chọn phi&ecirc;n bản như thế hệ trước, với c&aacute;c lựa chọn động cơ xăng v&agrave; dầu c&ugrave;ng t&ugrave;y chọn 7 m&agrave;u sắc.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '1657263859_s21 ultra 5g.jpg', 3129880000, 5, 16, '2023-12-18 14:19:19'),
(40, 'LEXUS RX 350 PREMIUM ', '<h2><strong><a href=\"https://xelexus.net.vn/lexus-rx350-premium.html\">Lexus RX 350 Premium</a></strong>&nbsp;l&agrave; chiếc xe SUV 5 chỗ hạng sang cỡ vừa của Lexus,&nbsp;<strong>RX 350 Premium</strong>&nbsp;l&agrave; chiếc xe b&aacute;n chạy nhất của Lexus tại Việt Nam hiện nay. Phi&ecirc;n bản Lexus RX 350 Premium 2024 thu h&uacute;t sự ch&uacute; &yacute; nhờ thiết kế tinh tế, nội thất đẳng cấp v&agrave; được trang bị nhiều c&ocirc;ng nghệ an to&agrave;n ti&ecirc;n tiến v&agrave; đặc biệt RX 350 Premium c&oacute; một mức gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute;.</h2>\r\n', '<p>Gi&aacute; lăn b&aacute;nh xe Lexus RX 350 Premium tạm t&iacute;nh ở tr&ecirc;n đ&atilde; bao gồm c&aacute;c khoản ph&iacute; bắt buộc như:</p>\r\n\r\n<ul>\r\n	<li>Lệ ph&iacute; trước bạ: H&agrave; Nội (12%), TP.HCM (10%), c&aacute;c tỉnh th&agrave;nh kh&aacute;c (10% - 12%)</li>\r\n	<li>Lệ ph&iacute; biển số: Tại H&agrave; Nội &amp; TP.HCM (20 triệu), c&aacute;c tỉnh th&agrave;nh (1 - 3 triệu)</li>\r\n	<li>Lệ ph&iacute; đăng kiểm: 50 ngh&igrave;n</li>\r\n	<li>Lệ ph&iacute; đường bộ: 130.000 ngh&igrave;n/ th&aacute;ng (c&aacute; nh&acirc;n đứng t&ecirc;n) / 180.000 ngh&igrave;n/ th&aacute;ng (c&ocirc;ng ty đứng t&ecirc;n)</li>\r\n	<li>Bảo hiểm d&acirc;n sự: 480 ngh&igrave;n.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '1657436652_vn-galaxy-watch4-classic-sm-r880nzsaxxv-481128047.jpg', 3440420000, 23, 37, '2024-01-04 14:19:19'),
(41, 'Audi Q4 e-tron', '<h2><em>Audi Q4 e-tron l&agrave; phi&ecirc;n bản thuần điện của chiếc SUV cỡ nhỏ đến từ Đức với d&aacute;ng vẻ thời thượng, phạm vi di chuyển ấn tượng c&ugrave;ng động cơ mạnh mẽ.</em></h2>\r\n', '<h2>Th&ocirc;ng số kỹ thuật Audi Q4 e-tron 2024</h2>\r\n\r\n<table border=\"2\" cellpadding=\"2\" cellspacing=\"2\">\r\n	<thead>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Th&ocirc;ng số</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Audi Q4 e-tron 2024</p>\r\n\r\n			<p><ins><iframe frameborder=\"0\" height=\"1032\" id=\"aswift_2\" name=\"aswift_2\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-3655642957264955&amp;output=html&amp;h=1032&amp;slotname=6931087979&amp;adk=2497371967&amp;adf=1244232135&amp;pi=t.ma~as.6931087979&amp;w=300&amp;cr_col=1&amp;cr_row=13&amp;fwrn=2&amp;lmt=1704509925&amp;rafmt=9&amp;format=300x1032&amp;url=https%3A%2F%2Fxetot.com%2Ftin-xe%2Fdanh-gia-audi-q4-e-tron%2F&amp;ea=0&amp;crui=image_sidebyside&amp;fwr=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTIwLjAuNjA5OS4xMzEiLG51bGwsMCxudWxsLCI2NCIsW1siTm90X0EgQnJhbmQiLCI4LjAuMC4wIl0sWyJDaHJvbWl1bSIsIjEyMC4wLjYwOTkuMTMxIl0sWyJHb29nbGUgQ2hyb21lIiwiMTIwLjAuNjA5OS4xMzEiXV0sMF0.&amp;dt=1704509925406&amp;bpp=2&amp;bdt=1244&amp;idt=159&amp;shv=r20240103&amp;mjsv=m202401020101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D8ecfa8f7fc6fbb05%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MZu59AfG7SEhZsiqUrJLfZ2QcyMpA&amp;gpic=UID%3D00000cd241fe4406%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MaUE0k2KD2JwSFxXXfa0vCWZTCOTg&amp;prev_fmts=0x0%2C728x280&amp;nras=1&amp;correlator=6013046467742&amp;frm=20&amp;pv=1&amp;ga_vid=691521116.1704509925&amp;ga_sid=1704509925&amp;ga_hid=276460489&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=577&amp;ady=2640&amp;biw=1519&amp;bih=738&amp;scr_x=0&amp;scr_y=0&amp;eid=44759875%2C44759926%2C31080114%2C95320893%2C95321626%2C31078663%2C31078665%2C31078668%2C31078670&amp;oid=2&amp;pvsid=2034038100318479&amp;tmod=440930262&amp;uas=0&amp;nvt=1&amp;ref=https%3A%2F%2Fxetot.com%2Ftin-xe%2Ftin-tuc%2Fpage%2F2%2F&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C738&amp;vis=1&amp;rsz=%7C%7CeoEbr%7C&amp;abl=CS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;td=1&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=3&amp;uci=a!3&amp;btvi=2&amp;fsb=1&amp;dtd=164\" width=\"300\"></iframe></ins></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Ph&acirc;n kh&uacute;c</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>SUV hạng sang cỡ nhỏ</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Số chỗ ngồi</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Chiều D&agrave;i &nbsp;x Rộng x Cao (mm)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>4.588&times;1. 865&times;1.632</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Chiều d&agrave;i cơ sở (mm)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>2.760</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Động cơ</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>2 động cơ điện</p>\r\n\r\n			<p><ins><iframe frameborder=\"0\" height=\"250\" id=\"aswift_3\" name=\"aswift_3\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-3655642957264955&amp;output=html&amp;h=250&amp;slotname=3659613648&amp;adk=337673662&amp;adf=2457759399&amp;pi=t.ma~as.3659613648&amp;w=300&amp;fwrn=4&amp;lmt=1704509935&amp;rafmt=11&amp;format=300x250&amp;url=https%3A%2F%2Fxetot.com%2Ftin-xe%2Fdanh-gia-audi-q4-e-tron%2F&amp;ea=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTIwLjAuNjA5OS4xMzEiLG51bGwsMCxudWxsLCI2NCIsW1siTm90X0EgQnJhbmQiLCI4LjAuMC4wIl0sWyJDaHJvbWl1bSIsIjEyMC4wLjYwOTkuMTMxIl0sWyJHb29nbGUgQ2hyb21lIiwiMTIwLjAuNjA5OS4xMzEiXV0sMF0.&amp;dt=1704509925408&amp;bpp=2&amp;bdt=1246&amp;idt=166&amp;shv=r20240103&amp;mjsv=m202401020101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D8ecfa8f7fc6fbb05%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MZu59AfG7SEhZsiqUrJLfZ2QcyMpA&amp;gpic=UID%3D00000cd241fe4406%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MaUE0k2KD2JwSFxXXfa0vCWZTCOTg&amp;prev_fmts=0x0%2C728x280%2C300x1032&amp;nras=1&amp;correlator=6013046467742&amp;frm=20&amp;pv=1&amp;ga_vid=691521116.1704509925&amp;ga_sid=1704509925&amp;ga_hid=276460489&amp;ga_fc=0&amp;rplot=4&amp;u_tz=420&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=577&amp;ady=3645&amp;biw=1519&amp;bih=738&amp;scr_x=0&amp;scr_y=721&amp;eid=44759875%2C44759926%2C31080114%2C95320893%2C95321626%2C31078663%2C31078665%2C31078668%2C31078670&amp;oid=2&amp;pvsid=2034038100318479&amp;tmod=440930262&amp;uas=3&amp;nvt=1&amp;ref=https%3A%2F%2Fxetot.com%2Ftin-xe%2Ftin-tuc%2Fpage%2F2%2F&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C738&amp;vis=1&amp;rsz=%7Co%7CeoEbr%7C&amp;abl=NS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;td=1&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=4&amp;uci=a!4&amp;btvi=3&amp;fsb=1&amp;dtd=9868\" width=\"300\"></iframe></ins></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>C&ocirc;ng suất (m&atilde; lực)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>282 hoặc 335</p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>M&ocirc; men xoắn (Nm)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>380 hoặc 450</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Hệ dẫn động</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Quattro</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Dung lượng pin</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>77 kWh</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Thời gian sạc nhanh 0-80%</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>28 ph&uacute;t</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Qu&atilde;ng đường di chuyển (km)</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>534</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>Tăng tốc 0-100km</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>6,7 gi&acirc;y</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>M&acirc;m xe</p>\r\n			</td>\r\n			<td colspan=\"1\" rowspan=\"1\">\r\n			<p>18 inch</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 100, '1657436681_vn-galaxy-watch4-classic-399187-sm-r895fzkaxxv-481180686.jpg', 7312470000, 20, 17, '2023-12-18 14:19:19'),
(42, 'Toyota Sienta 2022', '<h2><span style=\"font-size:16px\"><strong>T</strong></span><em>oyota Sienta 2022 tiếp tục được n&acirc;ng cấp tại thị trường Th&aacute;i Lan để gia tăng sức cạnh tranh với c&aacute;c đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c. Đ&acirc;y l&agrave; một mẫu xe c&ograve;n kh&aacute; mới mẻ đối với người ti&ecirc;u d&ugrave;ng Việt Nam.</em></h2>\r\n', '<p>Toyota Sienta lần đầu ra mắt thị trường to&agrave;n cầu v&agrave;o năm 2003 v&agrave; được mở b&aacute;n ở một số thị trường tr&ecirc;n thế giới như Nhật Bản, Singapore, Indonesia, Malaysia, Hồng K&ocirc;ng, L&agrave;o v&agrave; Th&aacute;i Lan. Sau lần n&acirc;ng cấp v&agrave;o năm 2019, đến nay, mẫu xe n&agrave;y tiếp tục được cải tiến trang bị để cạnh tranh với c&aacute;c đối thủ.</p>\r\n\r\n<p>Trong khi đ&oacute;, Toyota vẫn chưa c&oacute; kế hoạch đưa mẫu MPV cỡ nhỏ n&agrave;y về Việt Nam.</p>\r\n', 0, 100, '1657291868_buds2tim.jpg', 6741090000, 45, 1, '2024-01-04 14:19:19'),
(43, 'Kia Soluto', '<p>Ph&acirc;n kh&uacute;c sedan hạng B tại thị trường Việt Nam ng&agrave;y c&agrave;ng diễn ra s&ocirc;i nổi với sự tranh t&agrave;i của nhiều đối thủ kỳ cựu. Nếu những năm về trước, người ta vẫn thấy b&oacute;ng d&aacute;ng Kia Cerato chen ch&acirc;n giữa 2 ph&acirc;n kh&uacute;c B v&agrave; C th&igrave; đến thời điểm hiện tại&nbsp;<strong>Soluto sẽ đ&oacute;ng chốt v&agrave; được dự đo&aacute;n sẽ chiếm lợi thế cực lớn về gi&aacute; cả.</strong></p>\r\n', '<h3>Ngo&agrave;i ra, Vios c&ograve;n l&agrave; mẫu xe đem lại gi&aacute; trị kinh tế cao khi c&oacute; kh&ocirc;ng &iacute;t người mua xe để chạy dịch vụ. Tiết kiệm xăng l&agrave; một chuyện, Vios c&ograve;n &iacute;t hỏng vặt v&agrave; mỗi năm bạn chỉ mất tiền để thay dầu nhớt khi bảo dưỡng. Mặt kh&aacute;c, qua từng đời xe, Vios chỉ mất gi&aacute; 20 triệu/năm khi b&aacute;n lại- qu&aacute; l&yacute; tưởng để lựa chọn để sử dụng cho gia đ&igrave;nh hoặc kinh doan</h3>\r\n', 0, 100, '1657292267_vn-galaxy-buds-pro-r190-sm-r190nzkaxxv-509286836.jpg', 1768050000, 45, 5, '2023-12-18 14:19:19'),
(44, 'xe điện Wuling Bingo', '<h2>Li&ecirc;n doanh sản xuất &ocirc; t&ocirc; SAIC-GM-Wuling tiếp tục th&agrave;nh c&ocirc;ng khi cho ra thị trường nhiều mẫu &ocirc; t&ocirc; mini đ&aacute;p ứng nhu cầu của người d&ugrave;ng. Sự th&agrave;nh c&ocirc;ng của&nbsp;<a href=\"https://xetot.com/tin-xe/danh-gia-xe-wuling-hongguang-mini-ev/\" rel=\"noopener\" target=\"_blank\" title=\"Giá xe Wuling HongGuang Mini EV\">HongGuang Mini EV</a>&nbsp;khi trở th&agrave;nh chiếc xe điện mini b&aacute;n chạy nhất thế giới đ&atilde; tiếp sức mạnh cho li&ecirc;n doanh n&agrave;y ph&acirc;n phối nhiều d&ograve;ng xe tương tự ở c&aacute;c thị trường kh&aacute;c nhau.</h2>\r\n', '<h2>Th&ocirc;ng số kỹ thuật Wuling Bingo 2024</h2>\r\n\r\n<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Th&ocirc;ng số</td>\r\n			<td>Wuling Bingo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ph&acirc;n kh&uacute;c</td>\r\n			<td>Mini Car</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Số chỗ ngồi</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chiều D&agrave;i &nbsp;x Rộng x Cao (mm)</td>\r\n			<td>3.950 x 1.708 x 1.580</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Chiều d&agrave;i cơ sở (mm)</td>\r\n			<td>2.560</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Động cơ</td>\r\n			<td>Điện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&ocirc;ng suất (m&atilde; lực)</td>\r\n			<td>\r\n			<ul>\r\n				<li>40</li>\r\n				<li>54</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Hệ dẫn động</p>\r\n			</td>\r\n			<td>\r\n			<p>Cầu trước</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Loại pin trang bị</p>\r\n			</td>\r\n			<td>\r\n			<p>LFP</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Dung lượng pin</p>\r\n\r\n			<p><ins><iframe frameborder=\"0\" height=\"1032\" id=\"aswift_2\" name=\"aswift_2\" scrolling=\"no\" src=\"https://googleads.g.doubleclick.net/pagead/ads?client=ca-pub-3655642957264955&amp;output=html&amp;h=1032&amp;slotname=6931087979&amp;adk=946226475&amp;adf=3808988170&amp;pi=t.ma~as.6931087979&amp;w=300&amp;cr_col=1&amp;cr_row=13&amp;fwrn=2&amp;lmt=1704509885&amp;rafmt=9&amp;format=300x1032&amp;url=https%3A%2F%2Fxetot.com%2Ftin-xe%2Fdanh-gia-xe-wuling-bingo%2F&amp;ea=0&amp;crui=image_sidebyside&amp;fwr=0&amp;wgl=1&amp;uach=WyJXaW5kb3dzIiwiMTAuMC4wIiwieDg2IiwiIiwiMTIwLjAuNjA5OS4xMzEiLG51bGwsMCxudWxsLCI2NCIsW1siTm90X0EgQnJhbmQiLCI4LjAuMC4wIl0sWyJDaHJvbWl1bSIsIjEyMC4wLjYwOTkuMTMxIl0sWyJHb29nbGUgQ2hyb21lIiwiMTIwLjAuNjA5OS4xMzEiXV0sMF0.&amp;dt=1704509865936&amp;bpp=1&amp;bdt=1437&amp;idt=223&amp;shv=r20240103&amp;mjsv=m202401020101&amp;ptt=9&amp;saldr=aa&amp;abxe=1&amp;cookie=ID%3D8ecfa8f7fc6fbb05%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MZu59AfG7SEhZsiqUrJLfZ2QcyMpA&amp;gpic=UID%3D00000cd241fe4406%3AT%3D1704508704%3ART%3D1704509864%3AS%3DALNI_MaUE0k2KD2JwSFxXXfa0vCWZTCOTg&amp;prev_fmts=0x0%2C728x280%2C300x250&amp;nras=1&amp;correlator=1236714061836&amp;frm=20&amp;pv=1&amp;ga_vid=1263408271.1704509866&amp;ga_sid=1704509866&amp;ga_hid=1490304793&amp;ga_fc=0&amp;u_tz=420&amp;u_his=1&amp;u_h=864&amp;u_w=1536&amp;u_ah=824&amp;u_aw=1536&amp;u_cd=24&amp;u_sd=1.25&amp;dmc=8&amp;adx=217&amp;ady=2954&amp;biw=1519&amp;bih=738&amp;scr_x=0&amp;scr_y=2750&amp;eid=44759875%2C44759926%2C31079759%2C31080114%2C95320893%2C95321626%2C31078663%2C31078665%2C31078668%2C31078670&amp;oid=2&amp;psts=AOrYGskphFUWe56auY_kcT57jGxf9QDzHxjOcooX2qKApOAi3MErfhsyyVHj0MVZCeKCb_2INSwSSo3KCv0IyyODt0fPM86L&amp;pvsid=630168166709068&amp;tmod=440930262&amp;uas=1&amp;nvt=1&amp;ref=https%3A%2F%2Fxetot.com%2Ftin-xe%2Ftin-tuc%2Fpage%2F2%2F&amp;fc=1920&amp;brdim=0%2C0%2C0%2C0%2C1536%2C0%2C1536%2C824%2C1536%2C738&amp;vis=1&amp;rsz=od%7Co%7CoeE%7Cp&amp;abl=XS&amp;pfx=0&amp;fu=128&amp;bc=31&amp;td=1&amp;psd=W251bGwsbnVsbCxudWxsLDNd&amp;nt=1&amp;ifi=3&amp;uci=a!3&amp;fsb=1&amp;dtd=19533\" width=\"300\"></iframe></ins></p>\r\n			</td>\r\n			<td>\r\n			<ul>\r\n				<li>17,3 kWh</li>\r\n				<li>21,9 kWh</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1, 100, '1657384188_buds live.jpg', 7116990000, 50, 3, '2024-01-04 14:19:19'),
(45, 'Mercedes EQV ', '<h2><strong>Mercedes-Benz EQV 2024</strong>&nbsp;l&agrave; phi&ecirc;n bản chạy điện của d&ograve;ng xe V-Class quen thuộc. Diện mạo của EQV thay đổi nhẹ để ph&ugrave; hợp với nh&atilde;n hiệu xe điện EQ.</h2>\r\n', '<p>Mercedes-Benz từng trưng b&agrave;y bản mẫu &yacute; tưởng Concept EQV tại triển l&atilde;m &ocirc; t&ocirc; Geneva 2019 hồi th&aacute;ng 03 &ndash; 2019. Cho đến th&aacute;ng 09 &ndash; 2019 xe ch&iacute;nh thức ho&agrave;n thiện để đi v&agrave;o sản xuất thương mại h&agrave;ng loạt v&agrave; được ra mắt tại triển l&atilde;m IAA Cars Frankfurt 2019.</p>\r\n\r\n<p>Từ đ&oacute; cho đến nay, c&aacute;c phi&ecirc;n bản của&nbsp;Mercedes-Benz EQV&nbsp;lu&ocirc;n d&agrave;nh được nhiều sự quan t&acirc;m của người ti&ecirc;u d&ugrave;ng.</p>\r\n', 0, 100, '1657384485_samsung-galaxy-m53-xanhduong-1.jpg', 1280770000, 20, 12, '2023-12-18 14:19:19'),
(46, 'Hyundai Creta ', '<h2>TC Motor đưa Creta trở lại thị trường Việt để cạnh tranh ở ph&acirc;n kh&uacute;c gầm cao cỡ B. D&ograve;ng xe n&agrave;y từng xuất hiện năm 2015-2016 nhưng kh&ocirc;ng th&agrave;nh c&ocirc;ng.</h2>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>Hyundai Creta thuộc ph&acirc;n kh&uacute;c&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/phan-khuc/phan-khuc-b-2#crossover\" rel=\"dofollow\">Crossover cỡ B</a>, mảnh đất b&eacute;o bở với sự g&oacute;p mặt nhiều sản phẩm, như&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/kia-seltos-68\" rel=\"dofollow\">Kia Seltos</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mazda-cx-3-96\" rel=\"dofollow\">Mazda CX-3</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mg-zs-114\" rel=\"dofollow\">MG ZS</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/volkswagen-t-cross-207\" rel=\"dofollow\">Volkswagen T-Cross</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/honda-hr-v-43\" rel=\"dofollow\">Honda HR-V</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/toyota-corolla-cross-158\" rel=\"dofollow\">Toyota Corolla Cross</a>&nbsp;(thuộc B+). Đ&acirc;y l&agrave; ph&acirc;n kh&uacute;c nhắm tới đối tượng kh&aacute;ch h&agrave;ng gia đ&igrave;nh trẻ v&agrave; những người lần đầu sở hữu &ocirc;t&ocirc;.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; Creta cũng cạnh tranh một c&aacute;ch gi&aacute;n tiếp với c&aacute;c mẫu&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/phan-khuc/xe-nho-hang-ab-23#crossover\" rel=\"dofollow\">Crossover cỡ A+</a>&nbsp;như&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/kia-sonet-193\" rel=\"dofollow\">Kia Sonet</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/toyota-raize-196\" rel=\"dofollow\">Toyota Raize</a>&hellip; hoặc c&aacute;c mẫu&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/mazda-cx-30-99\" rel=\"dofollow\">Mazda CX-30</a>,&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/dong-xe/peugeot-2008-127\" rel=\"dofollow\">Peugeot 2008</a>&nbsp;thuộc&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/phan-khuc/phan-khuc-b-c-3\" rel=\"dofollow\">ph&acirc;n kh&uacute;c B+/C-</a>.</p>\r\n', 0, 100, '1657384686_samsung-galaxy-m33-xanh-1-min.jpg', 3552900000, 10, 16, '2024-01-04 14:19:19'),
(47, 'LAND CRUISER 300', '<h2>Chiếc SUV nổi tiếng về khả năng vượt địa h&igrave;nh v&agrave; bền bỉ, tuy nhi&ecirc;n động cơ lớn, gi&aacute; b&aacute;n như xe sang v&agrave; mức ti&ecirc;u thụ nhi&ecirc;n liệu cao n&ecirc;n Land Cruiser chủ yếu l&agrave; lựa chọn của kh&aacute;ch h&agrave;ng gi&agrave;u c&oacute;,&nbsp;c&aacute;c&nbsp;tổ chức hay c&ocirc;ng ty.&nbsp;</h2>\r\n', '<p>Uy lực thống lĩnh</p>\r\n\r\n<p><a href=\"https://www.toyota.com.vn/thong-so-ky-thuat/?modelId=321&amp;gradeId=1896\" target=\"_blank\">XEM TH&Ocirc;NG SỐ</a><a href=\"https://www.toyota.com.vn/so-sanh-xe/?modelId1=321&amp;&amp;gradeId1=1896\" target=\"_blank\">SO S&Aacute;NH XE</a></p>\r\n\r\n<p>Số chỗ ngồi</p>\r\n\r\n<p>7 chỗ</p>\r\n\r\n<p>Kiểu d&aacute;ng</p>\r\n\r\n<p>Đa dụng thể thao</p>\r\n\r\n<p>Nhi&ecirc;n liệu</p>\r\n\r\n<p>Xăng</p>\r\n\r\n<p>Xuất xứ</p>\r\n\r\n<p>Nhật Bản</p>\r\n\r\n<p>Gi&aacute; từ</p>\r\n\r\n<p>4.286.000.000</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 100, '1657388480_samsung-galaxy-z-fold3-5g-xanh-reu-2.jpg', 3922190000, 10, 1, '2023-12-18 14:19:19'),
(48, 'Mercedes EQB', '<p><strong>Mercedes-Benz EQB 2024 l&agrave; phi&ecirc;n bản n&acirc;ng cấp</strong>&nbsp;giữa v&ograve;ng đời mới nhất t&iacute;nh đến thời điểm hiện tại của mẫu xe. Xe sở hữu một số tinh chỉnh về ngoại h&igrave;nh, n&acirc;ng cấp c&ocirc;ng nghệ vượt trội, c&ugrave;ng khả năng vận h&agrave;nh mạnh mẽ.</p>\r\n', '<p>Khi m&agrave; tại thị trường trong nước chuẩn bị với sự kiện ra mắt xe&nbsp;<a href=\"https://muaxegiatot.com/xe-mercedes-eqb-250.html\" rel=\"noopener\" target=\"_blank\" title=\"Giá xe Mercedes-Benz EQB 250\">Mercedes-Benz EQB 250</a>&nbsp;v&agrave;o th&aacute;ng 9 tới đ&acirc;y.</p>\r\n\r\n<p>Th&igrave; h&atilde;ng xe nước Đức vừa qua đ&atilde; c&ocirc;ng bố về sự xuất hiện của Mercedes-Benz EQB 2024 phi&ecirc;n bản mới nhất.</p>\r\n', 0, 100, '1657385177_samsung-galaxy-tab-s7-xanh-duong-1-org.jpg', 8452260000, 15, 12, '2024-01-04 14:19:19'),
(49, 'Honda Civic Type R', '<h2>&nbsp;</h2>\r\n\r\n<h3>BỨT TỐC VƯỢT ĐỈNH</h3>\r\n\r\n<p>D&ugrave; đ&atilde; ở đỉnh cao, chủ nh&acirc;n Honda Civic Type R vẫn kh&ocirc;ng ngừng tăng tốc để chinh phục đỉnh mới, vinh quang mới v&agrave; trở th&agrave;nh phi&ecirc;n bản th&agrave;nh c&ocirc;ng hơn của ch&iacute;nh m&igrave;nh.</p>\r\n', '<h2>GIẢI THƯỞNG TO&Agrave;N CẦU</h2>\r\n\r\n<p>Từ khi ra mắt, Honda Civic Type R tự h&agrave;o nhận được nhiều giải thưởng danh gi&aacute; tr&ecirc;n to&agrave;n cầu, như Giải thưởng &ldquo;Xe của năm&rdquo; được b&aacute;o BBC Top Gear trao tặng năm 2017; Giải thưởng &ldquo;Mẫu xe Hatchback nổi bật của năm 2020&rdquo; do tạp ch&iacute; Auto Express (Anh Quốc) trao tặng, c&ugrave;ng nhiều c&aacute;c giải thưởng uy t&iacute;n kh&aacute;c.</p>\r\n', 0, 100, '1657385351_samsung-galaxy-tab-s7-fe-wifi-1.jpg', 1494700000, 15, 14, '2023-12-18 14:19:19'),
(50, 'Toyota Vios 2023', '<h2>Vios 2023 l&agrave; bản n&acirc;ng cấp nhẹ của mẫu sedan &quot;ăn kh&aacute;ch&quot; nhất nh&agrave; Toyota. Xe lược bỏ 3&nbsp;bản, chỉ c&ograve;n 3 bản l&agrave; E MT, E CVT (3 t&uacute;i kh&iacute;) v&agrave; G. Vios cạnh tranh với c&aacute;c đối thủ như Hyundai Accent, Honda City.&nbsp;</h2>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p>So với&nbsp;<a href=\"https://vnexpress.net/oto-xe-may/v-car/doi-xe/toyota-vios-2021-147\" rel=\"dofollow\">bản tiền nhiệm</a>, Toyota Vios 2023 lược bỏ c&aacute;c bản E MT v&agrave; E CVT 7 t&uacute;i kh&iacute;, chỉ c&ograve;n c&aacute;c bản 3 t&uacute;i kh&iacute;, gi&aacute; giảm lần lượt 10 triệu v&agrave; 14 triệu đồng. Ri&ecirc;ng bản G CVT vẫn giữ nguy&ecirc;n, kh&ocirc;ng tăng gi&aacute;. Bản G-RS vốn k&eacute;n kh&aacute;ch cũng ngưng ph&acirc;n phối.</p>\r\n\r\n<p>Về thiết kế, Toyota Vios mới được thiết kế lại phần đầu c&acirc;n đối, vu&ocirc;ng vức hơn. Đ&egrave;n pha LED trở th&agrave;nh trang bị ti&ecirc;u chuẩn, tạo h&igrave;nh khoẻ khoắn. Cản trước v&agrave; mặt ca-lăng cũng được thiết kế lại nhưng kh&aacute; rối so với bản cũ.</p>\r\n\r\n<p>So với bản đời tiền nhiệm, h&atilde;ng thay đổi thiết kế la-zăng, trong khi k&iacute;ch thước vẫn giữ 15 inch. Kh&ocirc;ng c&oacute; kh&aacute;c biệt n&agrave;o về đ&egrave;n hậu tr&ecirc;n bản mới. Ri&ecirc;ng cản sau với dải phản quang được tinh chỉnh lại.</p>\r\n\r\n<p>Ở nội thất, Vios 2023 kh&ocirc;ng thay đổi nhiều c&aacute;ch sắp xếp c&aacute;c chi tiết. H&atilde;ng n&acirc;ng cấp m&agrave;n h&igrave;nh từ 7 inch l&ecirc;n 9 inch, v&ocirc;-lăng th&ecirc;m lẫy chuyển số cho bản G. Hai bản thấp hơn th&ecirc;m cổng sạc USB cho h&agrave;ng ghế sau.</p>\r\n', 0, 100, '1657385508_samsung-galaxy-tab-s8-white-1.jpg', 616743000, 7, 1, '2024-01-04 14:19:19'),
(51, 'HONDA BR-V', '<h2>Honda BR-V&nbsp;với &yacute; tưởng mang đến một mẫu &ldquo;Chuy&ecirc;n cơ mặt đất&rdquo; tập trung n&acirc;ng cao trải nghiệm đẳng cấp, tiện nghi của người sử dụng, Honda BR-V l&agrave; sự kết hợp ho&agrave;n hảo của một chiếc SUV c&aacute; t&iacute;nh, một chiếc MPV đa dụng c&ugrave;ng với cảm gi&aacute;c l&aacute;i hứng khởi lu&ocirc;n c&oacute; tr&ecirc;n c&aacute;c d&ograve;ng xe Honda.</h2>\r\n', '<h2>TẬN HƯỞNG TRẢI NGHIỆM VUI VẺ B&Ecirc;N NGƯỜI TH&Acirc;N</h2>\r\n\r\n<p>Với nội thất rộng r&atilde;i, tiện nghi c&ugrave;ng khả năng vận h&agrave;nh &ecirc;m &aacute;i, Honda BR-V mang đến cho cả gia đ&igrave;nh những gi&acirc;y ph&uacute;t thoải m&aacute;i, an to&agrave;n tr&ecirc;n mọi cung đường như một chiếc chuy&ecirc;n cơ đ&iacute;ch thực<br />\r\n<img alt=\"\" src=\"https://otohonda-haiphong.vn/wp-content/uploads/2023/07/honda-br-v-080723-02.jpg\" style=\"height:675px; width:1200px\" />Với mong muốn hướng đến kh&aacute;ch h&agrave;ng l&agrave; c&aacute;c gia đ&igrave;nh Việt, Honda BR-V mang đến những ưu việt trong d&ograve;ng xe gia đ&igrave;nh qua c&aacute;c kh&iacute;a cạnh:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế nội thất rộng r&atilde;i 7 chỗ ngồi c&ugrave;ng c&aacute;c h&agrave;ng ghế linh hoạt ph&ugrave; hợp với c&aacute;c gia đ&igrave;nh c&oacute; nhiều thế hệ.</li>\r\n	<li>Khả năng vận h&agrave;nh v&agrave; tiết kiệm nhi&ecirc;n liệu vượt trội.</li>\r\n	<li>C&aacute;c t&iacute;nh năng an to&agrave;n chủ động v&agrave; bị động ti&ecirc;n tiến, đặc biệt l&agrave; hệ thống Honda SENSING gi&uacute;p cả gia đ&igrave;nh lu&ocirc;n an t&acirc;m v&agrave; tận hưởng trọn vẹn niềm vui trong mỗi chuyến đi.</li>\r\n	<li>Hệ thống trang bị hỗ trợ hiện đại tr&ecirc;n xe mang đến trải nghiệm đẳng cấp c&ugrave;ng sự tiện nghi, thoải m&aacute;i tối đa cho tất cả c&aacute;c th&agrave;nh vi&ecirc;n.</li>\r\n</ul>\r\n', 0, 100, '1657385777_samsung-galaxy-tab-a7-lite-1-3-org.jpg', 7599610000, 11, 14, '2023-12-18 14:19:19'),
(52, 'Mazda CX-5', '<h2>Mazda CX-5 l&agrave; c&aacute;i t&ecirc;n &ldquo;độc chiếm&rdquo; vị tr&iacute; số 1 về doanh số trong th&aacute;ng 10/2023 với hơn 2.000 xe b&aacute;n ra, bỏ xa xe ở ph&iacute;a sau với c&aacute;ch biệt hơn 700 xe.</h2>\r\n', '<h3>Kết th&uacute;c th&aacute;ng 11/2023, thị trường &ocirc; t&ocirc; Việt Nam vẫn chưa cho thấy sự khởi sắc d&ugrave; đ&acirc;y đ&atilde; l&agrave; thời điểm mua sắm cuối năm. Trong Top 10 xe b&aacute;n chạy nhất th&aacute;ng 11/2023, ngo&agrave;i những c&aacute;i t&ecirc;n quen thuộc như Mazda CX-5, Hyundai Accent th&igrave; c&oacute; th&ecirc;m loạt xe Toyota nổi bật l&agrave; Yaris Cross, Veloz Cross hay Vios.</h3>\r\n', 0, 100, '1657385959_samsung-galaxy-tab-a8-1-1.jpg', 7147830000, 12, 1, '2024-01-04 14:19:19'),
(53, 'Ford Ranger Raptor 2022', '<h2>Ford Ranger Raptor 2023 ra mắt bản n&acirc;ng cấp, c&oacute; thay đổi g&acirc;y tranh c&atilde;i</h2>\r\n', '<p>X&eacute;t về mặt kinh tế, việc Ranger Raptor chuyển sang đăng k&yacute; dạng b&aacute;n tải chở h&agrave;ng th&ocirc;ng thường sẽ&nbsp;<strong>gi&uacute;p kh&aacute;ch h&agrave;ng tiết kiệm gần 60 triệu đồng.</strong></p>\r\n\r\n<p>Cụ thể, lệ ph&iacute; trước bạ mới chỉ bằng 60% mức cũ. Tại H&agrave; Nội, Ranger Raptor sẽ c&oacute; ph&iacute; trước bạ mới 7,2%, giảm 4,8% so với trước. C&aacute;c tỉnh/th&agrave;nh kh&aacute;c c&oacute; ph&iacute; trước bạ mới 6%, giảm 4% so với trước.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', 0, 100, '1657418987_vn-crystal-uhd-au8000-ua65au8000kxxv-408312393.jpg', 2940300000, 10, 8, '2023-12-18 14:19:19'),
(54, 'Toyota Corolla Altis', '<h2>Toyota Corolla Altis ch&iacute;nh l&agrave; c&aacute;i t&ecirc;n nổi tiếng một thời khuynh đảo ph&acirc;n kh&uacute;c Sedan hạng C với doanh số cao vượt trội. Tuy nhi&ecirc;n trong những năm trở lại đ&acirc;y, xe đang c&oacute; dấu hiệu đuối sức v&agrave; gặp nhiều kh&oacute; khăn khi cạnh tranh với c&aacute;c đối thủ.&nbsp;</h2>\r\n', '<p>Để cải thiện t&igrave;nh trạng tr&ecirc;n, mới đ&acirc;y&nbsp;<strong>Toyota đ&atilde; giới thiệu phi&ecirc;n bản mới nhất của Corolla Altis c&ugrave;ng nhiều thay đổi</strong>, qua đ&oacute; gi&uacute;p xe trở n&ecirc;n hấp dẫn hơn. Năm 2019, sản phẩm n&agrave;y đ&atilde; được giới thiệu tại một số thị trường v&agrave; cũng được đồn đo&aacute;n l&agrave; sẽ về Việt Nam ngay trong năm nay. Hiện tại một số Showroom đ&atilde; bắt đầu nhận đặt cọc sớm.&nbsp;</p>\r\n', 0, 100, '1657419493_vn-qled-q80b-qa65q80bakxxv-531464575.jpg', 2258010000, 12, 1, '2024-01-04 14:19:19'),
(55, 'HONDA CITY', '<p>Honda City&nbsp;kh&ocirc;ng ngừng chuyển m&igrave;nh trong đường n&eacute;t thiết kế, đột ph&aacute; với c&ocirc;ng nghệ ti&ecirc;n tiến để c&ugrave;ng bạn vươn xa đầy ki&ecirc;u h&atilde;nh tr&ecirc;n h&agrave;nh tr&igrave;nh kiến tạo những th&agrave;nh c&ocirc;ng mới.</p>\r\n', '<p>Honda City mới tập trung v&agrave;o 4 gi&aacute; trị nổi bật:&nbsp;<strong>&ldquo;Thể thao c&aacute; t&iacute;nh &ndash; Tiện nghi hiện đại &ndash; An to&agrave;n vượt trội &ndash; Vận h&agrave;nh mạnh mẽ&rdquo;</strong>, hướng tới những kh&aacute;ch h&agrave;ng trẻ trung, ưa th&iacute;ch sự năng động, hiện đại c&ugrave;ng sự tiện nghi v&agrave; an to&agrave;n tối đa.</p>\r\n\r\n<p><img alt=\"\" src=\"https://otohonda-haiphong.vn/wp-content/uploads/2023/07/honda-city-0723-02.jpg\" style=\"height:675px; width:1200px\" /></p>\r\n\r\n<p>Được ph&aacute;t triển dựa tr&ecirc;n &yacute; tưởng mang đến một mẫu xe sedan &ldquo;Thể thao hơn, An to&agrave;n hơn&rdquo;, Honda City mới kh&ocirc;ng chỉ đ&aacute;p ứng nhu cầu đi lại cơ bản m&agrave; c&ograve;n đem lại sự an t&acirc;m khi trải nghiệm cho kh&aacute;ch h&agrave;ng với những thay đổi đ&aacute;ng gi&aacute; trong ph&acirc;n kh&uacute;c hạng B:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế thể thao, c&aacute; t&iacute;nh hơn với lưới tản nhiệt tổ ong, cản trước v&agrave; cản sau được tạo h&igrave;nh khuếch t&aacute;n l&agrave;m tăng độ khoẻ khoắn, la zăng mới với thiết kế phong c&aacute;ch hơn, nội thất bọc da sang trọng (RS, L).</li>\r\n</ul>\r\n', 0, 100, '1657432571_vn-the-sero-ls05b-qa43ls05bakxxv-531464633.jpg', 1969150000, 0, 14, '2023-12-18 14:19:19'),
(56, ' Hyundai Ioniq 5', '<h2>L&agrave; mẫu xe k&iacute;n tiếng nhất, nhưng Hyundai Ioniq 5 bất ngờ mở b&aacute;n sớm nhất trong năm nay khi sẽ ra mắt v&agrave;o ng&agrave;y 26 th&aacute;ng 4 năm 2022.</h2>\r\n', '<p>Về tổng thể, Hyundai Ioniq 5 sở hữu k&iacute;ch thước D&agrave;i x Rộng x Cao lần lượt l&agrave; 4.635 x 1.890 x 1.605 (mm), chiều d&agrave;i cơ sở 3.000mm. K&iacute;ch thước của chiếc xe điện n&agrave;y c&ograve;n lớn hơn cả những chiếc SUV cỡ lớn như&nbsp;<a href=\"https://xetot.com/toan-quoc/mua-ban-oto/hyundai--palisade\" rel=\"noopener\" target=\"_blank\">Hyundai Palisade</a>.</p>\r\n\r\n<p>Ở ngoại h&igrave;nh, Hyundai Ioniq 5 g&acirc;y ấn tượng với người d&ugrave;ng bởi thiết kế trẻ trung, hiện đại.</p>\r\n', 1, 94, '1657437871_vn-side-by-side-rs62r5001b4-rs62r5001b4-sv-black-198134679.jpg', 2571740000, 18, 31, '2024-01-04 14:19:19'),
(57, 'Ford Everest Sport ', '<h2>Ford Everest Sport 2.0L 4&times;2 AT 2023 l&agrave; một chiếc xe SUV tuyệt vời với nhiều t&iacute;nh năng hấp dẫn v&agrave; sức mạnh đ&aacute;ng kinh ngạc. Xe sử dụng động cơ Single Turbo Diesel 2.0L i4 TDCi, với c&ocirc;ng suất 170 m&atilde; lực (125 KW) v&agrave; m&ocirc;-men xoắn cực đại 405 Nm/ 1750-2500 rpm. Sức mạnh n&agrave;y được truyền đến hộp số tự động 6 cấp, với phanh tay điện tử gi&uacute;p cho việc điều khiển xe trở n&ecirc;n dễ d&agrave;ng hơn.</h2>\r\n', '<table border=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>T&igrave;nh Trạng Xe</strong></td>\r\n			<td>Mới 100%</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Năm Sản xuất</strong></td>\r\n			<td>2023</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Kiểu Xe</strong></td>\r\n			<td>SUV 7 Chỗ</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Động Cơ</strong></td>\r\n			<td>Dầu Diesel 2.0L Single-Turbo</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hộp Số</strong></td>\r\n			<td>Tự Động 6 Cấp</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Hệ Thống Đẫn Động</strong></td>\r\n			<td>Một Cầu 4&times;2</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>K&iacute;ch Thước DxRxC</strong></td>\r\n			<td>4914 x 1923 x 1842</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>C&ocirc;ng xuất cực Đại</strong></td>\r\n			<td>170 (125Kw ) 3500</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>M&agrave;u Xe</strong></td>\r\n			<td>Bạc, X&aacute;m Meteor, Xanh Dương, N&acirc;u, Đen, Trắng Tuyết, Đỏ Cam</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/Ford-Everest-Sport-2.0L-4%C3%972-AT.jpg\"><img alt=\"Ford Everest Sport 2.0L 4×2 AT\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/Ford-Everest-Sport-2.0L-4%C3%972-AT-600x400.jpg\" style=\"height:400px; width:600px\" title=\"Ford Everest Sport 2.0L 4×2 AT\" /></a></p>\r\n\r\n<p><a href=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/ford-evrest-sport-4x2-at-12.jpg\"><img alt=\"\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/ford-evrest-sport-4x2-at-12-600x495.jpg\" style=\"height:495px; width:600px\" title=\"ford-evrest-sport-4x2-at-12\" /></a></p>\r\n\r\n<p><a href=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/noi-that-xe-ford-everest-sport-2023-moi-nhat-798x446-1.jpg\"><img alt=\"\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/noi-that-xe-ford-everest-sport-2023-moi-nhat-798x446-1-600x335.jpg\" style=\"height:335px; width:600px\" title=\"noi-that-xe-ford-everest-sport-2023-moi-nhat-798x446-1\" /></a></p>\r\n\r\n<p><a href=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/ket-noi-khong-day-tren-ford-everest-moi-1.jpg\"><img alt=\"\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/ket-noi-khong-day-tren-ford-everest-moi-1-600x326.jpg\" style=\"height:326px; width:600px\" title=\"ket-noi-khong-day-tren-ford-everest-moi-1\" /></a></p>\r\n\r\n<p><img alt=\"Ford Everest Sport 2.0L 4×2 AT\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/Ford-Everest-Sport-2.0L-4%C3%972-AT-300x200.jpg\" style=\"width:300px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/ford-evrest-sport-4x2-at-12-300x248.jpg\" style=\"width:300px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/noi-that-xe-ford-everest-sport-2023-moi-nhat-798x446-1-300x168.jpg\" style=\"width:300px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://ford-giaiphong.net/wp-content/uploads/2023/04/ket-noi-khong-day-tren-ford-everest-moi-1-300x163.jpg\" style=\"width:300px\" /></p>\r\n', 0, 100, '1657438407_vn-rt6000k-top-freezer-with-twin-cooling-plus™-530l-417759-rt29k503jb1-sv-532234455.jpg', 6451220000, 18, 8, '2023-12-18 14:19:19'),
(58, 'Lynk & Co 09', '<h2>Lynk &amp; Co 09 l&agrave; mẫu xe cao cấp nhất đến thời điểm hiện tại của h&atilde;ng xe Trung Quốc hiện mới c&oacute; mặt tại Việt Nam. Mẫu xe được định vị tại ph&acirc;n kh&uacute;c SUV hạng E với thiết kế ấn tượng, c&ugrave;ng mức gi&aacute; kh&aacute; cao 2,199 tỷ.</h2>\r\n', '<p><a href=\"https://xetot.com/tin-xe/gia-xe-o-to-lynk-co/\" rel=\"noopener\" target=\"_blank\" title=\"Giá xe Lynk &amp; Co\">H&atilde;ng xe Trung Quốc Lynk &amp; Co</a>&nbsp;đ&atilde; ch&iacute;nh thức ra mắt thị trường Việt Nam v&agrave;o ng&agrave;y 16 &ndash; 12 &ndash; 2023. Cũng trong khu&ocirc;n khổ sự kiện n&agrave;y, Lynk &amp; Co 09 l&agrave; một trong 3 mẫu xe của thương hiệu được giới thiệu đến người ti&ecirc;u d&ugrave;ng trong nước.</p>\r\n\r\n<p><strong>Lynk &amp; Co 09</strong>&nbsp;l&agrave; mẫu xe cao cấp nhất t&iacute;nh đến thời điểm hiện tại của Lynk &amp; Co ra mắt người d&ugrave;ng Việt. Mẫu xe được định vị tại&nbsp;<strong>ph&acirc;n kh&uacute;c SUV hạng E với 7 chỗ ngồi</strong>.</p>\r\n\r\n<p>Xe sở hữu thiết kế kh&aacute; ấn tượng, nhiều trang bị tiện nghi hiện đại v&agrave; c&ocirc;ng nghệ an to&agrave;n cao cấp l&agrave; những điểm s&aacute;ng nổi trội của mẫu xe trong lần xuất hiện ch&iacute;nh thức n&agrave;y.</p>\r\n', 0, 100, '1657438578_vn-ref-rb4000-387691-rb30n4190bu-sv-518038749.jpg', 5040910000, 15, 31, '2024-01-04 14:19:19'),
(59, 'VinFast Fadil', '<h2>Mẫu xe cỡ A, được ph&aacute;t triển tr&ecirc;n nền tảng mẫu Opel Karl Rock với m&aacute;y 1.4, hộp số CVT v&agrave; nhiều trang bị an to&agrave;n. Với gi&aacute; b&aacute;n v&agrave; trang bị hợp l&yacute; Fadil nhanh ch&oacute;ng &aacute;p đảo trong ph&acirc;n kh&uacute;c xe cỡ A.</h2>\r\n', '<h2><strong>M&ocirc; tả / đ&aacute;nh gi&aacute; chi tiết</strong></h2>\r\n\r\n<p><strong>Một số th&ocirc;ng số kỹ thuật về động cơ, hệ thống treo, phanh:</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Th&ocirc;ng số kỹ thuật</strong></td>\r\n			<td><strong>Ti&ecirc;u chuẩn</strong></td>\r\n			<td><strong>N&acirc;ng cao</strong></td>\r\n			<td><strong>Cao cấp</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Động cơ</td>\r\n			<td colspan=\"3\">1.4l, Xăng, 4 xi lanh thẳng h&agrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&ocirc;ng suất</td>\r\n			<td colspan=\"3\">98 m&atilde; lực tại 6200 v&ograve;ng/ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&ocirc;-men xoắn</td>\r\n			<td colspan=\"3\">128Nm tại 4400 v&ograve;ng/ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hộp số</td>\r\n			<td colspan=\"3\">Tự động v&ocirc; cấp - CVT</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ dẫn động</td>\r\n			<td colspan=\"3\">Cầu trước - FWD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Mức ti&ecirc;u thụ nhi&ecirc;n liệu</td>\r\n			<td colspan=\"3\">5.85l/100 km tr&ecirc;n đường hỗn hợp</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lốp, la-zăng</td>\r\n			<td>M&agrave; đ&uacute;c hợp kim nh&ocirc;m 15&quot;</td>\r\n			<td colspan=\"2\">M&agrave;n đ&uacute;c hợp kim nh&ocirc;m 2 m&agrave;u đen/x&aacute;m 15&quot;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Treo trước</td>\r\n			<td colspan=\"3\">Kiểu MacPherson</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Treo sau</td>\r\n			<td colspan=\"3\">Phụ thuộc, kiểu dầm xoắn</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phanh trước</td>\r\n			<td colspan=\"3\">Đĩa</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phanh sau</td>\r\n			<td colspan=\"3\">Tang trống</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Trợ lực v&ocirc;-lăng</td>\r\n			<td colspan=\"3\">Trợ lực điện</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 100, '1657438767_vn-bottom-mount-freezer-rb30n4010s8-rb30n4010s8-sv-frontsilver-115806204.jpg', 5350890000, 22, 10, '2023-12-18 14:19:19'),
(60, 'KIA Seltos', '<h2>KIA&nbsp;Seltos l&agrave; một mẫu SUV hạng B gi&aacute; rẻ của h&atilde;ng KIA (H&agrave;n Quốc) cạnh tranh trực tiếp với Toyota Corolla Cross. Seltos c&oacute; gi&aacute; b&aacute;n dễ tiếp cận hơn từ 629 &ndash; 717 triệu đồng. Trong th&aacute;ng 12-2021, mẫu xe H&agrave;n sẽ c&oacute; lợi thế khi được giảm 50% ph&iacute; trước bạ.</h2>\r\n', '<p>Hiện tại, KIA Seltos được lắp r&aacute;p trong nước với 4 phi&ecirc;n bản cho 2 t&ugrave;y chọn động cơ. Bản động cơ Turbo 1.4L c&ocirc;ng suất 138 m&atilde; lực, momen xoắn 242 Nm, kết hợp hộp số tự động ly hợp k&eacute;p 7 cấp. Bản động cơ 1.6L c&ocirc;ng suất 128 m&atilde; lực, momen xoắn 157 Nm, kết hợp hộp số tự động 6 cấp.</p>\r\n\r\n<p>Trong ph&acirc;n kh&uacute;c SUV gi&aacute; rẻ, KIA Seltos được kh&aacute;ch h&agrave;ng đ&aacute;nh gi&aacute; cao với mức gi&aacute; b&aacute;n hấp dẫn, ngoại thất trẻ trung, thiết kế nội thất bắt mắt, rộng r&atilde;i, được trang bị nhiều tiện nghi hiện đại như: M&agrave;n h&igrave;nh cảm ứng trung t&acirc;m 10.25 inch, cửa sổ trời, đ&egrave;n nội thất 8 m&agrave;u,&hellip; Gi&aacute; b&aacute;n của mẫu SUV n&agrave;y với 4 phi&ecirc;n bản như sau:</p>\r\n', 0, 100, '1657441599_vn-microwave-oven-grill-mg30t5018ck-mg30t5018ck-sv-frontblack-224903476.jpg', 1631700000, 36, 5, '2024-01-04 14:19:19'),
(61, 'Toyota Corolla Cross', '<h2><span style=\"font-size:16px\"><strong>T</strong></span>oyota Corolla Cross l&agrave; một mẫu SUV hạng B gi&aacute; rẻ của Toyota, được nhập khẩu từ Th&aacute;i Lan với 3 phi&ecirc;n bản: 1.8G, 1.8V v&agrave; 1.8HV. Corolla Cross c&oacute; 2 t&ugrave;y chọn động cơ cho 3 phi&ecirc;n bản n&agrave;y đ&oacute; l&agrave;: Động cơ xăng 1.8L 138 m&atilde; lực, m&ocirc; men xoắn 172 Nm v&agrave; động cơ Hybrid gồm động cơ xăng 1.8L kết hợp với m&ocirc; tơ điện cho tổng c&ocirc;ng suất 150 m&atilde; lực, m&ocirc; men xoắn 305 Nm. C&ugrave;ng với 2 động cơ n&agrave;y l&agrave; hộp số tự động v&ocirc; cấp CVT.</h2>\r\n', '<h3>T&iacute;nh trong th&aacute;ng 11-2021, doanh số b&aacute;n ra của Toyota Corolla Cross đạt 3346 xe, tăng gần 1000 xe so với th&aacute;ng 10-2021. Đặc biệt l&agrave; ẵm ng&ocirc;i vua doanh số b&aacute;n chạy nhất thị trường trong th&aacute;ng 11-2021. Đặc biệt, Toyota Corolla Cross c&ograve;n cho thấy sự bứt ph&aacute; ngoạn mục về doanh số trong thời gian gần đ&acirc;y, vượt qua cả KIA Seltos về doanh số b&aacute;n cộng dồn từ đầu năm.</h3>\r\n', 0, 100, '1657442315_vn-canister-vcc8836v36-vcc8836v36-xsv-frontblue-216144557.jpg', 1105840000, 7, 1, '2023-12-18 14:19:19'),
(62, 'Haima 7X', '<h2>Haima l&agrave; thương hiệu &ocirc; t&ocirc; Trung Quốc từng x&acirc;m nhập thị trường Việt Nam c&aacute;ch đ&acirc;y hơn 10 năm trong cuộc độ bộ cũng nhiều &ldquo;đồng hương&rdquo; kh&aacute;c như MG, Chery. Tuy nhi&ecirc;n, chung số phận, Haima v&agrave; c&aacute;c h&atilde;ng xe Trung Quốc đều nhận thất bại ở Việt Nam do vướng phải định kiến.</h2>\r\n', '<p>Đến giờ, loạt thương hiệu n&agrave;y quyết định một lần nữa quay trở lại để thuyết phục người d&ugrave;ng Việt. Trong đ&oacute;,&nbsp;<strong>Haima 7X &ldquo;nổ ph&aacute;t s&uacute;ng&rdquo; đầu ti&ecirc;n của Haima với tham vọng đ&aacute;nh chiếm ph&acirc;n kh&uacute;c MPV 7 chỗ cỡ nhỏ, gi&aacute; rẻ.</strong></p>\r\n\r\n<p>Con đường ph&iacute;a trước của Haima 7X 2024 l&agrave; rất kh&oacute; khăn khi c&aacute;c đối thủ sừng sỏ c&ograve;n chờ như Mitsubishi Xpander,&nbsp;<a href=\"https://xetot.com/tin-xe/danh-gia-xe-toyota-veloz/\" title=\"Giá xe Toyota Veloz Cross 2024\">Toyota Veloz Cross</a>, Avanza Premio, Suzuki XL7, Ertiga.</p>\r\n', 0, 100, '1657444215_z3556173778725_54874919c0fa71041f7b233ae6ae4b71.jpg', 9634100000, 21, 2, '2024-01-04 14:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `star`) VALUES
(24, 11, 4),
(25, 11, 3),
(26, 11, 5),
(27, 11, 5),
(28, 11, 5),
(29, 32, 5),
(30, 21, 5),
(31, 30, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(10, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravel`;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `sbd` varchar(255) NOT NULL,
  `certificate_no` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `speaking_point` varchar(255) NOT NULL,
  `listening_point` varchar(255) NOT NULL,
  `reading_point` varchar(255) NOT NULL,
  `writting_point` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `sex`, `sbd`, `certificate_no`, `level`, `date`, `speaking_point`, `listening_point`, `reading_point`, `writting_point`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'PHẠM MINH HOÀNG\r\n', '/image/PHẠM%20MINH%20HOÀNG%20HSK4HSKK.jpg', '男', 'H41819850020000845 H82225455300014845', 'H41819800561', 'HSK四级', 'Aug 20, 2023', '65', '60', '75', '82', NULL, NULL, NULL),
(2, 'NGUYỄN TRÍ DŨNG', '/image/NGUYỄN%20TRÍ%20DŨNG%20HSK4HSKK.jpg', '男', 'H41819960020000048 H82000454000099645', 'H41819600442', 'HSK四级', 'Aug 20, 2023', '62', '70', '75', '85', NULL, NULL, NULL),
(3, 'NGUYỄN TRÍ DŨNG', '/image/NGUYỄN%20TRÍ%20DŨNG%20HSK4HSKK.jpg', '男', 'H41819960020000048 H82000454000099645', 'H41819600442', 'HSK四级', 'Aug 20, 2023', '62', '70', '75', '85', NULL, NULL, NULL),
(4, 'PHAN THỊ MỸ HÒA', '/image/PHAN%20THỊ%20MỸ%20HÒA%20HSK4.jpg', '女', 'H42010850070000032 H82004006445210087', 'H42009037222', 'HSK四级', 'Aug 20, 2023', '0', '60', '75', '82', NULL, NULL, NULL),
(5, 'VÕ NHƯ QUỲNH', '/image/VÕ%20NHƯ%20QUỲNH%20HSK4.jpg', '女', 'H42010060080000189 H82100460711602318', 'H42011047203', 'HSK四级', 'Aug 20, 2023', '0', '70', '75', '85', NULL, NULL, NULL),
(6, 'HỨA THÀNH THÂN', '/image/HỨA%20THÀNH%20THÂN%20HSK4.jpg', '男', 'H46200070009200100 H82640047712356601', 'H46200045210', 'HSK四级', 'Sep 16, 2023', '0', '50', '70', '85', NULL, NULL, NULL),
(7, 'NGUYỄN ĐĂNG HẢI', '/image/NGUYỄN%20ĐĂNG%20HẢI%20HSK3.jpg', '男', 'H31819850020000845 H82000453000081645', 'H31812069024', 'HSK三级', 'Nov 26, 2023', '0', '40', '70', '65', NULL, NULL, NULL),
(8, 'BÙI HUY THANH', '/image/BÙI%20HUY%20THANH%20HSK3.jpg', '男', 'H35500112007000441 H80012245998000141', 'H31810077025', 'HSK三级', 'Nov 26, 2023', '0', '45', '75', '80', NULL, NULL, NULL),
(9, 'NGUYỄN LƯƠNG QUÝ HÀO', '/image/NGUYỄN%20LƯƠNG%20QUÝ%20HÀO%20HSK3.jpg', '男', 'H35500451008001135 H82004110775679996', 'H31810184501', 'HSK三级', 'Nov 26, 2023', '0', '57', '62', '60', NULL, NULL, NULL),
(10, 'NGUYỄN HÙNG VĨ', '/image/NGUYỄN%20HÙNG%20VĨ%20HSK4.jpg', '男', 'H41819450001500045 H82000177105600199', 'H41879800132', 'HSK四级', 'Nov 26, 2023', '0', '60', '75', '71', NULL, NULL, NULL),
(11, 'HuỲNH THỊ THANH PHƯỢNG', '/image/HUỲNH%20THỊ%20THANH%20PHƯỢNG%20HSK4.jpg', '女', 'H41810045771000236 H82014181075811061', 'H41800450334', 'HSK四级', 'Nov 26, 2023', '0', '60', '67', '82', NULL, NULL, NULL),
(12, 'LÂM VĂN VŨ', '/image/LÂM%20VĂN%20VŨ%20HSK3.jpg', '男', 'H35500425110110002 H82640040083636001', 'H35500425000', 'HSK三级', 'Nov 26, 2023', '0', '60', '60', '55', NULL, NULL, NULL),
(13, 'TRỊNH THỊ PHƯƠNG UYÊN', '/image/TRỊNH%20THỊ%20PHƯƠNG%20UYÊN%20HSK3.jpg', '女', 'H35500400188911665 H82001450063301120', 'H35541108124', 'HSK三级', 'Nov 26, 2023', '0', '40', '68', '75', NULL, NULL, NULL),
(14, 'LÊ MINH CHÍ', '/image/LÊ%20MINH%20CHÍ%20HSK3.jpg', '男', 'H35507887100036651 H82641100008711200', 'H36001578941', 'HSK三级', 'Nov 26, 2023', '0', '80', '45', '75', NULL, NULL, NULL),
(15, 'LÊ MINH HẢI', '/image/LÊ%20MINH%20HẢI%20HSK2.jpg', '男', 'H20510000542100153', 'H26120007871', 'HSK二级', 'Nov 26, 2023', '0', '80', '70', '70', NULL, NULL, NULL),
(16, 'PHAN DƯƠNG BÍCH TUYỀN', '/image/PHAN%20DƯƠNG%20BÍCH%20TUYỀN%20HSK2.jpg', '女', 'H25401000871004501', 'H26170158000', 'HSK二级', 'Nov 26, 2023', '0', '65', '80', '0', NULL, NULL, NULL),
(17, 'ĐẶNG QUYẾT ĐẠT', '/image/ĐẶNG%20QUYẾT%20ĐẠT%20HSK4%20HSKK.jpg', '男', 'H41256500000150044 H82300246500001554', 'H41819985454', 'HSK四级', 'Nov 26, 2023', '68', '60', '75', '0', NULL, NULL, NULL),
(18, 'VƯƠNG KIM THOA', '/image/VƯƠNG%20KIM%20THOA%20HSK3.jpg', '女', 'H33500512100054011 H82120004650001441', 'H36001540015', 'HSK三级', 'Nov 26, 2023', '0', '40', '70', '80', NULL, NULL, NULL),
(19, 'NGUYỄN THỊ NGỌC ANH', '/image/NGUYỄN%20THỊ%20NGỌC%20ANH%20HSK4.jpg', '女', 'H41819450001650004 H82002000417710002', 'H48522001441', 'HSK四级', 'Nov 26, 2023', '0', '70', '75', '85', NULL, NULL, NULL),
(20, 'TĂNG MINH NHẬT', '/image/TĂNG%20MINH%20NHẬT%20HSK4.jpg', '男', 'H41981210000125222 H82632100011100251', 'H45451001540', 'HSK四级', 'Nov 26, 2023', '0', '80', '75', '45', NULL, NULL, NULL),
(21, 'NGUYỄN ĐỨC HÀ THÁI', '/image/NGUYỄN%20ĐỨC%20HÀ%20THÁI%20HSK4.jpg', '男', 'H41900010000651002 H82640012000700041', 'H45400200780', 'HSK四级', 'Nov 26, 2023', '0', '74', '59', '63', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'datawebsite', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"categories\",\"customers\",\"news\",\"orderdetails\",\"orders\",\"products\",\"rating\",\"users\"],\"table_structure[]\":[\"categories\",\"customers\",\"news\",\"orderdetails\",\"orders\",\"products\",\"rating\",\"users\"],\"table_data[]\":[\"categories\",\"customers\",\"news\",\"orderdetails\",\"orders\",\"products\",\"rating\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"datawebsite\",\"table\":\"categories\"},{\"db\":\"datawebsite\",\"table\":\"products\"},{\"db\":\"datawebsite\",\"table\":\"customers\"},{\"db\":\"datawebsite\",\"table\":\"users\"},{\"db\":\"datawebsite\",\"table\":\"orders\"},{\"db\":\"datawebsite\",\"table\":\"orderdetails\"},{\"db\":\"project\",\"table\":\"preset\"},{\"db\":\"laravel\",\"table\":\"users\"},{\"db\":\"project\",\"table\":\"user\"},{\"db\":\"datawebsite\",\"table\":\"rating\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'datawebsite', 'orderdetails', '{\"sorted_col\":\"`orderdetails`.`order_id` ASC\"}', '2024-01-06 01:23:31'),
('root', 'datawebsite', 'orders', '{\"sorted_col\":\"`orders`.`customer_id` ASC\"}', '2024-01-06 01:24:06'),
('root', 'datawebsite', 'products', '{\"sorted_col\":\"`products`.`name` ASC\"}', '2024-01-06 02:39:22'),
('root', 'laravel', 'users', '{\"sorted_col\":\"`users`.`id` ASC\"}', '2024-01-04 17:33:40');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-01-10 12:03:20', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `akt21`
--

CREATE TABLE `akt21` (
  `id` int(11) NOT NULL,
  `aktiviti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akt21`
--

INSERT INTO `akt21` (`id`, `aktiviti`) VALUES
(1, '3 Steps Interview (3 Langkah Temubual)'),
(2, '4\'s Brainstorming'),
(3, 'All Write Round Robin'),
(4, 'Anecdotal Notes (Nota Anekdot)'),
(5, 'Artscape (Langkaran)'),
(6, 'Attitude Movement (Pergerakan mengikut pendapat)'),
(7, 'Be The Expert'),
(8, 'Brainstorming (Sumbangsaran)'),
(9, 'Built The Biggest Tower (Membina menara yang terbesar)'),
(10, 'Bus Stop (Hentian Bas)'),
(11, 'Café (Kedai Kopi)'),
(12, 'Carousel (Karusel)'),
(13, 'Chain Line (Rangkaian)'),
(14, 'Chart and Share (Catat dan kongsi)'),
(15, 'Checklist (Senarai Semak)'),
(16, 'Chunking (Gabungan)'),
(17, 'Circle Time (Bulatan Masa)'),
(18, 'Classification (Klasifikasi)'),
(19, 'Cloze Procedures (Isikan tempat kosong)'),
(20, 'Collaboration (Kolaborasi)'),
(21, 'Commercial (Iklan)'),
(22, 'Compass Point (Tanda Kompas)'),
(23, 'Constructivism (Konstruktivisme)'),
(24, 'Continuous Round Robin'),
(25, 'Continuum (Penerusan)'),
(26, 'Deklamasi Sajak/Nyanyian'),
(27, 'Diamond Ranking (Susunan Berlian)'),
(28, 'Dip (Cerun/Lurah)'),
(29, 'Distansing (Jarak)'),
(30, 'Dramatisation (Drama)'),
(31, 'Drawing Posters (Melukis Poster)'),
(32, 'Encoys (Utusan)'),
(33, 'Examples (Contoh)'),
(34, 'Exit Cards (Kad keluar)'),
(35, 'Fan-N-Pick'),
(36, 'Find A Partner'),
(37, 'Free Discussion (Perbincangan Bebas)'),
(38, 'Freeze Frame (Rangka Beku)'),
(39, 'Galery Walk (Lawatan ke geleri)'),
(40, 'Gallery Walk'),
(41, 'Games (Permainan)'),
(42, 'Give One Get One'),
(43, 'Goldfish Bowl (Mangkuk ikan emas)'),
(44, 'Graphic Organiser (Pengurusan grafic)'),
(45, 'GRASPS'),
(46, 'Grassskirt'),
(47, 'Hot Seat'),
(48, 'Hot Seating (Kerusi Panas)'),
(49, 'Human Graphing (Graf Manusia)'),
(50, 'I See, I Think, I Wonder (Saya lihat, Saya fikir dan saya bertanya)'),
(51, 'IB Tree (Pokok IB)'),
(52, 'Iceberg (Bongkah ais / Aisberg)'),
(53, 'Indicator (Petunjuk)'),
(54, 'Inside Outside Circle'),
(55, 'Jigsaw Reading (Susun Suai)'),
(56, 'KWL Chart (Carta KWL)'),
(57, 'Learning Modalities (Gaya Persembahan)'),
(58, 'Learning Trios A-B-C (tiga serangkai (A-B-C)'),
(59, 'Listening Triad (Pendengaran bertiga)'),
(60, 'Make Predictions (Membuat andaian)'),
(61, 'Mind Map (Peta Minda)'),
(62, 'Mix-Pair-Share'),
(63, 'Numbered Heads Together'),
(64, 'One Two Group'),
(65, 'Parachute Building (Membina payung terjun)'),
(66, 'Party (Pesta)'),
(67, 'Pembentangan Hasil Sendiri'),
(68, 'Personal Action Plan (Pelan tindakan peribadi)'),
(69, 'Personal Learning Experiences (Pengalaman Peribadi)'),
(70, 'Peta i-Think'),
(71, 'Post It Notes (Nota tampalan)'),
(72, 'Presentations (Persembahan)'),
(73, 'Puzzle it Out (Selesaikan)'),
(74, 'Qudrat Activity (Aktiviti Berempat)'),
(75, 'Question Builder (Pembina Soalan)	 \r\n\r\n'),
(76, 'Quick Quiz (Kuiz Cepat)'),
(77, 'Quiz-Quiz Trade'),
(78, 'Radio Phone In (Radio Telefon )'),
(79, 'Rainbow Groups (Kumpulan Pelangi)'),
(80, 'Rally Table'),
(81, 'Read and highlight (baca dan tanda)'),
(82, 'Recap Group (Mengulangi / mengingat semula)'),
(83, 'Rocket writing (Penulisan pantas)'),
(84, 'Role Play'),
(85, 'Rotationg Stations (Stesyen Berputar)'),
(86, 'Round Table'),
(87, 'Rubrics (Rubrik)'),
(88, 'Self-Presentation'),
(89, 'Sharing (Berkongsi)'),
(90, 'Shout Out (laungan)'),
(91, 'Single Round Robin'),
(92, 'Six Thinking Hats (6 Topi Pemikir)'),
(93, 'Skits (Sketsa)'),
(94, 'Snow Balling (Bola Salji)'),
(95, 'Stand-N-Share'),
(96, 'Stiry Books (Buku Cerita)'),
(97, 'Stretch to Sketch (Lukis mengikut kreativiti)'),
(98, 'Survey (Tinjauan)'),
(99, 'SWOT'),
(100, 'Table Cloth (Alas Meja)'),
(101, 'Table Talkers (Perbincangan di meja)'),
(102, 'Take Off Touch Down'),
(103, 'Talk Partners (Rakan Berbual)'),
(104, 'Think - Pair - Share (Fikir - Pasang - Kongsi)'),
(105, 'Think-Pair-Share'),
(106, 'Thinking Hat'),
(107, 'Three Stray One Stay'),
(108, 'Thumb Up (Isyarat Tangan)'),
(109, 'Time capsules (Kapsul Masa)'),
(110, 'Timed Round Robin'),
(111, 'Timeline (Garisan Masa)'),
(112, 'Traffic Lights (Lampu Isyarat)'),
(113, 'TV Chat Show (Bual TV)'),
(114, 'Using Large Picture Card (Gambar / Photo besar)'),
(115, 'Video Clips (Klip Video)'),
(116, 'Webs / Spider Diagrams (Rajah Sarang Labah-labah)'),
(117, 'What Matters (Apa yang penting)'),
(118, 'Y chart (Carta Y)');

-- --------------------------------------------------------

--
-- Table structure for table `apm`
--

CREATE TABLE `apm` (
  `id` int(11) NOT NULL,
  `apm` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apm`
--

INSERT INTO `apm` (`id`, `apm`, `sub`) VALUES
(1, '教师提问问题激发学生兴趣，”你们来到学校有没有认识好朋友、好同学呀？”', '音乐'),
(2, '教师播放歌曲，学生聆听后演唱。', '音乐'),
(3, '教师使用歌曲导入。', '音乐'),
(4, '跟随老师朗读歌词。', '音乐'),
(5, '教师引导学生认识第28页的敲击乐器及示范敲击乐器的正确握法和敲击法。', '音乐'),
(6, '跟随老师朗读歌词和学习唱歌。', '音乐'),
(7, '以正确的语音朗读歌词。', '音乐'),
(8, '复习歌曲。', '音乐');

-- --------------------------------------------------------

--
-- Table structure for table `apn`
--

CREATE TABLE `apn` (
  `id` int(11) NOT NULL,
  `apn` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apn`
--

INSERT INTO `apn` (`id`, `apn`, `sub`) VALUES
(1, '教师要求学生概述今日所学。', '音乐');

-- --------------------------------------------------------

--
-- Table structure for table `aspirasi`
--

CREATE TABLE `aspirasi` (
  `id` int(11) NOT NULL,
  `aspirasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspirasi`
--

INSERT INTO `aspirasi` (`id`, `aspirasi`) VALUES
(1, '知识水平'),
(2, '领导能力'),
(3, '双语能力'),
(4, '国家认同'),
(5, '思考创新'),
(6, '伦理道德');

-- --------------------------------------------------------

--
-- Table structure for table `au`
--

CREATE TABLE `au` (
  `id` int(11) NOT NULL,
  `au` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `au`
--

INSERT INTO `au` (`id`, `au`, `sub`) VALUES
(1, '发声练习。', '音乐'),
(2, '引导学生以准确的发音和音准唱歌。', '音乐'),
(3, '在老师领导下，一面唱歌，一面跟着乐谱图标敲击乐器。', '音乐'),
(4, '老师念一念“请你跟我这样做”，学生根据节奏动一动。', '音乐'),
(5, '引导学生自创节奏。', '音乐'),
(6, '随着歌曲的旋律学唱歌。', '音乐'),
(7, '随着音乐，根据乐谱图标的节奏拍手。', '音乐'),
(8, '引导学生模仿老师拍打乐谱图标的节奏。', '音乐'),
(9, '引导学生自创节奏，然后随着音乐，拍出自创的节奏。', '音乐'),
(10, '以适当的节奏朗读歌词。', '音乐'),
(11, '以正确的音准和不同的音色，随着歌曲的旋律学唱歌。', '音乐'),
(12, '引导学生聆听和辨别大声、小声、欢呼声、歌声、笛声和敲击声。', '音乐'),
(13, '一面唱歌，一面跟着歌词做动作。', '音乐'),
(14, '一面唱歌，一面跟着拍子做动作。', '音乐'),
(15, '一面唱歌，一面玩游戏。', '音乐'),
(16, '学生根据所规定的速度演唱和敲击乐器。', '音乐'),
(17, '教师以正确的音调唱出歌曲。', '音乐'),
(18, '学生根据音乐做动作。', '音乐'),
(19, '以正确的音准唱歌。', '音乐'),
(20, '引导学生根据歌词和节拍自创动作。', '音乐'),
(21, '一面唱歌，一面做出自创动作。', '音乐'),
(22, '随着歌曲旋律，学习唱歌。', '音乐'),
(23, '一面唱歌，一面拍打身体不同的部位。', '音乐'),
(24, '引导学生辨识强音和弱音。', '音乐'),
(25, '学生听乐器所发出的声音然后写出乐器名称。', '音乐'),
(26, '教师引导学生唱《过山车》。', '音乐'),
(27, '学生根据29页乐谱图标以响板，手铃和铃鼓敲击出节奏。', '音乐'),
(28, '引导学生模仿动物的叫声。', '音乐'),
(29, '辨别动物发出强或弱的叫声。', '音乐'),
(30, '老师解说和强调力度 – 强音和弱音。', '音乐'),
(31, '习唱歌唱。', '音乐'),
(32, '模仿歌词中动物的叫声。', '音乐'),
(33, '以不同的动物叫声演唱歌曲。', '音乐'),
(34, '教师与学生讨论适合的两首歌曲，然后将学生分成两组。', '音乐'),
(35, '分配好歌曲后，学生在各自的组别里讨论如何呈现表演。', '音乐'),
(36, '各组学生再把自己组员分成三个小组，分别为歌唱组、动作组和乐器组。', '音乐'),
(37, '各组决定想用的乐器并一起以图标创作节奏。', '音乐'),
(38, '各组的小组开始以分开式练习唱歌、做动作和敲击乐器。', '音乐'),
(39, '歌唱组以正确的站姿、呼吸法和清晰的咬字练习歌唱。', '音乐'),
(40, '动作组配合歌曲设计组员们的动作。', '音乐'),
(41, '乐器组根据所设计的乐谱图标上的节奏一起练习敲击乐器。', '音乐'),
(42, '学生分组完成表演。', '音乐'),
(43, '结束后，学生检讨自己的表演及说出需要改善之处。', '音乐'),
(44, '学生说出自己是否满意自己的表演。', '音乐'),
(45, '教师歌曲后与学生讨论所听到的音乐。', '音乐'),
(46, '教师播放视频，然后与学生讨论视频的呈现方式和特点。', '音乐'),
(47, '教师解说马来传统音乐Dikir Barat和其惯用的敲击乐器。', '音乐'),
(48, '学生观赏其他视频并认出所用的乐器。', '音乐'),
(49, '学生注意唱歌时的发音和音准。', '音乐'),
(50, '跟着乐谱图标敲击乐器。', '音乐'),
(51, '学生分组各自用响板和铃鼓拍打节奏。', '音乐'),
(52, '以较慢或较快的速度演唱歌曲。', '音乐'),
(53, '随着音乐，跟着乐谱图标拍手。', '音乐'),
(54, '利用不同的节奏演唱。', '音乐'),
(55, '学生以四四拍节奏做出不同的动作来配合dikir barat歌曲《Wau Bulan》。', '音乐'),
(56, '学生坐在地板上并跟着音乐做dikir barat的基本和简单的动作。', '音乐'),
(57, '跟随老师一面拍手，一面念节奏。', '音乐'),
(58, '学生自创节奏。', '音乐'),
(59, '跟随歌曲节拍，一面唱歌，一面原地踏步。', '音乐'),
(60, '学生以自己喜欢的乐谱图标创作四四拍节奏。', '音乐'),
(61, '教师选几位学生前来，自选乐器拍打自创的节奏。', '音乐'),
(62, '随着歌曲的旋律，模仿打鼓、敲锣、吹喇叭及吹笛子的姿势做动作。', '音乐'),
(63, '学生演唱《小乐队》，并跟随歌曲的节拍，一面唱歌，一面像操步般原地踏步。', '音乐'),
(64, '学生做出各种打鼓，敲锣，吹喇叭及吹笛子的姿势。', '音乐'),
(65, '聆听物品敲打时发出的声音，并辨别其音色。', '音乐'),
(66, '选一种物品作为敲击乐器，随着乐谱图标，敲打《小乐队》的节奏。', '音乐'),
(67, '跟随老师朗读歌词和学习唱歌。', '音乐'),
(68, '学生根据音调的高低做动作。', '音乐'),
(69, '男女两组一起合唱歌曲。', '音乐'),
(70, '学生注意唱歌时的发音、节奏和音准。', '音乐'),
(71, '学生根据所规定的速度演唱歌曲。', '音乐'),
(72, '学生根据所规定的速度敲击乐器。', '音乐'),
(73, '学生根据所规定的速度一面唱歌，一面敲打乐器。', '音乐');

-- --------------------------------------------------------

--
-- Table structure for table `bbm`
--

CREATE TABLE `bbm` (
  `id` int(11) NOT NULL,
  `bbm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bbm`
--

INSERT INTO `bbm` (`id`, `bbm`) VALUES
(1, '课本，笔，尺'),
(2, '钢琴'),
(3, '键盘'),
(4, '手铃'),
(5, '笛子'),
(6, '铃鼓'),
(7, '双响木'),
(8, '三角铁'),
(9, 'Google Meet'),
(10, 'Google Classroom'),
(11, '竖笛挂图'),
(12, '五线谱挂图'),
(13, '响板'),
(14, '动作挂图'),
(15, '拍子挂图'),
(16, '音乐符号挂图'),
(17, '歌词挂图'),
(18, '音乐影片'),
(19, '光碟'),
(20, '演示文稿'),
(21, '小鼓'),
(22, '中鼓'),
(23, '大鼓'),
(24, '乐器'),
(25, '分数卡'),
(26, '秤'),
(27, '量角器'),
(28, '量尺'),
(29, '量筒'),
(30, '卷尺'),
(31, '各国货币'),
(32, '数学练习'),
(33, '课本'),
(34, '作业'),
(35, '立体模型'),
(36, '小数卡'),
(37, '数轴表'),
(38, '账单'),
(39, '发票'),
(40, '计算器'),
(41, '钱币'),
(42, '数字卡'),
(43, '算盘'),
(44, '年历'),
(45, '时钟'),
(46, '坐标图'),
(47, '三角尺'),
(48, '直尺'),
(49, '模型'),
(50, '挂图');

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `cTime` time NOT NULL,
  `cDate` date NOT NULL,
  `pDate` date DEFAULT NULL,
  `minggu` int(11) NOT NULL,
  `penggal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `calId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `periodId` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `day` int(11) NOT NULL,
  `penggal` int(11) NOT NULL,
  `minggu` int(11) NOT NULL,
  `preset` int(11) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `tajuk` varchar(255) NOT NULL,
  `kdg` varchar(255) NOT NULL,
  `cstd` varchar(255) NOT NULL,
  `op` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `apm` varchar(255) NOT NULL,
  `au` varchar(255) NOT NULL,
  `apn` varchar(255) NOT NULL,
  `emk` varchar(255) NOT NULL,
  `nilai` varchar(255) NOT NULL,
  `bbm` varchar(255) NOT NULL,
  `pemikiran` varchar(255) NOT NULL,
  `peta` varchar(255) NOT NULL,
  `pbd` varchar(255) NOT NULL,
  `tahap` varchar(255) NOT NULL,
  `akt21` varchar(255) NOT NULL,
  `p21` varchar(255) NOT NULL,
  `praujian` varchar(255) NOT NULL,
  `pascaujian` varchar(255) NOT NULL,
  `k6` varchar(255) NOT NULL,
  `aspirasi` varchar(255) NOT NULL,
  `refleksi` varchar(255) NOT NULL,
  `inputRef` varchar(255) NOT NULL,
  `tsm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cstd`
--

CREATE TABLE `cstd` (
  `id` int(11) NOT NULL,
  `cstd` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cstd`
--

INSERT INTO `cstd` (`id`, `cstd`, `sub`) VALUES
(1, '1.1.1 认识、了解和分辨高音和低音', '音乐'),
(2, '1.1.2 认识、了解和分辨强的力度和弱的力度', '音乐'),
(3, '1.1.3 认识、了解和分辨声音和乐器的音色', '音乐'),
(4, '2.1.1 以准确的发音唱歌', '音乐'),
(5, '2.1.2 以正确的音准唱歌', '音乐'),
(6, '2.1.3 跟着拍子唱歌', '音乐'),
(7, '2.2.1 跟着乐谱图标敲击乐器', '音乐'),
(8, '2.2.2 根据乐曲的拍子演奏敲击乐器', '音乐'),
(9, '2.2.3 根据乐曲的旋律模式敲击乐器', '音乐'),
(10, '2.2.4 跟着乐谱图标敲击乐器', '音乐'),
(11, '2.3.1 根据歌词做动作', '音乐'),
(12, '2.3.2 跟着歌曲的拍子做动作', '音乐'),
(13, '2.3.3 跟着速度做动作', '音乐'),
(14, '3.1.1 发出各种声音', '音乐'),
(15, '3.1.2 利用乐谱图标代替 自创简单的节奏', '音乐'),
(16, '4.1.1 确认马来西亚传统音乐 i 音乐种类 ii 实践传统音乐的社群', '音乐'),
(17, '5.1.1 策划音乐表演', '音乐'),
(18, '5.1.2 呈献音乐表演', '音乐'),
(19, '5.1.3 在音乐活动中实践道德价值', '音乐');

-- --------------------------------------------------------

--
-- Table structure for table `emk`
--

CREATE TABLE `emk` (
  `id` int(11) NOT NULL,
  `emk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emk`
--

INSERT INTO `emk` (`id`, `emk`) VALUES
(1, '语文跨课程'),
(2, '环境教育'),
(3, '道德价值'),
(4, '科学与工艺'),
(5, '爱国主义'),
(6, '思维技能'),
(7, '领导能力'),
(8, '学习如何学习'),
(9, '社交与生殖健康教育'),
(10, '反贪污'),
(11, '未来研究'),
(12, '消费者教育'),
(13, '公路安全'),
(14, '创造与革新元素'),
(15, '企业家元素'),
(16, '信息通讯技术');

-- --------------------------------------------------------

--
-- Table structure for table `kdg`
--

CREATE TABLE `kdg` (
  `id` int(11) NOT NULL,
  `kdg` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kdg`
--

INSERT INTO `kdg` (`id`, `kdg`, `sub`) VALUES
(1, '2.1 唱歌', '音乐'),
(2, '2.2 敲击乐器', '音乐'),
(3, '2.3 跟着音乐做动作', '音乐'),
(4, '3.1 音乐创作', '音乐'),
(5, '1.1 音乐元素', '音乐'),
(6, '5.1 音乐表演', '音乐'),
(7, '4.1 鉴赏音乐作品', '音乐');

-- --------------------------------------------------------

--
-- Table structure for table `kemahiran`
--

CREATE TABLE `kemahiran` (
  `id` int(11) NOT NULL,
  `kemahiran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kemahiran`
--

INSERT INTO `kemahiran` (`id`, `kemahiran`) VALUES
(1, '沟通'),
(2, '合作'),
(3, '角色'),
(4, '批判性思维'),
(5, '创意与创新'),
(6, '国籍');

-- --------------------------------------------------------

--
-- Table structure for table `kk`
--

CREATE TABLE `kk` (
  `id` int(11) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kk`
--

INSERT INTO `kk` (`id`, `kk`, `sub`) VALUES
(1, '跟着乐谱图标敲击乐器唱至少3句歌词。', '音乐'),
(2, '自创至少1种节奏。', '音乐'),
(3, '随着音乐，唱至少5句歌词。', '音乐'),
(4, '自创至少1种节奏，然后随着音乐，拍出自创的节奏。', '音乐'),
(5, '聆听和辨别至少2种声音。', '音乐'),
(6, '分辨至少2种强的力度和弱的力度。', '音乐'),
(7, '分辨至少2种强的力度和弱的力度，发出至少3种声音。', '音乐'),
(8, '分辨至少2种声音和乐器的音色。', '音乐'),
(9, '以至少2种道德价值来策划音乐表演。', '音乐'),
(10, '以至少3种道德价值来策划音乐表演。', '音乐'),
(11, '运用至少1种马来西亚传统音乐。', '音乐'),
(12, '跟着速度做至少3种动作。', '音乐'),
(13, '利用至少3个乐谱图标代替自创简单的节奏。', '音乐'),
(14, '根据歌词做出至少2种动作及发出至少2种声音。', '音乐'),
(15, '分辨至少2种声音和乐器的音色及发出至少3种声音。', '音乐'),
(16, '分辨至少3种声音和乐器的音色。', '音乐'),
(17, '根据所规定的速度敲击至少2种乐器。', '音乐'),
(18, '以2个道德价值来策划音乐表演。', '音乐'),
(19, '利用即兴物品发出至少3种声音来呈献音乐表演。', '音乐');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `nilai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `nilai`) VALUES
(1, '表演'),
(2, '问答比赛'),
(3, '创造力'),
(4, '胆量'),
(5, '听写'),
(6, '作品'),
(7, '看图讲故事'),
(8, '书写'),
(9, '学生作业'),
(10, '计划/课业'),
(11, '观察'),
(12, '唱歌与活动'),
(13, '完成故事'),
(14, '回答理解能力'),
(15, '回答理解程度'),
(16, '交谈'),
(17, '根据资料解释'),
(18, '陈述故事'),
(19, '制作图案'),
(20, '作总结'),
(21, '构造句子'),
(22, '表达意见'),
(23, '完成句子'),
(24, '发音韵文'),
(25, '口述'),
(26, '作业'),
(27, '朗读');

-- --------------------------------------------------------

--
-- Table structure for table `op`
--

CREATE TABLE `op` (
  `id` int(11) NOT NULL,
  `op` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `op`
--

INSERT INTO `op` (`id`, `op`, `sub`) VALUES
(1, '以准确的发音和音准唱歌。', '音乐'),
(2, '根据节奏动一动。', '音乐'),
(3, '模仿老师拍打乐谱图标的节奏。', '音乐'),
(4, '认识、了解和分辨强的力度和弱的力度及分辨声音和乐器的音色。', '音乐'),
(5, '认识、了解和分辨强的力度和弱的力度及跟着乐谱图标敲击乐器。', '音乐'),
(6, '认识、了解和分辨强的力度和弱的力度及正确地发出各种声音。', '音乐'),
(7, '以准确的发音和音准唱歌及认识、了解和分辨声音和乐器的音色。', '音乐'),
(8, '以准确的发音和音准唱歌及认识、了解和分辨声音和乐器的音色和强的力度和弱的力度。', '音乐'),
(9, '以道德价值来策划音乐表演。', '音乐'),
(10, '以道德价值来呈现音乐表演。', '音乐'),
(11, '确认及运用马来西亚传统音乐。', '音乐'),
(12, '跟着速度做动作。', '音乐'),
(13, '利用乐谱图标代替自创简单的节奏。', '音乐'),
(14, '根据歌词做动作及发出各种声音。', '音乐'),
(15, '认识、了解和分辨声音和乐器的音色及发出各种声音。', '音乐'),
(16, '以准确的发音和音准唱歌及做动作。', '音乐'),
(17, '根据所规定的速度敲击乐器。', '音乐'),
(18, '利用即兴物品发出各种声音来呈献音乐表演。', '音乐');

-- --------------------------------------------------------

--
-- Table structure for table `p21`
--

CREATE TABLE `p21` (
  `id` int(11) NOT NULL,
  `p21` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p21`
--

INSERT INTO `p21` (`id`, `p21`) VALUES
(1, '生活技能'),
(2, '社区学习'),
(3, '终身学习'),
(4, '道德价值观'),
(5, '高思维技能'),
(6, '分组活动'),
(7, '创造力'),
(8, '合作学习'),
(9, '小组活动'),
(10, '形成性评估'),
(11, '批判性思维'),
(12, '技能/过程'),
(13, '沟通'),
(14, '以学生为中心');

-- --------------------------------------------------------

--
-- Table structure for table `pemikiran`
--

CREATE TABLE `pemikiran` (
  `id` int(11) NOT NULL,
  `pemikiran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemikiran`
--

INSERT INTO `pemikiran` (`id`, `pemikiran`) VALUES
(1, '创造'),
(2, '评价'),
(3, '分析'),
(4, '应用'),
(5, '理解'),
(6, '知道');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `no` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `std` int(11) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `end` varchar(255) NOT NULL,
  `noStu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`no`, `userId`, `day`, `std`, `sub`, `class`, `start`, `end`, `noStu`) VALUES
(5, 1, '1', 1, '音乐', '1M', '08:00', '09:00', 30),
(6, 1, '2', 2, 'MORAL', '1M', '18:23', '18:23', 30),
(9, 1, '2', 3, '音乐', '1M', '18:35', '18:35', 30),
(10, 1, '2', 4, '音乐', '1M', '18:59', '18:59', 30),
(11, 1, '2', 1, '音乐', '1M', '19:01', '19:01', 30),
(12, 1, '0', 1, '音乐', '1M', '20:18', '20:18', 30),
(13, 1, '1', 1, '音乐', '1M', '21:27', '21:27', 30),
(14, 5, '1', 1, '华文', '12', '09:26', '21:26', 12),
(15, 5, '3', 1, 'BAHASA MELAYU', '123', '21:31', '09:31', 123),
(16, 5, '0', 1, 'BAHASA MELAYU', '213', '08:04', '08:04', 12),
(17, 5, '0', 1, 'BAHASA MELAYU', '123', '22:17', '22:17', 12);

-- --------------------------------------------------------

--
-- Table structure for table `peta`
--

CREATE TABLE `peta` (
  `id` int(11) NOT NULL,
  `peta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peta`
--

INSERT INTO `peta` (`id`, `peta`) VALUES
(1, '圆形图'),
(2, '气泡图'),
(3, '双气泡图'),
(4, '树形图'),
(5, '孤形图'),
(6, '流动图'),
(7, '多倍流动图'),
(8, '支架图');

-- --------------------------------------------------------

--
-- Table structure for table `preset`
--

CREATE TABLE `preset` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `tajuk` varchar(255) NOT NULL,
  `kdg` varchar(255) NOT NULL,
  `cstd` varchar(255) NOT NULL,
  `op` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `apm` varchar(255) NOT NULL,
  `au` varchar(255) NOT NULL,
  `apn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `preset`
--

INSERT INTO `preset` (`id`, `subject`, `tema`, `tajuk`, `kdg`, `cstd`, `op`, `kk`, `apm`, `au`, `apn`) VALUES
(1, '音乐', '单元一 我的好朋友', '好朋友，好同学', '2.1 唱歌\r\n2.2 敲击乐器', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.2.4 跟着乐谱图标敲击乐器', '以准确的发音和音准唱歌。', '跟着乐谱图标敲击乐器唱至少3句歌词。', '教师提问问题激发学生兴趣，”你们来到学校有没有认识好朋友、好同学呀？”', '发声练习。\r\n引导学生以准确的发音和音准唱歌。\r\n在老师领导下，一面唱歌，一面跟着乐谱图标敲击乐器。', '教师要求学生概述今日所学。'),
(2, '音乐', '单元一 我的好朋友', '请你跟我这样做', '2.3 跟着音乐做动作', '2.3.3 根据节奏动一动', '根据节奏动一动。', '自创至少1种节奏。', '教师播放歌曲，学生聆听后演唱。', '老师念一念“请你跟我这样做”，学生根据节奏动一动。\r\n引导学生自创节奏。', '教师要求学生概述今日所学。'),
(3, '音乐', '单元三 新年到，真快乐', '新年到', '2.1 唱歌', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '教师使用歌曲导入。', '随着歌曲的旋律学唱歌。\r\n随着音乐，根据乐谱图标的节奏拍手。', '教师要求学生概述今日所学。'),
(4, '音乐', '单元三 新年到，真快乐', '请你跟我这样拍', '3.1 音乐创作', '3.1.2 利用乐谱图标代替自创简单的节奏', '模仿老师拍打乐谱图标的节奏。', '自创至少1种节奏，然后随着音乐，拍出自创的节奏。', '教师使用歌曲导入。', '引导学生模仿老师拍打乐谱图标的节奏。\r\n引导学生自创节奏，然后随着音乐，拍出自创的节奏。', '教师要求学生概述今日所学。'),
(5, '音乐', '单元五 小小游戏', '听听', '1.1 音乐元素', '1.1.2 认识、了解和分辨强的力度和弱的力度\r\n1.1.3 认识、了解和分辨声音和乐器的音色\r\n2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌', '认识、了解和分辨强的力度和弱的力度及分辨声音和乐器的音色。', '聆听和辨别至少2种声音。', '教师使用歌曲导入。', '以适当的节奏朗读歌词。\r\n以正确的音准和不同的音色，随着歌曲的旋律学唱歌。\r\n引导学生聆听和辨别大声、小声、欢呼声、歌声、笛声和敲击声。\r\n一面唱歌，一面跟着歌词做动作。', '教师要求学生概述今日所学。'),
(6, '音乐', '单元五 小小游戏', '玩游戏', '2.1 唱歌', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '跟随老师朗读歌词。', '一面唱歌，一面跟着歌词做动作。\r\n一面唱歌，一面跟着拍子做动作。\r\n一面唱歌，一面玩游戏。', '教师要求学生概述今日所学。'),
(7, '音乐', '单元七 算一算', 'COUNTINGS FINGERS', '2.1 唱歌\r\n2.2 敲击乐器', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.1.3 跟着拍子唱歌\r\n2.2.1 跟着拍子敲打乐器', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '跟随老师朗读歌词。', '学生根据所规定的速度演唱和敲击乐器。\r\n教师以正确的音调唱出歌曲。\r\n学生根据音乐做动作。', '教师要求学生概述今日所学。'),
(8, '音乐', '单元七 算一算', '储蓄歌', '1.1 音乐元素\r\n2.2 敲击乐器', '1.1.2 认识、了解和分辨强的力度和弱的力度\r\n2.2.4 跟着乐谱图标敲击乐器', '认识、了解和分辨强的力度和弱的力度及跟着乐谱图标敲击乐器。', '分辨至少2种强的力度和弱的力度。', '跟随老师朗读歌词。', '学生根据所规定的速度演唱和敲击乐器。\r\n教师以正确的音调唱出歌曲。\r\n学生根据音乐做动作。', '教师要求学生概述今日所学。'),
(9, '音乐', '单元九 我的生活', '做早操', '2.1 唱歌\r\n2.2 敲击乐器\r\n2.3 跟着音乐做动作', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.3.1 跟着歌曲做出动作', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '教师使用歌曲导入。', '以正确的音准唱歌。\r\n引导学生根据歌词和节拍自创动作。\r\n一面唱歌，一面做出自创动作。', '教师要求学生概述今日所学。'),
(10, '音乐', '单元九 我的生活', '我的朋友在哪里', '1.1 音乐元素\r\n2.3 跟着音乐做动作\r\n3.1 音乐创作', '1.1.2 认识、了解和分辨强的力度和弱的力度\r\n2.3.2 跟着歌曲的拍子做动作\r\n3.1.1 发出各种声音', '认识、了解和分辨强的力度和弱的力度及正确地发出各种声音。', '分辨至少2种强的力度和弱的力度，发出至少3种声音。', '教师使用歌曲导入。', '随着歌曲旋律，学习唱歌。\r\n一面唱歌，一面拍打身体不同的部位。\r\n引导学生辨识强音和弱音。', '教师要求学生概述今日所学。'),
(11, '音乐', '单元九 我的生活', '过山车', '1.1 音乐元素\r\n2.1 唱歌\r\n2.2 敲击乐器', '1.1.3 认识、了解和分辨声音和乐器的音色\r\n2.1.1 以准确的发音唱歌\r\n2.2.2 根据乐曲的拍子演奏敲击乐器\r\n2.2.3 根据乐曲的旋律模式敲击乐器\r\n2.2.4 跟着乐谱图标敲击乐器', '以准确的发音和音准唱歌及认识、了解和分辨声音和乐器的音色。', '分辨至少2种声音和乐器的音色。', '教师引导学生认识第28页的敲击乐器及示范敲击乐器的正确握法和敲击法。', '学生听乐器所发出的声音然后写出乐器名称。\r\n教师引导学生唱《过山车》。\r\n学生根据29页乐谱图标以响板，手铃和铃鼓敲击出节奏。', '教师要求学生概述今日所学。'),
(12, '音乐', '单元十一 可爱的动物', '我爱动物园', '1.1 音乐元素\r\n2.1 唱歌\r\n3.1 音乐创作', '1.1.2 认识、了解和分辨强的力度和弱的力度\r\n1.1.3 认识、了解和分辨声音和乐器的音色\r\n2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n3.1.1 发出各种声音', '以准确的发音和音准唱歌及认识、了解和分辨声音和乐器的音色。', '分辨至少2种声音和乐器的音色。', '跟随老师朗读歌词和学习唱歌。', '引导学生模仿动物的叫声。\r\n辨别动物发出强或弱的叫声。\r\n老师解说和强调力度 – 强音和弱音。', '教师要求学生概述今日所学。'),
(13, '音乐', '单元十一 可爱的动物', 'BUNYI BINATANG', '2.1 唱歌\r\n3.1 音乐创作', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n3.1.1 发出各种声音', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '以正确的语音朗读歌词。', '习唱歌唱。\r\n模仿歌词中动物的叫声。\r\n以不同的动物叫声演唱歌曲。', '教师要求学生概述今日所学。'),
(14, '音乐', '5.0 音乐艺术课业（一）', '教师与学生根据1-11课题内容策划与安排艺术课业', '5.1 音乐表演', '5.1.1 策划音乐表演\r\n5.1.3 在音乐活动中实践道德价值', '以道德价值来策划音乐表演。', '以至少2种道德价值来策划音乐表演。', '教师使用歌曲导入。', '教师与学生讨论适合的两首歌曲，然后将学生分成两组。\r\n分配好歌曲后，学生在各自的组别里讨论如何呈现表演。\r\n各组学生再把自己组员分成三个小组，分别为歌唱组、动作组和乐器组。\r\n各组决定想用的乐器并一起以图标创作节奏。', '教师要求学生概述今日所学。'),
(15, '音乐', '5.0 音乐艺术课业（一）', '教师与学生根据1-11课题内容策划与安排艺术课业', '5.1 音乐表演', '5.1.1 策划音乐表演\r\n5.1.3 在音乐活动中实践道德价值', '以道德价值来策划音乐表演。', '以至少3种道德价值来策划音乐表演。', '教师使用歌曲导入。', '各组的小组开始以分开式练习唱歌、做动作和敲击乐器。\r\n歌唱组以正确的站姿、呼吸法和清晰的咬字练习歌唱。\r\n动作组配合歌曲设计组员们的动作。\r\n乐器组根据所设计的乐谱图标上的节奏一起练习敲击乐器。', '教师要求学生概述今日所学。'),
(16, '音乐', '5.0 音乐艺术课业（一）', '教师与学生根据1-11课题内容策划与安排艺术课业', '5.1 音乐表演', '5.1.2 呈献音乐表演\r\n5.1.3 在音乐活动中实践道德价值', '以道德价值来呈现音乐表演。', '以至少2种道德价值来策划音乐表演。', '教师使用歌曲导入。', '学生分组完成表演。\r\n结束后，学生检讨自己的表演及说出需要改善之处。\r\n学生说出自己是否满意自己的表演。', '教师要求学生概述今日所学。'),
(17, '音乐', '单元十三 传统音乐', '音乐鉴赏', '4.1 鉴赏音乐作品', '4.1.1 确认马来西亚传统音乐 i 音乐种类 ii 实践传统音乐的社群', '确认及运用马来西亚传统音乐。', '运用至少1种马来西亚传统音乐。', '教师使用歌曲导入。', '教师歌曲后与学生讨论所听到的音乐。\r\n教师播放视频，然后与学生讨论视频的呈现方式和特点。\r\n教师解说马来传统音乐Dikir Barat和其惯用的敲击乐器。\r\n学生观赏其他视频并认出所用的乐器。', '教师要求学生概述今日所学。'),
(18, '音乐', '单元十五 我的风筝', '放风筝', '2.1 唱歌\r\n2.2 敲击乐器', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.2.1 跟着乐谱图标敲击乐器', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '跟随老师朗读歌词和学习唱歌。', '学生注意唱歌时的发音和音准。\r\n跟着乐谱图标敲击乐器。\r\n学生分组各自用响板和铃鼓拍打节奏。', '教师要求学生概述今日所学。'),
(19, '音乐', '单元十五 我的风筝', 'WAU BULAN', '2.1 唱歌\r\n2.2 敲击乐器', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.1.3 跟着拍子唱歌\r\n2.2.4 跟着乐谱图标敲击乐器', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '跟随老师朗读歌词。', '以较慢或较快的速度演唱歌曲。\r\n随着音乐，跟着乐谱图标拍手。', '教师要求学生概述今日所学。'),
(20, '音乐', '单元十五 我的风筝', 'WAU BULAN', '2.3 跟着音乐做动作', '2.3.3 跟着速度做动作', '跟着速度做动作', '跟着速度做至少3种动作', '复习歌曲。', '利用不同的节奏演唱。\r\n学生以四四拍节奏做出不同的动作来配合dikir barat歌曲《Wau Bulan》。\r\n学生坐在地板上并跟着音乐做dikir barat的基本和简单的动作。', '教师要求学生概述今日所学。'),
(21, '音乐', '单元十七 小小创作家', '-', '2.2 敲击乐器\r\n3.1 音乐创作\r\n', '2.2.4 跟着乐谱图标敲击乐器\r\n3.1.2 利用乐谱图标代替自创简单的节奏', '利用乐谱图标代替自创简单的节奏', '利用至少3个乐谱图标代替自创简单的节奏', '教师使用歌曲导入。', '跟随老师一面拍手，一面念节奏。\r\n跟着乐谱图标敲击乐器。\r\n学生自创节奏。', '教师要求学生概述今日所学。'),
(22, '音乐', '单元十七 小小创作家', '创作节奏真有趣', '2.2 敲击乐器\r\n3.1 音乐创作', '2.2.4 跟着乐谱图标敲击乐器\r\n3.1.2 利用乐谱图标代替自创简单的节奏', '利用乐谱图标代替自创简单的节奏', '利用至少3个乐谱图标代替自创简单的节奏', '教师使用歌曲导入。', '跟随老师一面拍手，一面念节奏。\r\n跟着乐谱图标敲击乐器。\r\n学生自创节奏。', '教师要求学生概述今日所学。'),
(23, '音乐', '单元十九 小乐队', '小乐队', '2.1 唱歌\r\n2.2 敲击乐器', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.2.4 跟着乐谱图标敲击乐器\r\n', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '跟随老师朗读歌词和学习唱歌。', '跟随歌曲节拍，一面唱歌，一面原地踏步。\r\n学生以自己喜欢的乐谱图标创作四四拍节奏。\r\n教师选几位学生前来，自选乐器拍打自创的节奏。', '教师要求学生概述今日所学。'),
(24, '音乐', '单元十九 小乐队', '小乐队', '2.2 敲击乐器\r\n2.3 跟着音乐做动作\r\n3.1 音乐创作\r\n\r\n', '2.2.4 跟着乐谱图标敲击乐器\r\n2.3.1 根据歌词做动作\r\n3.1.1 发出各种声音', '根据歌词做动作及发出各种声音', '根据歌词做出至少2种动作及发出至少2种声音', '复习歌曲。', '随着歌曲的旋律，模仿打鼓、敲锣、吹喇叭及吹笛子的姿势做动作。\r\n学生演唱《小乐队》，并跟随歌曲的节拍，一面唱歌，一面像操步般原地踏步。\r\n学生做出各种打鼓，敲锣，吹喇叭及吹笛子的姿势。', '教师要求学生概述今日所学。'),
(25, '音乐', '单元十九 小乐队', '小乐队', '1.1 音乐元素\r\n2.2 敲击乐器\r\n3.1 音乐创作', '1.1.3 认识、了解和分辨声音和乐器的音色\r\n2.2.4 跟着乐谱图标敲击乐器\r\n3.1.1 发出各种声音。', '认识、了解和分辨声音和乐器的音色及发出各种声音。', '分辨至少2种声音和乐器的音色及发出至少3种声音。', '教师使用歌曲导入。', '聆听物品敲打时发出的声音，并辨别其音色。\r\n选一种物品作为敲击乐器，随着乐谱图标，敲打《小乐队》的节奏。', '教师要求学生概述今日所学。'),
(26, '音乐', '单元十九 小乐队', '过山车', '1.1 音乐元素\r\n2.1 唱歌\r\n2.3 跟着音乐做动作', '1.1.1 认识、了解和分辨高音和低音\r\n2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.3.1 根据歌词做动作', '以准确的发音和音准唱歌及做动作。', '随着音乐，唱至少5句歌词。', '教师使用歌曲导入。', '跟随老师朗读歌词和学习唱歌。\r\n学生根据音调的高低做动作。', '教师要求学生概述今日所学。'),
(27, '音乐', '单元二十一 我的家庭', '我的家', '1.1 音乐元素\r\n2.1 唱歌', '1.1.3 认识、了解和分辨声音和乐器的音色\r\n2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌', '以准确的发音和音准唱歌及认识、了解和分辨声音和乐器的音色。', '分辨至少2种声音和乐器的音色。', '教师使用歌曲导入。', '跟随老师朗读歌词和学习唱歌。\r\n男女两组一起合唱歌曲。', '教师要求学生概述今日所学。'),
(28, '音乐', '单元二十一 我的家庭', '我的家', '1.1 音乐元素\r\n2.1 唱歌', '1.1.3 认识、了解和分辨声音和乐器的音色\r\n2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌', '以准确的发音和音准唱歌及认识、了解和分辨声音和乐器的音色。', '分辨至少3种声音和乐器的音色。', '教师使用歌曲导入。', '跟随老师朗读歌词和学习唱歌。\r\n男女两组一起合唱歌曲。', '教师要求学生概述今日所学。'),
(29, '音乐', '单元二十一 我的家庭', '好爸妈', '2.1 唱歌', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '教师使用歌曲导入。', '跟随老师朗读歌词和学习唱歌。\r\n学生注意唱歌时的发音、节奏和音准。', '教师要求学生概述今日所学。'),
(30, '音乐', '单元二十一 我的家庭', '好爸妈', '2.1 唱歌', '2.1.1 以准确的发音唱歌\r\n2.1.2 以正确的音准唱歌\r\n2.1.3 跟着拍子唱歌', '以准确的发音和音准唱歌。', '随着音乐，唱至少5句歌词。', '复习歌曲。', '学生注意唱歌时的发音、节奏和音准。\r\n学生根据所规定的速度演唱歌曲。', '教师要求学生概述今日所学。'),
(31, '音乐', '单元二十一 我的家庭', '好爸妈', '2.2 敲击乐器', '2.2.1 跟着速度敲打乐器\r\n2.2.4 跟着乐谱图标敲击乐器', '根据所规定的速度敲击乐器。', '根据所规定的速度敲击至少2种乐器。', '复习歌曲。', '学生根据所规定的速度敲击乐器。\r\n学生根据所规定的速度一面唱歌，一面敲打乐器。', '教师要求学生概述今日所学。'),
(32, '音乐', '5.0 音乐艺术课业（二）', '教师与学生根据课题内容策划与安排艺术课业', '5.1 音乐表演', '5.1.1 策划音乐表演\r\n5.1.3 在音乐活动中实践道德价值\r\n', '以道德价值来策划音乐表演。', '以2个道德价值来策划音乐表演。', '教师使用歌曲导入。', '教师与学生讨论适合的两首歌曲，然后将学生分成两组。\r\n分配好歌曲后，学生在各自的组别里讨论如何呈现表演。\r\n各组学生再把自己组员分成三个小组，分别为歌唱组、动作组和乐器组。\r\n各组决定想用的乐器并一起以图标创作节奏。', '教师要求学生概述今日所学。'),
(33, '音乐', '5.0 音乐艺术课业（二）', '教师与学生根据课题内容策划与安排艺术课业 歌曲：各组可选任何一首单元十二至单元二十一的歌曲', '5.1 音乐表演\r\n3.1 音乐创作', '5.1.2 呈献音乐表演\r\n5.1.3 在音乐活动中实践道德价值\r\n3.1.1 利用即兴物品发出各种声音', '利用即兴物品发出各种声音来呈献音乐表演。', '利用即兴物品发出至少3种声音来呈献音乐表演。', '教师使用歌曲导入。', '学生分组完成表演。\r\n结束后，学生检讨自己的表演及说出需要改善之处。\r\n学生说出自己是否满意自己的表演。', '教师要求学生概述今日所学。');

-- --------------------------------------------------------

--
-- Table structure for table `refleksi`
--

CREATE TABLE `refleksi` (
  `id` int(11) NOT NULL,
  `refleksi` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refleksi`
--

INSERT INTO `refleksi` (`id`, `refleksi`, `sub`, `input`) VALUES
(1, '__位学生能够掌握技能，__位学生课后跟进。', '音乐', 2),
(2, '__位学生能够掌今日所学。', '音乐', 1),
(3, '__位学生能够掌握技能。', '音乐', 1),
(4, '__位学生达致教学目标。', '音乐', 1),
(5, '__位学生能够掌握技能，__位学生课后跟进，__位学生缺席。', '音乐', 3),
(6, '__位学生能掌握技能，__位学生还需要教师的辅导。', '音乐', 2),
(7, '__位学生能够掌握技能，__位学生课后跟进，并进行课后辅导。', '音乐', 2),
(8, '__位学生能够掌握技能，__位学生缺席。', '音乐', 2),
(9, '__位学生能够掌握技能，__位学生课后跟进。__位学生已经进行课堂评估。', '音乐', 3),
(10, '大部分学生达标。', '音乐', 0),
(11, '__位学生能够掌今日所学，__位学生还需要教师的辅导，__位学生缺席。', '音乐', 3),
(12, '辅导组：__位学生能够在老师引导下掌握技能，__位同学课后跟进，并进行课后辅导。巩固组：__位学生能够掌握技能，__位同学课后跟进，并进行课后辅导。增广组：__位学生能够掌握技能，__位同学课后跟进，并进行课后辅导。', '音乐', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tahap`
--

CREATE TABLE `tahap` (
  `id` int(11) NOT NULL,
  `tahap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahap`
--

INSERT INTO `tahap` (`id`, `tahap`) VALUES
(1, 'TP1'),
(2, 'TP2'),
(3, 'TP3'),
(4, 'TP4'),
(5, 'TP5'),
(6, 'TP6');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id`, `type`) VALUES
(1, '表演'),
(2, '考卷'),
(3, '线下练习'),
(4, '视频、录影'),
(5, '线上练习: Quizizz'),
(6, '线上练习: Google Form'),
(7, '游戏'),
(8, '线上练习'),
(9, '课业'),
(10, '阅读'),
(11, '写作'),
(12, '回答问题');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hp` varchar(255) NOT NULL,
  `credit` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `hp`, `credit`, `status`) VALUES
(1, 'aaa@gmail.com', 'aaa', '*A02AA727CF2E8C5E6F07A382910C4028D65A053A', '1234567890', 2, 0),
(2, 'bbb@gmail.com', 'bbb', '*8BE34F24D29E7B61EE00E4D5AADAE5CBC713D120', '0987654321', 0, 1),
(3, 'sd@gmail.com', '21321', '*6BB4837EB74329105EE4568DDA7DC67ED2CA2AD9', '321321', 0, 0),
(4, 'aa@gmail.com', 'uesr', '*97E7471D816A37E38510728AEA47440F9C6E2585', '123213', 2, 1),
(5, 'caa@gmail.com', 'uesr', '*97E7471D816A37E38510728AEA47440F9C6E2585', '123213', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akt21`
--
ALTER TABLE `akt21`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apm`
--
ALTER TABLE `apm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apn`
--
ALTER TABLE `apn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aspirasi`
--
ALTER TABLE `aspirasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `au`
--
ALTER TABLE `au`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bbm`
--
ALTER TABLE `bbm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cstd`
--
ALTER TABLE `cstd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emk`
--
ALTER TABLE `emk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kdg`
--
ALTER TABLE `kdg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kemahiran`
--
ALTER TABLE `kemahiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kk`
--
ALTER TABLE `kk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `op`
--
ALTER TABLE `op`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p21`
--
ALTER TABLE `p21`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemikiran`
--
ALTER TABLE `pemikiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `peta`
--
ALTER TABLE `peta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preset`
--
ALTER TABLE `preset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refleksi`
--
ALTER TABLE `refleksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahap`
--
ALTER TABLE `tahap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akt21`
--
ALTER TABLE `akt21`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `apm`
--
ALTER TABLE `apm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `apn`
--
ALTER TABLE `apn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `aspirasi`
--
ALTER TABLE `aspirasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `au`
--
ALTER TABLE `au`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `bbm`
--
ALTER TABLE `bbm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cstd`
--
ALTER TABLE `cstd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `emk`
--
ALTER TABLE `emk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kdg`
--
ALTER TABLE `kdg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kemahiran`
--
ALTER TABLE `kemahiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kk`
--
ALTER TABLE `kk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `op`
--
ALTER TABLE `op`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `p21`
--
ALTER TABLE `p21`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pemikiran`
--
ALTER TABLE `pemikiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `peta`
--
ALTER TABLE `peta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `refleksi`
--
ALTER TABLE `refleksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tahap`
--
ALTER TABLE `tahap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `thegioididong`
--
CREATE DATABASE IF NOT EXISTS `thegioididong` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `thegioididong`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first` varchar(255) NOT NULL,
  `last` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first`, `last`, `email`, `phone`, `password`, `sex`, `img`, `create_at`) VALUES
(1, 'Nguyễn Thị Lan Hương', '', 'lanhuong@gmail.com', 948561668, '1234567', 1, 'linh.jpg', '2020-05-15 18:58:26'),
(2, 'Nguyễn Thu Trang', 'Linh', 'hung0913003358@gmail.com', 948561668, '123456', 1, NULL, '2020-05-15 19:01:16'),
(3, 'Nguyễn  Thu', 'Trang', 'thutrang@gmail.com', 948561668, '123456', 0, '', '2020-05-15 19:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `home` int(11) NOT NULL DEFAULT 1,
  `click` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `category`, `img`, `home`, `click`, `create_at`) VALUES
(1, 'Iphone', 'phone', 'iPhone-(Apple)42-b_16.jpg', 1, 0, '2020-05-21 00:15:18'),
(2, 'Samsung', 'phone', 'Samsung42-b_25.jpg', 1, 0, '2020-05-13 04:20:30'),
(3, 'OPPO', 'phone', 'OPPO42-b_9.png', 1, 0, '2020-05-13 04:20:49'),
(4, 'Xiaomi', 'phone', 'Xiaomi42-b_45.jpg', 1, 0, '2020-05-13 04:21:06'),
(5, 'Vivo', 'phone', 'Vivo42-b_50.jpg', 1, 0, '2020-05-13 04:21:25'),
(6, 'Realme', 'phone', 'Realme42-b_37.png', 1, 0, '2020-05-13 04:21:36'),
(7, 'VSMart', 'phone', 'Vsmart42-b_40.png', 1, 0, '2020-05-13 04:21:47'),
(8, 'NOKIA', 'phone', 'Nokia42-b_21.jpg', 1, 0, '2020-05-13 04:21:59'),
(9, 'HUAWEI', 'phone', 'Huawei42-b_30.jpg', 1, 0, '2020-05-13 04:22:08'),
(10, 'Mobel', 'phone', 'Mobell42-b_19.jpg', 1, 0, '2020-05-13 04:22:19'),
(11, 'itel', 'phone', 'Itel42-b_54.jpg', 1, 0, '2020-05-13 04:22:30'),
(12, 'coolpad', 'phone', 'Coolpad42-b_33.png', 1, 0, '2020-05-13 04:22:43'),
(13, 'Blackberry', 'phone', 'BlackBerry42-b_38.png', 1, 0, '2020-05-13 04:22:55'),
(14, 'Masstel', 'phone', 'Masstel42-b_0.png', 1, 0, '2020-05-13 04:23:05'),
(16, 'Samsung', 'tablet', 'Samsung522-b_30.jpg', 1, 0, '2020-05-15 00:45:17'),
(17, 'HUAWEI', 'tablet', 'Huawei522-b_35.jpg', 1, 0, '2020-05-15 00:45:34'),
(18, 'LENOVO', 'tablet', 'Lenovo522-b_29.jpg', 1, 0, '2020-05-15 00:45:49'),
(19, 'Masstel', 'tablet', 'Masstel522-b_35.png', 1, 0, '2020-05-15 00:48:32'),
(20, 'Mobel', 'tablet', 'Mobell522-b_30.jpg', 1, 0, '2020-05-15 00:48:42'),
(21, 'Macbook', 'laptop', 'Macbook44-b_41.png', 1, 0, '2020-05-15 00:49:53'),
(22, 'ASUS', 'laptop', 'assus.png', 1, 0, '2020-05-15 00:50:10'),
(23, 'HP', 'laptop', 'hp.png', 1, 0, '2020-05-15 00:50:24'),
(24, 'Accer', 'laptop', 'accer.png', 1, 0, '2020-05-15 00:50:44'),
(25, 'LENOVO', 'laptop', 'Lenovo522-b_29.jpg', 1, 0, '2020-05-15 00:51:04'),
(31, 'DELL', 'laptop', '1200px-Dell_logo.svg.png', 1, 0, '2020-05-21 00:05:33'),
(32, 'Iphone', 'phone', 'iPhone-(Apple)42-b_16.jpg', 1, 0, '2020-05-21 00:11:54'),
(34, 'iPad', 'tablet', 'iPad-(Apple)522-b_28.jpg', 1, 0, '2020-05-21 00:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `responseTo` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `product_id`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'Hùng Nguyễn', 136, '', 'Sản phẩm rất tuyệt vời', '2020-05-22 09:02:06'),
(2, 'Kỳ  Phương Anh ', 136, '', 'Chào A/C, Mình muốn hỏi Laptop Acer Nitro AN515 43  có màu đen k ạ ? Mình ở hà nội !\n', '2020-05-22 10:45:30'),
(3, 'Kỳ  Phương Anh ', 136, '', 'e 16/9/2000 đã đủ tuổi trả góp chưa ạ?', '2020-05-22 10:54:24'),
(4, 'Kỳ  Phương Anh ', 136, '', '6tr thì khung kim loại mặt lưng kính, mà 7tr khung nhựa mặt lưng kính,ko hiểu nổi trong khi cùng cấu hình, cùng giống nhau hết chỉ khác camera, haizz....', '2020-05-22 10:55:27'),
(10, 'Kỳ  Phương Anh ', 136, 'Kỳ  Phương Anh ', 'Có bạn nhé\n', '2020-05-22 16:36:43'),
(13, 'Nguyễn Hùng', 134, '', 'Sao đắt vậy\n', '2020-05-22 21:02:18'),
(14, 'Kỳ  Phương Anh ', 134, 'Nguyễn Hùng', 'Sao bạn lại nói nó đắt\n', '2020-05-22 21:07:22'),
(15, 'Kỳ  Phương Anh ', 134, 'Nguyễn Hùng', 'Kỳ quá hihi', '2020-05-22 21:20:47'),
(16, 'Kỳ  Phương Anh ', 134, 'Nguyễn Hùng', 'kk', '2020-05-22 21:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `commentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dislikes`
--

INSERT INTO `dislikes` (`id`, `user`, `commentId`) VALUES
(43, 'Kỳ  Phương Anh ', 4),
(76, 'Kỳ  Phương Anh ', 1),
(83, 'soda gamer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `commentId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user`, `commentId`) VALUES
(40, 'Kỳ  Phương Anh ', 3),
(85, 'soda gamer', 1),
(87, 'soda gamer', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `content` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `click` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `pay` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `sale`, `number`, `content`, `img`, `click`, `views`, `pay`, `create_at`) VALUES
(2, 'iPhone 11 64GB', 'Iphone-phone', 21990000, 300000, 20, '      Thông số kỹ thuật <br>\r\nMàn hình:	IPS LCD, 6.1\", Liquid Retina<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3110 mAh, có sạc nhanh', 'iphone-11-red-600x600.jpg', 1, 0, 0, '2020-05-13 18:54:55'),
(3, 'iPhone 11 Pro Max 64GB', 'Iphone-phone', 33990000, 0, 20, '      Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.5\", Super Retina XDR<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	3 camera 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3969 mAh, có sạc nhanh', 'iphone-11-256gb-black-600x600.jpg', 5, 1, 0, '2020-05-14 07:32:36'),
(4, 'iPhone 11 Pro Max 256GB', 'Iphone-phone', 37990000, 0, 20, '     Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.5\", Super Retina XDR<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	3 camera 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3969 mAh, có sạc nhanh', 'iphone-11-256gb-white-600x600.jpg', 4, 0, 0, '2020-05-14 07:34:55'),
(5, 'iPhone 11 Pro 256GB', 'Iphone-phone', 34990000, 800000, 20, '    Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 5.8\", Super Retina XDR<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	3 camera 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3046 mAh, có sạc nhanh', 'iphone-11-pro-256gb-black-600x600.jpg', 3, 0, 0, '2020-05-14 07:37:29'),
(6, 'iPhone 11 Pro Max 64GB', 'Iphone-phone', 33990000, 0, 20, '   Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.5\", Super Retina XDR<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	3 camera 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3969 mAh, có sạc nhanh', 'iphone-11-pro-max-black-400x460.png', 0, 0, 0, '2020-05-14 07:40:26'),
(7, 'iPhone Xs Max 256GB', 'Iphone-phone', 33990000, 0, 20, '  Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.5\", Super Retina<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A12 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3174 mAh, có sạc nhanh<br>', 'iphone-xs-max-256gb-white-600x600.jpg', 0, 0, 0, '2020-05-14 07:41:45'),
(8, 'iPhone 11 Pro 64GB', 'Iphone-phone', 30990000, 800000, 20, '  Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 5.8\", Super Retina XDR<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	3 camera 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3046 mAh, có sạc nhanh<br>', 'iphone-11-pro-black-400x460.png', 2, 0, 0, '2020-05-14 07:43:46'),
(9, 'iPhone Xs Max 64GB', 'Iphone-phone', 27990000, 2000000, 20, '  Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.5\", Super Retina<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A12 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3174 mAh, có sạc nhanh<br>', 'iphone-xs-max-gold-600x600.jpg', 2, 0, 0, '2020-05-14 07:57:41'),
(10, 'iPhone 11 256GB', 'Iphone-phone', 26990000, 300000, 20, '    Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.1\", Liquid Retina<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3110 mAh, có sạc nhanh<br>', 'iphone-11-256gb-white-600x600.jpg', 1, 0, 0, '2020-05-14 07:58:49'),
(11, 'iPhone Xs 256GB', 'Iphone-phone', 24990000, 1000000, 20, '  Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 5.8\", Super Retina<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A12 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2658 mAh, có sạc nhanh<br>', 'iphone-xs-256gb-white-600x600.jpg', 1, 0, 0, '2020-05-14 07:59:54'),
(12, 'iPhone 11 128GB', 'Iphone-phone', 23990000, 0, 20, '  Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.1\", Liquid Retina<br>\r\nHệ điều hành:	iOS 13<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	12 MP<br>\r\nCPU:	Apple A13 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3110 mAh, có sạc nhanh<br>', 'iphone-11-128gb-green-600x600.jpg', 0, 0, 0, '2020-05-14 08:00:48'),
(13, 'iPhone Xs 64GB', 'Iphone-phone', 20990000, 1000000, 20, '  Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 5.8\", Super Retina<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A12 Bionic 6 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2658 mAh, có sạc nhanh<br>', 'iphone-xs-white-600x600-600x600.jpg', 1, 0, 0, '2020-05-14 08:01:46'),
(14, 'iPhone 8 Plus 64GB', 'Iphone-phone', 15990000, 1000000, 20, '   Thông số kỹ thuật<br>\r\nMàn hình:	LED-backlit IPS LCD, 5.5\", Retina HD<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A11 Bionic 6 nhân<br>\r\nRAM:	3 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ SIM:<br>\r\n1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2691 mAh, có sạc nhanh<br>', 'iphone-8-plus-hh-600x600-600x600.jpg', 1, 1, 0, '2020-05-14 08:02:42'),
(15, 'iPhone 7 Plus 32GB', 'Iphone-phone', 12990000, 0, 20, '   Thông số kỹ thuật<br>\r\nMàn hình:	LED-backlit IPS LCD, 5.5\", Retina HD<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A10 Fusion 4 nhân<br>\r\nRAM:	3 GB<br>\r\nBộ nhớ trong:	32 GB<br>\r\nThẻ SIM:<br>\r\n1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2900 mAh<br>', 'iphone-7-plus-32gb-gold-600x600-600x600.jpg', 0, 0, 0, '2020-05-14 08:03:22'),
(16, ' iPhone 7 32GB', 'Iphone-phone', 9999000, 0, 20, '  Thông số kỹ thuật<br>\r\nMàn hình:	LED-backlit IPS LCD, 4.7\", Retina HD<br>\r\nHệ điều hành:	iOS 12<br>\r\nCamera sau:	12 MP<br>\r\nCamera trước:	7 MP<br>\r\nCPU:	Apple A10 Fusion 4 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	32 GB<br>\r\nThẻ SIM:<br>\r\n1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	1960 mAh<br>', 'iphone-7-gold-600x600.jpg', 0, 0, 0, '2020-05-14 08:03:59'),
(22, 'Điện thoại Samsung Galaxy S10 Lite', 'Samsung-phone', 14990000, 1000000, 14, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.7\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 12 MP, 5 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Snapdragon 855 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 TB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'samsung-galaxy-s10-lite-blue-thumb-600x600.jpg', 0, 0, 0, '2020-05-21 08:05:03'),
(23, 'Điện thoại Samsung Galaxy A31', 'Samsung-phone', 6490000, 0, 10, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.4\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 5 MP, 5 MP<br>\r\nCamera trước:	20 MP<br>\r\nCPU:	MediaTek MT6768 8 nhân (Helio P65)<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh, có sạc nhanh<br>', 'samsung-galaxy-a31-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:06:18'),
(24, 'Điện thoại Samsung Galaxy Fold', 'Samsung-phone', 50000000, 0, 14, 'Thông số kỹ thuật<br>\r\nMàn hình:Chính: Dynamic AMOLED, phụ: Super AMOLED, Chính 7.3\" & Phụ 4.6\", <br> Quad HD (2K)<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP<br>\r\nCamera trước:	Trong: 10 MP, 8 MP; Ngoài: 10 MP<br>\r\nCPU:	Snapdragon 855 8 nhân<br>\r\nRAM:	12 GB<br>\r\nBộ nhớ trong:	512 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4380 mAh, có sạc nhanh<br>', 'samsung-galaxy-fold-black-400x460.png', 0, 0, 0, '2020-05-21 08:07:38'),
(25, 'Điện thoại Samsung Galaxy Z Flip', 'Samsung-phone', 36000000, 0, 14, 'Thông số kỹ thuật<br>\r\nMàn hình:	Chính: Dynamic AMOLED, phụ: Super AMOLED, 6.7\", Quad HD (2K)<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	10 MP<br>\r\nCPU:	Snapdragon 855+ 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n1 eSIM & 1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3300 mAh, có sạc nhanh<br>', 'samsung-galaxy-z-flip-chitiet-2-788x544.png', 0, 0, 0, '2020-05-21 08:08:46'),
(26, 'Điện thoại Samsung Galaxy S20 Ultra', 'Samsung-phone', 29990000, 2500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Dynamic AMOLED 2X, 6.9\", Quad HD+ (2K+)<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 108 MP & phụ 48 MP, 12 MP, TOF 3D<br>\r\nCamera trước:	40 MP<br>\r\nCPU:	Exynos 990 8 nhân<br>\r\nRAM:	12 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 TB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh, có sạc nhanh<br>', 'samsung-galaxy-s20-ultra-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 08:10:57'),
(27, 'Điện thoại Samsung Galaxy Note 10+', 'Samsung-phone', 26990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Dynamic AMOLED, 6.8\", Quad HD+ (2K+)<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D<br>\r\nCamera trước:	10 MP<br>\r\nCPU:	Exynos 9825 8 nhân<br>\r\nRAM:	12 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 TB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4300 mAh, có sạc nhanh<br>', 'samsung-galaxy-note-10-plus-blue-400x460.png', 0, 0, 0, '2020-05-21 08:12:04'),
(28, 'Điện thoại Samsung Galaxy S20', 'Samsung-phone', 21490000, 2000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Dynamic AMOLED 2X, 6.2\", Quad HD+ (2K+)<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 12 MP & Phụ 64 MP, 12 MP<br>\r\nCamera trước:	10 MP<br>\r\nCPU:	Exynos 990 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 1 TB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh, có sạc nhanh<br>', 'samsung-galaxy-s20-400x460-hong-400x460.png', 1, 0, 0, '2020-05-21 08:13:41'),
(29, 'Điện thoại Samsung Galaxy S10+', 'Samsung-phone', 19990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Dynamic AMOLED, 6.4\", Quad HD+ (2K+)<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 16 MP<br>\r\nCamera trước:	Chính 10 MP & Phụ 8 MP<br>\r\nCPU:	Exynos 9820 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4100 mAh, có sạc nhanh<br>', 'samsung-galaxy-s10-plus-white-600x600.jpg', 0, 0, 0, '2020-05-21 08:14:39'),
(30, 'Điện thoại Samsung Galaxy A80', 'Samsung-phone', 14990000, 0, 14, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.7\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, TOF 3D<br>\r\nCamera trước:	Chính 48 MP & Phụ 8 MP, TOF 3D<br>\r\nCPU:	Snapdragon 730 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3700 mAh, có sạc nhanh<br>', 'samsung-galaxy-a80-gold-400x460.png', 0, 0, 0, '2020-05-21 08:15:44'),
(31, 'Điện thoại Samsung Galaxy Note 10 Lite', 'Samsung-phone', 13990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.7\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP, 12 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Exynos 9810 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'samsung-galaxy-note-10-lite-chi-tiet-1-400x460.png', 0, 0, 0, '2020-05-21 08:16:42'),
(32, 'Điện thoại Samsung Galaxy A71', 'Samsung-phone', 10490000, 700000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.7\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 64 MP & Phụ 12 MP, 5 MP, 5 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Snapdragon 730 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'samsung-galaxy-a71-blue-400x460-400x460-1-400x460.png', 1, 0, 0, '2020-05-21 08:18:15'),
(33, 'Điện thoại Samsung Galaxy A70', 'Samsung-phone', 9290000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.7\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 32 MP & Phụ 8 MP, 5 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Snapdragon 675 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'samsung-galaxy-a70-white-400x460.png', 0, 0, 0, '2020-05-21 08:19:16'),
(34, 'Điện thoại Samsung Galaxy A51', 'Samsung-phone', 8390000, 200000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.5\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 12 MP, 5 MP, 5 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Exynos 9611 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh, có sạc nhanh<br>', 'samsung-galaxy-a51-8gb-blue-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 08:20:26'),
(35, 'Điện thoại Samsung Galaxy A50', 'Samsung-phone', 7290000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.4\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 25 MP & Phụ 8 MP, 5 MP<br>\r\nCamera trước:	25 MP<br>\r\nCPU:	Exynos 9610 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh, có sạc nhanh<br>', 'samsung-galaxy-a50-128gb-blue-400x460.png', 0, 0, 0, '2020-05-21 08:22:30'),
(36, 'Điện thoại Samsung Galaxy A30s', 'Samsung-phone', 6290000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.4\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 25 MP & Phụ 8 MP, 5 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Exynos 7904 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh, có sạc nhanh<br>', 'samsung-galaxy-a30s-green-400x460.png', 0, 0, 0, '2020-05-21 08:23:22'),
(37, 'Điện thoại OPPO Reno3 Pro', 'OPPO-phone', 14990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Sunlight Super AMOLED, 6.4\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 64 MP & Phụ 13 MP, 8 MP, 2 MP<br>\r\nCamera trước:	Chính 44 MP & Phụ 2 MP<br>\r\nCPU:	MediaTek Helio P95 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4025 mAh, có sạc nhanh<br>', 'oppo-reno3-pro-den-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:28:05'),
(38, 'Điện thoại OPPO A12', 'OPPO-phone', 3990000, 300000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.22\", HD+<br>\r\nHệ điều hành:	ColorOS 6.1 (Android 9.0)<br>\r\nCamera sau:	Chính 13 MP & Phụ 2 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	MediaTek Helio P35 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4230 mAh<br>', 'oppo-a12-4gb-den-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:29:20'),
(39, 'Điện thoại OPPO Reno2 F', 'OPPO-phone', 8990000, 1500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	AMOLED, 6.5\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	MediaTek Helio P70 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh, có sạc nhanh<br>', 'oppo-reno2-f-white-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:30:40'),
(40, 'Điện thoại OPPO Find X2', 'OPPO-phone', 23990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	AMOLED, 6.78\", Quad HD+ (2K+)<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 13 MP, 12 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Snapdragon 865 8 nhân<br>\r\nRAM:	12 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 5G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4200 mAh, có sạc nhanh<br>', 'oppo-find-x2-xanh-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 08:31:44'),
(41, 'Điện thoại OPPO A9', 'OPPO-phone', 6990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	TFT, 6.5\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Snapdragon 665 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh<br>', 'oppo-a9-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 08:32:47'),
(42, 'Điện thoại Xiaomi Redmi Note 9 Pro', 'Xiaomi-phone', 6490000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.67\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Snapdragon 720G 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5020 mAh, có sạc nhanh<br>', 'xiaomi-redmi-note-9-pro-128gb-xam-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:33:54'),
(43, 'Điện thoại Xiaomi Redmi Note 9', 'Xiaomi-phone', 4990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.53\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	13 MP<br>\r\nCPU:	MediaTek Helio G85 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5020 mAh, có sạc nhanh<br>', 'xiaomi-redmi-note-9-xanh-dam-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:35:27'),
(44, 'Điện thoại Xiaomi Redmi Note 9 Pro', 'Xiaomi-phone', 6990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.67\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Snapdragon 720G 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5020 mAh, có sạc nhanh<br>', 'xiaomi-redmi-note-9-pro-128gb-trang-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:36:16'),
(45, 'Điện thoại Xiaomi Mi Note 10 Pro', 'Xiaomi-phone', 14990000, 1000000, 30, 'Thông số kỹ thuật<br>\r\nMàn hình:	AMOLED, 6.47\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 108 MP & Phụ 20 MP, 12 MP, 5 MP, 2 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Snapdragon 730G 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5260 mAh, có sạc nhanh<br>', 'xiaomi-mi-note-10-pro-black-400x460.png', 0, 0, 0, '2020-05-21 08:37:25'),
(46, 'Điện thoại Xiaomi Mi Note 10 Lite', 'Xiaomi-phone', 9999000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	AMOLED, 6.47\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 5 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Snapdragon 730G 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5260 mAh, có sạc nhanh<br>', 'xiaomi-mi-note-10-lite-400x460-trang-1-400x460.png', 0, 0, 0, '2020-05-21 08:38:18'),
(47, 'Điện thoại Xiaomi Redmi Note 8 ', 'Xiaomi-phone', 4990000, 200000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.3\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	13 MP<br>\r\nCPU:	Snapdragon 665 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh, có sạc nhanh<br>', 'xiaomi-redmi-note-8-128gb-black-400x460.png', 0, 0, 0, '2020-05-21 08:39:20'),
(48, 'Vivo V19 Neo', 'Vivo-phone', 7690000, 500000, 20, 'THÔNG SỐ KỸ THUẬT<br>\r\nMàn hình:	Super AMOLED, 6.44\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Snapdragon 675 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'blue-min-640x796-1.png', 0, 0, 0, '2020-05-21 08:41:17'),
(49, 'Điện thoại Vivo V19', 'Vivo-phone', 8990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.44\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	Chính 32 MP & Phụ 8 MP<br>\r\nCPU:	Snapdragon 712 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'vivo-v19-xanh-400x460-400x460.png', 0, 0, 0, '2020-05-21 08:42:14'),
(50, 'Điện thoại Vivo S1 Pro', 'Vivo-phone', 6990000, 500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	Super AMOLED, 6.38\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Snapdragon 665 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'vivo-s1-pro-white-400x460.png', 0, 0, 0, '2020-05-21 08:43:04'),
(51, 'Điện thoại Vivo V15', 'Vivo-phone', 6490000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.53\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 12 MP & Phụ 8 MP, 5 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	MediaTek Helio P70 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh, có sạc nhanh<br>', 'vivo-v15-quanghai-400x460.png', 0, 0, 0, '2020-05-21 08:44:19'),
(52, 'Điện thoại Vivo Y19', 'Vivo-phone', 4990000, 200000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.53\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 16 MP & Phụ 8 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	MediaTek MT6768 8 nhân (Helio P65)<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh, có sạc nhanh<br>', 'vivo-y19-white-quanghai-400x460.png', 0, 0, 0, '2020-05-21 08:45:13'),
(53, 'Điện thoại Realme 6i', 'Realme-phone', 4990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.5\", HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	MediaTek Helio G80 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh, có sạc nhanh<br>', 'realme-6i-trang-400x460-fix-400x460.png', 0, 0, 0, '2020-05-21 15:27:24'),
(54, 'Điện thoại Realme 6 Pro', 'Realme-phone', 7990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.6\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 64 MP & Phụ 12 MP, 8 MP, 2 MP<br>\r\nCamera trước:	Chính 16 MP & Phụ 8 MP<br>\r\nCPU:	Snapdragon 720G 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4300 mAh, có sạc nhanh<br>', 'realme-6-pro-do-400x460-3-400x460.png', 0, 0, 0, '2020-05-21 15:28:12'),
(55, 'Điện thoại Realme 6', 'Realme-phone', 6990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.5\", Full HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 64 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Mediatek Helio G90T 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4300 mAh, có sạc nhanh<br>', 'realme-6-8gb-trang-400x460-1-1-400x460.png', 0, 0, 0, '2020-05-21 15:29:08'),
(56, 'Điện thoại Realme 5 Pro', 'Realme-phone', 6990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.3\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Snapdragon 712 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4035 mAh, có sạc nhanh<br>', 'realme-5-pro-8gb-purple-400x460.png', 0, 0, 0, '2020-05-21 15:30:05'),
(57, 'Điện thoại Realme 5s', 'Realme-phone', 4990000, 800000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.5\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	13 MP<br>\r\nCPU:	Snapdragon 665 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh<br>', 'realme-5s-red-400x460.png', 0, 0, 0, '2020-05-21 15:30:58'),
(58, 'Điện thoại Realme 5', 'Realme-phone', 3990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.5\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	13 MP<br>\r\nCPU:	Snapdragon 665 8 nhân<br>\r\nRAM:	3 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh<br>', 'realme-5-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 15:32:10'),
(59, 'Điện thoại Realme 5i', 'Realme-phone', 3290000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.52\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 12 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	8 MP<br>\r\nCPU:	Snapdragon 665 AIE 8 nhân<br>\r\nRAM:	3 GB<br>\r\nBộ nhớ trong:	32 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh<br>', 'realme-5i-blue-chi-tiet-400x460.png', 0, 0, 0, '2020-05-21 15:33:02'),
(60, 'Điện thoại Realme C3 ', 'Realme-phone', 2990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.5\", HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 12 MP & Phụ 2 MP, 2 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	MediaTek Helio G70 8 nhân<br>\r\nRAM:	3 GB<br>\r\nBộ nhớ trong:	32 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh<br>', 'realme-c3-red-460x400-400x460.png', 0, 0, 0, '2020-05-21 15:33:59'),
(61, 'Điện thoại Realme C3i', 'Realme-phone', 2590000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.5\", HD+<br>\r\nHệ điều hành:	Android 10<br>\r\nCamera sau:	Chính 12 MP & Phụ 2 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	MediaTek Helio G70 8 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	32 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh<br>', 'realme-c3i-blue-400x460-400x460.png', 0, 0, 0, '2020-05-21 15:34:46'),
(62, 'Điện thoại Vsmart Active 3', 'VSMart-phone', 3990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	AMOLED, 6.39\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	MediaTek Helio P60 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4020 mAh, có sạc nhanh<br>', 'vsmart-active-3-6gb-purple-ruby-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 15:36:02'),
(63, 'Điện thoại Vsmart Joy 3', 'VSMart-phone', 3290000, 0, 14, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.5\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 13 MP & Phụ 8 MP, 2 MP<br>\r\nCamera trước:	8 MP<br>\r\nCPU:	Snapdragon 632 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	5000 mAh, có sạc nhanh<br>', 'vsmart-joy-3-4gb-den-400x460-400x460.png', 0, 0, 0, '2020-05-21 15:37:08'),
(64, 'Điện thoại Vsmart Star 3', 'VSMart-phone', 1990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.09\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 8 MP & Phụ 5 MP<br>\r\nCamera trước:	8 MP<br>\r\nCPU:	Snapdragon 215 4 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3500 mAh<br>', 'vsmart-star-3-xanh-400x460-400x460.png', 0, 0, 0, '2020-05-21 15:37:57'),
(65, 'Điện thoại Vsmart Bee 3', 'VSMart-phone', 1590000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.0\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	8 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	MediaTek MT6739WW 4 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3000 mAh<br>', 'vsmart-bee-3-white400x460-400x460.png', 0, 0, 0, '2020-05-21 15:38:43'),
(66, 'Điện thoại Vsmart Star', 'VSMart-phone', 1390000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 5.7\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 8 MP & Phụ 2 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	Snapdragon 215 4 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3000 mAh<br>', 'vsmart-star-coral-400x460.png', 0, 0, 0, '2020-05-21 15:39:46'),
(67, 'Điện thoại Vsmart Bee', 'VSMart-phone', 990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 5.45\", HD+<br>\r\nHệ điều hành:	Android 8.1 (Oreo)<br>\r\nCamera sau:	8 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	MediaTek MT6739 4 nhân<br>\r\nRAM:	1 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2500 mAh<br>', 'vsmart-bee-blue-400x460.png', 0, 0, 0, '2020-05-21 15:40:38'),
(68, 'Điện thoại Nokia 5310', 'NOKIA-phone', 990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	TFT, 2.4\"<br>\r\nDanh bạ:	2000 số<br>\r\nThẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB<br>\r\nCamera:	VGA (480 x 640 pixels)<br>\r\nJack cắm tai nghe:	3.5 mm<br>\r\nRadio FM:	Có<br>\r\nDung lượng pin:	1200 mAh<br>', 'nokia-5310-2020-trang-do-400x460-400x460.png', 0, 0, 0, '2020-05-21 15:41:41'),
(69, 'Điện thoại Nokia C2', 'NOKIA-phone', 1690000, 200000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 5.7\", HD+<br>\r\nHệ điều hành:	Android 9 Pie (Go Edition)<br>\r\nCamera sau:	5 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	Spreadtrum SC9832E 4 nhân<br>\r\nRAM:	1 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2800 mAh<br>', 'nokia-c2-xanh-400x460-400x460.png', 0, 0, 0, '2020-05-21 15:42:27'),
(70, 'Điện thoại Nokia 7.2', 'NOKIA-phone', 6190000, 1500000, 14, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.3\", Full HD+<br>\r\nHệ điều hành:	Android 9 Pie (Android One)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 5 MP<br>\r\nCamera trước:	20 MP<br>\r\nCPU:	Snapdragon 660 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 400 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3500 mAh<br>', 'nokia-72-black-400x460.png', 0, 0, 0, '2020-05-21 15:43:28'),
(71, 'Điện thoại Huawei P40 Pro', 'HUAWEI-phone', 23990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.58\", Quad HD+ (2K+)<br>\r\nHệ điều hành:	EMUI 10 (Android 10 không có Google)<br>\r\nCamera sau:	Chính 50 MP & Phụ 40 MP,12 MP, TOF 3D<br>\r\nCamera trước:	Chính 32 MP & Phụ IR TOF 3D<br>\r\nCPU:	Kirin 990 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ nhớ:	NM card, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4200 mAh, có sạc nhanh<br>', 'huawei-p40-pro-400x460-3-400x460.png', 0, 0, 0, '2020-05-21 15:44:29'),
(72, 'Điện thoại Huawei Mate 30 Pro', 'HUAWEI-phone', 21990000, 2000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.53\", Full HD+<br>\r\nHệ điều hành:	EMUI 10 (Android 10 không có Google)<br>\r\nCamera sau:	Chính 40 MP & Phụ 40 MP, 8 MP, TOF 3D<br>\r\nCamera trước:	Chính 32 MP & Phụ TOF 3D<br>\r\nCPU:	Kirin 990 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	256 GB<br>\r\nThẻ nhớ:	NM card, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4500 mAh, có sạc nhanh<br>', 'huawei-mate-30-pro-400x460-4-400x460.png', 1, 1, 0, '2020-05-21 15:45:24'),
(73, 'Điện thoại Huawei P40', 'HUAWEI-phone', 17990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	OLED, 6.1\", Full HD+<br>\r\nHệ điều hành:	EMUI 10 (Android 10 không có Google)<br>\r\nCamera sau:	Chính 50 MP & Phụ 16 MP, 8 MP<br>\r\nCamera trước:	Chính 32 MP & Phụ IR TOF 3D<br>\r\nCPU:	Kirin 990 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	NM card, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 5G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3800 mAh, có sạc nhanh<br>', 'huawei-p40-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 15:46:09'),
(74, 'Điện thoại Huawei Nova 5T', 'HUAWEI-phone', 8990000, 700000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.26\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 48 MP & Phụ 16 MP, 2 MP, 2 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Kirin 980 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3750 mAh, có sạc nhanh<br>', 'huawei-nova-5t-400x460-400x460.png', 0, 0, 0, '2020-05-21 15:46:56'),
(75, 'Điện thoại Huawei Nova 7i', 'HUAWEI-phone', 6990000, 300000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	LTPS LCD, 6.4\", Full HD+<br>\r\nHệ điều hành:	EMUI 10 (Android 10 không có Google)<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Kirin 810 8 nhân<br>\r\nRAM:	8 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	NM card, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4200 mAh, có sạc nhanh<br>', 'huawei-nova-7i-pink-400x460-400x460.png', 0, 0, 0, '2020-05-21 15:47:43'),
(76, 'Điện thoại Huawei Y9s', 'HUAWEI-phone', 5990000, 200000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	TFT, 6.59\", Full HD+<br>\r\nHệ điều hành:	Android 9.1<br>\r\nCamera sau:	Chính 48 MP & Phụ 8 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Kirin 710F 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 1 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh<br>', 'huawei-y9sb-blue-400x460.png', 0, 0, 0, '2020-05-21 15:48:36'),
(77, 'Điện thoại Huawei Nova 3i', 'HUAWEI-phone', 5990000, 2000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	LTPS LCD, 6.3\", Full HD+<br>\r\nHệ điều hành:	Android 8.1 (Oreo)<br>\r\nCamera sau:	Chính 16 MP & Phụ 2 MP<br>\r\nCamera trước:	Chính 24 MP & Phụ 2 MP<br>\r\nCPU:	Kirin 710<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3340 mAh<br>', 'huawei-nova-3i-purple-400x460.png', 0, 0, 0, '2020-05-21 15:49:29'),
(78, 'Điện thoại Huawei Y9 Prime ', 'HUAWEI-phone', 5490000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	LTPS LCD, 6.59\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 16 MP & Phụ 8 MP, 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Kirin 710F 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh<br>', 'huawei-y9-prime-2019-blue-400x460.png', 0, 0, 0, '2020-05-21 15:50:18'),
(79, 'Điện thoại Huawei P30 Lite', 'HUAWEI-phone', 5490000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.15\", Full HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 24 MP & Phụ 8 MP, 2 MP<br>\r\nCamera trước:	32 MP<br>\r\nCPU:	Kirin 710<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	128 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3340 mAh, có sạc nhanh<br>', 'huawei-p30-lite-400x460.png', 0, 0, 0, '2020-05-21 15:51:02'),
(80, 'Điện thoại Huawei Y7 Pro (2019)', 'HUAWEI-phone', 3490000, 200000, 14, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.26\", HD+<br>\r\nHệ điều hành:	Android 8.1 (Oreo)<br>\r\nCamera sau:	Chính 13 MP & Phụ 2 MP<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Snapdragon 450 8 nhân<br>\r\nRAM:	3 GB<br>\r\nBộ nhớ trong:	32 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 512 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh<br>', 'huawei-y7-pro-2019-400x460.png', 0, 0, 0, '2020-05-21 15:51:58'),
(81, 'Điện thoại Mobell S61', 'Mobel-phone', 1250000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 5.5\", HD+<br>\r\nHệ điều hành:	Android 8 Oreo (Go Edition)<br>\r\nCamera sau:	Chính 8 MP & Phụ 0.3 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	Spreadtrum SC7731E 4 nhân<br>\r\nRAM:	1 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n1 Nano SIM & 1 Micro SIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2500 mAh<br>', 'mobell-s61-blue-2-400x460-2-400x460.png', 0, 0, 0, '2020-05-21 15:52:53'),
(82, 'Điện thoại Mobell Nova P3', 'HUAWEI-phone', 1190000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 5.5\", HD<br>\r\nHệ điều hành:	Android 7.0 (Nougat)<br>\r\nCamera sau:	8 MP<br>\r\nCamera trước:	8 MP<br>\r\nCPU:	MediaTek MT6580 4 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 32 GB<br>\r\nThẻ SIM:<br>\r\n2 Micro SIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3250 mAh<br>', 'mobell-nova-p3-460-400x460.png', 0, 0, 0, '2020-05-21 15:53:42'),
(83, 'Điện thoại Itel S15 Pro', 'itel-phone', 1990000, 200000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 6.1\", HD+<br>\r\nHệ điều hành:	Android 9.0 (Pie)<br>\r\nCamera sau:	Chính 8 MP & Phụ VGA, VGA<br>\r\nCamera trước:	16 MP<br>\r\nCPU:	Spreadtrum SC9863A 8 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	32 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 128 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3000 mAh<br>', 'itel-s15-pro-purple-400x460.png', 0, 0, 0, '2020-05-21 16:08:44'),
(84, 'Điện thoại Itel P15', 'itel-phone', 1550000, 150000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 5\", FWVGA<br>\r\nHệ điều hành:	Android 9.0 (Go Edition)<br>\r\nCamera sau:	Chính 5 MP & Phụ VGA<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	Spreadtrum SC7731E 4 nhân<br>\r\nRAM:	2 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	4000 mAh<br>', 'itel-p15-gold-400x460.png', 0, 0, 0, '2020-05-21 16:09:37'),
(85, 'Điện thoại Coolpad N5 mini', 'coolpad-phone', 890000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 5.45\", HD+<br>\r\nHệ điều hành:	Android 8 Oreo (Go Edition)<br>\r\nCamera sau:	Chính 8 MP & Phụ 0.3 MP<br>\r\nCamera trước:	5 MP<br>\r\nCPU:	MediaTek MT6580M 4 nhân<br>\r\nRAM:	1 GB<br>\r\nBộ nhớ trong:	16 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 64 GB<br>\r\nThẻ SIM:<br>\r\n1 Nano SIM & 1 Micro SIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	2250 mAh<br>', 'coolpad-n5-mini-blue-400x460.png', 0, 0, 0, '2020-05-21 16:10:28'),
(86, 'Điện thoại Coolpad F129', 'coolpad-phone', 300000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	TFT, 2.4\", 256.000 màu<br>\r\nDanh bạ:	500 số<br>\r\nThẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB<br>\r\nCamera:	0.08 MP<br>\r\nJack cắm tai nghe:	3.5 mm<br>\r\nRadio FM:	Có<br>\r\nDung lượng pin:	2700 mAh<br>', 'coolpad-f129-black-400x460.png', 0, 0, 0, '2020-05-21 16:11:10'),
(87, 'Điện thoại Coolpad F212', 'coolpad-phone', 260000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	TFT, 2.4\", 256.000 màu<br>\r\nDanh bạ:	1000 số<br>\r\nThẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 32 GB<br>\r\nCamera:	Có<br>\r\nJack cắm tai nghe:	3.5 mm<br>\r\nRadio FM:	Có<br>\r\nDung lượng pin:	1000 mAh<br>', 'coolpad-f212-xanh-400x460-1-400x460.png', 0, 0, 0, '2020-05-21 16:11:56'),
(88, 'Điện thoại BlackBerry KEY2', 'Blackberry-phone', 15990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 4.5\", Full HD<br>\r\nHệ điều hành:	Android 8.1 (Oreo)<br>\r\nCamera sau:	Chính 12 MP & Phụ 12 MP<br>\r\nCamera trước:	8 MP<br>\r\nCPU:	Snapdragon 660 8 nhân<br>\r\nRAM:	6 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3500 mAh, có sạc nhanh<br>', 'blackberry-key2-3-400x460.png', 0, 0, 0, '2020-05-21 16:12:53'),
(89, 'Điện thoại BlackBerry KEY2 LE', 'Blackberry-phone', 9990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 4.5\", Full HD<br>\r\nHệ điều hành:	Android 8.1 (Oreo)<br>\r\nCamera sau:	Chính 13 MP & Phụ 5 MP<br>\r\nCamera trước:	8 MP<br>\r\nCPU:	Snapdragon 636 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n2 SIM Nano (SIM 2 chung khe thẻ nhớ), Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3000 mAh, có sạc nhanh<br>', 'blackberry-key2-le-1-400x460.png', 0, 0, 0, '2020-05-21 16:13:52'),
(90, 'Điện thoại BlackBerry KEYone', 'Blackberry-phone', 7990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	IPS LCD, 4.5\", Full HD<br>\r\nHệ điều hành:	Android 7.1 (Nougat)<br>\r\nCamera sau:	12 MP<br>\r\nCamera trước:	8 MP<br>\r\nCPU:	Snapdragon 625 8 nhân<br>\r\nRAM:	4 GB<br>\r\nBộ nhớ trong:	64 GB<br>\r\nThẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB<br>\r\nThẻ SIM:<br>\r\n1 Nano SIM, Hỗ trợ 4G<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nDung lượng pin:	3505 mAh, có sạc nhanh<br>', 'blackberry-keyone-1-400x460.png', 0, 0, 0, '2020-05-21 16:14:41'),
(91, 'Điện thoại Masstel IZI 200', 'Masstel-phone', 250000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	TFT, 2.4\", 262.144 màu<br>\r\nDanh bạ:	500 số<br>\r\nThẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 16 GB<br>\r\nCamera:	0.08 MP<br>\r\nJack cắm tai nghe:	3.5 mm<br>\r\nRadio FM:	Có<br>\r\nDung lượng pin:	1000 mAh<br>', 'masstel-izi-200-do-den-400x460-2-400x460.png', 0, 0, 0, '2020-05-21 16:15:33'),
(92, 'Điện thoại Masstel Fami P20', 'Masstel-phone', 550000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình:	TFT, 2.2\", 262.144 màu<br>\r\nDanh bạ:	300 số<br>\r\nThẻ nhớ ngoài:	MicroSD, hỗ trợ tối đa 16 GB<br>\r\nCamera:	0.08 MP<br>\r\nRadio FM:	Có<br>\r\nDung lượng pin:	1400 mAh<br>', 'masstel-fami-p20-xanh-400x460-400x460.png', 0, 0, 0, '2020-05-21 16:16:20'),
(93, 'Máy tính bảng iPad Pro 12.9 inch Wifi Cellular 128GB (2020)', 'iPad-tablet', 31990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	Liquid Retina, 12.9\"<br>\r\nHệ điều hành	iPadOS 13<br>\r\nCPU	Apple A12Z Bionic, 4 nhân 2.5 GHz & 4 nhân 1.6 GHz<br>\r\nRAM	6 GB<br>\r\nBộ nhớ trong	128 GB<br>\r\nCamera sau	Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR<br>\r\nCamera trước	7 MP<br>\r\nKết nối mạng	WiFi, 3G, Hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\n1 Nano SIM hoặc 1 eSIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	FaceTime<br>', 'ipad-pro-12-9-inch-wifi-cellular-128gb-2020-bac-400x460-400x460.png', 0, 0, 0, '2020-05-21 16:17:39'),
(94, 'Máy tính bảng iPad 10.2 inch Wifi Cellular 32GB (2019)', 'iPad-tablet', 13990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	LED backlit LCD, 10.2\"<br>\r\nHệ điều hành	iOS 13<br>\r\nCPU	Apple A10 Fusion 4 nhân, 2.34 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	32 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	1.2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\n1 Nano SIM hoặc 1 eSIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	FaceTime<br>', 'ipad-10-2-inch-wifi-cellular-32gb-2019-gold-400x460.png', 1, 0, 0, '2020-05-21 16:18:30'),
(95, 'Máy tính bảng iPad Pro 12.9 inch Wifi 128GB (2020)', 'iPad-tablet', 27990000, 500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	Liquid Retina, 12.9\"<br>\r\nHệ điều hành	iPadOS 13<br>\r\nCPU	Apple A12Z Bionic, 4 nhân 2.5 GHz & 4 nhân 1.6 GHz<br>\r\nRAM	6 GB<br>\r\nBộ nhớ trong	128 GB<br>\r\nCamera sau	Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR<br>\r\nCamera trước	7 MP<br>\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G<br>\r\nĐàm thoại	FaceTime<br>\r\nTrọng lượng	471 g<br>', 'ipad-pro-12-9-inch-wifi-128gb-2020-xam-400x460-1-400x460.png', 1, 0, 0, '2020-05-21 16:19:21');
INSERT INTO `product` (`id`, `name`, `category`, `price`, `sale`, `number`, `content`, `img`, `click`, `views`, `pay`, `create_at`) VALUES
(96, 'Máy tính bảng iPad Pro 11 inch Wifi Cellular 128GB (2020)', 'iPad-tablet', 25990000, 500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	Liquid Retina, 11\"<br>\r\nHệ điều hành	iPadOS 13<br>\r\nCPU	Apple A12Z Bionic, 4 nhân 2.5 GHz & 4 nhân 1.6 GHz<br>\r\nRAM	6 GB<br>\r\nBộ nhớ trong	128 GB<br>\r\nCamera sau	Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR<br>\r\nCamera trước	7 MP<br>\r\nKết nối mạng	WiFi, 3G, Hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\n1 Nano SIM hoặc 1 eSIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	FaceTime<br>', 'ipad-pro-11-inch-wifi-cellular-128gb-2020-bac-400x460-400x460.png', 0, 0, 0, '2020-05-21 16:20:15'),
(97, 'Máy tính bảng iPad Pro 11 inch Wifi 128GB (2020)', 'iPad-tablet', 21990000, 500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	Liquid Retina, 11\"<br>\r\nHệ điều hành	iPadOS 13<br>\r\nCPU	Apple A12Z Bionic, 4 nhân 2.5 GHz & 4 nhân 1.6 GHz<br>\r\nRAM	6 GB<br>\r\nBộ nhớ trong	128 GB<br>\r\nCamera sau	Chính 12 MP & Phụ 10 MP, TOF 3D LiDAR<br>\r\nCamera trước	7 MP<br>\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G<br>\r\nĐàm thoại	FaceTime<br>\r\nTrọng lượng	471 g<br>', 'ipad-pro-11-inch-2020-xam-400x460-fix-400x460.png', 0, 0, 0, '2020-05-21 16:21:22'),
(98, 'Máy tính bảng iPad 10.2 inch Wifi Cellular 128GB (2019)', 'iPad-tablet', 15990000, 1000000, 14, 'Thông số kỹ thuật<br>\r\nMàn hình	LED backlit LCD, 10.2\"<br>\r\nHệ điều hành	iOS 13<br>\r\nCPU	Apple A10 Fusion 4 nhân, 2.34 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	128 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	1.2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\n1 Nano SIM hoặc 1 eSIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	FaceTime<br>', 'ipad-10-2-inch-wifi-cellular-128gb-2019-gray-400x460.png', 0, 0, 0, '2020-05-21 16:22:20'),
(99, 'Máy tính bảng iPad Mini 7.9 inch Wifi Cellular 64GB (2019)', 'iPad-tablet', 14990000, 1000000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	LED backlit LCD, 7.9\"<br>\r\nHệ điều hành	iOS 12<br>\r\nCPU	Apple A12 Bionic 6 nhân, 2 nhân 2.5 GHz & 4 nhân 1.6 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	64 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	7 MP<br>\r\nKết nối mạng	WiFi, 3G, Hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\nNano SIM + eSIM<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	FaceTime<br>', 'ipad-mini-79-inch-wifi-cellular-64gb-2019-1-400x460.png', 0, 0, 0, '2020-05-21 16:23:10'),
(100, 'Máy tính bảng iPad Air 10.5 inch Wifi 64GB 2019', 'iPad-tablet', 13990000, 500000, 14, 'Thông số kỹ thuật<br>\r\nMàn hình	LED backlit LCD, 10.5\"<br>\r\nHệ điều hành	iOS 12<br>\r\nCPU	Apple A12 Bionic 6 nhân, 2 nhân 2.5 GHz & 4 nhân 1.6 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	64 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	7 MP<br>\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G<br>\r\nĐàm thoại	FaceTime<br>\r\nTrọng lượng	456 g<br>', 'ipad-air-105-inch-wifi-2019-gold-400x460.png', 0, 0, 0, '2020-05-21 16:23:57'),
(101, 'Máy tính bảng iPad 10.2 inch Wifi 128GB (2019)', 'iPad-tablet', 11990000, 1000000, 14, 'Thông số kỹ thuật<br>\r\nMàn hình	LED backlit LCD, 10.2\"<br>\r\nHệ điều hành	iOS 13<br>\r\nCPU	Apple A10 Fusion 4 nhân, 2.34 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	128 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	1.2 MP<br>\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G<br>\r\nĐàm thoại	FaceTime<br>\r\nTrọng lượng	483 g<br>', 'ipad-10-2-inch-wifi-128gb-2019-silver-400x460.png', 0, 0, 0, '2020-05-21 16:25:06'),
(102, 'Máy tính bảng iPad Mini 7.9 inch Wifi 64GB (2019)', 'iPad-tablet', 10990000, 500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	LED backlit LCD, 7.9\"<br>\r\nHệ điều hành	iOS 12<br>\r\nCPU	Apple A12 Bionic 6 nhân, 2 nhân 2.5 GHz & 4 nhân 1.6 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	64 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	7 MP<br>\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G<br>\r\nĐàm thoại	FaceTime<br>\r\nTrọng lượng	300 g<br>', 'ipad-mini-79-inch-wifi-2019-gold-400x460.png', 0, 0, 0, '2020-05-21 16:26:14'),
(103, 'Máy tính bảng iPad 10.2 inch Wifi 32GB (2019)', 'iPad-tablet', 9900000, 500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	LED backlit LCD, 10.2\"<br>\r\nHệ điều hành	iOS 13<br>\r\nCPU	Apple A10 Fusion 4 nhân, 2.34 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	32 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	1.2 MP<br>\r\nKết nối mạng	WiFi, Không hỗ trợ 3G, Không hỗ trợ 4G<br>\r\nĐàm thoại	FaceTime<br>\r\nTrọng lượng	483 g<br>', 'ipad-10-2-inch-wifi-32gb-2019-gold-400x460.png', 0, 0, 0, '2020-05-21 16:27:09'),
(104, 'Máy tính bảng Samsung Galaxy Tab S6 Lite', 'Samsung-tablet', 9990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	PLS LCD, 10.4\"<br>\r\nHệ điều hành	Android 10<br>\r\nCPU	Exynos 9611 8 nhân, 4 nhân 2.3 GHz & 4 nhân 1.7 GHz<br>\r\nRAM	4 GB<br>\r\nBộ nhớ trong	64 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	5 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'samsung-galaxy-tab-s6-lite-xanh-400x460-400x460.png', 0, 0, 0, '2020-05-21 16:28:33'),
(105, 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515 (2019)', 'Samsung-tablet', 7490000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	TFT LCD, 10.1\"<br>\r\nHệ điều hành	Android 9.0 (Pie)<br>\r\nCPU	Exynos 7904 8 nhân, 2 nhân 1.8 GHz & 6 nhân 1.6 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	32 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	5 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'samsung-galaxy-tab-a-101-t515-2019-gold-400x460.png', 0, 0, 0, '2020-05-21 16:29:25'),
(106, 'Máy tính bảng Samsung Galaxy Tab A8 8\" T295 (2019)', 'Samsung-tablet', 3690000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	TFT LCD, 8\"<br>\r\nHệ điều hành	Android 9.0 (Pie)<br>\r\nCPU	Snapdragon 429, 4 nhân 2.0 GHz<br>\r\nRAM	2 GB<br>\r\nBộ nhớ trong	32 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'samsung-galaxy-tab-a8-t295-2019-silver-400x460.png', 0, 0, 0, '2020-05-21 16:30:22'),
(107, 'Máy tính bảng Samsung Galaxy Tab with S Pen (P205)', 'Samsung-tablet', 6990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	WUXGA TFT, 8\"<br>\r\nHệ điều hành	Android 9.0 (Pie)<br>\r\nCPU	Exynos 7904 8 nhân, 2 nhân 1.8 GHz & 6 nhân 1.6 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	32 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	5 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'samsung-galaxy-tab-a8-plus-p205-black-400x460.png', 0, 0, 0, '2020-05-21 16:31:19'),
(108, 'Máy tính bảng Samsung Galaxy Tab S6', 'Samsung-tablet', 18490000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	Super AMOLED, 10.5\"<br>\r\nHệ điều hành	Android 9.0 (Pie)<br>\r\nCPU	Snapdragon 855 8 nhân, 1 nhân 2.84 GHz, 3 nhân 2.41 GHz & 4 nhân 1.78 GHz<br>\r\nRAM	6 GB<br>\r\nBộ nhớ trong	128 GB<br>\r\nCamera sau	Chính 13 MP & Phụ 5 MP<br>\r\nCamera trước	8 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'samsung-galaxy-tab-s6-400x460.png', 0, 0, 0, '2020-05-21 16:32:09'),
(109, 'Máy tính bảng Huawei Mediapad T5 10.1 inch (2GB/16GB)', 'HUAWEI-tablet', 4490000, 300000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD Full HD, 10.1\"<br>\r\nHệ điều hành	Android 8.0<br>\r\nCPU	Kirin 659, 4 nhân 2.36 GHz & 4 nhân 1.7 GHz<br>\r\nRAM	2 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nMicro sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'huawei-mediapad-t5-16gb-400x460-2-400x460.png', 0, 0, 0, '2020-05-21 16:33:06'),
(110, 'Máy tính bảng Huawei MediaPad M5 Lite', 'HUAWEI-tablet', 7990000, 500000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD Full HD, 10.1\"<br>\r\nHệ điều hành	Android 8.0<br>\r\nCPU	Kirin 659, 1.7 GHz<br>\r\nRAM	4 GB<br>\r\nBộ nhớ trong	64 GB<br>\r\nCamera sau	8 MP<br>\r\nCamera trước	8 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'huawei-mediapad-m5-lite-gray-400x460.png', 0, 0, 0, '2020-05-21 16:33:51'),
(111, 'Máy tính bảng Huawei Mediapad T5 10.1 inch (3GB/32GB)', 'HUAWEI-tablet', 4990000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD Full HD, 10.1\"<br>\r\nHệ điều hành	Android 8.0<br>\r\nCPU	Kirin 659, 4 nhân 2.36 GHz & 4 nhân 1.7 GHz<br>\r\nRAM	3 GB<br>\r\nBộ nhớ trong	32 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nMicro sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'huawei-mediapad-t5-33397-hinhchitiet-400x460.png', 0, 0, 0, '2020-05-21 16:34:39'),
(112, 'Máy tính bảng Huawei MediaPad T3 10 (2017)', 'HUAWEI-tablet', 3990000, 0, 14, 'Thông số kỹ thuật<br>\r\nMàn hình	PLS LCD, 10\"<br>\r\nHệ điều hành	Android 7.0<br>\r\nCPU	Snapdragon 425 4 nhân, 1.4 GHz<br>\r\nRAM	2 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'huawei-mediapad-t3-10-1-33397-chitiet-400x460.png', 0, 0, 0, '2020-05-21 16:35:26'),
(113, 'Máy tính bảng Lenovo Tab E10 TB-X104L Đen', 'LENOVO-tablet', 3990000, 300000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 10.1\"<br>\r\nHệ điều hành	Android 8.0<br>\r\nCPU	Snapdragon 210 4 nhân, 1.33 GHz<br>\r\nRAM	2 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano Sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nTrọng lượng	522 g<br>', 'lenovo-tab-e10-tb-x104l-den-400x460.png', 0, 0, 0, '2020-05-21 16:37:14'),
(114, 'Máy tính bảng Lenovo Tab E7 TB-7104I', 'LENOVO-tablet', 1990000, 100000, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 7\"<br>\r\nHệ điều hành	Android Go 8.1<br>\r\nCPU	Mediatek MT8167D 6 nhân, 1.3 GHz<br>\r\nRAM	1 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	2 MP<br>\r\nCamera trước	0.3 MP<br>\r\nKết nối mạng	WiFi, 3G, Không hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\nSIM thường<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'lenovo-tab-e7-tb-7104i-33397-chitiet-400x460.png', 0, 0, 0, '2020-05-21 16:38:06'),
(115, 'Máy tính bảng Lenovo Tab 4 8\" 16GB (TB-8504X)', 'LENOVO-tablet', 3090000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 8\"<br>\r\nHệ điều hành	Android 7.0<br>\r\nCPU	Snapdragon 425 4 nhân, 1.4 GHz<br>\r\nRAM	2 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, 4G LTE<br>\r\nHỗ trợ SIM<br>\r\nNano SIM, SIM 2 chung khe thẻ nhớ<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'lenovo-tab-4-8-tb-8504x-chitiet-400x500.png', 0, 0, 0, '2020-05-21 16:38:56'),
(116, 'Máy tính bảng Masstel Tab 10 Pro', 'Masstel-tablet', 2590000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 10.1\"<br>\r\nHệ điều hành	Android 9.0 (Pie)<br>\r\nCPU	MediaTek MT6580 4 nhân, 1.3 GHz<br>\r\nRAM	2 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, Không hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\nSIM thường<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'masstel-tab10-pro-gold-3-400x460.png', 0, 0, 0, '2020-05-21 16:39:51'),
(117, 'Máy tính bảng Masstel Tab8 Pro', 'Masstel-tablet', 2090000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 8\"<br>\r\nHệ điều hành	Android 9.0 (Pie)<br>\r\nCPU	MediaTek MT8321 4 nhân, 1.3 GHz<br>\r\nRAM	2 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, Không hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\nMicro sim<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'masstel-tab8-pro-gold-1-400x460.png', 0, 0, 0, '2020-05-21 16:40:42'),
(118, 'Máy tính bảng Mobell Tab 8A', 'Mobel-tablet', 1790000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 8\"<br>\r\nHệ điều hành	Android 8.1<br>\r\nCPU	MediaTek MTK 8321 4 nhân, 1.3 GHz<br>\r\nRAM	1 GB<br>\r\nBộ nhớ trong	8 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, Không hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\n2 sim - Loại sim: micro<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'mobell-tab-8a-33397-400x460-1-1-400x460.png', 0, 0, 0, '2020-05-21 16:41:35'),
(119, 'Máy tính bảng Mobell Tab 10', 'Mobel-tablet', 2350000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 10.1\"<br>\r\nHệ điều hành	Android 8.1<br>\r\nCPU	MediaTek MTK 8321 4 nhân, 1.3 GHz<br>\r\nRAM	1 GB<br>\r\nBộ nhớ trong	16 GB<br>\r\nCamera sau	5 MP<br>\r\nCamera trước	2 MP<br>\r\nKết nối mạng	WiFi, 3G, Không hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\n2 sim - Loại sim thường<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'mobell-tab-10-33397-1-chitiet-400x460.png', 0, 0, 0, '2020-05-21 16:42:36'),
(120, 'Máy tính bảng Mobell Tab 7s', 'Mobel-tablet', 1390000, 0, 20, 'Thông số kỹ thuật<br>\r\nMàn hình	IPS LCD, 7\"<br>\r\nHệ điều hành	Android 6.0 (Marshmallow)<br>\r\nCPU	MediaTek MTK 8321 4 nhân, 1.3 GHz<br>\r\nRAM	1 GB<br>\r\nBộ nhớ trong	8 GB<br>\r\nCamera sau	2 MP<br>\r\nCamera trước	0.3 MP<br>\r\nKết nối mạng	WiFi, 3G, Không hỗ trợ 4G<br>\r\nHỗ trợ SIM<br>\r\nSIM thường<br>\r\nHOTSIM Vina Bùm 120 (2GB/ngày)<br>\r\nĐàm thoại	Có<br>', 'mobell-tab-7s-1-400x460.png', 0, 0, 0, '2020-05-21 16:43:19'),
(121, 'Laptop Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', 'Macbook-laptop', 19990000, 0, 20, ' Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Broadwell, 1.80 GHz<br>\r\nRAM:	8 GB, DDR3L(On board), 1600 MHz<br>\r\nỔ cứng:	SSD: 128 GB<br>\r\nMàn hình:	13.3 inch, WXGA+(1440 x 900)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel HD Graphics 6000<br>\r\nCổng kết nối:	MagSafe 2, 2 x USB 3.0, Thunderbolt 2<br>\r\nHệ điều hành:	Mac OS<br>\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền<br>\r\nKích thước:	Dày 17 mm, 1.35 Kg<br>\r\nThời điểm ra mắt:	2017<br>', 'apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', 0, 0, 0, '2020-05-21 16:44:25'),
(122, 'Laptop Apple Macbook Air 2020 i3 1.1GHz/8GB/256GB (MWTL2SA/A)', 'Macbook-laptop', 28990000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Thế hệ 10, 1.10 GHz<br>\r\nRAM:	8 GB, LPDDR4X (On board), 3733 MHz<br>\r\nỔ cứng:	SSD: 256 GB<br>\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics<br>\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)<br>\r\nHệ điều hành:	Mac OS<br>\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền<br>\r\nKích thước:	Dày 4.1 mm đến 16.1 mm, 1.29 kg<br>\r\nThời điểm ra mắt:	2020<br>', 'apple-macbook-air-2020-i3-11ghz-8gb-256gb-600x600.jpg', 1, 0, 0, '2020-05-21 16:45:17'),
(123, 'Laptop Macbook Pro Touch 16 inch 2019 i7', 'Macbook-laptop', 59990000, 3000000, 30, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i7 Coffee Lake, 2.60 GHz<br>\r\nRAM:	16 GB, DDR4 (1 khe), 2666 MHz<br>\r\nỔ cứng:	SSD 512GB<br>\r\nMàn hình:	16 inch, Retina (3072 x 1920)<br>\r\nCard màn hình:	Card đồ họa rời, Radeon Pro 5300M, 4GB<br>\r\nCổng kết nối:	4 x Thunderbolt 3 (USB-C)<br>\r\nHệ điều hành:	Mac OS<br>\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền<br>\r\nKích thước:	Dày 16.2 mm, 2.0 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'macbook-pro-16-201926-macbookprotouch16inch-1-600x600.jpg', 1, 0, 0, '2020-05-21 16:46:25'),
(124, 'Laptop Apple MacBook Air 2019', 'Macbook-laptop', 34990000, 2000000, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Coffee Lake, 1.60 GHz<br>\r\nRAM:	8 GB, LPDDR3, 2133 MHz<br>\r\nỔ cứng:	SSD: 256 GB<br>\r\nMàn hình:	13.3 inch, Retina (2560 x 1600)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics 617<br>\r\nCổng kết nối:	2 x Thunderbolt 3 (USB-C)<br>\r\nHệ điều hành:	Mac OS<br>\r\nThiết kế:	Vỏ kim loại nguyên khối, PIN liền<br>\r\nKích thước:	Dày 4.1 đến 15.6 mm, 1.25 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'apple-macbook-air-2019-i5-16ghz-8gb-256gb-mvfl2sa-600x600.jpg', 0, 0, 0, '2020-05-21 16:47:35'),
(125, 'Laptop Asus VivoBook X509MA', 'ASUS-laptop', 6990000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Celeron, N4000, 1.10 GHz<br>\r\nRAM:	4 GB, DDR4 (1 khe), 2400 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, HD (1366 x 768)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB 3.0, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 22.9 mm, 1.8 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'asus-vivobook-x509ma-br061t-220527-600x600.jpg', 0, 0, 0, '2020-05-21 16:48:39'),
(126, 'Laptop Asus VivoBook X509FA i3', 'ASUS-laptop', 11690000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Coffee Lake, 8145U, 2.10 GHz<br>\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz<br>\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB 3.0, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Rộng 22.9 mm, 1.8 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'asus-vivobook-x509fa-i3-8145u-4gb-512gb-chuot-win1-220575copy-600x600.jpg', 0, 0, 0, '2020-05-21 16:49:27'),
(127, 'Laptop Asus VivoBook A512FA i3', 'ASUS-laptop', 13290000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Coffee Lake, 8145U, 2.10 GHz<br>\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz<br>\r\nỔ cứng:	SSD 512GB, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\nCổng kết nối:	2 x USB 2.0, HDMI, USB 3.0, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền<br>\r\nKích thước:	Dày 19.9 mm, 1.7 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'asus-vivobook-a512fa-i3-8145u-4gb-512gb-win10-ej1-220574copy-600x600.jpg', 0, 0, 0, '2020-05-21 16:50:14'),
(128, 'Laptop Asus VivoBook S530FN i7', 'ASUS-laptop', 21790000, 1500000, 15, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i7 Coffee Lake, 8565U, 1.80 GHz<br>\r\nRAM:	8 GB, DDR4 (2 khe), 2400 MHz<br>\r\nỔ cứng:	HDD: 1 TB SATA3, Intel Optane 16GB<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX150, 2GB<br>\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ kim loại, PIN liền<br>\r\nKích thước:	Dày 18 mm, 1.8 kg<br>\r\nThời điểm ra mắt:	2018<br>', 'asus-s530f-i7-8565u-8gb-16gb-1tb-mx150-bq550t-7-1-600x600.jpg', 0, 0, 0, '2020-05-21 16:51:34'),
(129, 'Laptop HP 348 G7 i3', 'HP-laptop', 11390000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Coffee Lake, 8130U, 2.20 GHz<br>\r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	14 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\nCổng kết nối:	3 x USB 3.1, HDMI, LAN (RJ45), USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 1.99 mm, 1.43 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'hp-348-g7-i3-9pg83pa-600x600.jpg', 0, 0, 0, '2020-05-21 16:52:31'),
(130, 'Laptop HP Pavilion 14 ce3027TU i5', 'HP-laptop', 17490000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.10 GHz<br>\r\nRAM:	8 GB, DDR4 (1 khe), 2666 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Intel Optane 16GB (H10), Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	14 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Nắp lưng và chiếu nghỉ tay bằng kim loại, PIN liền<br>\r\nKích thước:	Dày 17.9 cm, 1.6 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'hp-pavilion-14-ce3027tu-i5-1035g1-8gb-16gb-256gb-1-600x600.jpg', 0, 0, 0, '2020-05-21 16:53:35'),
(131, 'Laptop HP Pavilion 15 cs3014TU i5', 'HP-laptop', 15590000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz<br>\r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Nắp lưng và chiếu nghỉ tay bằng kim loại, PIN liền<br>\r\nKích thước:	Dày 17.9 mm, 1.695 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'hp-pavilion-15-cs3014tu-i5-8qp20pa-600x600.jpg', 0, 0, 0, '2020-05-21 16:54:12'),
(132, 'Laptop HP 348 G7 i5', 'HP-laptop', 16290000, 0, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Comet Lake, 10210U, 1.60 GHz<br>\r\nRAM:	8 GB, DDR4 (2 khe), 2666 MHz<br>\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	14 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\nCổng kết nối:	3 x USB 3.1, HDMI, LAN (RJ45), USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 19.9 mm, 1.5 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'hp-348-g7-i5-9ph06pa-218439-1-600x600.jpg', 0, 0, 0, '2020-05-21 16:54:58'),
(133, 'Laptop HP 15s du0063TU i5 ', 'HP-laptop', 14690000, 2000000, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz<br>\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz<br>\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\nCổng kết nối:	HDMI 1.4, 2 x USB 3.1, LAN (RJ45), USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 19.9 mm, 1.74 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'hp-15s-du0063tu-i5-8265u-4gb-1tb-win10-6zf63pa-20-600x600.jpg', 0, 0, 0, '2020-05-21 16:55:50'),
(134, 'Laptop Acer Aspire A315 54 36QY i3', 'Accer-laptop', 10990000, 2100000, 30, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Comet Lake, 10110U, 2.10 GHz<br>\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, LAN (RJ45)<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 19.9 mm, 1.7 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'acer-aspire-a315-54-36qy-i3-10110u-4gb-256gb-win10-1-600x600.jpg', 1, 0, 0, '2020-05-21 16:56:52'),
(135, 'Laptop Acer Aspire A315 34', 'Accer-laptop', 6990000, 0, 30, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Celeron, N4000, 1.10 GHz<br>\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, HD (1366 x 768)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 600<br>\r\nCổng kết nối:	2 x USB 2.0, USB 3.1, HDMI, LAN (RJ45)<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 19.9 mm, 1.7 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'acer-aspire-a315-34-c2h9-n4000-4gb-256gb-win10-nx9-1-600x600.jpg', 0, 0, 0, '2020-05-21 16:58:06'),
(136, 'Laptop Acer Nitro AN515 43', 'Accer-laptop', 20690000, 2170000, 20, 'Thông số kỹ thuật<br>\r\nCPU:	AMD Ryzen 5, 3550H, 2.10 GHz<br>\r\nRAM:	8 GB, DDR4 (2 khe), 2400 MHz<br>\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa rời, NVIDIA GeForce GTX 1650 4GB<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 25.9 mm, 2.3 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'acer-nitro-an515-43-r5-nhq6zsv003-600x600.jpg', 1, 284, 0, '2020-05-21 16:59:03'),
(137, 'Laptop Acer Aspire A515 53 ', 'ASUS-laptop', 14490000, 1500000, 30, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz<br>\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2400 MHz<br>\r\nỔ cứng:	HDD: 1 TB SATA3, Intel Optane 16GB<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\nCổng kết nối:	2 x USB 3.0, HDMI, LAN (RJ45), USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền<br>\r\nKích thước:	Dày 22.45 mm, 2.0 kg<br>\r\nThời điểm ra mắt:	2018<br>', 'acer-aspire-a515-53-5112-i5-8265u-4gb-16gb-1tb-win3-600x600.jpg', 0, 0, 0, '2020-05-21 16:59:59'),
(138, 'Laptop Lenovo IdeaPad S145', 'LENOVO-laptop', 11490000, 300000, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Ice Lake, 1005G1, 1.20 GHz<br>\r\nRAM:	4 GB, DDR4 (On board +1 khe), 2666 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB 2.0<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày17.9 mm, 1.79kg<br>\r\nThời điểm ra mắt:	2019<br>', 'lenovo-ideapad-s145-15iil-i3-1005g1-4gb-256gb-win1-18-600x600.jpg', 0, 0, 0, '2020-05-21 17:01:04'),
(139, 'Laptop Lenovo IdeaPad S145', 'LENOVO-laptop', 15290000, 500000, 30, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz<br>\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz<br>\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 3.0, HDMI, USB 2.0<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 17.9 mm, 1.79kg<br>\r\nThời điểm ra mắt:	2019<br>', 'lenovo-ideapad-s145-15iil-i5-1035g1-8gb-512gb-win1-600x600.jpg', 0, 0, 0, '2020-05-21 17:02:02'),
(140, 'Laptop Lenovo IdeaPad S340', 'LENOVO-laptop', 13990000, 300000, 14, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Ice Lake, 1005G1, 1.20 GHz<br>\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz<br>\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	14 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền<br>\r\nKích thước:	Dày 17.9 mm, 1.6 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'lenovo-ideapad-s340-14iil-i3-1005g1-8gb-512gb-win1-18-600x600.jpg', 0, 0, 0, '2020-05-21 17:02:52'),
(141, 'Laptop Lenovo IdeaPad S340', 'LENOVO-laptop', 16290000, 500000, 30, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Ice Lake, 1035G1, 1.00 GHz<br>\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz<br>\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	14 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel UHD Graphics<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền<br>\r\nKích thước:	Dày 17.9 mm, 1.6 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'lenovo-ideapad-s340-14iil-i5-1035g1-8gb-512gb-win1-18-600x600.jpg', 0, 0, 0, '2020-05-21 17:03:46'),
(142, 'Laptop Lenovo IdeaPad S340', 'LENOVO-laptop', 16290000, 500000, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Ice Lake, 1035G4, 1.10 GHz<br>\r\nRAM:	8 GB, DDR4 (On board 4GB +1 khe 4GB), 2666 MHz<br>\r\nỔ cứng:	SSD 512 GB M.2 PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel Iris Plus Graphics<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa - nắp lưng bằng kim loại, PIN liền<br>\r\nKích thước:	Dày 17.9mm, 1.79 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'lenovo-ideapad-s340-i5-81vw00a8vn-600x600.jpg', 0, 0, 0, '2020-05-21 17:04:37'),
(143, 'Laptop Dell Vostro 3590 i7', 'DELL-laptop', 20990000, 1000000, 14, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i7 Comet Lake, 10510U, 1.80 GHz<br>\r\nRAM:	8 GB, DDR4 (On board +1 khe), 2666 MHz<br>\r\nỔ cứng:	SSD 256GB NVMe PCIe, Hỗ trợ khe cắm HDD SATA<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, AMD Radeon 610R5, 2GB<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 19.8 mm, 1.99<br>\r\nThời điểm ra mắt:	2019<br>', 'dell-vostro-3590-i7-grmgk2-220718-600x600.jpg', 0, 0, 0, '2020-05-21 17:05:25'),
(144, 'Laptop Dell Inspiron 3581 i3', 'DELL-laptop', 11990000, 500000, 20, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i3 Kabylake, 7020U, 2.30 GHz<br>\r\nRAM:	4 GB, DDR4 (2 khe), 2133 MHz<br>\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa tích hợp, Intel® UHD Graphics 620<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 20.66 mm, 2.28 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'dell-inspiron-3581-i3-7020u-4gb-1tb-win10-p75f0055-600x600.jpg', 0, 0, 0, '2020-05-21 17:06:20'),
(145, 'Laptop Dell Vostro 3580 i5', 'DELL-laptop', 14690000, 1000000, 30, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz<br>\r\nRAM:	4 GB, DDR4 (2 khe), 2666 MHz<br>\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa rời, AMD Radeon 520, 2GB<br>\r\nCổng kết nối:	2 x USB 3.1, HDMI, LAN (RJ45), USB 2.0, VGA (D-Sub)<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 20.65 mm, 2.28 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'dell-vostro-3580-i5-8265u-4gb-1tb-2gb-amd520-win10-15-600x600.jpg', 0, 0, 0, '2020-05-21 17:07:03'),
(146, 'Laptop Dell Inspiron 5584 i5', 'DELL-laptop', 17490000, 500000, 14, 'Thông số kỹ thuật<br>\r\nCPU:	Intel Core i5 Coffee Lake, 8265U, 1.60 GHz<br>\r\nRAM:	4 GB, DDR4 (2 khe), 2400 MHz<br>\r\nỔ cứng:	HDD: 1 TB SATA3, Hỗ trợ khe cắm SSD M.2 PCIe<br>\r\nMàn hình:	15.6 inch, Full HD (1920 x 1080)<br>\r\nCard màn hình:	Card đồ họa rời, NVIDIA Geforce MX130, 2GB<br>\r\nCổng kết nối:	HDMI 1.4, 2 x USB 3.1, LAN (RJ45), USB 2.0, USB Type-C<br>\r\nHệ điều hành:	Windows 10 Home SL<br>\r\nThiết kế:	Vỏ nhựa, PIN liền<br>\r\nKích thước:	Dày 22mm, 1.95 kg<br>\r\nThời điểm ra mắt:	2019<br>', 'dell-inspiron-5584-i5-8265u-4gb-1tb-mx130-win10-n-20-1-1-600x600.jpg', 0, 0, 0, '2020-05-21 17:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ship` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `total`, `user_id`, `ship`, `paid`, `detail`, `status`, `create_at`) VALUES
(5, '30.190.000', 1, 'saving', 'momo', 'iPhone 11 Pro 64GB x 1 = 30.190.000đ<br>', 1, '2020-05-18 07:12:39'),
(6, '37.990.000', 3, 'fast', 'atm', 'iPhone 11 Pro Max 256GB x 1 = 37.990.000đ<br>', 0, '2020-05-18 07:27:24'),
(7, '33.990.000', 3, 'saving', 'cash', 'iPhone 11 Pro Max 64GB x 1 = 33.990.000đ<br>', 1, '2020-05-18 07:32:43'),
(8, '33.990.000', 3, 'saving', 'cash', 'iPhone 11 Pro Max 64GB x 1 = 33.990.000đ<br>', 0, '2020-05-18 07:34:13'),
(9, '71.980.000', 3, 'fast', 'cash', 'iPhone 11 Pro Max 64GB x 1 = 33.990.000đ<br>iPhone 11 Pro Max 256GB x 1 = 37.990.000đ<br>', 0, '2020-05-18 07:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first` varchar(255) DEFAULT NULL,
  `last` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT 0,
  `registerby` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first`, `last`, `email`, `address`, `phone`, `password`, `sex`, `registerby`) VALUES
(1, 'Kỳ  Phương Anh', '', 'dangthu@gmail.com', '0', '12345567', '1234567', 1, ''),
(2, 'Phan Thị', ' Hải Yến', 'haiyen@gmail.com', '0', '134124214', '123456', 1, ''),
(6, 'Hùng Nguyễn', NULL, 'hung0913003358@gmail.com', NULL, NULL, NULL, 1, 'facebook'),
(7, 'Nguyễn Hùng', NULL, 'shopsoda1pk@gmail.com', NULL, NULL, NULL, 0, 'facebook');

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
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
