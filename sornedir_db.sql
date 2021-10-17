-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 27 Mar 2018, 20:20:40
-- Sunucu sürümü: 5.7.14
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sornedir_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_turkish_ci NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `like` int(11) NOT NULL,
  `best_answer` tinyint(1) NOT NULL,
  `anonymous` tinyint(1) NOT NULL,
  `ip` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `answers`
--

INSERT INTO `answers` (`id`, `content`, `c_time`, `u_time`, `status`, `like`, `best_answer`, `anonymous`, `ip`, `question_id`, `user_id`, `parent_id`) VALUES
(1, '<p>Rap ve Pop ve Punk ve Rock</p>', '2018-01-31 18:30:36.206314', '2018-01-31 18:30:36.206314', 1, 0, 0, 0, '', 26, 1, NULL),
(2, '<p>Bahardan Dondurma Gibisin</p>', '2018-01-31 18:44:05.960479', '2018-01-31 18:44:05.960479', 1, 0, 0, 1, '', 26, 1, NULL),
(3, '<p>Lenovo G710</p>', '2018-01-31 18:45:02.180256', '2018-01-31 18:45:02.180256', 1, 0, 0, 0, '', 25, 1, NULL),
(4, '<p>Asus</p>', '2018-01-31 18:45:10.784316', '2018-01-31 18:45:10.784316', 1, 0, 0, 0, '', 25, 1, NULL),
(5, '<p>Sen anlat Graradeniz</p>', '2018-01-31 20:46:46.796680', '2018-01-31 20:46:46.796680', 1, 0, 0, 1, '', 13, 1, NULL),
(6, '', '2018-01-31 21:40:46.090003', '2018-01-31 21:40:46.090003', 1, 0, 0, 0, '', 13, 1, NULL),
(7, '<p>&nbsp;Ney hangi film</p>', '2018-01-31 21:43:46.258273', '2018-01-31 21:43:46.258273', 1, 0, 0, 0, '', 13, 1, NULL),
(8, 'Ne demek ney hangi film sen bilmiyor musun hangi film', '2018-01-31 21:48:28.397728', '2018-01-31 21:48:28.397728', 1, 0, 0, 0, '', 13, 1, 7),
(9, 'Şevkat Yerimdar', '2018-01-31 21:53:59.652130', '2018-01-31 21:53:59.652130', 1, 0, 0, 0, '', 13, 1, 7),
(10, 'Dizi m film mi', '2018-01-31 21:54:13.750316', '2018-01-31 21:54:13.750316', 1, 0, 0, 0, '', 13, 1, 7),
(11, 'Kim', '2018-01-31 21:54:20.995893', '2018-01-31 21:54:20.995893', 1, 0, 0, 0, '', 13, 1, 5),
(12, 'Karadeniz', '2018-01-31 21:54:26.804289', '2018-01-31 21:54:26.804789', 1, 0, 0, 0, '', 13, 1, 5),
(13, 'Taam', '2018-01-31 21:54:32.167936', '2018-01-31 21:54:32.167936', 1, 0, 0, 0, '', 13, 1, 5),
(14, 'Adana merkez patlıyor herkes', '2018-02-03 18:17:42.720983', '2018-02-03 18:17:42.720983', 1, 0, 0, 0, '', 26, 1, 2),
(15, 'Hande yener - Kırmızı', '2018-02-03 18:18:04.770250', '2018-02-03 18:18:04.770250', 1, 0, 0, 0, '', 26, 1, 2),
(16, 'Tarkan - Yolla', '2018-02-03 18:18:31.951548', '2018-02-03 18:18:31.951548', 1, 0, 0, 0, '', 26, 1, 2),
(17, 'Aleyna tilki - O sen olsan bari', '2018-02-03 18:18:43.675906', '2018-02-03 18:18:43.679928', 1, 0, 0, 0, '', 26, 1, 2),
(18, 'Despacito', '2018-02-03 18:18:56.168305', '2018-02-03 18:18:56.168305', 1, 0, 0, 0, '', 26, 1, 2),
(19, 'orem Ipsum, dizgi ve baskı endüstrisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak üzere bir yazı galerisini alarak karıştırdığı 1500\'lerden beri endüstri standardı sahte metinler olarak kullanılmıştır.', '2018-02-03 18:19:18.120916', '2018-02-03 18:19:18.120916', 1, 0, 0, 0, '', 26, 1, 2),
(20, 'Beşyüz yıl boyunca varlığını sürdürmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sıçramıştır.', '2018-02-03 18:19:26.421648', '2018-02-03 18:19:26.421648', 1, 0, 0, 0, '', 26, 1, 2),
(21, '1960\'larda Lorem Ipsum pasajları da içeren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum sürümleri içeren masaüstü yayıncılık yazılımları ile popüler olmuştur.', '2018-02-03 18:19:33.211480', '2018-02-03 18:19:33.211480', 1, 0, 0, 0, '', 26, 1, 2),
(22, 'Yinelenen bir sayfa içeriğinin okuyucunun dikkatini dağıttığı bilinen bir gerçektir. Lorem Ipsum kullanmanın amacı, sürekli \'buraya metin gelecek, buraya metin gelecek\' yazmaya kıyasla daha dengeli bir harf dağılımı sağlayarak okunurluğu artırmasıdır', '2018-02-03 18:19:53.358955', '2018-02-03 18:19:53.358955', 1, 0, 0, 0, '', 26, 1, 2),
(23, 'Şu anda birçok masaüstü yayıncılık paketi ve web sayfa düzenleyicisi, varsayılan mıgır metinler olarak Lorem Ipsum kullanmaktadır. Ayrıca arama motorlarında \'lorem ipsum\' anahtar sözcükleri ile arama yapıldığında henüz tasarım aşamasında olan çok sayıda site listelenir. Yıllar içinde, bazen kazara, bazen bilinçli olarak (örneğin mizah katılarak), çeşitli sürümleri geliştirilmiştir.', '2018-02-03 18:20:04.162038', '2018-02-03 18:20:04.162038', 1, 0, 0, 0, '', 26, 1, 2),
(24, 'Yaygın inancın tersine, Lorem Ipsum rastgele sözcüklerden oluşmaz. Kökleri M.Ö. 45 tarihinden bu yana klasik Latin edebiyatına kadar uzanan 2000 yıllık bir geçmişi vardır.', '2018-02-03 18:20:20.031845', '2018-02-03 18:20:20.031845', 1, 0, 0, 0, '', 26, 1, 2),
(25, 'Virginia\'daki Hampden-Sydney College\'dan Latince profesörü Richard McClintock, bir Lorem Ipsum pasajında geçen ve anlaşılması en güç sözcüklerden biri olan \'consectetur\' sözcüğünün klasik edebiyattaki örneklerini incelediğinde kesin bir kaynağa ulaşmıştır.', '2018-02-03 18:20:32.853119', '2018-02-03 18:20:32.853119', 1, 0, 0, 0, '', 26, 1, 2),
(26, 'Lorm Ipsum, Çiçero tarafından M.Ö. 45 tarihinde kaleme alınan "de Finibus Bonorum et Malorum" (İyi ve Kötünün Uç Sınırları) eserinin 1.10.32 ve 1.10.33 sayılı bölümlerinden gelmektedir.', '2018-02-03 18:20:44.967126', '2018-02-03 18:20:44.967126', 1, 0, 0, 0, '', 26, 1, 2),
(27, 'Bu kitap, ahlak kuramı üzerine bir tezdir ve Rönesans döneminde çok popüler olmuştur.', '2018-02-03 18:20:54.308551', '2018-02-03 18:20:54.308551', 1, 0, 0, 0, '', 26, 1, 2),
(28, 'Lorem Ipsum pasajının ilk satırı olan "Lorem ipsum dolor sit amet" 1.10.32 sayılı bölümdeki bir satırdan gelmektedir.', '2018-02-03 18:21:03.296559', '2018-02-03 18:21:03.296559', 1, 0, 0, 0, '', 26, 1, 2),
(29, 'I was wondering if there\'s a way to order the regular comments by \'ordering = ["-timestamp"], and ordering the replies on the comments by \'ordering = ["timestamp"]\'. If so, where would I put the Meta class for the replies?﻿', '2018-02-04 21:36:06.457869', '2018-02-04 21:36:06.457869', 1, 0, 0, 0, '', 26, 1, 19),
(30, 'SAYFAYI BEĞEN,', '2018-02-04 22:00:53.676651', '2018-02-04 22:00:53.676651', 1, 0, 0, 0, '', 26, 1, 14),
(31, 'GÖRSELİ BEĞENİP / HERKESE AÇIK OLARAK PAYLAŞ', '2018-02-04 22:01:07.693548', '2018-02-04 22:01:07.693548', 1, 0, 0, 0, '', 26, 1, 14),
(32, 'When the silent keyword is used on a cycle definition, the silence automatically applies to all subsequent uses of that specific cycle tag.', '2018-02-04 22:02:13.188403', '2018-02-04 22:02:13.188403', 1, 0, 0, 0, '', 26, 1, 14),
(33, 'Evaluates a variable, and if that variable is “true” the contents of the block are displayed', '2018-02-04 22:02:39.386531', '2018-02-04 22:02:39.386531', 1, 0, 0, 0, '', 26, 1, 14),
(34, '<p>Hee detay vercen mi?</p>', '2018-02-04 22:18:06.399303', '2018-02-04 22:18:06.399303', 1, 0, 0, 0, '', 24, 1, NULL),
(35, 'Tarkan - Adını ben koyayım mı?', '2018-02-04 23:07:04.984087', '2018-02-04 23:07:04.984087', 1, 0, 0, 0, '', 26, 1, 16),
(36, '<p>Eminem - Till I Collapse [HD]</p>', '2018-02-04 23:44:30.635259', '2018-02-04 23:44:30.635259', 1, 0, 0, 0, '', 26, 1, NULL),
(37, '<p>sfa asf&nbsp;sfa asf&nbsp;sfa asf&nbsp;sfa asf&nbsp;sfa asf&nbsp;sfa asf&nbsp;sfa asf&nbsp;</p>', '2018-02-05 22:49:34.032737', '2018-02-05 22:49:34.032737', 1, 0, 0, 1, '', 26, 1, NULL),
(38, 'Yok yok valla billla', '2018-02-05 22:51:41.100361', '2018-02-05 22:51:41.100361', 1, 0, 0, 0, '', 26, 1, 15),
(39, 'sfsdgdsg sdgdsg', '2018-02-19 16:17:03.534995', '2018-02-19 16:17:03.534995', 1, 0, 0, 0, '', 26, 1, 2),
(40, '<p>&nbsp;asfa<strong>sf fa safs</strong> afs&nbsp; safas f<u><em>a fsfas</em></u> a</p>', '2018-02-19 16:18:10.554461', '2018-02-19 16:18:10.554963', 1, 0, 0, 0, '', 9, 1, NULL),
(41, '<p>Duis ornare sodales bibendum. Ut ac posuere tortor. Aliquam iaculis imperdiet augue et aliquet. Maecenas vitae quam pretium, volutpat nunc sed, interdum libero. Morbi consectetur tristique mi eget consectetur. Ut pretium tortor vel ligula dictum, sed pellentesque neque posuere. Ut purus lectus, accumsan sit amet feugiat nec, fermentum a leo. Vestibulum sed lacus sit amet arcu fringilla mattis eget in felis. In aliquet risus aliquet nunc cursus elementum. Nulla odio leo, pretium eget tincidunt sit amet, hendrerit nec massa. Phasellus facilisis laoreet congue. Donec nisi diam, euismod in tempor non, rutrum sed erat. Curabitur pulvinar mauris at est ultrices, in suscipit erat efficitur. Sed aliquam malesuada dui, in pretium nibh consectetur vel.</p>', '2018-02-19 16:21:49.729420', '2018-02-19 16:21:49.729420', 1, 0, 0, 1, '', 27, 1, NULL),
(42, 'ljhkj hkh kj kj gkjg k', '2018-02-19 16:22:17.468273', '2018-02-19 16:22:17.468273', 1, 0, 0, 0, '', 27, 1, 41),
(43, 'Eminem - Şey kit ap şekerim', '2018-02-23 19:57:25.926749', '2018-02-23 19:57:25.926749', 1, 0, 0, 0, '', 26, 1, 36),
(44, '<p>sfa afs safsfa afs safsfa afs safsfa afs safsfa afs safsfa afs safsfa afs safsfa afs safsfa afs safsfa afs safsfa afs safsfa afs saf</p>', '2018-02-23 20:03:25.022769', '2018-02-23 20:03:25.022769', 1, 0, 0, 0, '', 26, 1, NULL),
(45, '', '2018-02-23 20:05:19.618075', '2018-02-23 20:05:19.618075', 1, 0, 0, 0, '', 26, 1, NULL),
(46, '<p>Ne filmi ya dizi dizi</p>', '2018-02-24 21:34:42.678342', '2018-02-24 21:34:42.678342', 1, 0, 0, 0, '', 13, 1, NULL),
(47, '<p>Ne filmi ya dizi dizi dsaf saf a</p>', '2018-02-24 21:36:45.514899', '2018-02-24 21:36:45.515898', 1, 0, 0, 0, '', 13, 1, NULL),
(48, '<p>&nbsp;sgds gdsg dsgdsg ds</p>', '2018-02-24 21:38:38.608696', '2018-02-24 21:38:38.608696', 1, 0, 0, 0, '', 13, 1, NULL),
(49, '<p>f qwrf3 t43g egds gdsg ds</p>', '2018-02-24 21:40:26.472568', '2018-02-24 21:40:26.472568', 1, 0, 0, 0, '', 13, 1, NULL),
(50, '<p>Mr. Robot</p>', '2018-02-24 21:41:49.620760', '2018-02-24 21:41:49.621788', 1, 0, 0, 1, '', 13, 1, NULL),
(51, '<p>Geym of tırons</p>', '2018-02-24 21:42:47.426662', '2018-02-24 21:42:47.426662', 1, 0, 0, 1, '', 13, 1, NULL),
(52, '<p>Hi&ccedil; bir bilgim yok gardaş</p>', '2018-02-24 21:43:53.610765', '2018-02-24 21:43:53.610765', 1, 0, 0, 0, '', 6, 1, NULL),
(53, '<p>Sana ne lazım</p>', '2018-02-24 21:49:36.316016', '2018-02-24 21:49:36.316016', 1, 0, 0, 1, '', 17, 1, NULL),
(54, '<p>Ufak tefek cinayetler</p>', '2018-02-25 21:08:26.676433', '2018-02-25 21:08:26.676433', 1, 0, 0, 0, '', 23, 1, NULL),
(55, '<p>Ahada verdim cevabı</p>', '2018-02-25 21:25:55.939396', '2018-02-25 21:25:55.939396', 1, 0, 0, 0, '', 24, 1, NULL),
(56, '<p>Ben Iphone kullanmıyorum</p>', '2018-03-12 11:49:34.971453', '2018-03-12 11:49:34.971453', 1, 0, 0, 1, '', 31, 1, NULL),
(57, '1', '2018-03-12 11:49:47.997589', '2018-03-12 11:49:47.997589', 1, 0, 0, 0, '', 31, 1, 56),
(58, '2', '2018-03-12 11:49:53.954184', '2018-03-12 11:49:53.954184', 1, 0, 0, 0, '', 31, 1, 56);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answer_votes`
--

CREATE TABLE `answer_votes` (
  `id` int(11) NOT NULL,
  `vote` tinyint(1) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `answer_votes`
--

INSERT INTO `answer_votes` (`id`, `vote`, `answer_id`, `user_id`) VALUES
(1, 1, 36, 1),
(2, 1, 1, 1),
(3, 1, 36, 4),
(4, 1, 2, 4),
(5, 1, 41, 4),
(6, 1, 3, 1),
(8, 1, 55, 1),
(9, 1, 56, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add Üye Bilgisi', 6, 'add_profile'),
(17, 'Can change Üye Bilgisi', 6, 'change_profile'),
(18, 'Can delete Üye Bilgisi', 6, 'delete_profile'),
(19, 'Can add Meslek', 7, 'add_meslekler'),
(20, 'Can change Meslek', 7, 'change_meslekler'),
(21, 'Can delete Meslek', 7, 'delete_meslekler'),
(22, 'Can add kategoriler', 8, 'add_kategoriler'),
(23, 'Can change kategoriler', 8, 'change_kategoriler'),
(24, 'Can delete kategoriler', 8, 'delete_kategoriler'),
(25, 'Can add Cevap', 9, 'add_cevaplar'),
(26, 'Can change Cevap', 9, 'change_cevaplar'),
(27, 'Can delete Cevap', 9, 'delete_cevaplar'),
(28, 'Can add Etiket', 10, 'add_etiketler'),
(29, 'Can change Etiket', 10, 'change_etiketler'),
(30, 'Can delete Etiket', 10, 'delete_etiketler'),
(31, 'Can add Sorular', 11, 'add_sorular'),
(32, 'Can change Sorular', 11, 'change_sorular'),
(33, 'Can delete Sorular', 11, 'delete_sorular'),
(34, 'Can add page view counter', 12, 'add_pageviewcounter'),
(35, 'Can change page view counter', 12, 'change_pageviewcounter'),
(36, 'Can delete page view counter', 12, 'delete_pageviewcounter'),
(37, 'Can add Cevap Oyu', 13, 'add_cevap_oylari'),
(38, 'Can change Cevap Oyu', 13, 'change_cevap_oylari'),
(39, 'Can delete Cevap Oyu', 13, 'delete_cevap_oylari'),
(40, 'Can add Soru Oyu', 14, 'add_soru_oylari'),
(41, 'Can change Soru Oyu', 14, 'change_soru_oylari'),
(42, 'Can delete Soru Oyu', 14, 'delete_soru_oylari');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `description` longtext COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `photo` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`, `seo_title`, `description`, `status`, `c_time`, `photo`) VALUES
(1, 'Aşk & Sevgi', 'ask-ve-sevgi', '', 1, '2018-01-15 09:22:10.301307', ''),
(2, 'Sağlık & Hijyen', 'saglik-ve-hijyen', '', 1, '2018-01-15 09:22:32.247750', ''),
(3, 'Diyet & Zinde Yaşam', 'diyet-ve-zinde-yasam', '', 1, '2018-01-15 09:28:11.284020', ''),
(4, 'Alışveriş ve Hediyeler', 'alisveris-ve-hediyeler', '', 1, '2018-01-15 09:28:23.644067', ''),
(5, 'Kariyer', 'kariyer', '', 1, '2018-01-15 09:28:38.004021', ''),
(6, 'Eğitim', 'egitim', '', 1, '2018-01-15 09:28:42.979312', ''),
(7, 'Gündem', 'gundem', '', 1, '2018-01-15 09:28:53.789121', ''),
(8, 'Güzellik & Bakım', 'guzellik-ve-bakim', '', 1, '2018-01-15 09:29:04.907338', ''),
(9, 'İnternet & Teknoloji', 'internet-ve-teknoloji', '', 1, '2018-01-15 09:29:21.087628', ''),
(10, 'Spor', 'spor', '', 1, '2018-01-15 09:31:35.581388', ''),
(11, 'Seyahat & Tatil', 'seyahat-ve-tatil', '', 1, '2018-01-15 09:31:45.767458', ''),
(12, 'Sosyal Medya', 'sosyal-medya', '', 1, '2018-01-15 09:31:55.024038', ''),
(13, 'Din & İslamiyet', 'din-ve-islamiyet', '', 1, '2018-01-15 09:32:42.761463', ''),
(14, 'Ne Nedir?', 'ne-nedir', '', 1, '2018-01-15 09:33:00.864348', ''),
(15, 'Kültür & Sanat', 'kultur-ve-sanat', '', 1, '2018-01-15 09:39:40.896978', 'category-images/Screenshot_101.jpg'),
(16, 'Başarı & Para', 'basari-ve-para', '', 1, '2018-01-15 11:29:22.325936', 'category-images/the-5000-in-spending-money-doesnt-go-very-far-14828493531.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_turkish_ci,
  `object_repr` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_turkish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-01-12 22:27:18.396856', '1', 'asw13tr', 2, '[{"changed": {"fields": ["first_name", "last_name", "birthday", "location", "website", "facebook"]}}]', 6, 1),
(2, '2018-01-12 22:27:30.351436', '1', 'asw13tr', 2, '[{"changed": {"fields": ["gender"]}}]', 6, 1),
(3, '2018-01-13 18:02:33.649991', '734', 'Öğrenci', 1, '[{"added": {}}]', 7, 1),
(4, '2018-01-13 18:02:36.949604', '735', 'Diğer', 1, '[{"added": {}}]', 7, 1),
(5, '2018-01-13 21:13:19.035499', '1', 'Deneme kategori yaptık', 1, '[{"added": {}}]', 8, 1),
(6, '2018-01-13 21:13:49.540011', '1', 'Deneme kategori yaptık', 3, '', 8, 1),
(7, '2018-01-15 09:22:10.304309', '1', 'Aşk & Sevgi', 1, '[{"added": {}}]', 8, 1),
(8, '2018-01-15 09:22:32.248723', '2', 'Sağlık ve Hijyen', 1, '[{"added": {}}]', 8, 1),
(9, '2018-01-15 09:28:11.286021', '3', 'Diyet ve Zinde Yaşam', 1, '[{"added": {}}]', 8, 1),
(10, '2018-01-15 09:28:23.646069', '4', 'Alışveriş ve Hediyeler', 1, '[{"added": {}}]', 8, 1),
(11, '2018-01-15 09:28:38.006021', '5', 'Kariyer', 1, '[{"added": {}}]', 8, 1),
(12, '2018-01-15 09:28:42.981315', '6', 'Eğitim', 1, '[{"added": {}}]', 8, 1),
(13, '2018-01-15 09:28:53.791120', '7', 'Gündem', 1, '[{"added": {}}]', 8, 1),
(14, '2018-01-15 09:29:04.909339', '8', 'Güzellik ve Bakım', 1, '[{"added": {}}]', 8, 1),
(15, '2018-01-15 09:29:21.089135', '9', 'İnternet ve Teknoloji', 1, '[{"added": {}}]', 8, 1),
(16, '2018-01-15 09:31:35.582389', '10', 'Spor', 1, '[{"added": {}}]', 8, 1),
(17, '2018-01-15 09:31:45.769487', '11', 'Seyahat ve Tatil', 1, '[{"added": {}}]', 8, 1),
(18, '2018-01-15 09:31:55.026059', '12', 'Sosyal Medya', 1, '[{"added": {}}]', 8, 1),
(19, '2018-01-15 09:32:42.763464', '13', 'Din ve İslamiyet', 1, '[{"added": {}}]', 8, 1),
(20, '2018-01-15 09:33:00.866348', '14', 'Ne Nedir?', 1, '[{"added": {}}]', 8, 1),
(21, '2018-01-15 09:39:40.902997', '15', 'Kültür & Sanat', 1, '[{"added": {}}]', 8, 1),
(22, '2018-01-15 09:41:36.680105', '1', 'Aşk & Sevgi', 2, '[]', 8, 1),
(23, '2018-01-15 09:42:18.634390', '2', 'Sağlık & Hijyen', 2, '[{"changed": {"fields": ["name"]}}]', 8, 1),
(24, '2018-01-15 09:42:25.303193', '8', 'Güzellik & Bakım', 2, '[{"changed": {"fields": ["name"]}}]', 8, 1),
(25, '2018-01-15 09:42:27.557194', '3', 'Diyet & Zinde Yaşam', 2, '[{"changed": {"fields": ["name"]}}]', 8, 1),
(26, '2018-01-15 09:42:35.320352', '9', 'İnternet & Teknoloji', 2, '[{"changed": {"fields": ["name"]}}]', 8, 1),
(27, '2018-01-15 09:42:37.329399', '11', 'Seyahat & Tatil', 2, '[{"changed": {"fields": ["name"]}}]', 8, 1),
(28, '2018-01-15 09:42:39.640946', '13', 'Din & İslamiyet', 2, '[{"changed": {"fields": ["name"]}}]', 8, 1),
(29, '2018-01-15 09:49:08.233746', '13', 'Din & İslamiyet', 2, '[]', 8, 1),
(30, '2018-01-15 09:50:11.992577', '15', 'Kültür & Sanat', 2, '[]', 8, 1),
(31, '2018-01-15 09:51:09.867074', '15', 'Kültür & Sanat', 2, '[]', 8, 1),
(32, '2018-01-15 09:51:11.930854', '15', 'Kültür & Sanat', 2, '[]', 8, 1),
(33, '2018-01-15 09:52:06.932344', '15', 'Kültür & Sanat', 2, '[]', 8, 1),
(34, '2018-01-15 10:36:01.385428', '15', 'Kültür & Sanat', 2, '[]', 8, 1),
(35, '2018-01-15 11:28:41.721749', '15', 'Kültür & Sanat', 2, '[]', 8, 1),
(36, '2018-01-15 11:29:22.327938', '16', 'Başarı & Para', 1, '[{"added": {}}]', 8, 1),
(37, '2018-01-15 11:32:51.340320', '17', 'Başarı & Para', 1, '[{"added": {}}]', 8, 1),
(38, '2018-01-15 11:43:44.334741', '17', 'Başarı & Para', 2, '[]', 8, 1),
(39, '2018-01-16 11:31:41.950295', '1', 'php', 1, '[{"added": {}}]', 10, 1),
(40, '2018-01-16 11:31:47.314345', '2', 'jquery', 1, '[{"added": {}}]', 10, 1),
(41, '2018-01-16 11:31:49.982298', '3', 'css', 1, '[{"added": {}}]', 10, 1),
(42, '2018-01-16 11:31:52.100588', '4', 'html', 1, '[{"added": {}}]', 10, 1),
(43, '2018-01-16 11:31:57.650524', '5', 'nodejs', 1, '[{"added": {}}]', 10, 1),
(44, '2018-01-16 11:32:00.447305', '6', 'django', 1, '[{"added": {}}]', 10, 1),
(45, '2018-01-16 11:32:03.842334', '7', 'python', 1, '[{"added": {}}]', 10, 1),
(46, '2018-01-16 11:32:08.837472', '8', 'ruby', 1, '[{"added": {}}]', 10, 1),
(47, '2018-01-16 11:32:16.430429', '9', 'c#', 1, '[{"added": {}}]', 10, 1),
(48, '2018-01-16 11:32:23.607045', '10', 'c++', 1, '[{"added": {}}]', 10, 1),
(49, '2018-01-16 11:32:25.680659', '11', 'c', 1, '[{"added": {}}]', 10, 1),
(50, '2018-01-16 11:32:27.487243', '12', 'c+', 1, '[{"added": {}}]', 10, 1),
(51, '2018-01-18 12:22:20.374775', '1', 'php', 2, '[{"changed": {"fields": ["description"]}}]', 10, 1),
(52, '2018-01-18 12:22:40.791550', '6', 'django', 2, '[{"changed": {"fields": ["description"]}}]', 10, 1),
(53, '2018-01-18 19:56:09.080085', '8', 'Ruby', 2, '[{"changed": {"fields": ["name", "description"]}}]', 10, 1),
(54, '2018-01-18 19:56:36.451263', '13', 'Ruby on Rails', 1, '[{"added": {}}]', 10, 1),
(55, '2018-01-18 19:57:08.671367', '14', 'Asp.Net', 1, '[{"added": {}}]', 10, 1),
(56, '2018-01-18 19:57:53.777927', '15', 'Java', 1, '[{"added": {}}]', 10, 1),
(57, '2018-01-18 19:58:11.440117', '16', 'Kotlin', 1, '[{"added": {}}]', 10, 1),
(58, '2018-01-18 19:58:37.515481', '17', 'Laravel', 1, '[{"added": {}}]', 10, 1),
(59, '2018-01-18 19:59:01.824779', '18', 'CodeIgniter', 1, '[{"added": {}}]', 10, 1),
(60, '2018-01-18 19:59:58.210632', '19', 'JavaScript', 1, '[{"added": {}}]', 10, 1),
(61, '2018-01-18 20:00:44.142396', '20', 'Arduino', 1, '[{"added": {}}]', 10, 1),
(62, '2018-01-18 20:01:15.609920', '21', 'Go Lang', 1, '[{"added": {}}]', 10, 1),
(63, '2018-01-18 20:01:44.280430', '22', 'Actionscript', 1, '[{"added": {}}]', 10, 1),
(64, '2018-01-24 19:52:02.065364', '5', 'Acaba işe yarayacak mı?', 3, '', 11, 1),
(65, '2018-01-24 19:52:02.115639', '4', 'Acaba işe yarayacak mı?', 3, '', 11, 1),
(66, '2018-01-24 19:52:02.118614', '3', 'Acaba işe yarayacak mı?', 3, '', 11, 1),
(67, '2018-01-24 19:52:02.121616', '2', 'Acaba işe yarayacak mı?', 3, '', 11, 1),
(68, '2018-01-24 20:08:47.674583', '6', 'Codeigniter\'da nasıl resim upload edebilirim?', 2, '[{"changed": {"fields": ["tags"]}}]', 11, 1),
(69, '2018-01-24 21:01:51.697876', '8', 'Midem aşırı yanıyor acil önerisi olan var mı?', 2, '[{"changed": {"fields": ["tags"]}}]', 11, 1),
(70, '2018-01-26 18:55:56.378954', '11', ' asfas fasf asf asfg as', 3, '', 11, 1),
(71, '2018-01-26 18:55:56.383958', '10', 'Hangi filmi izliyorsunuz?', 3, '', 11, 1),
(72, '2018-01-26 19:54:56.995977', '12', 'Hangi filmi izliyorsunuz?', 3, '', 11, 1),
(73, '2018-01-26 21:05:58.874598', '21', 'Şuan hangi filmi izliyorsun', 3, '', 11, 1),
(74, '2018-01-26 21:05:58.878596', '20', 'Şuan hangi filmi izliyorsun', 3, '', 11, 1),
(75, '2018-01-26 21:05:58.881598', '19', 'Şuan hangi filmi izliyorsun', 3, '', 11, 1),
(76, '2018-01-26 21:05:58.884599', '18', 'Şuan hangi filmi izliyorsun', 3, '', 11, 1),
(77, '2018-01-26 21:05:58.888602', '16', 'Hangi film demiştin', 3, '', 11, 1),
(78, '2018-01-26 21:05:58.891603', '15', 'Hangi film demiştin', 3, '', 11, 1),
(79, '2018-01-26 21:05:58.894607', '14', 'Hangi film demiştin', 3, '', 11, 1),
(80, '2018-02-24 20:13:23.454704', '16', 'Başarı & Para', 2, '[{"changed": {"fields": ["photo"]}}]', 8, 1),
(81, '2018-02-24 20:14:09.727687', '15', 'Kültür & Sanat', 2, '[{"changed": {"fields": ["photo"]}}]', 8, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(6, 'uye', 'profile'),
(7, 'uye', 'meslekler'),
(8, 'icerikler', 'kategoriler'),
(9, 'icerikler', 'cevaplar'),
(10, 'icerikler', 'etiketler'),
(11, 'icerikler', 'sorular'),
(12, 'pageviews', 'pageviewcounter'),
(13, 'icerikler', 'cevap_oylari'),
(14, 'icerikler', 'soru_oylari');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-01-12 22:23:52.277158'),
(2, 'contenttypes', '0002_remove_content_type_name', '2018-01-12 22:23:52.386534'),
(3, 'auth', '0001_initial', '2018-01-12 22:23:52.949014'),
(4, 'auth', '0002_alter_permission_name_max_length', '2018-01-12 22:23:52.995914'),
(5, 'auth', '0003_alter_user_email_max_length', '2018-01-12 22:23:53.027141'),
(6, 'auth', '0004_alter_user_username_opts', '2018-01-12 22:23:53.042738'),
(7, 'auth', '0005_alter_user_last_login_null', '2018-01-12 22:23:53.074015'),
(8, 'auth', '0006_require_contenttypes_0002', '2018-01-12 22:23:53.074015'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2018-01-12 22:23:53.105246'),
(10, 'auth', '0008_alter_user_username_max_length', '2018-01-12 22:23:53.120863'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2018-01-12 22:23:53.152141'),
(12, 'uye', '0001_initial', '2018-01-12 22:23:53.949022'),
(13, 'admin', '0001_initial', '2018-01-12 22:23:54.214624'),
(14, 'admin', '0002_logentry_remove_auto_add', '2018-01-12 22:23:54.245901'),
(15, 'sessions', '0001_initial', '2018-01-12 22:23:54.324028'),
(16, 'uye', '0002_meslekler', '2018-01-13 17:02:50.372427'),
(17, 'uye', '0003_profile_job', '2018-01-13 17:03:14.834909'),
(18, 'uye', '0004_auto_20180113_2100', '2018-01-13 18:01:00.454992'),
(21, 'icerikler', '0001_initial', '2018-01-15 08:47:59.100832'),
(20, 'icerikler', '0002_delete_kategoriler', '2018-01-13 21:14:39.026960'),
(22, 'icerikler', '0002_auto_20180115_1441', '2018-01-15 11:43:33.386765'),
(23, 'icerikler', '0003_auto_20180115_1445', '2018-01-15 11:45:32.648619'),
(24, 'icerikler', '0004_auto_20180131_2000', '2018-01-31 18:27:24.368309'),
(25, 'icerikler', '0005_remove_cevaplar_parent', '2018-01-31 18:27:24.493311'),
(26, 'icerikler', '0006_cevaplar_parent', '2018-01-31 18:27:24.790183'),
(27, 'icerikler', '0007_auto_20180201_0103', '2018-01-31 22:03:17.459049'),
(28, 'icerikler', '0008_auto_20180205_0023', '2018-02-04 21:23:28.288978'),
(29, 'pageviews', '0001_initial', '2018-02-12 19:11:38.882480'),
(30, 'icerikler', '0009_cevap_oylari_soru_oylari', '2018-02-23 20:28:35.629677'),
(31, 'icerikler', '0010_auto_20180224_2309', '2018-02-24 20:10:02.568176'),
(32, 'icerikler', '0011_sorular_a_time', '2018-02-24 21:30:16.012420');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_turkish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4vk99vqxf6btu705n9bjk488bfhrjl89', 'OGJkNzUxYjkyNTlmOGU5ODY1NGFkYTU3M2I0ZjI5MDZhMWMxNWEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjI5YTNmZDFmNTNlMmZkYzA0ZDdjMjMyYzU3Yjk2MDYzZWYxM2I4In0=', '2018-01-26 22:41:41.170026'),
('04m4zsdhjfmkro1kz8yyfjqerfka3sgi', 'OGJkNzUxYjkyNTlmOGU5ODY1NGFkYTU3M2I0ZjI5MDZhMWMxNWEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjI5YTNmZDFmNTNlMmZkYzA0ZDdjMjMyYzU3Yjk2MDYzZWYxM2I4In0=', '2018-01-27 18:01:37.861302'),
('anczxjlokd4bez4d5l1wvckperpq2fis', 'OGJkNzUxYjkyNTlmOGU5ODY1NGFkYTU3M2I0ZjI5MDZhMWMxNWEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjI5YTNmZDFmNTNlMmZkYzA0ZDdjMjMyYzU3Yjk2MDYzZWYxM2I4In0=', '2018-02-07 11:22:07.962110'),
('2b3m17zty3d8hxo82hwqnnh088efxu91', 'OGJkNzUxYjkyNTlmOGU5ODY1NGFkYTU3M2I0ZjI5MDZhMWMxNWEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjI5YTNmZDFmNTNlMmZkYzA0ZDdjMjMyYzU3Yjk2MDYzZWYxM2I4In0=', '2018-02-22 17:29:39.818391'),
('yghqnuruqw4vtyskjq4qmm3s88xtn4dx', 'MDU2NjFhMzA5NzBhZTEzOTliMjU5MDFhYjQwNmIwMjg0ODYyZGJiMzp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk0MWRmMzc2YWZiZTFkYzdhMjVkYjMxY2ZhY2U2NjM3NDFjMGU3In0=', '2018-03-10 14:40:47.725686'),
('jxvivuxhy1pwkzpf49do85rmaq8vwxv4', 'OGJkNzUxYjkyNTlmOGU5ODY1NGFkYTU3M2I0ZjI5MDZhMWMxNWEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjI5YTNmZDFmNTNlMmZkYzA0ZDdjMjMyYzU3Yjk2MDYzZWYxM2I4In0=', '2018-03-09 19:53:07.609494'),
('obylwfmwier08a3inrrrhw64uj3kbwl7', 'OGJkNzUxYjkyNTlmOGU5ODY1NGFkYTU3M2I0ZjI5MDZhMWMxNWEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjI5YTNmZDFmNTNlMmZkYzA0ZDdjMjMyYzU3Yjk2MDYzZWYxM2I4In0=', '2018-03-11 20:43:46.769141'),
('elh0l9gwo1b9ooip4urnrobgmo72hnej', 'OGJkNzUxYjkyNTlmOGU5ODY1NGFkYTU3M2I0ZjI5MDZhMWMxNWEzZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjI5YTNmZDFmNTNlMmZkYzA0ZDdjMjMyYzU3Yjk2MDYzZWYxM2I4In0=', '2018-03-26 11:48:34.441489');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `meslekler`
--

CREATE TABLE `meslekler` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `meslekler`
--

INSERT INTO `meslekler` (`id`, `name`, `status`) VALUES
(1, 'Acentacı', 1),
(2, 'Acil durum yönetmeni', 1),
(3, 'Adli tabip', 1),
(4, 'Agronomist', 1),
(5, 'Ağ yöneticisi', 1),
(6, 'Aşçı', 1),
(7, 'Aşçıbaşı', 1),
(8, 'Ahşap tekne yapımcısı', 1),
(9, 'Aile hekimi', 1),
(10, 'Aktar', 1),
(11, 'Akortçu', 1),
(12, 'Aktör', 1),
(13, 'Aktüer', 1),
(14, 'Aktris', 1),
(15, 'Akustikçi', 1),
(16, 'Albay', 1),
(17, 'Ambalajcı', 1),
(18, 'Ambarcı', 1),
(19, 'Ambulans şoförü', 1),
(20, 'Amiral', 1),
(21, 'Anahtarcı', 1),
(22, 'Analist', 1),
(23, 'Anestezi uzmanı', 1),
(24, 'Anestezi Teknikeri', 1),
(25, 'Animatör', 1),
(26, 'Antika satıcısı', 1),
(27, 'Antropolog', 1),
(28, 'Apartman yöneticisi', 1),
(29, 'Araba satıcısı', 1),
(30, 'Araba yıkayıcısı', 1),
(31, 'Arabacı', 1),
(32, 'Arabulucu', 1),
(33, 'Araştırmacı', 1),
(34, 'Arıcı', 1),
(35, 'Arkeolog', 1),
(36, 'Armatör', 1),
(37, 'Arpist', 1),
(38, 'Arşivci', 1),
(39, 'Artist', 1),
(40, 'Asansörcü', 1),
(41, 'Asistan', 1),
(42, 'Asker', 1),
(43, 'Astrofizikçi', 1),
(44, 'Astrolog', 1),
(45, 'Astronom', 1),
(46, 'Astronot', 1),
(47, 'Astsubay', 1),
(48, 'Atlet', 1),
(49, 'Av bekçisi', 1),
(50, 'Avcı', 1),
(51, 'Avizeci', 1),
(52, 'Avukat', 1),
(53, 'Ayakçı (otogar, lokanta)', 1),
(54, 'Ayakkabı boyacısı', 1),
(55, 'Ayakkabı tamircisi', 1),
(56, 'Ayakkabıcı', 1),
(57, 'Ayı oynatıcısı', 1),
(58, 'Araba tamircisi', 1),
(59, 'Bacacı', 1),
(60, 'Badanacı', 1),
(61, 'Baharatçı', 1),
(62, 'Bahçe bitkileri uzmanı', 1),
(63, 'Bahçıvan', 1),
(64, 'Bakan', 1),
(65, 'Bakıcı', 1),
(66, 'Bakırcı', 1),
(67, 'Bakkal', 1),
(68, 'Bakteriyolog', 1),
(69, 'Balıkçı', 1),
(70, 'Balon pilotu', 1),
(71, 'Bankacı', 1),
(72, 'Banker', 1),
(73, 'Barmen', 1),
(74, 'Barmeyd', 1),
(75, 'Basketbolcu', 1),
(76, 'Başbakan', 1),
(77, 'Başçavuş', 1),
(78, 'Başdümenci', 1),
(79, 'Başhemşire', 1),
(80, 'Başkan', 1),
(81, 'Başkomiser', 1),
(82, 'Başpiskopos', 1),
(83, 'Başrahip', 1),
(84, 'Belediye başkanı', 1),
(85, 'Belediye meclisi üyesi', 1),
(86, 'Benzinci', 1),
(87, 'Berber', 1),
(88, 'Besteci', 1),
(89, 'Biletçi', 1),
(90, 'Bilgisayar mühendisi', 1),
(91, 'Bilgisayar programcısı', 1),
(92, 'Bilgisayar tamircisi', 1),
(93, 'Bilimadamı', 1),
(94, 'Bilirkişi', 1),
(95, 'Binicilik', 1),
(96, 'Biracı', 1),
(97, 'Bisikletçi', 1),
(98, 'Biyografi yazarı', 1),
(99, 'Biyolog', 1),
(100, 'Bobinajcı', 1),
(101, 'Bombacı', 1),
(102, 'Bomba imhacı', 1),
(103, 'Borsacı', 1),
(104, 'Borucu', 1),
(105, 'Botanikçi', 1),
(106, 'Boyacı', 1),
(107, 'Bozacı', 1),
(108, 'Böcekbilimci', 1),
(109, 'Börekçi', 1),
(110, 'Bulaşıkçı', 1),
(111, 'Buldozer operatörü', 1),
(112, 'Bütçe uzmanı', 1),
(113, 'Büyükelçi', 1),
(114, 'Besicilik', 1),
(115, 'Bebek Bakıcısı', 1),
(116, 'Bilgi İşlemci', 1),
(117, 'Camcı', 1),
(118, 'Cerrah', 1),
(119, 'Celep', 1),
(120, 'Cellat', 1),
(121, 'Cost Control', 1),
(122, 'Cillopçu', 1),
(123, 'Cumhurbaşkanı', 1),
(124, 'Çamaşırcı', 1),
(125, 'Çantacı', 1),
(126, 'Çarkçı', 1),
(127, 'Çatıcı', 1),
(128, 'Çaycı', 1),
(129, 'Çevirmen', 1),
(130, 'Çevrebilimci', 1),
(131, 'Çevre Mühendisi', 1),
(132, 'Çeyizci', 1),
(133, 'Çıkıkçı', 1),
(134, 'Çıkrıkçı', 1),
(135, 'Çiçekçi', 1),
(136, 'Çiftçi', 1),
(137, 'Çiftlik işletici', 1),
(138, 'Çikolatacı', 1),
(139, 'Çilingir', 1),
(140, 'Çinici', 1),
(141, 'Çitçi', 1),
(142, 'Çoban', 1),
(143, 'Çocuk doktoru', 1),
(144, 'Çorapçı', 1),
(145, 'Çöp işçisi', 1),
(146, 'Çöpçü', 1),
(147, 'Çırak', 1),
(148, 'Çevik Kuvvet', 1),
(149, 'Dadı', 1),
(150, 'Daktilograf', 1),
(151, 'Dalgıç', 1),
(152, 'Damıtıcı', 1),
(153, 'Danışman', 1),
(154, 'Dansöz', 1),
(155, 'Davulcu', 1),
(156, 'Debbağ', 1),
(157, 'Dedektif', 1),
(158, 'Değirmen işçisi', 1),
(159, 'Değirmenci', 1),
(160, 'Demirci', 1),
(161, 'Demiryolu işçisi', 1),
(162, 'Denetçi', 1),
(163, 'Denetleyici', 1),
(164, 'Denizci', 1),
(165, 'Depocu', 1),
(166, 'Derici', 1),
(167, 'Desinatör', 1),
(168, 'Devlet memuru', 1),
(169, 'Dilci', 1),
(170, 'Dilenci', 1),
(171, 'Diplomat', 1),
(172, 'Diş hekimi', 1),
(173, 'Diyetisyen', 1),
(174, 'Dizgici', 1),
(175, 'Doğalgazcı', 1),
(176, 'Doğramacı', 1),
(177, 'Doğum uzmanı', 1),
(178, 'Dok işçisi', 1),
(179, 'Dokumacı', 1),
(180, 'Doktor', 1),
(181, 'Dondurmacı', 1),
(182, 'Dökümcü', 1),
(183, 'Döşemeci', 1),
(184, 'Dövizci', 1),
(185, 'Dublajcı', 1),
(186, 'Duvarcı', 1),
(187, 'Dümenci', 1),
(188, 'Diş teknisyeni', 1),
(189, 'Ebe(kadın doğum)', 1),
(190, 'Eczacı', 1),
(191, 'Eczacı kalfası', 1),
(192, 'Editör', 1),
(193, 'Eğitimci', 1),
(194, 'Eğitmen', 1),
(195, 'Ekonomist', 1),
(196, 'Elektrik mühendisi', 1),
(197, 'Elektronik mühendisi', 1),
(198, 'Elektrikçi', 1),
(199, 'Eleştirmen', 1),
(200, 'Embriyolog', 1),
(201, 'Emlakçı', 1),
(202, 'Emniyet amiri', 1),
(203, 'Emniyet genel müdürü', 1),
(204, 'Endüstri mühendisi', 1),
(205, 'Endüstri sistemleri mühendisi', 1),
(206, 'Enstrüman imalatçısı', 1),
(207, 'Ergonomist', 1),
(208, 'Eskici', 1),
(209, 'Estetisyen', 1),
(210, 'Etolojist', 1),
(211, 'Etimolog', 1),
(212, 'Etnolog', 1),
(213, 'Ev hanımı', 1),
(214, 'Fabrika işçisi', 1),
(215, 'Fahişe', 1),
(216, 'Falcı', 1),
(217, 'Fermantasyon işçisi', 1),
(218, 'Fıçıcı', 1),
(219, 'Fırıncı', 1),
(220, 'Figüran', 1),
(221, 'Film yapımcısı', 1),
(222, 'Film yönetmeni', 1),
(223, 'Filozof', 1),
(224, 'Finansör', 1),
(225, 'Fizikçi', 1),
(226, 'Fizyonomist', 1),
(227, 'Fizyoterapist', 1),
(228, 'Acil tıp teknisyeni', 1),
(229, 'Fon yöneticisi', 1),
(230, 'Forklift operatörü', 1),
(231, 'Fotoğrafçı', 1),
(232, 'Futbolcu', 1),
(233, 'Gardiyan', 1),
(234, 'Galerici', 1),
(235, 'Garson', 1),
(236, 'Gazete dağıtıcısı', 1),
(237, 'Gazete satıcısı', 1),
(238, 'Gazeteci', 1),
(239, 'Gelir uzmanı', 1),
(240, 'Gelir uzman yardımcısı', 1),
(241, 'Gemici', 1),
(242, 'General', 1),
(243, 'Genetik mühendisi', 1),
(244, 'Geyşa', 1),
(245, 'Gezgin', 1),
(246, 'Gezici vaiz', 1),
(247, 'Gıda mühendisi', 1),
(248, 'Gitarist', 1),
(249, 'Gondolcu', 1),
(250, 'Gökbilimci', 1),
(251, 'Göz doktoru', 1),
(252, 'Gözetmen', 1),
(253, 'Gözlükçü', 1),
(254, 'Grafiker', 1),
(255, 'Gramer uzmanı', 1),
(256, 'Greyder operatörü', 1),
(257, 'Guru', 1),
(258, 'Güfteci', 1),
(259, 'Gümrük memuru', 1),
(260, 'Gümrük müşaviri', 1),
(261, 'Gümrük müşavir yardımcısı', 1),
(262, 'Gümrük uzmanı', 1),
(263, 'Gündelikçi', 1),
(264, 'Güzellik uzmanı', 1),
(265, 'Haberci', 1),
(266, 'Haddeci', 1),
(267, 'Haham', 1),
(268, 'Hakem', 1),
(269, 'Halıcı', 1),
(270, 'Halkbilimci', 1),
(271, 'Hamal', 1),
(272, 'Hamamcı', 1),
(273, 'Hamurkâr', 1),
(274, 'Hareket memuru', 1),
(275, 'Haritacı', 1),
(276, 'Harita mühendisi', 1),
(277, 'Hastabakıcı', 1),
(278, 'Hattat', 1),
(279, 'Hava trafikçisi', 1),
(280, 'Havacı', 1),
(281, 'Haydut', 1),
(282, 'Hayvan bakıcısı', 1),
(283, 'Hayvan terbiyecisi', 1),
(284, 'Hemşire', 1),
(285, 'Hesap uzmanı', 1),
(286, 'Heykeltıraş', 1),
(287, 'Hırdavatçı', 1),
(288, 'Hırsız', 1),
(289, 'Hidrolikçi', 1),
(290, 'Hizmetçi', 1),
(291, 'Hokkabaz', 1),
(292, 'Host', 1),
(293, 'Hostes', 1),
(294, 'Hukukçu', 1),
(295, 'Hurdacı', 1),
(296, 'Irgat', 1),
(297, 'Işıkçı', 1),
(298, 'İcra memuru', 1),
(299, 'İç mimar', 1),
(300, 'İğneci', 1),
(301, 'İhracatçı', 1),
(302, 'İktisatçı', 1),
(303, 'İlahiyatçı', 1),
(304, 'İllüzyonist', 1),
(305, 'İmam', 1),
(306, 'İnsan kaynakları uzmanı', 1),
(307, 'İnşaat mühendisi', 1),
(308, 'İnşaatçı', 1),
(309, 'İpçi', 1),
(310, 'İplikçi', 1),
(311, 'İstatistikçi', 1),
(312, 'İstihkâmcı', 1),
(313, 'İşaretçi', 1),
(314, 'İşçi', 1),
(315, 'İşletmeci', 1),
(316, 'İşletme mühendisi', 1),
(317, 'İşportacı', 1),
(318, 'İş ve uğraşı terapisti', 1),
(319, 'İtfaiyeci', 1),
(320, 'İthalatçı', 1),
(321, 'Jeofizik mühendisi', 1),
(322, 'Jeoloji mühendisi', 1),
(323, 'Jeolog', 1),
(324, 'Jeomorfolog', 1),
(325, 'Jinekolog', 1),
(326, 'Jimnastikçi', 1),
(327, 'Jokey', 1),
(328, 'Kabin görevlisi', 1),
(329, 'Kabuk soyucusu', 1),
(330, 'Kadın berberi', 1),
(331, 'Kadın terzisi', 1),
(332, 'Kâğıtçı', 1),
(333, 'Kahveci', 1),
(334, 'Kâhya', 1),
(335, 'Kalaycı', 1),
(336, 'Kalıpçı', 1),
(337, 'Kaloriferci', 1),
(338, 'Kamarot', 1),
(339, 'Kameraman', 1),
(340, 'Kamyoncu', 1),
(341, 'Kapı satıcısı', 1),
(342, 'Kapıcı', 1),
(343, 'Kaplamacı', 1),
(344, 'Kaportacı', 1),
(345, 'Kaptan', 1),
(346, 'Kardinal', 1),
(347, 'Kardiyolog', 1),
(348, 'Karikatürist', 1),
(349, 'Karoserci', 1),
(350, 'Karpuzcu', 1),
(351, 'Kasap', 1),
(352, 'Kasiyer', 1),
(353, 'Kat görevlisi', 1),
(354, 'Kâtip', 1),
(355, 'Kayıkçı', 1),
(356, 'Kaymakam', 1),
(357, 'Kaynakçı', 1),
(358, 'Kazıcı', 1),
(359, 'Kebapçı', 1),
(360, 'Kemancı', 1),
(361, 'Kesimci', 1),
(362, 'Kırtasiyeci', 1),
(363, 'Kimyager', 1),
(364, 'Kimya mühendisi', 1),
(365, 'Kitapçı', 1),
(366, 'Klarnetçi', 1),
(367, 'Koleksiyoncu', 1),
(368, 'Komedyen', 1),
(369, 'Komisyoncu', 1),
(370, 'Komiser', 1),
(371, 'Konserveci', 1),
(372, 'Konsolos', 1),
(373, 'Konsomatris', 1),
(374, 'Kontrolör', 1),
(375, 'Konveyör operatörü', 1),
(376, 'Kopyalayıcı', 1),
(377, 'Koreograf', 1),
(378, 'Korgeneral', 1),
(379, 'Koramiral', 1),
(380, 'Korsan', 1),
(381, 'Koruma görevlisi', 1),
(382, 'Komiser', 1),
(383, 'Komiser yardımcısı', 1),
(384, 'Kozmolog', 1),
(385, 'Köfteci', 1),
(386, 'Kömürcü', 1),
(387, 'Köpek eğiticisi', 1),
(388, 'Köşe yazarı', 1),
(389, 'Kuaför', 1),
(390, 'Kuşçu', 1),
(391, 'Kumarbaz', 1),
(392, 'Kumaşçı', 1),
(393, 'Kumcu', 1),
(394, 'Kuru temizlemeci', 1),
(395, 'Kuruyemişçi', 1),
(396, 'Kurye', 1),
(397, 'Kuşbilimci', 1),
(398, 'Kuyumcu', 1),
(399, 'Kürkçü', 1),
(400, 'Kütüphaneci', 1),
(401, 'Laborant', 1),
(402, 'Laboratuar işçisi', 1),
(403, 'Lahmacuncu', 1),
(404, 'Lehimci', 1),
(405, 'Levazımcı', 1),
(406, 'Lobici', 1),
(407, 'Lokantacı', 1),
(408, 'Lokomotifçi', 1),
(409, 'Lostromo', 1),
(410, 'Lostracı', 1),
(411, 'Lokman', 1),
(412, 'Madenci', 1),
(413, 'Makasçı', 1),
(414, 'Makastar', 1),
(415, 'Maketçi', 1),
(416, 'Makinist', 1),
(417, 'Makine mühendisi', 1),
(418, 'Makine zabiti', 1),
(419, 'Makyajcı', 1),
(420, 'Mali hizmetler uzmanı', 1),
(421, 'Manastır baş rahibesi', 1),
(422, 'Manav', 1),
(423, 'Manifaturacı', 1),
(424, 'Manikürcü', 1),
(425, 'Manken', 1),
(426, 'Marangoz', 1),
(427, 'Masör', 1),
(428, 'Masöz', 1),
(429, 'Matador', 1),
(430, 'Matbaacı', 1),
(431, 'Matematikçi', 1),
(432, 'Matkapçı', 1),
(433, 'Memur', 1),
(434, 'Menajer', 1),
(435, 'Mermerci', 1),
(436, 'Metalurji mühendisi', 1),
(437, 'Meteoroloji uzmanı', 1),
(438, 'Metin yazarı', 1),
(439, 'Mevsimlik işçi', 1),
(440, 'Meydancı', 1),
(441, 'Meyhaneci', 1),
(442, 'Mezarcı', 1),
(443, 'Midyeci', 1),
(444, 'Mikrobiyolog', 1),
(445, 'Milletvekili', 1),
(446, 'Mimar', 1),
(447, 'Misyoner', 1),
(448, 'Mobilyacı', 1),
(449, 'Modacı', 1),
(450, 'Model', 1),
(451, 'Modelci', 1),
(452, 'Modelist', 1),
(453, 'Montajcı', 1),
(454, 'Montör', 1),
(455, 'Motor tamircisi', 1),
(456, 'Motorcu', 1),
(457, 'Muallim', 1),
(458, 'Muhabbet tellalı', 1),
(459, 'Muhabir', 1),
(460, 'Muhafız', 1),
(461, 'Muhasebeci', 1),
(462, 'Muhtar', 1),
(463, 'Mumyalayıcı', 1),
(464, 'Muzcu', 1),
(465, 'Mübaşir', 1),
(466, 'Müdür', 1),
(467, 'Müezzin', 1),
(468, 'Müfettiş', 1),
(469, 'Müşavir', 1),
(470, 'Mühendis', 1),
(471, 'Müneccim', 1),
(472, 'Mürebbiye', 1),
(473, 'Müsteşar', 1),
(474, 'Müteahhit', 1),
(475, 'Mütercim', 1),
(476, 'Müze müdürü', 1),
(477, 'Müzik yönetmeni', 1),
(478, 'Müzisyen', 1),
(479, 'Nalıncı', 1),
(480, 'Nakışçı', 1),
(481, 'Nakliyeci', 1),
(482, 'Nalbant', 1),
(483, 'Nalbur', 1),
(484, 'Noter', 1),
(485, 'Obuacı', 1),
(486, 'Ocakçı', 1),
(487, 'Odacı', 1),
(488, 'Oduncu', 1),
(489, 'Okçu', 1),
(490, 'Okul müdürü', 1),
(491, 'Okutman', 1),
(492, 'Operatör', 1),
(493, 'Opera sanatçısı', 1),
(494, 'Orgcu', 1),
(495, 'Orgeneral', 1),
(496, 'Orman mühendisi', 1),
(497, 'Ornitolog (veya kuşbilimci)', 1),
(498, 'Otelci', 1),
(499, 'Oto elektrikçisi', 1),
(500, 'Oto tamircisi', 1),
(501, 'Oto yedek parçacı', 1),
(502, 'Overlokçu', 1),
(503, 'Oymacı', 1),
(504, 'Oyuncu', 1),
(505, 'Oyun hostesi', 1),
(506, 'Oyun yazarı', 1),
(507, 'Oyuncakçı', 1),
(508, 'Oto lastik tamircisi', 1),
(509, 'Öğretmen', 1),
(510, 'Öğretim elemanı', 1),
(511, 'Öğretim görevlisi', 1),
(512, 'Öğretim üyesi', 1),
(513, 'Örmeci', 1),
(514, 'Ön muhasebeci', 1),
(515, 'Ön muhasebe sorumlusu', 1),
(516, 'Ön muhasebe yardımcı elemanı', 1),
(517, 'Ön büro elemanı', 1),
(518, 'Özel şoför', 1),
(519, 'Paketleyici', 1),
(520, 'Palyaço', 1),
(521, 'Pandomimci', 1),
(522, 'Pansiyoncu', 1),
(523, 'Pansumancı', 1),
(524, 'Papa', 1),
(525, 'Papaz', 1),
(526, 'Paralı asker', 1),
(527, 'Park bekçisi', 1),
(528, 'Pastörizör', 1),
(529, 'Patolog', 1),
(530, 'Peçeteci', 1),
(531, 'Pencereci', 1),
(532, 'Perukçu', 1),
(533, 'Peyzaj mimarı', 1),
(534, 'Peyzaj teknikeri', 1),
(535, 'Pideci', 1),
(536, 'Pilavcı', 1),
(537, 'Pilot', 1),
(538, 'Piskopos', 1),
(539, 'Piyade', 1),
(540, 'Piyango satıcısı', 1),
(541, 'Piyanist', 1),
(542, 'Polis memuru', 1),
(543, 'Polis şefi', 1),
(544, 'Polisajcı', 1),
(545, 'Politikacı', 1),
(546, 'Pompacı', 1),
(547, 'Postacı', 1),
(548, 'Profesör', 1),
(549, 'Proktolog', 1),
(550, 'Protokol görevlisi', 1),
(551, 'Psikiyatr', 1),
(552, 'Psikolog', 1),
(553, 'Psikolojik danışmanlık ve rehberlik', 1),
(554, 'Paramedik', 1),
(555, 'Radyolog', 1),
(556, 'Redaktör', 1),
(557, 'Rehber', 1),
(558, 'Rejisör', 1),
(559, 'Reklamcı', 1),
(560, 'Rektör', 1),
(561, 'Rektör yardımcısı', 1),
(562, 'Remayözcü', 1),
(563, 'Ressam', 1),
(564, 'Resepsiyon memuru', 1),
(565, 'Rot balansçı', 1),
(566, 'Radyoloji teknisyeni/teknikeri', 1),
(567, 'Saat tamircisi', 1),
(568, 'Saatçi', 1),
(569, 'Sağlık teknisyeni', 1),
(570, 'Sahil koruma', 1),
(571, 'Saksofoncu', 1),
(572, 'Salepçi', 1),
(573, 'Sanat yönetmeni', 1),
(574, 'Sanayici', 1),
(575, 'Sansürcü', 1),
(576, 'Santral memuru', 1),
(577, 'Saraç', 1),
(578, 'Sarraf', 1),
(579, 'Satış elemanı', 1),
(580, 'Savcı', 1),
(581, 'Saz şairi', 1),
(582, 'Sekreter', 1),
(583, 'Sepetçi', 1),
(584, 'Serbest muhasebeci mali müşavir', 1),
(585, 'Ses teknisyeni', 1),
(586, 'Seyis', 1),
(587, 'Sınırlı baş makinist', 1),
(588, 'Sicil memuru', 1),
(589, 'Sigortacı', 1),
(590, 'Sihirbaz', 1),
(591, 'Silahçı', 1),
(592, 'Silindir operatörü', 1),
(593, 'Simitçi', 1),
(594, 'Simyacı', 1),
(595, 'Sistem mühendisi', 1),
(596, 'Sistem yöneticisi', 1),
(597, 'Soğuk demirci', 1),
(598, 'Sokak çalgıcısı', 1),
(599, 'Sokak satıcısı', 1),
(600, 'Son ütücü', 1),
(601, 'Sorgu hâkimi', 1),
(602, 'Sosyal hizmet uzmanı', 1),
(603, 'Sosyolog', 1),
(604, 'Spiker', 1),
(605, 'Stenograf', 1),
(606, 'Stilist', 1),
(607, 'Striptizci', 1),
(608, 'Su tesisatçısı', 1),
(609, 'Subay', 1),
(610, 'Sucu', 1),
(611, 'Suflör', 1),
(612, 'Sulh hâkimi', 1),
(613, 'Sunucu', 1),
(614, 'Susuz araç yıkama', 1),
(615, 'Sünnetçi', 1),
(616, 'Sürveyan', 1),
(617, 'Sütanne', 1),
(618, 'Sütçü', 1),
(619, 'Şahinci', 1),
(620, 'Şair', 1),
(621, 'Şapel papazı', 1),
(622, 'Şapkacı', 1),
(623, 'Şarap üreticisi', 1),
(624, 'Şarkıcı', 1),
(625, 'Şarkı sözü yazarı', 1),
(626, 'Şarküter', 1),
(627, 'Şekerci', 1),
(628, 'Şemsiyeci', 1),
(629, 'Şifre çözümleyici', 1),
(630, 'Şimşirci', 1),
(631, 'Şoför', 1),
(632, 'Şarapçı', 1),
(633, 'Şarküteri, Gıda Pazarları ve Bakkal Satış Elemanı', 1),
(634, 'Şehir Plancısı', 1),
(635, 'Tabakçı', 1),
(636, 'Tabelacı', 1),
(637, 'Tahsildar', 1),
(638, 'Taksici', 1),
(639, 'Tarım işçisi', 1),
(640, 'Tarihçi', 1),
(641, 'Tasarımcı', 1),
(642, 'Taşçı', 1),
(643, 'Taşlayıcı', 1),
(644, 'Tatlıcı', 1),
(645, 'Tavukçu', 1),
(646, 'Tayfa', 1),
(647, 'Tefeci', 1),
(648, 'Teğmen', 1),
(649, 'Tekniker', 1),
(650, 'Teknisyen', 1),
(651, 'Teknoloji uzmani', 1),
(652, 'Telefon operatörü', 1),
(653, 'Telekız', 1),
(654, 'Televizyon tamircisi', 1),
(655, 'Tellal', 1),
(656, 'Temizlikçi', 1),
(657, 'Temsilci', 1),
(658, 'Terapist', 1),
(659, 'Tercüman', 1),
(660, 'Terzi', 1),
(661, 'Tesgahtar', 1),
(662, 'Tesisatçı', 1),
(663, 'Tesviyeci', 1),
(664, 'Test mühendisi', 1),
(665, 'Test pilotu', 1),
(666, 'Teşrifatçı', 1),
(667, 'Tiyatro yönetmeni', 1),
(668, 'Tombalacı', 1),
(669, 'Topçu', 1),
(670, 'Tornacı', 1),
(671, 'Turizmci', 1),
(672, 'Tuğgeneral', 1),
(673, 'Tuhafiyeci', 1),
(674, 'Turşucu', 1),
(675, 'Tuzcu', 1),
(676, 'Tümamiral', 1),
(677, 'Tümgeneral', 1),
(678, 'Uçuş teknisyeni', 1),
(679, 'Ulaşım sorumlusu', 1),
(680, 'Ustabaşı', 1),
(681, 'Uydu antenci', 1),
(682, 'Uzay mühendisi', 1),
(683, 'Uzay bilimcisi', 1),
(684, 'Uzman Jandarma', 1),
(685, 'Uzman Çavuş', 1),
(686, 'Üretici', 1),
(687, 'Ürolog', 1),
(688, 'Ütücü', 1),
(689, 'Üzümcü', 1),
(690, 'Üst Düzey Yönetici', 1),
(691, 'Vaiz', 1),
(692, 'Vali', 1),
(693, 'Vergi denetmeni', 1),
(694, 'Vergi müfettişi', 1),
(695, 'Vergi tahakkuk memuru', 1),
(696, 'Veritabanı yöneticisi', 1),
(697, 'Veri hazırlama ve kontrol işletmeni', 1),
(698, 'Vestiyerci', 1),
(699, 'Veteriner hekim', 1),
(700, 'Veteriner sağlık teknikeri', 1),
(701, 'Veteriner sağlık teknisyeni', 1),
(702, 'Veznedar', 1),
(703, 'Video editörü', 1),
(704, 'Vinç operatörü', 1),
(705, 'Vitrinci', 1),
(706, 'Viyolonselci', 1),
(707, 'Vatman', 1),
(708, 'Yarbay', 1),
(709, 'Yardımcı hakem', 1),
(710, 'Yardımcı hizmetli', 1),
(711, 'Yardımcı pilot', 1),
(712, 'Yargıç', 1),
(713, 'Yatırım uzmanı', 1),
(714, 'Yayıncı', 1),
(715, 'Yazar', 1),
(716, 'Yazı işleri müdürü', 1),
(717, 'Yazılım mühendisi', 1),
(718, 'Yelkenci', 1),
(719, 'Yeminli mali müşavir', 1),
(720, 'Yeminli tercüman', 1),
(721, 'Yer gösterici', 1),
(722, 'Yer teknisyeni', 1),
(723, 'Yerölçmeci', 1),
(724, 'Yoğurtçu', 1),
(725, 'Yol bekçisi', 1),
(726, 'Yorgancı', 1),
(727, 'Yorumcu', 1),
(728, 'Yönetici', 1),
(729, 'Yüzücü', 1),
(730, 'Yönetmen', 1),
(731, 'Yıkıcı', 1),
(732, 'Zabıta', 1),
(733, 'Zoolog', 1),
(734, 'Öğrenci', 1),
(735, 'Diğer', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pageviews_pageviewcounter`
--

CREATE TABLE `pageviews_pageviewcounter` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `url` varchar(2000) COLLATE utf8_turkish_ci NOT NULL,
  `counter` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `pageviews_pageviewcounter`
--

INSERT INTO `pageviews_pageviewcounter` (`id`, `created`, `modified`, `url`, `counter`) VALUES
(1, '2018-02-14 11:05:42.179988', '2018-03-12 11:48:34.505665', '/', 27),
(2, '2018-02-14 11:05:44.072831', '2018-03-12 11:48:13.635790', '/favicon.ico', 95),
(3, '2018-02-14 11:05:46.087100', '2018-03-12 11:49:11.519979', '/soru-sor', 14),
(4, '2018-02-14 11:05:51.027813', '2018-03-12 11:50:30.223948', '/sorular', 174),
(5, '2018-02-14 11:05:51.628094', '2018-03-12 11:48:38.767720', '/media/user-images/furkan-atabas.thumbnail.png', 117),
(6, '2018-02-14 11:05:58.926059', '2018-02-14 11:39:02.003604', '/soru/hangi-marka-pc-kullaniyorsunuz', 3),
(7, '2018-02-14 11:06:03.386682', '2018-02-14 11:38:42.799877', '/soru/ne-tur-muzikler-dinlersiniz', 8),
(8, '2018-02-14 11:38:52.044747', '2018-02-14 11:38:55.977443', '/soru/ne-tur-muzikler-dinlersiniz-1', 2),
(9, '2018-02-14 11:39:07.420664', '2018-02-14 11:42:30.556961', '/soru/hangi-marka-pc-kullaniyorsunuz-1', 4),
(10, '2018-02-14 12:01:01.862918', '2018-03-12 11:50:36.231194', '/soru/25/hangi-marka-pc-kullaniyorsunuz', 19),
(11, '2018-02-14 12:04:01.851226', '2018-02-14 12:04:01.854230', '/soru/25', 1),
(12, '2018-02-14 12:04:05.158919', '2018-02-14 12:04:05.161921', '/soru/25/sdgs', 1),
(13, '2018-02-14 12:04:07.254835', '2018-02-14 12:04:07.257307', '/soru/', 1),
(14, '2018-02-14 12:04:17.367438', '2018-02-25 21:08:26.748461', '/soru/23/suan-hangi-diziyi-izliyorsun', 9),
(15, '2018-02-14 12:06:19.113232', '2018-02-14 12:06:19.116228', '/soru/23/suan-hangi-diziyi-izliyorsundsgs', 1),
(16, '2018-02-14 12:06:27.815875', '2018-02-24 21:15:59.412682', '/soru/26/ne-tur-muzikler-dinlersiniz', 129),
(17, '2018-02-14 12:09:46.190124', '2018-02-24 20:35:24.992539', '/soru/9/odam-kirec-tutmuyor-sizce-ne-yapabilirim', 5),
(18, '2018-02-19 16:15:16.706816', '2018-03-12 11:48:33.965076', '/giris-yap', 25),
(19, '2018-02-19 16:16:28.535226', '2018-02-19 16:16:28.538204', '/kategori/internet-ve-teknoloji', 1),
(20, '2018-02-19 16:20:10.291003', '2018-03-12 11:49:03.303528', '/get-json-tags', 26),
(21, '2018-02-19 16:21:08.044754', '2018-02-25 20:43:37.042681', '/soru/27/cheesecake-ciziyle-mi-yapilir', 54),
(22, '2018-02-23 19:49:59.155231', '2018-03-12 11:48:17.387929', '/kayit-ol', 11),
(23, '2018-02-23 20:38:19.840600', '2018-02-25 20:43:56.719353', '/ajax-question-like', 103),
(24, '2018-02-24 14:30:09.335207', '2018-03-12 11:49:42.548008', '/ajax-answer-like', 16),
(25, '2018-02-24 14:39:28.361917', '2018-02-24 14:39:30.252589', '/cikis-yap', 2),
(26, '2018-02-24 14:40:47.808895', '2018-02-27 17:19:31.654853', '/uye/guncelle', 4),
(27, '2018-02-24 16:44:30.957518', '2018-03-12 11:50:41.059526', '/soru/17/suan-hangi-filmi-izliyorsun', 6),
(28, '2018-02-24 16:44:43.782450', '2018-03-12 11:50:59.637057', '/soru/1/acaba-ise-yarayacak-mi', 3),
(29, '2018-02-24 16:44:48.128696', '2018-02-24 16:44:48.130698', '/soru/6/codeigniterda-nasil-resim-upload-edebilirim-1', 1),
(30, '2018-02-24 16:44:50.936185', '2018-02-24 20:35:21.224049', '/soru/7/django-projemi-yeni-aldigim-centos-sunucuya-yukleyemiyorum-nasil-yapabilirim', 2),
(31, '2018-02-24 16:45:19.811298', '2018-02-24 20:35:35.361872', '/soru/28/33', 9),
(32, '2018-02-24 16:45:31.850316', '2018-02-24 16:45:31.853297', '/soru/28', 1),
(33, '2018-02-24 16:45:42.209829', '2018-02-24 16:45:42.212831', '/soru/28/pjjjj', 1),
(34, '2018-02-24 19:43:30.970478', '2018-03-12 11:52:00.707220', '/uye/', 15),
(35, '2018-02-24 19:44:10.349049', '2018-03-12 11:48:38.777728', '/media/user-images/26991603_1937719702927781_1884933247078774344_n.thumbnail.jpg', 69),
(36, '2018-02-24 19:44:38.339933', '2018-02-24 19:44:38.342936', '/uye/asw13tr', 1),
(37, '2018-02-24 19:44:42.635830', '2018-02-24 19:57:37.128105', '/uye/a.furkan091tr', 3),
(38, '2018-02-24 19:44:59.261171', '2018-02-24 19:47:23.914566', '/uye/afurkan091tr', 2),
(39, '2018-02-24 20:07:13.890850', '2018-02-24 20:07:13.893853', '/asw-panel/', 1),
(40, '2018-02-24 20:07:18.741669', '2018-02-24 20:14:09.794762', '/asw-panel/icerikler/kategoriler/', 4),
(41, '2018-02-24 20:07:19.186041', '2018-02-24 20:15:06.454948', '/asw-panel/jsi18n/', 7),
(42, '2018-02-24 20:07:22.491358', '2018-02-24 20:15:06.231783', '/asw-panel/icerikler/kategoriler/16/change/', 4),
(43, '2018-02-24 20:13:58.483023', '2018-02-24 20:14:09.616635', '/asw-panel/icerikler/kategoriler/15/change/', 2),
(44, '2018-02-24 20:15:09.355604', '2018-02-24 20:15:09.358627', '/media/category-images/the-5000-in-spending-money-doesnt-go-very-far-14828493531.jpg', 1),
(45, '2018-02-24 20:35:20.572590', '2018-02-24 21:43:53.666806', '/soru/6/codeigniterda-nasil-resim-upload-edebilirim', 4),
(46, '2018-02-24 20:35:22.094667', '2018-02-24 20:35:22.097668', '/soru/8/midem-asiri-yaniyor-acil-onerisi-olan-var-mi-1', 1),
(47, '2018-02-24 20:35:25.744099', '2018-03-12 11:50:43.509988', '/soru/13/hangi-film-demistin', 18),
(48, '2018-02-24 20:35:27.835550', '2018-02-24 20:35:27.838581', '/soru/22/simdi-ne-ictin-anlat', 1),
(49, '2018-02-24 20:35:29.968066', '2018-02-25 21:32:23.112509', '/soru/24/kendini-gizlemeden-cevap-ver', 11),
(50, '2018-02-24 20:58:31.905183', '2018-02-24 20:58:31.908184', '/soru/cevaplar', 1),
(51, '2018-02-24 21:19:02.783872', '2018-02-25 21:18:57.438054', '/cevaplar', 68),
(52, '2018-02-25 17:41:24.120807', '2018-02-25 17:41:24.124830', '/kategori/gundem', 1),
(53, '2018-02-25 17:41:31.835911', '2018-02-25 17:43:00.893542', '/kategori/kariyer', 3),
(54, '2018-02-25 17:43:06.680648', '2018-02-25 21:25:36.658159', '/kategori/diyet-ve-zinde-yasam', 5),
(55, '2018-02-25 17:44:13.838623', '2018-02-25 17:44:13.842622', '/kategori/egitim', 1),
(56, '2018-02-25 20:47:48.247449', '2018-02-25 21:14:38.656758', '/test', 27),
(57, '2018-02-25 20:54:31.297070', '2018-02-25 21:06:34.520127', '/soru/29/evvet-beyler-saat-kac-alalim-timezone-lari', 2),
(58, '2018-02-25 21:07:51.690902', '2018-02-25 21:07:51.693934', '/soru/30/hangi-renk-arabayi-daha-cok-seviyorsun', 1),
(59, '2018-02-25 21:18:41.433977', '2018-03-12 11:50:15.353328', '/gundem', 7),
(60, '2018-02-27 11:11:19.087828', '2018-02-27 17:56:48.882435', '/uye/sorular/asw13tr', 39),
(61, '2018-02-27 11:27:18.334644', '2018-02-27 11:27:18.337646', '/uye/sorular/a.furkan091tr', 1),
(62, '2018-02-27 11:27:22.612635', '2018-02-27 11:27:26.527918', '/uye/sorular/', 2),
(63, '2018-02-27 11:31:13.187705', '2018-02-27 11:31:13.190730', '/uye/sorular', 1),
(64, '2018-03-12 11:49:11.750113', '2018-03-12 11:49:54.007249', '/soru/31/hangi-marka-cep-telefonunu-kullaniyorsunuz', 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `content` longtext COLLATE utf8_turkish_ci NOT NULL,
  `c_time` datetime(6) NOT NULL,
  `u_time` datetime(6) NOT NULL,
  `views` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `anonymous` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `allow_anonymous` tinyint(1) NOT NULL,
  `allow_private_message` tinyint(1) NOT NULL,
  `ip` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `a_time` datetime(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `questions`
--

INSERT INTO `questions` (`id`, `title`, `seo_title`, `content`, `c_time`, `u_time`, `views`, `like`, `anonymous`, `status`, `allow_anonymous`, `allow_private_message`, `ip`, `category_id`, `user_id`, `a_time`) VALUES
(1, 'Acaba işe yarayacak mı?', 'acaba-ise-yarayacak-mi', '<p>Aylık Toplam Ziyaret Edilme Sayısı:<strong>&nbsp;79.66 Milyon</strong><br />\r\nSitede Ge&ccedil;irilen Ortalama S&uuml;re:&nbsp;<strong>4.80 dakika</strong><br />\r\nZiyaret Başına İ&ccedil;erik G&ouml;sterim Sayısı:&nbsp;<strong>5.50</strong><br />\r\nHemen &Ccedil;ıkma Oranı:<strong>&nbsp;%37.50</strong></p>', '2018-01-24 12:45:49.019298', '2018-03-12 11:50:59.646062', 3, 0, 0, 1, 1, 1, '', 9, 1, NULL),
(7, 'Django projemi yeni aldığım centos sunucuya yükleyemiyorum nasıl yapabilirim?', 'django-projemi-yeni-aldigim-centos-sunucuya-yukleyemiyorum-nasil-yapabilirim', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam aliquet est leo, non ultrices diam cursus sit amet. Sed blandit venenatis elementum. Nullam ornare dolor massa, at pharetra libero consectetur sit amet. Fusce vel leo at arcu molestie imperdiet in ac nunc. Nunc at neque scelerisque, ornare dolor eget, bibendum est. Curabitur feugiat diam enim, id porttitor augue tempus nec. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi in ipsum sagittis, facilisis mi eu, molestie ante.</p>', '2018-01-24 20:58:03.498362', '2018-02-24 20:35:21.237059', 2, 0, 0, 1, 1, 1, '', 9, 1, NULL),
(6, 'Codeigniter\'da nasıl resim upload edebilirim?', 'codeigniterda-nasil-resim-upload-edebilirim', '<p>&Ouml;ncelikle hepinize merhaba arkadaşlar yeni bir blog sitesi yapıyorum fakat nasıl resim upload edebilirim hi&ccedil; iblmiyorum. L&uuml;tfen bana yardımcı olun şimdiden teşekk&uuml;rler.&nbsp;</p>', '2018-01-24 19:57:01.230369', '2018-02-24 21:43:53.675784', 5, 0, 1, 1, 1, 1, '', 9, 1, '2018-02-24 21:43:53.612768'),
(8, 'Midem aşırı yanıyor acil önerisi olan var mı?', 'midem-asiri-yaniyor-acil-onerisi-olan-var-mi', '<p>Midem aşırı yanıyor. Eğer bir &ouml;neriniz varsa alırım bi dal.</p>', '2018-01-24 21:01:30.845845', '2018-02-24 20:35:22.109677', 1, 0, 0, 1, 1, 1, '', 2, 1, NULL),
(9, 'Odam kireç tutmuyor sizce ne yapabilirim?', 'odam-kirec-tutmuyor-sizce-ne-yapabilirim', '<p>Zabaanan zor uyanmışım zaten hale elimde fır&ccedil;a uğraşıyorum. Bilen bir yardım etsin.</p>', '2018-01-24 21:07:24.636124', '2018-02-24 20:35:25.003546', 5, 0, 0, 1, 1, 1, '', 6, 1, NULL),
(13, 'Hangi film demiştin', 'hangi-film-demistin', '<p>sa fas fasf safas f</p>', '2018-01-26 19:55:48.062636', '2018-03-12 11:50:43.521025', 18, 0, 0, 1, 1, 1, '', 11, 1, '2018-02-24 21:42:47.428669'),
(27, 'Cheesecake çiziyle mi yapılır?', 'cheesecake-ciziyle-mi-yapilir', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vel sem quis risus pellentesque pellentesque. Integer tempus ac felis non pellentesque. Phasellus facilisis justo mauris, vel scelerisque velit aliquam a. Fusce ante eros, venenatis in lorem eu, commodo semper lorem. Mauris tincidunt nisi ut nisi dictum, iaculis ultrices tellus mattis. Sed mattis viverra nibh, nec sodales massa consequat vitae. Duis lectus odio, posuere eget ultricies nec, gravida vel ante. Duis eu diam tellus. Nullam condimentum neque eu congue venenatis.</p>\r\n\r\n<p>Mauris dapibus, nunc ac lacinia ullamcorper, nisl nibh interdum libero, quis efficitur ante tellus quis magna. Nulla sit amet ex diam. Nulla facilisi. Ut gravida sem eu dictum euismod. In convallis, justo vel egestas pulvinar, felis nisi lacinia augue, at ultrices risus turpis interdum enim. Quisque tincidunt justo vitae enim dapibus varius. Nulla nec est eu metus ornare auctor aliquam in libero. Praesent et lacus et lectus lacinia congue eu et risus. Nam pellentesque velit vitae purus auctor suscipit. Nullam ornare quis augue eget scelerisque. Pellentesque vel consectetur sapien, nec auctor tellus. Maecenas vel quam nec sem placerat lacinia quis sit amet enim. Praesent auctor augue in nulla auctor, eu ultrices nunc venenatis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In interdum neque nisi, eu scelerisque tortor faucibus lobortis. Nam quis turpis sed felis aliquam pharetra.</p>', '2018-02-19 16:21:07.954654', '2018-02-25 20:43:37.053689', 54, 0, 1, 1, 1, 1, '', 6, 1, NULL),
(17, 'Şuan hangi filmi izliyorsun', 'suan-hangi-filmi-izliyorsun', '<p>Hobbit - Beklenmeyen Yolculuk</p>', '2018-01-26 20:46:24.796712', '2018-03-12 11:50:41.071508', 6, 0, 0, 1, 1, 1, '', 8, 1, '2018-02-24 21:49:36.318018'),
(26, 'Ne tür müzikler dinlersiniz?', 'ne-tur-muzikler-dinlersiniz', '<p>Hadii bakalım gen&ccedil;ler kim ne t&uuml;r m&uuml;zikler dinler alalım cevapları.</p>', '2018-01-31 16:04:14.227097', '2018-02-24 21:15:59.421709', 131, 0, 0, 1, 1, 1, '', 15, 1, NULL),
(25, 'Hangi marka pc kullanıyorsunuz?', 'hangi-marka-pc-kullaniyorsunuz', '<p>Kardeş ne marka kullanıyorsun</p>', '2018-01-30 07:34:47.777835', '2018-03-12 11:50:36.242201', 19, 0, 0, 1, 0, 1, '', 9, 1, NULL),
(24, 'Kendini gizlemeden cevap ver', 'kendini-gizlemeden-cevap-ver', '<p>Detay mı?</p>', '2018-01-29 15:26:38.011221', '2018-02-25 21:32:23.126520', 11, 0, 1, 1, 0, 1, '', 3, 1, '2018-02-25 21:25:55.941398'),
(23, 'Şuan hangi diziyi izliyorsun?', 'suan-hangi-diziyi-izliyorsun', '<p>Şuanda hangi diziyi izliyorsun anlat bakayım haydeee.</p>', '2018-01-28 21:41:43.486792', '2018-02-25 21:08:26.758469', 9, 0, 0, 1, 1, 1, '', 7, 1, '2018-02-25 21:08:26.678409'),
(22, 'Şimdi ne içtin anlat', 'simdi-ne-ictin-anlat', '<p>Kefir i&ccedil;tim la ne i&ccedil;icem.</p>', '2018-01-26 21:01:15.501815', '2018-02-24 20:35:27.850561', 1, 0, 0, 1, 1, 1, '', 16, 1, NULL),
(28, '3+3=?', '33', '<p>6+6626</p>', '2018-02-24 16:45:19.756259', '2018-02-24 20:35:35.370880', 10, 0, 0, 1, 0, 1, '', 3, 4, NULL),
(29, 'Evvet beyler saat kaç alalım timezone ları?', 'evvet-beyler-saat-kac-alalim-timezone-lari', '<p>Şuan bende 23:54&nbsp;</p>', '2018-02-25 20:54:31.194932', '2018-02-25 21:06:34.531113', 2, 0, 0, 1, 1, 1, '', 6, 1, NULL),
(30, 'Hangi renk arabayı daha çok seviyorsun.', 'hangi-renk-arabayi-daha-cok-seviyorsun', '<p>The first step is to add&nbsp;<a href="https://docs.djangoproject.com/en/2.0/ref/settings/#std:setting-USE_TZ">USE_TZ&nbsp;=&nbsp;True</a>&nbsp;to your settings file. At this point, things should mostly work. If you create naive datetime objects in your code, Django makes them aware when necessary.</p>', '2018-02-25 21:07:51.616712', '2018-02-25 21:07:51.702917', 1, 0, 0, 1, 1, 1, '', 6, 1, '2018-02-25 21:07:51.614711'),
(31, 'Hangi marka cep telefonunu kullanıyorsunuz?', 'hangi-marka-cep-telefonunu-kullaniyorsunuz', '<p>Evet cevapları alalım</p>', '2018-03-12 11:49:11.654045', '2018-03-12 11:49:54.017256', 8, 0, 0, 1, 1, 1, '', 9, 1, '2018-03-12 11:49:34.990564');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `questions_tags`
--

CREATE TABLE `questions_tags` (
  `id` int(11) NOT NULL,
  `sorular_id` int(11) NOT NULL,
  `etiketler_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `questions_tags`
--

INSERT INTO `questions_tags` (`id`, `sorular_id`, `etiketler_id`) VALUES
(1, 6, 1),
(2, 6, 2),
(3, 6, 3),
(4, 6, 6),
(5, 6, 18),
(6, 8, 13),
(7, 8, 14),
(8, 8, 15),
(9, 8, 16),
(10, 8, 17),
(11, 8, 18),
(12, 13, 17),
(13, 13, 22),
(14, 13, 6),
(15, 13, 14),
(79, 29, 20),
(78, 29, 19),
(77, 29, 14),
(76, 29, 6),
(75, 27, 21),
(74, 27, 19),
(73, 27, 15),
(72, 27, 14),
(71, 27, 13),
(70, 26, 22),
(69, 26, 19),
(68, 26, 15),
(28, 17, 15),
(29, 17, 21),
(30, 17, 6),
(31, 17, 7),
(67, 26, 14),
(66, 26, 13),
(65, 25, 22),
(64, 25, 20),
(63, 25, 17),
(62, 25, 15),
(61, 25, 13),
(60, 24, 22),
(59, 24, 20),
(58, 24, 19),
(57, 24, 17),
(56, 24, 15),
(55, 23, 22),
(54, 23, 6),
(53, 23, 20),
(52, 23, 17),
(48, 22, 17),
(49, 22, 19),
(50, 22, 13),
(51, 22, 6),
(80, 29, 22),
(81, 30, 20),
(82, 30, 21),
(83, 30, 14),
(84, 31, 13),
(85, 31, 15),
(86, 31, 19),
(87, 31, 21),
(88, 31, 22);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `question_votes`
--

CREATE TABLE `question_votes` (
  `id` int(11) NOT NULL,
  `vote` tinyint(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `question_votes`
--

INSERT INTO `question_votes` (`id`, `vote`, `question_id`, `user_id`) VALUES
(34, 1, 26, 4),
(48, 1, 26, 1),
(30, 1, 25, 4),
(49, 1, 25, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `description` longtext COLLATE utf8_turkish_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `c_time` datetime(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tags`
--

INSERT INTO `tags` (`id`, `name`, `seo_title`, `description`, `status`, `c_time`) VALUES
(1, 'php', 'php-1', 'Web siteleri yapmak için kullanılan bir dildir.', 1, '2018-01-16 11:31:41.934662'),
(2, 'jquery', 'jquery', '', 1, '2018-01-16 11:31:47.313325'),
(3, 'css', 'css', '', 1, '2018-01-16 11:31:49.982298'),
(4, 'html', 'html', '', 1, '2018-01-16 11:31:52.098582'),
(5, 'nodejs', 'nodejs', '', 1, '2018-01-16 11:31:57.648499'),
(6, 'django', 'django-1', 'Python diline ait website yapımında kullanılan bir framework\'tür', 1, '2018-01-16 11:32:00.445281'),
(7, 'python', 'python', '', 1, '2018-01-16 11:32:03.841360'),
(8, 'Ruby', 'ruby-1', 'Perl tabanlı geliştirilmiş olan bir programlama dilidir.', 1, '2018-01-16 11:32:08.835470'),
(9, 'c#', 'c', '', 1, '2018-01-16 11:32:16.429455'),
(10, 'c++', 'c-1', '', 1, '2018-01-16 11:32:23.605044'),
(11, 'c', 'c-2', '', 1, '2018-01-16 11:32:25.679678'),
(12, 'c+', 'c-3', '', 1, '2018-01-16 11:32:27.485242'),
(13, 'Ruby on Rails', 'ruby-on-rails', 'Ruby ile yapılmış bir web frameworküdür.', 1, '2018-01-18 19:56:36.450268'),
(14, 'Asp.Net', 'aspnet', 'c# tabanlı bir web site frameworküdür.', 1, '2018-01-18 19:57:08.649151'),
(15, 'Java', 'java', 'Her platformla uyumlu çalışan çok kullanışlı bir programlama dilidir.', 1, '2018-01-18 19:57:53.777927'),
(16, 'Kotlin', 'kotlin', 'Java tabanlı çalışan yeni bir programlama dilidir.', 1, '2018-01-18 19:58:11.438118'),
(17, 'Laravel', 'laravel', 'Php tabanlı olarak yapılmış bir php frameworktür.', 1, '2018-01-18 19:58:37.513509'),
(18, 'CodeIgniter', 'codeigniter', 'Php kullanılarak yapılmı olan bir frameworktür.', 1, '2018-01-18 19:59:01.822758'),
(19, 'JavaScript', 'javascript', 'Etkileşimli ve görseli fazla websiteler yapmak için kullanılan bir web dilidir.', 1, '2018-01-18 19:59:58.210632'),
(20, 'Arduino', 'arduino', 'Kodlanabilir çip olan Arduino devresini programlamak için  kullanılan bir dildir.', 1, '2018-01-18 20:00:44.140894'),
(21, 'Go Lang', 'go-lang', 'Google şirketi tarafından geliştirilen hızlı bir programlama dilidir.', 1, '2018-01-18 20:01:15.607947'),
(22, 'Actionscript', 'actionscript', 'Flash animasyonlara etkileşim katmak için kullanılan bir programlama dilidir.', 1, '2018-01-18 20:01:44.279224');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye_bilgileri`
--

CREATE TABLE `uye_bilgileri` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_turkish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) COLLATE utf8_turkish_ci NOT NULL,
  `gender` varchar(1) COLLATE utf8_turkish_ci DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `about_us` longtext COLLATE utf8_turkish_ci NOT NULL,
  `website` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `google_plus` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `views` int(11) NOT NULL,
  `job_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uye_bilgileri`
--

INSERT INTO `uye_bilgileri` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `gender`, `photo`, `birthday`, `location`, `about_us`, `website`, `facebook`, `twitter`, `google_plus`, `youtube`, `linkedin`, `instagram`, `views`, `job_id`) VALUES
(1, 'pbkdf2_sha256$100000$OtmrgmaIkaBi$1jbI+btNKnPE4S2j5SEVJX9J8PVssijzZFdD3h3hfvk=', '2018-03-12 11:48:34.435457', 1, 'asw13tr', 'Furkan', 'Atabaş', 1, 1, '2018-01-12 22:24:27.000000', 'asw13tr@gmail.com', 'E', 'user-images/furkan-atabas.png', '1991-06-13', 'Söğütlü, Trabzon', 'Bilgisayar teknolojileri bölümü okudum.', 'http://www.atabassoft.com', 'http://facebook.com', '', '', '', '', '', 0, 91),
(2, 'pbkdf2_sha256$100000$vYKQb4fCzSSs$HScDplFbfIRmrd2Rio/zy/gR3gVjV83x8qogeoFSGP8=', '2018-01-12 22:51:08.634615', 0, 'soran', 'Sordum', 'Soruyu', 0, 1, '2018-01-12 22:51:07.753224', 'soran@hotmail.com2', 'K', 'user-images/sari-wallpaper.jpg', NULL, '', '', '', '', '', '', '', '', '', 0, NULL),
(3, 'pbkdf2_sha256$100000$MjqY0fWi1y7S$7InhCpiIaBjfnbh23vjCFMfEM5WbjtyDLvO3qUFqEg8=', '2018-01-12 23:15:40.868190', 0, 'cevaplayan', 'Cevaplayan', 'Adam', 0, 1, '2018-01-12 23:15:40.018875', 'cevaplayan@gmail.com', 'E', 'user-images/python-3-nasil-kurulur.jpg', '1991-01-01', 'İstanbul', '', '', '', '', '', '', '', '', 0, 91),
(4, 'pbkdf2_sha256$100000$x9cheJ2TtE8U$VhkXz9AOUqFwoyc8W3gzSWz3yqxsOKveleG0ucV8gsk=', '2018-02-24 14:40:47.718703', 0, 'a.furkan091tr', 'Alim', 'Adam', 0, 1, '2018-02-24 14:40:46.861096', 'a.furkan091tr@gmail.com', 'E', 'user-images/26991603_1937719702927781_1884933247078774344_n.jpg', NULL, '', '', '', '', '', '', '', '', '', 0, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye_bilgileri_groups`
--

CREATE TABLE `uye_bilgileri_groups` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uye_bilgileri_user_permissions`
--

CREATE TABLE `uye_bilgileri_user_permissions` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_1c8a95ab` (`question_id`),
  ADD KEY `answers_user_id_d57ecf0e` (`user_id`),
  ADD KEY `answers_parent_id_f779beb9` (`parent_id`);

--
-- Tablo için indeksler `answer_votes`
--
ALTER TABLE `answer_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer_votes_answer_id_accaa921` (`answer_id`),
  ADD KEY `answer_votes_user_id_7bba59c8` (`user_id`);

--
-- Tablo için indeksler `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Tablo için indeksler `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Tablo için indeksler `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_seo_title_af5aa209_uniq` (`seo_title`);

--
-- Tablo için indeksler `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Tablo için indeksler `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Tablo için indeksler `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Tablo için indeksler `meslekler`
--
ALTER TABLE `meslekler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `pageviews_pageviewcounter`
--
ALTER TABLE `pageviews_pageviewcounter`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_title` (`seo_title`),
  ADD KEY `questions_category_id_3da5d5e7` (`category_id`),
  ADD KEY `questions_user_id_58bb58da` (`user_id`);

--
-- Tablo için indeksler `questions_tags`
--
ALTER TABLE `questions_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_tags_sorular_id_etiketler_id_f60cf8d1_uniq` (`sorular_id`,`etiketler_id`),
  ADD KEY `questions_tags_sorular_id_e0c3432c` (`sorular_id`),
  ADD KEY `questions_tags_etiketler_id_6a270bfe` (`etiketler_id`);

--
-- Tablo için indeksler `question_votes`
--
ALTER TABLE `question_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_votes_question_id_098b0840` (`question_id`),
  ADD KEY `question_votes_user_id_63d4efee` (`user_id`);

--
-- Tablo için indeksler `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_title` (`seo_title`);

--
-- Tablo için indeksler `uye_bilgileri`
--
ALTER TABLE `uye_bilgileri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uye_bilgileri_job_id_6998c29c` (`job_id`);

--
-- Tablo için indeksler `uye_bilgileri_groups`
--
ALTER TABLE `uye_bilgileri_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uye_bilgileri_groups_profile_id_group_id_4694fee3_uniq` (`profile_id`,`group_id`),
  ADD KEY `uye_bilgileri_groups_profile_id_8652ffab` (`profile_id`),
  ADD KEY `uye_bilgileri_groups_group_id_73dd5009` (`group_id`);

--
-- Tablo için indeksler `uye_bilgileri_user_permissions`
--
ALTER TABLE `uye_bilgileri_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uye_bilgileri_user_permi_profile_id_permission_id_ac912e66_uniq` (`profile_id`,`permission_id`),
  ADD KEY `uye_bilgileri_user_permissions_profile_id_33f73c1d` (`profile_id`),
  ADD KEY `uye_bilgileri_user_permissions_permission_id_d8a12911` (`permission_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- Tablo için AUTO_INCREMENT değeri `answer_votes`
--
ALTER TABLE `answer_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Tablo için AUTO_INCREMENT değeri `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- Tablo için AUTO_INCREMENT değeri `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Tablo için AUTO_INCREMENT değeri `meslekler`
--
ALTER TABLE `meslekler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;
--
-- Tablo için AUTO_INCREMENT değeri `pageviews_pageviewcounter`
--
ALTER TABLE `pageviews_pageviewcounter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- Tablo için AUTO_INCREMENT değeri `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Tablo için AUTO_INCREMENT değeri `questions_tags`
--
ALTER TABLE `questions_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- Tablo için AUTO_INCREMENT değeri `question_votes`
--
ALTER TABLE `question_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- Tablo için AUTO_INCREMENT değeri `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Tablo için AUTO_INCREMENT değeri `uye_bilgileri`
--
ALTER TABLE `uye_bilgileri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `uye_bilgileri_groups`
--
ALTER TABLE `uye_bilgileri_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `uye_bilgileri_user_permissions`
--
ALTER TABLE `uye_bilgileri_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
