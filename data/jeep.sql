-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-01-21 12:56:25
-- 服务器版本： 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeep`
--

-- --------------------------------------------------------

--
-- 表的结构 `jeep_bot`
--

CREATE TABLE `jeep_bot` (
  `bid` int(11) NOT NULL PRIMARY KEY,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `suit_car` varchar(32) DEFAULT NULL,
  `can_order` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_bot`
--

INSERT INTO `jeep_bot` (`bid`, `family_id`, `title`, `price`, `spec`, `color`, `suit_car`, `can_order`, `details`, `sold_count`, `is_onsale`) VALUES
(1, 1, '【Jeep附件】全新Jeep自由侠 户外主题贴花（摄影主题）\r\n\r\n', '588.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/cec92f74-8a07-4125-8944-809b52ab2bfc.jpg', NULL, 1),
(2, 1, '【Jeep附件】全新Jeep自由侠 专业级车顶行李架', '3202.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/8a9b5286-19c5-4baa-835e-c80c619f0ea0.jpg', NULL, 1),
(3, 1, '【Jeep附件】全新Jeep自由侠 专用座椅套', '1588.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/b121ada1-3b4b-472c-a1f5-4a802c2d8d98.jpg', NULL, 1),
(4, 1, '【Jeep附件】全新Jeep自由侠 专用脚垫', '520.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/8c7c11ec-13f7-4d91-9d4a-8ab57fc9fcb7.jpg', NULL, 1),
(5, 1, '【Jeep附件】全新Jeep自由侠 专用行李箱垫', '398.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/39686d5b-6ad0-4a5b-8e6c-a9c9fb450cb8.jpg', NULL, 1),
(6, 1, '【Jeep附件】全新Jeep自由侠 专业级防护车衣', '388.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/2426e405-3cd2-4695-a32e-f90167e37201.jpg', NULL, 1),
(7, 1, '【Jeep附件】全新Jeep自由侠 门槛装饰条', '688.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/6f2b66d5-2a7d-4ba0-9033-07122bdc816b.jpg', NULL, 1),
(8, 1, '【Jeep附件】全新Jeep自由侠 侧踏', '1500.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/b9052245-8762-48b7-8c55-a4cca2730e87.jpg', NULL, 1),
(9, 1, '【Jeep附件】全新Jeep自由侠 定制门把手', '700.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/e0aa63bd-957d-4818-a127-0b1a3c46a64f.jpg', NULL, 1),
(10, 1, '【Jeep附件】全新Jeep自由侠 车窗雨档', '588.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/7d8b91a3-d62b-4856-b42e-3bef40ee414a.jpg', NULL, 1),
(11, 1, '【Jeep附件】全新Jeep自由侠 车侧防擦亮条', '1188.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/ed80bb6c-efb0-444d-812f-2b900ab6fb27.jpg', NULL, 1),
(12, 1, '【Jeep附件】全新Jeep自由侠 日行灯灯眉', '498.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n7c565f83-4544-4b71-aeb3-e0e3a341d84d.jpg', NULL, 1),
(13, 1, '【Jeep附件】全新Jeep自由侠 金属油门踏板', '300.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nc5813293-aea8-4d18-8f0b-cab691124e0a.jpg', NULL, 1),
(14, 1, '【Jeep附件】全新Jeep自由侠 后备箱固定网', '120.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\na00e3198-ef8b-4a30-a9ad-3474aa1f8ccf.jpg', NULL, 1),
(15, 1, '【Jeep附件】全新Jeep自由侠 户外主题贴花（酷跑主题）', '588.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nd4f9ef4b-43a3-46cd-be18-c2fd6ffddc37.jpg', NULL, 1),
(16, 1, '【Jeep附件】全新Jeep自由侠 户外主题贴花（摄影主题）', '588.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\ncec92f74-8a07-4125-8944-809b52ab2bfc.jpg', NULL, 1),
(17, 1, '【Jeep附件】全新Jeep自由侠 专业级拖车杠', '5097.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\ndb9e820f-018a-4909-9cbe-d944d8c405c7.jpg', NULL, 1),
(18, 1, '全新Jeep自由侠魔兽主题套装', '3888.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/b45a8776-5f4c-4976-974c-4e76d3e60e73.jpg', NULL, 1),
(19, 2, '【jeep精品】全新Jeep指南者 后备箱收纳分隔', '688.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nc06bfc21-0797-44e4-984a-1cb08f42f2b7.jpg', NULL, 1),
(20, 2, '【Jeep附件】全新Jeep指南者 太极禅侧踏板', '1600.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n5237497f-9eb3-4571-9015-1d7c03a0c9f9.jpg', NULL, 1),
(21, 1, '【Jeep精品】全新Jeep自由侠1:18车模', '498.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n834f51b3-971d-4969-99b0-bc00676f1a02 .jpg', NULL, 1),
(22, 2, '【Jeep附件】全新Jeep指南者 挡泥板', '479.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n61b74c57-2ddd-4632-8c3c-c37cfc702032.jpg', NULL, 1),
(23, 2, '【Jeep附件】全新Jeep指南者 油箱盖贴', '569.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nd10b3def-a62c-4569-bb75-73ae93e1751a.jpg', NULL, 1),
(24, 2, '【Jeep附件】全新Jeep指南者 排气管尾喉（四驱版不适用）', '491.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n55bc5d05-11cc-4f29-a04a-2f807a9db977.jpg', NULL, 1),
(25, 2, '【Jeep精品】全新Jeep指南者车模', '498.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n60ea997d-58ed-4875-aa60-119eacaf8af4.jpg', NULL, 1),
(26, 3, '【Jeep附件】全新Jeep自由光 毛毡脚垫', '702.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nb4b8c0a2-22bd-4034-b807-ed5b603a2b26.jpg', NULL, 1),
(27, 3, '【Jeep附件】全新Jeep自由光 排气管尾喉（适用2.0L）', '491.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\neba9d9a4-4afc-4c08-bf94-ba21830fc66d.jpg', NULL, 1),
(28, 3, '【Jeep附件】全新Jeep自由光 金属油门踏板', '326.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n20b64434-dbcd-483c-bdee-dfeb43f66111.jpg', NULL, 1),
(29, 3, '【Jeep附件】全新Jeep自由光 星辉云侧踏板', '1600.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n03e8c83b-e36a-489c-8542-96583a5d4b51.jpg', NULL, 1),
(30, 3, '【Jeep精品】全新Jeep自由光 车模', '498.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n67e65360-6329-4656-9833-87b7f3bf0f34.jpg', NULL, 1),
(31, 3, '【Jeep附件】全新Jeep自由光 迎宾踏板', '688.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n06de213c-df3e-4bbc-b36c-6a56dee8a7c9.jpg', NULL, 1),
(32, 3, '【Jeep附件】全新Jeep自由光 定制门把手', '779.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n0dc8bba6-8267-4a53-8b8d-bf04d87978ee.jpg', NULL, 1),
(33, 3, '【Jeep附件】全新Jeep自由光 油底壳护板', '882.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n768c2340-b1af-4599-ad9c-27efb2df626d.jpg', NULL, 1),
(34, 3, '【Jeep附件】全新Jeep自由光 油箱护板', '922.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nd69dc8f8-ae20-4e6e-a44a-2d8ee5b29e59.jpg', NULL, 1),
(35, 3, '【Jeep附件】全新Jeep自由光 车身防石板', '1145.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n067fcf47-c4c1-4266-8272-545a0a2b3f45.jpg', NULL, 1),
(36, 3, '【Jeep精品】全新Jeep自由光 钥匙包', '140.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nae286cd3-f6f1-4a55-b472-0fc67fd24eca.jpg', NULL, 1),
(37, 3, '【Jeep精品】全新Jeep自由光 后备箱储物系统专用挂钩', '58.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nb19f3011-a9b0-4b97-9468-9b87814fb4a8.jpg', NULL, 1),
(38, 3, '【Jeep附件】全新Jeep自由光 油箱盖贴', '569.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n38d69992-f71a-412e-816f-d9870c07e8ca.jpg', NULL, 1),
(39, 3, '【Jeep附件】全新Jeep自由光 全天候防泥浆 行李箱垫 咖啡色', '398.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n337efd92-670f-47f8-bffd-731aa8d07eb5.jpg', NULL, 1),
(40, 3, '【Jeep附件】全新Jeep自由光 全天候防泥浆 环保脚垫 咖啡色', '520.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n0a9b5883-7898-48f1-8639-3f2dca3d6533.jpg', NULL, 1),
(41, 0, '【Jeep精品】Jeep可折叠水桶', '118.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n94970e02-e706-49aa-b081-c64c1da0b0e7.jpg', NULL, 1),
(42, 0, '【Jeep附件】Jeep专业级尾部自行车架（须配合拖车杠使用）', '4800.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n63c45d31-bc76-4a19-9ca1-34882d64e179.jpg', NULL, 1),
(43, 0, '【Jeep附件】Jeep专业级行摄装备行李箱', '3990.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\ne4b9c82c-8428-492c-97a6-108ae83c4fae.jpg', NULL, 1),
(44, 0, '【Jeep附件】Jeep专业级车顶自行车架', '2966.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nd9991f36-9649-467c-82b2-af412a74f703.jpg', NULL, 1),
(45, 0, '【Jeep附件】Jeep专业级行车记录仪', '1105.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n33698917-1216-4504-a173-41c0027b6a38.jpg', NULL, 1),
(46, 0, '【Jeep精品】Jeep主题内饰头枕', '128.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n15d2753c-a5e8-423e-bddf-4f0658952fb3.jpg', NULL, 1),
(47, 0, '【Jeep附件】Jeep运动款方向盘套', '152.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n57b18f3e-d2b0-4763-bf77-626ee5cda2fe.jpg', NULL, 1),
(48, 0, '【Jeep精品】Jeep主题内饰条纹头枕', '228.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n13942702-a674-4989-95e3-aa448dfee5f0.jpg', NULL, 1),
(49, 0, '【Jeep精品】Jeep主题户外摄影包', '330.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n42600dfe-8f2e-41c0-9cbf-dba893db03ec.jpg', NULL, 1),
(50, 0, '【Jeep精品】Jeep主题户外帐篷', '1214.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nccd08d2f-b85c-4dcc-a2de-2a984e7f6224.jpg', NULL, 1),
(51, 0, '【Jeep精品】Jeep主题大容量储物盒', '669.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nf9c8d918-0d08-45d6-bc16-80165daf82e8.jpg', NULL, 1),
(52, 0, '【Jeep精品】Jeep主题户外野餐垫', '300.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n63cb8642-78b5-4084-9dc6-79b67514b1bc.jpg', NULL, 1),
(53, 0, '【Jeep精品】手机镜头组', '200.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n4dc44acf-c2ac-4f03-a7d9-e5de9363c29d.jpg', NULL, 1),
(54, 0, '【Jeep精品】Jeep亲子自行车', '988.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nf1f731fa-0dd7-42c9-80b8-9b7dac52685b.jpg', NULL, 1),
(55, 0, '【Jeep精品】Jeep露营帐篷', '880.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nee8fa4d3-4127-4e0c-8b53-a1b551601124.jpg', NULL, 1),
(56, 0, '【Jeep精品】Jeep车载无线充电装备（通用)', '678.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n73740319-5075-482a-a3eb-8cd43a2f06b4.jpg', NULL, 1),
(57, 0, '【Jeep精品】Jeep车载香氛（手机支架功能）', '305.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n0d14a6ba-33ef-4367-8156-8ca96241eefb.jpg', NULL, 1),
(58, 0, '【Jeep精品】Jeep条纹腰靠', '258.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nece5d4f7-5246-4a6c-bfb4-99553be906e9.jpg', NULL, 1),
(59, 0, '【Jeep精品】Jeep腰靠（黑色）', '258.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n2319d407-63f1-49bd-82ac-9c3b5f8dc1fc.jpg', NULL, 1),
(60, 0, '【Jeep精品】钥匙链', '29.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\nf2dac55b-8a9a-4130-b77b-7f31ec162b31.jpg', NULL, 1),
(61, 0, '【Jeep精品】全新Jeep 车载保温箱包', '585.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n770372ea-b32d-4c9a-8485-a210669c470c.jpg', NULL, 1),
(62, 0, '【Jeep精品】Jeep多用途储藏盒', '585.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\ncfa6ea83-6f9b-49b1-b14a-de0891dbe000.jpg', NULL, 1),
(63, 0, '【Jeep精品】全新Jeep储物盒', '668.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n24ed4572-a310-4b1e-8aea-45de2c30d869.jpg', NULL, 1),
(64, 0, '【Jeep附件】Jeep专用气门帽', '88.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n1985a744-f432-49a0-9049-9d6eff63a534.jpg', NULL, 1),
(65, 0, '【Jeep附件】Jeep美国国旗车侧贴花', '588.00', NULL, '0', '1', '1', 'img/jep_shopping/jeep_bot/bot_pic/details/\r\n603dea80-08d3-4c2a-a24e-b91ec287ce37.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- 表的结构 `jeep_bot_pic`
--

CREATE TABLE `jeep_bot_pic` (
  `pid` int(11) NOT NULL,
  `bid` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_bot_pic`
--

INSERT INTO `jeep_bot_pic` (`pid`, `bid`, `sm`, `md`, `lg`) VALUES
(1, 1, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb8e88dc8-fb73-433c-93bb-1d40963069e0-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/b8e88dc8-fb73-433c-93bb-1d40963069e0-source.jpg', NULL),
(2, 1, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\naa5812ca-81b3-4e29-b340-5ebcf0a2372c-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/aa5812ca-81b3-4e29-b340-5ebcf0a2372c-source.png', NULL),
(3, 2, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n4215ed67-0d86-4778-bb1b-378f87020953-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/4215ed67-0d86-4778-bb1b-378f87020953-source.jpg', NULL),
(4, 2, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n507a4039-b884-4dd2-bb2a-dcca88692ab7-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/507a4039-b884-4dd2-bb2a-dcca88692ab7-source.png\r\n', NULL),
(5, 2, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n33b1c3f7-2b38-4626-bdce-aafd448d821a-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/33b1c3f7-2b38-4626-bdce-aafd448d821a-source.png\r\n', NULL),
(6, 2, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nbd27b7c3-cb41-41be-8d63-7f7cc8d73a8f-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/bd27b7c3-cb41-41be-8d63-7f7cc8d73a8f-source.png\r\n', NULL),
(7, 3, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9a9f30c4-a098-4ac8-96d5-9089a10e0319-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/9a9f30c4-a098-4ac8-96d5-9089a10e0319-source.jpeg\r\n\r\n', NULL),
(8, 3, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6b57c1bc-18ca-4911-bdfe-5a1c91af858f-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/6b57c1bc-18ca-4911-bdfe-5a1c91af858f-source.png\r\n\r\n', NULL),
(9, 3, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n8abe8dc9-6a78-4447-a745-bd9203eb293d-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/8abe8dc9-6a78-4447-a745-bd9203eb293d-source.jpg\r\n', NULL),
(10, 3, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nfd9d293a-dbbd-4963-995a-4d77f2a1bafd-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/fd9d293a-dbbd-4963-995a-4d77f2a1bafd-source.png\r\n', NULL),
(11, 4, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7a5b510d-6bbc-4388-be6e-a1e346049682-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/7a5b510d-6bbc-4388-be6e-a1e346049682-source.jpg\r\n', NULL),
(12, 4, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc800ac18-982b-440c-b6f3-898df5c93b27-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/c800ac18-982b-440c-b6f3-898df5c93b27-source.png\r\n', NULL),
(13, 4, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6853afc6-fb43-4f4f-bb06-0e1a15d2bbdf-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/6853afc6-fb43-4f4f-bb06-0e1a15d2bbdf-source.png\r\n', NULL),
(14, 4, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n227c2ae7-7a8d-4c42-ac3a-d4c685fb7048-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/227c2ae7-7a8d-4c42-ac3a-d4c685fb7048-source.png\r\n', NULL),
(15, 4, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd74ce63f-3ec9-46b4-9aa2-ee1f472fe7b8-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/d74ce63f-3ec9-46b4-9aa2-ee1f472fe7b8-source.png\r\n', NULL),
(16, 5, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0fee94e9-1bda-4817-964c-f453d26dcfd3-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/0fee94e9-1bda-4817-964c-f453d26dcfd3-source.jpg\r\n', NULL),
(17, 5, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2d926cdb-de66-4fb9-88d7-7d91f5e579a5-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/2d926cdb-de66-4fb9-88d7-7d91f5e579a5-source.png\r\n', NULL),
(18, 5, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n61b628cc-d78e-4028-8898-ac4b8d00f3cd-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/61b628cc-d78e-4028-8898-ac4b8d00f3cd-source.png\r\n', NULL),
(19, 5, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nfe14c781-bad8-40d8-81eb-e29c23583293-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/fe14c781-bad8-40d8-81eb-e29c23583293-source.png\r\n', NULL),
(20, 5, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3f73d28d-3ac4-4505-90a7-8d9f7f7db115-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/3f73d28d-3ac4-4505-90a7-8d9f7f7db115-source.png\r\n', NULL),
(21, 6, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne6cd794f-ac07-407a-bb14-585d751cd5cf-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/e6cd794f-ac07-407a-bb14-585d751cd5cf-source.jpg\r\n', NULL),
(22, 6, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n5b915d93-3d3b-4134-9ffb-1e0deeeaba84-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/5b915d93-3d3b-4134-9ffb-1e0deeeaba84-source.png\r\n', NULL),
(23, 6, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc5daf8af-78ce-43a5-9216-906cb7f1582b-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/c5daf8af-78ce-43a5-9216-906cb7f1582b-source.png\r\n', NULL),
(24, 6, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n30c326be-a386-47dd-8898-59c2eae4f13f-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/30c326be-a386-47dd-8898-59c2eae4f13f-source.png\r\n', NULL),
(25, 6, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd9ea639e-1de6-4776-b0ca-9cf10d07e36d-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/d9ea639e-1de6-4776-b0ca-9cf10d07e36d-source.png\r\n', NULL),
(26, 7, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na80cd964-15fd-4ee1-9895-aecc64e63385-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/a80cd964-15fd-4ee1-9895-aecc64e63385-source.jpg\r\n', NULL),
(27, 7, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd7731eec-bc9d-425b-884b-b06b7802f604-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/d7731eec-bc9d-425b-884b-b06b7802f604-source.png\r\n', NULL),
(28, 7, 'img/jep_shopping/jeep_bot/bot_pic/sm/\r\ndd92adda-bb19-4c2a-b172-a86e5739075e-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/dd92adda-bb19-4c2a-b172-a86e5739075e-source.png\r\n', NULL),
(29, 7, 'img/jep_shopping/jeep_bot/bot_pic/sm/\r\ncfc4e2a4-94b6-4bef-81bf-446170dc8d53-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/cfc4e2a4-94b6-4bef-81bf-446170dc8d53-source.png\r\n', NULL),
(30, 8, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n92014b76-22bd-4350-86fb-5bafae668172-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/92014b76-22bd-4350-86fb-5bafae668172-source.jpg\r\n', NULL),
(31, 8, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9f05af6e-dbac-450d-8858-beb9867d6a10-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/9f05af6e-dbac-450d-8858-beb9867d6a10-source.png\r\n', NULL),
(32, 8, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na9a0bfde-7ec4-4db6-a011-d6cc0375ee38-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/a9a0bfde-7ec4-4db6-a011-d6cc0375ee38-source.png\r\n', NULL),
(33, 8, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na46523ef-4ab1-4c06-af33-c6828e508eb5-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/a46523ef-4ab1-4c06-af33-c6828e508eb5-source.png\r\n', NULL),
(34, 8, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nee288534-0b8c-44ae-bb5d-e54acd90fc90-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/ee288534-0b8c-44ae-bb5d-e54acd90fc90-source.png\r\n', NULL),
(35, 9, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7494148d-744e-472b-9cfb-c33aacbe4a44-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/7494148d-744e-472b-9cfb-c33aacbe4a44-source.jpg\r\n', NULL),
(36, 9, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1ffad761-a478-4617-9d92-615284b0c7d6-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/1ffad761-478-4617-9d92-615284b0c7d6-source.png\r\n', NULL),
(37, 9, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n86da468d-1048-4e96-a36b-162cdbe8cfaa-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/86da468d-1048-4e96-a36b-162cdbe8cfaa-source.png\r\n', NULL),
(38, 9, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0f36bd81-d202-45c2-9e86-5238c41547d4-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/0f36bd81-d202-45c2-9e86-5238c41547d4-source.png\r\n', NULL),
(39, 9, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc1898e3e-ba78-490c-abd3-7ebd945a3694-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/c1898e3e-ba78-490c-abd3-7ebd945a3694-source.png\r\n', NULL),
(40, 10, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd002126c-168c-4161-9bb2-9b60848ad2f1-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/d002126c-168c-4161-9bb2-9b60848ad2f1-source.jpg\r\n', NULL),
(41, 10, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne6582d61-c176-4a20-a309-be8ab13dd004-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/e6582d61-c176-4a20-a309-be8ab13dd004-source.png\r\n', NULL),
(42, 10, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9ff9a0a9-2dc5-44df-a19f-2561fa0eb9c7-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/9ff9a0a9-2dc5-44df-a19f-2561fa0eb9c7-source.png\r\n', NULL),
(43, 10, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nea53dde5-4c67-421f-b08f-84c4d433f61b-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/ea53dde5-4c67-421f-b08f-84c4d433f61b-source.png\r\n', NULL),
(44, 11, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na387d705-d8c0-41cd-9edd-7c67195539dc-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/mda387d705-d8c0-41cd-9edd-7c67195539dc-source.jpg\r\n', NULL),
(45, 11, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2e89fccf-5c35-443f-b0bf-79d3505b4f99-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2e89fccf-5c35-443f-b0bf-79d3505b4f99-source.png\r\n', NULL),
(46, 11, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb4179b8d-c84d-42bb-abe6-d4cffc2fa689-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb4179b8d-c84d-42bb-abe6-d4cffc2fa689-source.png\r\n', NULL),
(47, 11, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n917c1a5b-68b1-4796-9092-16c703d07c67-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n917c1a5b-68b1-4796-9092-16c703d07c67-source.png\r\n', NULL),
(48, 11, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n543b6888-bacb-41b7-a904-5bc1e384ed72-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n543b6888-bacb-41b7-a904-5bc1e384ed72-source.png\r\n', NULL),
(49, 12, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ndb86f518-d7dd-4e96-aaac-48446d9e352d-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ndb86f518-d7dd-4e96-aaac-48446d9e352d-source.jpg\r\n', NULL),
(50, 12, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n91f0f292-3a9b-4cfc-abb2-136b12b5e732-thumbnail.jpgz', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n91f0f292-3a9b-4cfc-abb2-136b12b5e732-source.png\r\n', NULL),
(51, 12, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb5d139e7-2341-4d53-aabe-4d980923cfec-thumbnail.jpgz', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb5d139e7-2341-4d53-aabe-4d980923cfec-source.png\r\n', NULL),
(52, 12, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0f4ffcf0-e793-4fe7-b4fc-09513256172e-thumbnail.jpgz', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n0f4ffcf0-e793-4fe7-b4fc-09513256172e-source.png\r\n', NULL),
(53, 12, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n786aabac-97d1-44bf-955f-ef3d4d7eab92-thumbnail.jpgzz', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n786aabac-97d1-44bf-955f-ef3d4d7eab92-source.png\r\n', NULL),
(54, 13, 'img/jeep_shopeeping/jeep_bot/bot_pic/sm/\r\n1ecb3b4d-2213-4215-8348-50a89d4898e5-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1ecb3b4d-2213-4215-8348-50a89d4898e5-source.jpg\r\n', NULL),
(55, 13, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1da6b898-6570-4d20-8a6c-7b2a2c7ef01d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1da6b898-6570-4d20-8a6c-7b2a2c7ef01d-source.png\r\n', NULL),
(56, 13, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n4adf4aa8-53d6-4506-a6e5-4d9b2cf7bc4b-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n4adf4aa8-53d6-4506-a6e5-4d9b2cf7bc4b-source.png\r\n', NULL),
(57, 13, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n55f809b8-a4c7-411c-9ff1-6f53f9006859-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n55f809b8-a4c7-411c-9ff1-6f53f9006859-source.png\r\n', NULL),
(58, 13, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ncd84ab4f-b10f-4243-8245-b58738dc23ce-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ncd84ab4f-b10f-4243-8245-b58738dc23ce-source.png\r\n', NULL),
(59, 14, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nfec8d63b-f5c6-4200-bbbe-260c4f174e7b-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nfec8d63b-f5c6-4200-bbbe-260c4f174e7b-source.jpg\r\n', NULL),
(60, 14, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nfc846b56-322d-497f-b286-b41843e0c70a-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nfc846b56-322d-497f-b286-b41843e0c70a-source.png\r\n', NULL),
(61, 14, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd38348b4-d667-48d8-b680-2a6f5a03a825-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd38348b4-d667-48d8-b680-2a6f5a03a825-source.png\r\n', NULL),
(62, 14, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n11a11d10-6136-43e1-b1b1-247ee90449d3-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n11a11d10-6136-43e1-b1b1-247ee90449d3-source.png\r\n', NULL),
(63, 14, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3d6bd55b-f0e8-4333-afad-9eb580709e2d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n3d6bd55b-f0e8-4333-afad-9eb580709e2d-source.png\r\n', NULL),
(64, 15, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9a12aecd-885e-473a-8ce8-62254a9cea26-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9a12aecd-885e-473a-8ce8-62254a9cea26-source.jpg\r\n', NULL),
(65, 15, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n43087cb4-0121-4e25-81ac-977d54a06a4f-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n43087cb4-0121-4e25-81ac-977d54a06a4f-source.png\r\n', NULL),
(66, 16, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\naa5812ca-81b3-4e29-b340-5ebcf0a2372c-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\naa5812ca-81b3-4e29-b340-5ebcf0a2372c-source.jpg\r\n', NULL),
(67, 17, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf2a16c68-56c9-4e4c-be72-d2cdbdacb69a-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf2a16c68-56c9-4e4c-be72-d2cdbdacb69a-source.jpg\r\n', NULL),
(68, 17, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd9be5ff8-2b14-4284-8a4b-87660b69513d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd9be5ff8-2b14-4284-8a4b-87660b69513d-source.png\r\n', NULL),
(69, 18, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0bb0d5c5-b6d2-4f26-b490-76c543c596e6-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n0bb0d5c5-b6d2-4f26-b490-76c543c596e6-source.jpg\r\n', NULL),
(70, 18, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n8d15f3a3-d792-4c78-aed3-b5454ba531a4-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n8d15f3a3-d792-4c78-aed3-b5454ba531a4-source.png\r\n', NULL),
(71, 18, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc7e74ad3-8c8c-4762-8275-c9752aa0d3a2-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc7e74ad3-8c8c-4762-8275-c9752aa0d3a2-source.png\r\n', NULL),
(72, 18, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne4d99b14-7f15-4fd2-ab52-78f0e00002ee-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne4d99b14-7f15-4fd2-ab52-78f0e00002ee-source.png\r\n', NULL),
(73, 18, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1c665130-40eb-4103-8c7f-b49ae8f23d96-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1c665130-40eb-4103-8c7f-b49ae8f23d96-source.png\r\n', NULL),
(74, 19, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ndbba4ad8-0433-4d5a-b752-61ac27d92f96-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ndbba4ad8-0433-4d5a-b752-61ac27d92f96-source.jpg\r\n', NULL),
(75, 19, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n37117760-f984-48f1-8ab8-92ba8bfb0b27-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n37117760-f984-48f1-8ab8-92ba8bfb0b27-source.png\r\n', NULL),
(76, 19, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6daf7777-2ac0-4cc8-9eab-2f664403da9f-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6daf7777-2ac0-4cc8-9eab-2f664403da9f-source.png\r\n', NULL),
(77, 19, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne1c8fe34-ea6f-467b-ba7c-2813f3048da9-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne1c8fe34-ea6f-467b-ba7c-2813f3048da9-source.png\r\n', NULL),
(78, 20, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n56997c21-4aa5-44df-a857-37a501f6dd7f-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n56997c21-4aa5-44df-a857-37a501f6dd7f-source.jpg\r\n', NULL),
(79, 20, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n781c3d20-1e5a-4deb-a2e4-7783ac782680-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n781c3d20-1e5a-4deb-a2e4-7783ac782680-source.png\r\n', NULL),
(80, 20, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc34953cb-d0ba-4619-a37f-538006a9ef92-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc34953cb-d0ba-4619-a37f-538006a9ef92-source.png\r\n', NULL),
(81, 20, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n5609ea5d-ef1d-482f-8f7f-427af355c7a5-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n5609ea5d-ef1d-482f-8f7f-427af355c7a5-source.png\r\n', NULL),
(82, 20, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n5628e46c-fc08-4582-9677-67bd04283eee-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n5628e46c-fc08-4582-9677-67bd04283eee-source.png\r\n', NULL),
(83, 21, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2038ae9f-47aa-48f5-b4a9-e3b072901759-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2038ae9f-47aa-48f5-b4a9-e3b072901759-source.jpg\r\n', NULL),
(84, 21, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n719ccefc-0310-4f0c-8d11-469f3e7efcc9-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n719ccefc-0310-4f0c-8d11-469f3e7efcc9-source.png\r\n', NULL),
(85, 21, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1d42ba95-58c9-4866-b1ad-8b4f413681ec-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1d42ba95-58c9-4866-b1ad-8b4f413681ec-source.png\r\n', NULL),
(86, 21, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc8d58188-dbf8-415d-b2c0-5ab137cdc931-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc8d58188-dbf8-415d-b2c0-5ab137cdc931-source.png\r\n', NULL),
(87, 21, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3dddb27a-6617-4681-82e3-338f15d46529-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n3dddb27a-6617-4681-82e3-338f15d46529-source.png\r\n', NULL),
(88, 22, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2c5db688-4873-4962-9f6e-7f60bee12d7b-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2c5db688-4873-4962-9f6e-7f60bee12d7b-source.jpg\r\n', NULL),
(89, 22, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6d72a3c4-6a94-4834-b0e2-fe4223f0ecee-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6d72a3c4-6a94-4834-b0e2-fe4223f0ecee-source.png\r\n', NULL),
(90, 22, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1981604d-7b78-4934-b0ae-93312fce2884-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1981604d-7b78-4934-b0ae-93312fce2884-source.png\r\n', NULL),
(91, 22, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc8366568-adbc-4f20-931f-461bf7dfce65-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc8366568-adbc-4f20-931f-461bf7dfce65-source.png\r\n', NULL),
(92, 23, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2a20adaa-0111-49a9-aad4-46af87376fda-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2a20adaa-0111-49a9-aad4-46af87376fda-source.jpg\r\n', NULL),
(93, 23, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1490a6fa-4c8e-438b-9a5d-0428f6036785-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1490a6fa-4c8e-438b-9a5d-0428f6036785-source.png\r\n', NULL),
(94, 23, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n4856a813-c12d-43cd-a5d0-e1a18b50a707-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n4856a813-c12d-43cd-a5d0-e1a18b50a707-source.png\r\n', NULL),
(95, 24, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb920bee2-058d-452b-99a7-f734e30e63bc-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb920bee2-058d-452b-99a7-f734e30e63bc-source.jpg\r\n', NULL),
(96, 24, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3132eb47-eb42-4cb1-9bbe-14247a3eb0fd-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n3132eb47-eb42-4cb1-9bbe-14247a3eb0fd-source.png\r\n', NULL),
(97, 24, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n5767f814-7a24-4001-b9a4-cfe4b168f016-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n5767f814-7a24-4001-b9a4-cfe4b168f016-source.png\r\n', NULL),
(98, 24, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2db87ed1-bf68-450c-88ff-06aa350a424e-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2db87ed1-bf68-450c-88ff-06aa350a424e-source.png\r\n', NULL),
(99, 24, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb088f6ec-a118-4eff-a671-973ed89c3f05-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb088f6ec-a118-4eff-a671-973ed89c3f05-source.png\r\n', NULL),
(100, 25, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n517043a3-9ed1-48b3-9561-82b42db24fc5-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n517043a3-9ed1-48b3-9561-82b42db24fc5-source.jpg\r\n', NULL),
(101, 25, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n96b43e80-a1d9-457d-ba84-aa388462aa37-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n96b43e80-a1d9-457d-ba84-aa388462aa37-source.png\r\n', NULL),
(102, 25, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc0cbb1ec-bb44-4b29-ad38-aaed7c2f457b-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc0cbb1ec-bb44-4b29-ad38-aaed7c2f457b-source.png\r\n', NULL),
(103, 26, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3efdc37a-e99c-4277-8448-837e93b9c656-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n3efdc37a-e99c-4277-8448-837e93b9c656-source.jpg\r\n', NULL),
(104, 26, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd1b15ebe-bda1-4bd2-9b37-6b9ed1ae5e99-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd1b15ebe-bda1-4bd2-9b37-6b9ed1ae5e99-source.png\r\n', NULL),
(105, 26, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb4185b2f-9329-4b48-9265-73f9fc042027-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb4185b2f-9329-4b48-9265-73f9fc042027-source.png\r\n', NULL),
(106, 26, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7c33b91e-946e-484b-9a8c-a60b123e8360-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7c33b91e-946e-484b-9a8c-a60b123e8360-source.png\r\n', NULL),
(107, 26, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7184acbd-9235-47f3-aaa2-23baada3cf11-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7184acbd-9235-47f3-aaa2-23baada3cf11-source.png\r\n', NULL),
(108, 27, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n032caffc-6c3f-4ee4-8ae0-41c7a7f25e6b-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n032caffc-6c3f-4ee4-8ae0-41c7a7f25e6b-source.jpg\r\n', NULL),
(109, 27, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na18f6389-0f9a-4bdc-9980-408634d8ee74-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na18f6389-0f9a-4bdc-9980-408634d8ee74-source.png\r\n', NULL),
(110, 27, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3027db33-fda3-4728-a4af-5b3879286e1a-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n3027db33-fda3-4728-a4af-5b3879286e1a-source.png\r\n', NULL),
(111, 27, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9e0565de-9336-4dc7-ae8d-0091c5ceed20-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9e0565de-9336-4dc7-ae8d-0091c5ceed20-source.png\r\n', NULL),
(112, 27, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1552419f-fa55-4e4c-b54c-1053c3c226f4-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1552419f-fa55-4e4c-b54c-1053c3c226f4-source.png\r\n', NULL),
(113, 28, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n77fcd50f-b0bf-4d36-a343-9d2437ba35c9-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n77fcd50f-b0bf-4d36-a343-9d2437ba35c9-source.jpg\r\n', NULL),
(114, 28, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n70f0e825-3100-412a-9320-cb7c149689b2-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n70f0e825-3100-412a-9320-cb7c149689b2-source.png\r\n', NULL),
(115, 28, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nddc0583b-5766-4127-a3aa-6adcb6b8ed79-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nddc0583b-5766-4127-a3aa-6adcb6b8ed79-source.png\r\n', NULL),
(116, 28, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n89d31a78-391a-4cdd-abfa-04a3f095910d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n89d31a78-391a-4cdd-abfa-04a3f095910d-source.png\r\n', NULL),
(117, 28, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc9b13ae6-bed3-4d22-9452-3acf9aca8a52-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc9b13ae6-bed3-4d22-9452-3acf9aca8a52-source.png\r\n', NULL),
(118, 29, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\naa688b27-32ae-4d8f-a9ea-4982f0cff387-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\naa688b27-32ae-4d8f-a9ea-4982f0cff387-source.jpg\r\n', NULL),
(119, 29, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n8e46e435-8dcf-4dea-915c-40b80b342dfe-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n8e46e435-8dcf-4dea-915c-40b80b342dfe-source.png\r\n', NULL),
(120, 29, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb4b13d65-8b6d-471c-af77-c1b9952bcbcf-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb4b13d65-8b6d-471c-af77-c1b9952bcbcf-source.png\r\n', NULL),
(121, 30, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n59e82deb-ed0f-466f-9b46-e8013b0f71c5-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n59e82deb-ed0f-466f-9b46-e8013b0f71c5-source.jpg\r\n', NULL),
(122, 30, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf05da70b-94e6-4f65-9fbb-3d54ca72f11c-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf05da70b-94e6-4f65-9fbb-3d54ca72f11c-source.png\r\n', NULL),
(123, 30, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd4aeed65-40b4-426a-b6ac-a7acb13c7683-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd4aeed65-40b4-426a-b6ac-a7acb13c7683-source.png\r\n', NULL),
(124, 30, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ndd2513ca-e0ea-44f0-bf4a-e0221ed8eeef-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ndd2513ca-e0ea-44f0-bf4a-e0221ed8eeef-source.png\r\n', NULL),
(125, 30, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n06ec5c1a-304a-4541-8a42-683449ab009e-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n06ec5c1a-304a-4541-8a42-683449ab009e-source.png\r\n', NULL),
(126, 31, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n59652a11-28d7-46bf-b537-e6eba43d510b-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n59652a11-28d7-46bf-b537-e6eba43d510b-source.jpg\r\n', NULL),
(127, 31, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nae6d5783-58c9-4b14-8de3-ec040273e646-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nae6d5783-58c9-4b14-8de3-ec040273e646-source.png\r\n', NULL),
(128, 31, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n76e1d1c3-da3a-4f0d-a73b-091208b5dc25-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n76e1d1c3-da3a-4f0d-a73b-091208b5dc25-source.png\r\n', NULL),
(129, 31, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n32ffa936-a81c-43b0-ab16-b6e4464db7bf-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n32ffa936-a81c-43b0-ab16-b6e4464db7bf-source.png\r\n', NULL),
(130, 31, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7bc4c273-8383-44c7-8bff-4f3021672412-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7bc4c273-8383-44c7-8bff-4f3021672412-source.png\r\n', NULL),
(131, 32, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne904f71f-b677-4ac4-9915-cd2665081b4d-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne904f71f-b677-4ac4-9915-cd2665081b4d-source.jpg\r\n', NULL),
(132, 32, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n426eff1b-8479-45b3-81f6-7c2b4e8dae85-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n426eff1b-8479-45b3-81f6-7c2b4e8dae85-source.png\r\n', NULL),
(133, 32, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n57388716-ba6e-4f46-82fa-3da89176b970-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n57388716-ba6e-4f46-82fa-3da89176b970-source.png\r\n', NULL),
(134, 32, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0e5d46e8-a333-48eb-b974-a6e721391916-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n0e5d46e8-a333-48eb-b974-a6e721391916-source.png\r\n', NULL),
(135, 33, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na6732fdb-a173-4b22-a9a9-462419ab3781-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na6732fdb-a173-4b22-a9a9-462419ab3781-source.jpg\r\n', NULL),
(136, 33, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9c2db5b0-9dca-454c-9552-5b789d4b7348-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9c2db5b0-9dca-454c-9552-5b789d4b7348-source.png\r\n', NULL),
(137, 33, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na5aa9615-bb02-48bb-8d2f-d6bc7e080d34-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na5aa9615-bb02-48bb-8d2f-d6bc7e080d34-source.png\r\n', NULL),
(138, 33, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nabebee8c-da99-45c6-86ee-428c85b23b7f-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nabebee8c-da99-45c6-86ee-428c85b23b7f-source.png\r\n', NULL),
(139, 33, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3fab2910-a709-4e8a-9e4d-928118b845cf-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n3fab2910-a709-4e8a-9e4d-928118b845cf-source.png\r\n', NULL),
(140, 34, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9319cfbe-654c-4e6a-aff7-33c4b615cfdc-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9319cfbe-654c-4e6a-aff7-33c4b615cfdc-source.jpg\r\n', NULL),
(141, 34, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n39c136e1-f22e-4739-a8e1-89de1a48ad7e-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n39c136e1-f22e-4739-a8e1-89de1a48ad7e-source.png\r\n', NULL),
(142, 34, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n01a87710-93d3-4b38-81fb-5f5f8d7793ed-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n01a87710-93d3-4b38-81fb-5f5f8d7793ed-source.png\r\n', NULL),
(143, 34, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n92d58f00-345f-4694-9d5e-f3faf42f795f-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n92d58f00-345f-4694-9d5e-f3faf42f795f-source.png\r\n', NULL),
(144, 34, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n96f086f4-f068-49bc-9c4a-e14129da63ba-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n96f086f4-f068-49bc-9c4a-e14129da63ba-source.png\r\n', NULL),
(145, 35, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne0255def-7a6e-49b2-a5f3-2b235718773e-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne0255def-7a6e-49b2-a5f3-2b235718773e-source.jpg\r\n', NULL),
(146, 35, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n740f9fac-2fd7-4f89-9cbc-0dd79f03d4dc-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n740f9fac-2fd7-4f89-9cbc-0dd79f03d4dc-source.png\r\n', NULL),
(147, 35, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6d89bac3-adf0-404f-b294-c504f0a24195-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6d89bac3-adf0-404f-b294-c504f0a24195-source.png\r\n', NULL),
(148, 35, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc7621f08-13ff-4d3f-8e0b-9c7ecbd1e00b-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc7621f08-13ff-4d3f-8e0b-9c7ecbd1e00b-source.png\r\n', NULL),
(149, 35, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na067df59-67f4-40c7-8903-88fc314219ca-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na067df59-67f4-40c7-8903-88fc314219ca-source.png\r\n', NULL),
(150, 36, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n280df43b-2df9-44e1-b850-691c60e60fb3-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n280df43b-2df9-44e1-b850-691c60e60fb3-source.jpg\r\n', NULL),
(151, 36, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9447fbc1-4759-47c9-9dd3-29425329ce7d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9447fbc1-4759-47c9-9dd3-29425329ce7d-source.png\r\n', NULL),
(152, 36, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n58e6829c-5491-42d0-9223-79767dec5f6d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n58e6829c-5491-42d0-9223-79767dec5f6d-source.png\r\n', NULL),
(153, 36, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7e02f303-902e-4f54-92f0-f8959ae8702d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7e02f303-902e-4f54-92f0-f8959ae8702d-source.png\r\n', NULL),
(154, 36, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne838d0fe-16e1-43c7-84f8-85b5de34d09b-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne838d0fe-16e1-43c7-84f8-85b5de34d09b-source.png\r\n', NULL),
(155, 37, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na1c05fea-6955-4956-84d1-644eb12792ca-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na1c05fea-6955-4956-84d1-644eb12792ca-source.jpg\r\n', NULL),
(156, 37, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n80d1043c-2a6b-4380-9c48-3788bba8499d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n80d1043c-2a6b-4380-9c48-3788bba8499d-source.png\r\n', NULL),
(157, 37, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9e2dc3ce-ba17-4696-84b0-7279bf9f2e8a-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9e2dc3ce-ba17-4696-84b0-7279bf9f2e8a-source.png\r\n', NULL),
(158, 37, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7251a876-dda1-4831-9134-7c95332c5b0f-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7251a876-dda1-4831-9134-7c95332c5b0f-source.png\r\n', NULL),
(159, 37, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9832fe8c-6a2e-4b74-a203-b5e6443495d8-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9832fe8c-6a2e-4b74-a203-b5e6443495d8-source.png\r\n', NULL),
(160, 38, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf836cebb-0302-41e5-b367-99d9409c6bee-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf836cebb-0302-41e5-b367-99d9409c6bee-source.jpg\r\n', NULL),
(161, 38, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\naf7b480d-8859-4009-b0bc-63431642b7d3-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\naf7b480d-8859-4009-b0bc-63431642b7d3-source.png\r\n', NULL),
(162, 38, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nbc894907-f25f-48b4-a763-491632449a40-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nbc894907-f25f-48b4-a763-491632449a40-source.png\r\n', NULL),
(163, 39, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n64f6e44e-b729-4c5e-ba4d-5fb797b6df24-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n64f6e44e-b729-4c5e-ba4d-5fb797b6df24-source.jpg\r\n', NULL),
(164, 39, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n77fa52d8-2f3c-41db-8504-fd6ee78694c5-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n77fa52d8-2f3c-41db-8504-fd6ee78694c5-source.png\r\n', NULL),
(165, 39, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1bae203c-e3ac-4f65-aaf4-fbe13741e676-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1bae203c-e3ac-4f65-aaf4-fbe13741e676-source.png\r\n', NULL),
(166, 39, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1061ca67-7677-4454-8284-4afbebe30127-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1061ca67-7677-4454-8284-4afbebe30127-source.png\r\n', NULL),
(167, 40, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd5545868-d908-4fc2-8700-c346ce2ade41-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd5545868-d908-4fc2-8700-c346ce2ade41-source.jpg\r\n', NULL),
(168, 40, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n4a532290-b0b3-41ef-9f24-f60056cb10a4-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n4a532290-b0b3-41ef-9f24-f60056cb10a4-source.png\r\n', NULL),
(169, 40, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nbae8a247-7d10-44d0-b9e6-69192dfcd4e5-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nbae8a247-7d10-44d0-b9e6-69192dfcd4e5-source.png\r\n', NULL),
(170, 40, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9cd84392-0fe4-4d24-9aa3-f20bc663d15b-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9cd84392-0fe4-4d24-9aa3-f20bc663d15b-source.png\r\n', NULL),
(171, 40, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n38de979c-b8bd-40eb-bc63-b6c28365c482-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n38de979c-b8bd-40eb-bc63-b6c28365c482-source.png\r\n', NULL),
(172, 41, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n8ed99dc6-46ca-4ca9-bcb6-86b5b44b68ce-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n8ed99dc6-46ca-4ca9-bcb6-86b5b44b68ce-source.jpg\r\n', NULL),
(173, 41, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n760bb7ef-a87f-498c-bf0f-854e904bacd2-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n760bb7ef-a87f-498c-bf0f-854e904bacd2-source.png\r\n', NULL),
(174, 41, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ncca4664c-9603-41f9-8c8a-8f5e7c531fd7-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ncca4664c-9603-41f9-8c8a-8f5e7c531fd7-source.png\r\n', NULL),
(175, 41, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6456f970-526e-4301-b798-bd5f3e6c4f11-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6456f970-526e-4301-b798-bd5f3e6c4f11-source.png\r\n', NULL),
(176, 42, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n251b00cf-dd73-47fa-a81d-43eeebb97678-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n251b00cf-dd73-47fa-a81d-43eeebb97678-source.jpg\r\n', NULL),
(177, 42, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc55206ad-3b27-4674-b053-5c728d0d7937-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc55206ad-3b27-4674-b053-5c728d0d7937-source.png\r\n', NULL),
(178, 42, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf8bff727-186b-45e0-9add-09dd41ca9ab0-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf8bff727-186b-45e0-9add-09dd41ca9ab0-source.png\r\n', NULL),
(179, 42, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n95961ac5-6ed8-4b88-96ee-913310ecbe2d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n95961ac5-6ed8-4b88-96ee-913310ecbe2d-source.png\r\n', NULL),
(180, 42, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9eff8306-decb-4311-bad0-bef4fa4858ec-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9eff8306-decb-4311-bad0-bef4fa4858ec-source.png\r\n', NULL),
(181, 43, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n289425dc-3a93-42ba-8fdd-4a2c960c1279-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n289425dc-3a93-42ba-8fdd-4a2c960c1279-source.jpg\r\n', NULL),
(182, 43, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2e0ecbcb-56bc-43b1-9324-85e8bb7bafd1-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2e0ecbcb-56bc-43b1-9324-85e8bb7bafd1-source.png\r\n', NULL),
(183, 43, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc3fc3740-7993-4265-8cda-44455b31a197-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc3fc3740-7993-4265-8cda-44455b31a197-source.png\r\n', NULL),
(184, 43, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc980f5d0-2634-4a3e-b902-6b66939dafa4-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc980f5d0-2634-4a3e-b902-6b66939dafa4-source.png\r\n', NULL),
(185, 43, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n32f6223a-3434-4dca-bdba-34fc78292142-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n32f6223a-3434-4dca-bdba-34fc78292142-source.png\r\n', NULL),
(186, 44, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf12f0645-a2b9-4f48-9f80-7b8aacf535a5-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf12f0645-a2b9-4f48-9f80-7b8aacf535a5-source.jpg\r\n', NULL),
(187, 44, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n3d7abe0a-0c5d-47b5-9653-30fad7965349-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n3d7abe0a-0c5d-47b5-9653-30fad7965349-source.png\r\n', NULL),
(188, 44, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n4ab773cf-84a9-45f6-a001-3c88dccf2d93-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n4ab773cf-84a9-45f6-a001-3c88dccf2d93-source.png\r\n', NULL),
(189, 44, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0491cf58-fedd-43c1-9ac3-d484838bcc1d-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n0491cf58-fedd-43c1-9ac3-d484838bcc1d-source.png\r\n', NULL),
(190, 44, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1708511c-5e05-4e6b-bc5d-05529832e3e2-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1708511c-5e05-4e6b-bc5d-05529832e3e2-source.png\r\n', NULL),
(191, 45, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n26de2991-a0bb-43b7-a1f7-203c6c8bbbdb-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n26de2991-a0bb-43b7-a1f7-203c6c8bbbdb-source.jpg\r\n', NULL),
(192, 45, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n747f946e-d295-4d3d-a2e6-4e5cc1a0e008-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n747f946e-d295-4d3d-a2e6-4e5cc1a0e008-source.png\r\n', NULL),
(193, 45, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb1681358-d6df-4dba-b39f-58655e30a98a-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb1681358-d6df-4dba-b39f-58655e30a98a-source.png\r\n', NULL),
(194, 45, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n33e63b58-f4d4-4ef8-b48b-b1ba4a388e0c-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n33e63b58-f4d4-4ef8-b48b-b1ba4a388e0c-source.png\r\n', NULL),
(195, 45, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na5c6b4dd-4f44-4f92-93d9-71347a7e4805-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na5c6b4dd-4f44-4f92-93d9-71347a7e4805-source.png\r\n', NULL),
(196, 46, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2d61a3a1-b6b9-4380-b6b4-31b586117d6b-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2d61a3a1-b6b9-4380-b6b4-31b586117d6b-source.jpg\r\n', NULL),
(197, 46, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n90af8956-7127-450d-b200-a0c1d4d6056c-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n90af8956-7127-450d-b200-a0c1d4d6056c-source.png\r\n', NULL),
(198, 46, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nefeb0434-6512-422c-aab2-832836d830fe-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nefeb0434-6512-422c-aab2-832836d830fe-source.png\r\n', NULL),
(199, 46, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne745362d-1fc4-424b-b23f-367e2282e9c4-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne745362d-1fc4-424b-b23f-367e2282e9c4-source.png\r\n', NULL),
(200, 46, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf895b0f6-a770-4f31-a8f7-c42dce0df5b1-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf895b0f6-a770-4f31-a8f7-c42dce0df5b1-source.png\r\n', NULL),
(201, 47, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nbc2d17b7-5b4f-4878-b595-405352ebee8f-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nbc2d17b7-5b4f-4878-b595-405352ebee8f-source.jpg\r\n', NULL),
(202, 47, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne8a0d530-6087-4ee9-ab19-8af2fadef698-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne8a0d530-6087-4ee9-ab19-8af2fadef698-source.png\r\n', NULL),
(203, 47, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n462c9050-9749-4500-a959-3a49a6706ca0-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n462c9050-9749-4500-a959-3a49a6706ca0-source.png\r\n', NULL),
(204, 47, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n626310df-58d8-4402-8710-235c0628b682-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n626310df-58d8-4402-8710-235c0628b682-source.png\r\n', NULL),
(205, 47, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6a7ed81b-fdd8-4f9d-b191-e9bff151b987-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6a7ed81b-fdd8-4f9d-b191-e9bff151b987-source.png\r\n', NULL),
(206, 48, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb25d349d-c5dc-420c-8ef6-34dd44e1ce78-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb25d349d-c5dc-420c-8ef6-34dd44e1ce78-source.jpg\r\n', NULL),
(207, 48, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9ed8c29d-f73a-4584-9e84-4f5671f63722-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9ed8c29d-f73a-4584-9e84-4f5671f63722-source.png\r\n', NULL),
(208, 48, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1ef27eb1-d10a-4fef-8cf6-2ba6ab2b1000-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1ef27eb1-d10a-4fef-8cf6-2ba6ab2b1000-source.png\r\n', NULL),
(209, 48, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7ec505be-7852-4b1f-a9bd-2ddcadb421d5-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7ec505be-7852-4b1f-a9bd-2ddcadb421d5-source.png\r\n', NULL),
(210, 49, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n575561cd-8a4c-4958-b318-a3ed14627224-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n575561cd-8a4c-4958-b318-a3ed14627224-source.jpg\r\n', NULL),
(211, 49, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne73a8880-0454-4be4-927a-61fd5e31c8a3-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne73a8880-0454-4be4-927a-61fd5e31c8a3-source.png\r\n', NULL),
(212, 49, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n34c6f705-1bbd-4774-a85e-b9631f0663f3-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n34c6f705-1bbd-4774-a85e-b9631f0663f3-source.png\r\n', NULL),
(213, 49, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n54974fa0-c3c5-4a86-8a31-0154fb946ced-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n54974fa0-c3c5-4a86-8a31-0154fb946ced-source.png\r\n', NULL),
(214, 49, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd47f8397-10e5-4f4c-9110-0e98f7c79341-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd47f8397-10e5-4f4c-9110-0e98f7c79341-source.png\r\n', NULL),
(215, 50, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd59cec5a-4e5a-43bb-9b6b-d7686fcea77a-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd59cec5a-4e5a-43bb-9b6b-d7686fcea77a-source.jpg\r\n', NULL),
(216, 50, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne3e149fe-fe60-4009-b7b4-1a0a40dfb0bb-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne3e149fe-fe60-4009-b7b4-1a0a40dfb0bb-source.png\r\n', NULL),
(217, 50, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd012613a-97ef-43f9-9e02-fb3a5a0fe77e-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd012613a-97ef-43f9-9e02-fb3a5a0fe77e-source.png\r\n', NULL),
(218, 50, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2fb4fe8a-d4b8-443f-8e5d-a1e44f233867-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2fb4fe8a-d4b8-443f-8e5d-a1e44f233867-source.png\r\n', NULL),
(219, 50, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nceaf4918-da6a-43a7-998b-214c2f1087ee-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nceaf4918-da6a-43a7-998b-214c2f1087ee-source.png\r\n', NULL),
(220, 51, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb2a38a52-37cd-4731-ac77-d978f14b4947-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb2a38a52-37cd-4731-ac77-d978f14b4947-source.jpg\r\n', NULL),
(221, 51, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd3577a59-0767-489f-8715-40c7fc0ba4e5-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd3577a59-0767-489f-8715-40c7fc0ba4e5-source.png\r\n', NULL),
(222, 51, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n8734107a-1220-416d-a460-3e967d447ca8-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n8734107a-1220-416d-a460-3e967d447ca8-source.png\r\n', NULL),
(223, 51, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf3465099-1693-4727-a4e8-8ab72dce20ce-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf3465099-1693-4727-a4e8-8ab72dce20ce-source.png\r\n', NULL),
(224, 51, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n5ecf52d5-f189-4305-8b76-bfdc509a2133-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n5ecf52d5-f189-4305-8b76-bfdc509a2133-source.png\r\n', NULL),
(225, 52, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n54bc639a-fb5c-4fb3-9389-34dc83711c98-thumbnail.jpg\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n54bc639a-fb5c-4fb3-9389-34dc83711c98-source.jpg\r\n', NULL),
(226, 52, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7914766a-5f45-403a-bd26-7d5148b03b00-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7914766a-5f45-403a-bd26-7d5148b03b00-source.png\r\n', NULL),
(227, 52, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n87f87c87-a478-4510-97ac-a78b8ff347c8-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n87f87c87-a478-4510-97ac-a78b8ff347c8-source.png\r\n', NULL),
(228, 52, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n01df4b97-3942-428c-98a1-6c5ebffa73d0-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n01df4b97-3942-428c-98a1-6c5ebffa73d0-source.png\r\n', NULL),
(229, 52, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7b0595c7-e2fb-4846-bc57-d9c4a737a4d0-thumbnail.jpg\r\n\r\n', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7b0595c7-e2fb-4846-bc57-d9c4a737a4d0-source.png\r\n', NULL),
(230, 53, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n7d717571-a4b8-4f74-8689-a4ebe7e9edba-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n7d717571-a4b8-4f74-8689-a4ebe7e9edba-source.jpg\r\n', NULL),
(231, 53, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n33b9b756-b8d6-4f71-bb73-23cf1f652b47-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n33b9b756-b8d6-4f71-bb73-23cf1f652b47-source.png\r\n', NULL),
(232, 53, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0889de49-3905-4b93-8c79-a961dda98a88-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n0889de49-3905-4b93-8c79-a961dda98a88-source.png\r\n', NULL),
(233, 53, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb56fa275-b4e8-4be8-abdf-fa4b5e3aa6b3-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb56fa275-b4e8-4be8-abdf-fa4b5e3aa6b3-source.png\r\n', NULL),
(234, 53, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n59e11dd6-a698-4d20-8e6f-765dc1b9eb97-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n59e11dd6-a698-4d20-8e6f-765dc1b9eb97-source.png\r\n', NULL),
(235, 54, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nbaa1af02-9a28-4729-89ef-4c7bba5bc4e3-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nbaa1af02-9a28-4729-89ef-4c7bba5bc4e3-source.jpg\r\n', NULL);
INSERT INTO `jeep_bot_pic` (`pid`, `bid`, `sm`, `md`, `lg`) VALUES
(236, 54, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1e98606a-35d6-449d-aa69-1e55e588c42b-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1e98606a-35d6-449d-aa69-1e55e588c42b-source.png\r\n', NULL),
(237, 54, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2df3e7ee-4e04-4eb1-9ad3-169efffdc19a-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2df3e7ee-4e04-4eb1-9ad3-169efffdc19a-source.png\r\n', NULL),
(238, 54, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n293c3125-d2ec-4464-ada4-5d0abe047400-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n293c3125-d2ec-4464-ada4-5d0abe047400-source.png\r\n', NULL),
(239, 54, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n26e97a83-52d9-4790-844c-b516d027155b-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n26e97a83-52d9-4790-844c-b516d027155b-source.png\r\n', NULL),
(240, 55, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na698fbfc-cd5f-4852-9e7c-3adc4194b9c9-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na698fbfc-cd5f-4852-9e7c-3adc4194b9c9-source.jpg\r\n', NULL),
(241, 55, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n29dd65ef-07f2-45e9-9dfe-91e2744dd6ca-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n29dd65ef-07f2-45e9-9dfe-91e2744dd6ca-source.png\r\n', NULL),
(242, 55, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n4ab84540-a798-4274-a246-eaf79346cba0-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n4ab84540-a798-4274-a246-eaf79346cba0-source.png\r\n', NULL),
(243, 55, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n9fe6451a-9ffe-499e-909c-adf1c47c74d2-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n9fe6451a-9ffe-499e-909c-adf1c47c74d2-source.png\r\n', NULL),
(244, 55, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n5026d1d2-3416-410f-b0d3-48e8bd81ccde-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n5026d1d2-3416-410f-b0d3-48e8bd81ccde-source.png\r\n', NULL),
(245, 56, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nac85f284-073c-498b-8e6e-1c7fc200a4db-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nac85f284-073c-498b-8e6e-1c7fc200a4db-source.jpg\r\n', NULL),
(246, 56, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n561eabc9-048c-46c2-ad8b-2a0568ef94a6-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n561eabc9-048c-46c2-ad8b-2a0568ef94a6-source.png\r\n', NULL),
(247, 56, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ndb182ce6-422d-47ff-826a-a18ba3ce9a9b-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ndb182ce6-422d-47ff-826a-a18ba3ce9a9b-source.png\r\n', NULL),
(248, 56, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6f854eb0-13bc-4303-a56d-8950831111be-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6f854eb0-13bc-4303-a56d-8950831111be-source.png\r\n', NULL),
(249, 57, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n1043d241-3482-4553-8831-d288c8117728-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n1043d241-3482-4553-8831-d288c8117728-source.jpg\r\n', NULL),
(250, 57, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n46baab37-4e33-4070-9ef9-e9322d70787c-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n46baab37-4e33-4070-9ef9-e9322d70787c-source.png\r\n', NULL),
(251, 57, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf6aed57b-b8ba-46dc-bb4a-ac0472345835-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf6aed57b-b8ba-46dc-bb4a-ac0472345835-source.png\r\n', NULL),
(252, 57, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ndf523a4c-6795-4574-ab64-04ddfa99228d-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ndf523a4c-6795-4574-ab64-04ddfa99228d-source.png\r\n', NULL),
(253, 58, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n332d7eea-5b67-452c-890e-d28eb84759c6-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n332d7eea-5b67-452c-890e-d28eb84759c6-source.jpg\r\n', NULL),
(254, 58, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc8ac6544-ff77-44a5-ba33-f2dc4430eee3-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc8ac6544-ff77-44a5-ba33-f2dc4430eee3-source.png\r\n', NULL),
(255, 58, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n067531ed-a2a5-4b7d-bb7f-3b1fa42b203a-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n067531ed-a2a5-4b7d-bb7f-3b1fa42b203a-source.png\r\n', NULL),
(256, 58, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf8bea668-9e01-4f05-a007-32d3ea888420-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf8bea668-9e01-4f05-a007-32d3ea888420-source.png\r\n', NULL),
(257, 58, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nf8fb277e-79d0-49d2-977a-ad7cebf1c818-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nf8fb277e-79d0-49d2-977a-ad7cebf1c818-source.png\r\n', NULL),
(258, 59, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6b30ba81-9bc6-49c7-951e-1f25f930e2f3-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6b30ba81-9bc6-49c7-951e-1f25f930e2f3-source.jpg\r\n', NULL),
(259, 59, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6bbf37d1-e262-4ce5-910a-964b937dad06-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6bbf37d1-e262-4ce5-910a-964b937dad06-source.png\r\n', NULL),
(260, 59, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd9eef2c3-624d-42eb-99b6-9d71eb22e664-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd9eef2c3-624d-42eb-99b6-9d71eb22e664-source.png\r\n', NULL),
(261, 59, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nb477384a-927f-4e31-9a40-e1f3d279046c-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nb477384a-927f-4e31-9a40-e1f3d279046c-source.png\r\n', NULL),
(262, 59, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nd09b9513-bc6d-45bc-bcf8-06fbcc62466f-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nd09b9513-bc6d-45bc-bcf8-06fbcc62466f-source.png\r\n', NULL),
(263, 60, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n279a417f-d17e-4448-a866-5ceb82d5a1a9-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n279a417f-d17e-4448-a866-5ceb82d5a1a9-source.jpg\r\n', NULL),
(264, 60, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n876f9344-b7ea-4a8a-98f1-bd63939693c1-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n876f9344-b7ea-4a8a-98f1-bd63939693c1-source.png\r\n', NULL),
(265, 60, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n88063664-acad-4cd5-a536-dc7130bc1cf9-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n88063664-acad-4cd5-a536-dc7130bc1cf9-source.png\r\n', NULL),
(266, 60, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n88279c8d-0e14-4600-b00d-1ba86d4734d9-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n88279c8d-0e14-4600-b00d-1ba86d4734d9-source.png\r\n', NULL),
(267, 61, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n09547c3d-782d-40b4-a2c8-ec465abc5076-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n09547c3d-782d-40b4-a2c8-ec465abc5076-source.jpg\r\n', NULL),
(268, 61, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2bd3856c-0dca-4d7d-abe8-a6b7d3bdcea4-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2bd3856c-0dca-4d7d-abe8-a6b7d3bdcea4-source.png\r\n', NULL),
(269, 61, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\na5673ebf-f230-48e1-a8d1-5473c35cf138-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\na5673ebf-f230-48e1-a8d1-5473c35cf138-source.png\r\n', NULL),
(270, 61, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n2ff25e4c-dcd1-424b-91f4-5a9d0ef92beb-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n2ff25e4c-dcd1-424b-91f4-5a9d0ef92beb-source.png\r\n', NULL),
(271, 62, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n959e746b-f263-4fa2-b8d8-ae19b312b3d4-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n959e746b-f263-4fa2-b8d8-ae19b312b3d4-source.jpg\r\n', NULL),
(272, 62, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ne0626fd0-7086-4e84-bcdd-f50c7750bf0f-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ne0626fd0-7086-4e84-bcdd-f50c7750bf0f-source.png\r\n', NULL),
(273, 62, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n74c31321-ff10-4a49-b4cb-2cc77fb7605e-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n74c31321-ff10-4a49-b4cb-2cc77fb7605e-source.png\r\n', NULL),
(274, 62, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\neb27c91a-73fb-4f48-960b-efdb696e5066-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\neb27c91a-73fb-4f48-960b-efdb696e5066-source.png\r\n', NULL),
(275, 62, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n31ee9649-bb7f-4967-a90d-c122290acbe7-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n31ee9649-bb7f-4967-a90d-c122290acbe7-source.png\r\n', NULL),
(276, 63, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n209721b8-d83c-4196-9186-1c654966fba4-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n209721b8-d83c-4196-9186-1c654966fba4-source.jpg\r\n', NULL),
(277, 63, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n080b1daf-e84b-476f-888d-ea6914539132-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n080b1daf-e84b-476f-888d-ea6914539132-source.png\r\n', NULL),
(278, 63, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n6df5812c-8450-46bc-be77-076e5416ddcc-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n6df5812c-8450-46bc-be77-076e5416ddcc-source.png\r\n', NULL),
(279, 63, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n209721b8-d83c-4196-9186-1c654966fba4-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n209721b8-d83c-4196-9186-1c654966fba4-source.png\r\n', NULL),
(280, 64, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nc8c3f832-47ae-431a-802e-eafff6a3a029-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nc8c3f832-47ae-431a-802e-eafff6a3a029-source.jpg\r\n', NULL),
(281, 64, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0d867178-03b9-48da-b46b-cb9efda519ba-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n0d867178-03b9-48da-b46b-cb9efda519ba-source.png\r\n', NULL),
(282, 64, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n73a3048d-fcb9-438d-89a2-1aef07a73ea4-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n73a3048d-fcb9-438d-89a2-1aef07a73ea4-source.png\r\n', NULL),
(283, 64, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\nccdc5931-2191-44ab-ba27-7404908c1f25-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\nccdc5931-2191-44ab-ba27-7404908c1f25-source.png\r\n', NULL),
(284, 64, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\n0aafad96-7223-40b0-bda1-4fb16f75f0a6-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\n0aafad96-7223-40b0-bda1-4fb16f75f0a6-source.png\r\n', NULL),
(285, 65, 'img/jeep_shopping/jeep_bot/bot_pic/sm/\r\ndac71575-24bc-41c0-ad0a-abb454a91f6a-thumbnail.jpg', 'img/jep_shopping/jeep_bot/bot_pic/md/\r\ndac71575-24bc-41c0-ad0a-abb454a91f6a-source.jpg\r\n', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `jeep_car`
--

CREATE TABLE `jeep_car` (
  `cid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `suit_car` varchar(32) DEFAULT NULL,
  `can_order` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_car_family`
--

CREATE TABLE `jeep_car_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_car_family`
--

INSERT INTO `jeep_car_family` (`fid`, `fname`) VALUES
(1, 'jeep自由侠'),
(2, 'jeep指南者'),
(3, 'jeep自由光'),
(4, 'jeep牧马人'),
(5, 'jeep大切诺基');

-- --------------------------------------------------------

--
-- 表的结构 `jeep_order`
--

CREATE TABLE `jeep_order` (
  `oid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_order_detail`
--

CREATE TABLE `jeep_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_receiver_address`
--

CREATE TABLE `jeep_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_shoppingcart_item`
--

CREATE TABLE `jeep_shoppingcart_item` (
  `iid` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `jeep_user`
--

CREATE TABLE `jeep_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jeep_user`
--

INSERT INTO `jeep_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'jiajia', '123456', '123456@tedu.com', '13412345678', NULL, NULL, NULL),
(2, 'dongdong', '123456', 'dongdong@tedu.com', '13412345678', NULL, NULL, NULL),
(3, 'wenhua', '123456', 'wenhua@tedu.com', '132456781234', NULL, NULL, NULL),
(4, 'doudou', '123456', '', '', NULL, NULL, NULL),
(5, 'jiujiu', '123456', '', '', NULL, NULL, NULL),
(6, 'wenjun', '123456', '', '', NULL, NULL, NULL),
(7, 'wenwen', '123456', '', '', NULL, NULL, NULL),
(8, 'xuejiao', '123456', '', '', NULL, NULL, NULL),
(9, 'jiaojiao', '123456', '', '', NULL, NULL, NULL),
(10, 'jiawen', '123456', '', '', NULL, NULL, NULL),
(11, 'taotao', '123456', '', '', NULL, NULL, NULL),
(12, 'jiayun', '123456', '', '', NULL, NULL, NULL)

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jeep_bot`
--
ALTER TABLE `jeep_bot`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `jeep_bot_pic`
--
ALTER TABLE `jeep_bot_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `jeep_car`
--
ALTER TABLE `jeep_car`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `jeep_car_family`
--
ALTER TABLE `jeep_car_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `jeep_order`
--
ALTER TABLE `jeep_order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `jeep_order_detail`
--
ALTER TABLE `jeep_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `jeep_receiver_address`
--
ALTER TABLE `jeep_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `jeep_shoppingcart_item`
--
ALTER TABLE `jeep_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `jeep_user`
--
ALTER TABLE `jeep_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `jeep_bot`
--
ALTER TABLE `jeep_bot`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- 使用表AUTO_INCREMENT `jeep_bot_pic`
--
ALTER TABLE `jeep_bot_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- 使用表AUTO_INCREMENT `jeep_car`
--
ALTER TABLE `jeep_car`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jeep_car_family`
--
ALTER TABLE `jeep_car_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `jeep_order`
--
ALTER TABLE `jeep_order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jeep_order_detail`
--
ALTER TABLE `jeep_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jeep_receiver_address`
--
ALTER TABLE `jeep_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jeep_shoppingcart_item`
--
ALTER TABLE `jeep_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `jeep_user`
--
ALTER TABLE `jeep_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
