-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.29 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 test_user.customer 구조 내보내기
DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `c_id` int NOT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `c_mobile` varchar(13) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `zipcode` varchar(5) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test_user.customer:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`c_id`, `c_name`, `c_mobile`, `level`, `zipcode`, `age`) VALUES
	(1, '김고객', '010-8841-1234', 'VIP', '12345', 21),
	(2, '나부자', '010-1234-3214', 'VVIP', '11350', 30),
	(3, '구신매', '010-5151-1234', 'GREEN', '23513', 21),
	(4, '이신상', '010-1515-1234', 'BLACK', '54123', 12),
	(5, '정사이', '010-000-0000', 'TOP', '52125', 52),
	(6, '옥택견', '010-000-0011', 'TOP', '35884', 41),
	(7, '이시순', '010-0311-0000', 'GREEN', '85145', 33),
	(8, '강하지', '010-0111-0001', 'TOP', '51243', 28),
	(9, '한나리', '010-3311-0002', 'GREEN', '51424', 26),
	(10, '심군', '010-0311-0111', 'BLACK', '68475', 48),
	(11, '홍철수', '010-0311-1111', 'GREEN', '84789', 56),
	(12, '지한식', '010-1154-1140', 'GREEN', '98451', 74),
	(13, '사부작', '010-4812-0000', 'BLACK', '84114', 18),
	(14, '나라믹', '010-0000-1541', 'BLACK', '15478', 19),
	(15, '박사', '010-4812-0000', 'VIP', '87631', 27),
	(16, '신을주', '010-8415-0000', 'TOP', '51462', 26),
	(17, '주상미', '010-0000-0001', 'TOP', '15747', 19),
	(18, '임익수', '010-0000-0014', 'BLACK', '21584', 38),
	(19, '추하늘', '010-0000-1109', 'VVIP', '18746', 22),
	(20, '부강준', '010-0158-0000', 'BLACK', '25461', 36),
	(21, '심마니', '010-0158-0001', 'BLACK', '25461', 36);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- 테이블 test_user.dept 구조 내보내기
DROP TABLE IF EXISTS `dept`;
CREATE TABLE IF NOT EXISTS `dept` (
  `dept_no` int NOT NULL,
  `branch_nm` varchar(40) DEFAULT NULL,
  `dept_nm` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test_user.dept:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` (`dept_no`, `branch_nm`, `dept_nm`) VALUES
	(1, '대전지사 ', '인사과 '),
	(2, '대전지사 ', '프론티어사업단'),
	(3, '대전지사 ', '전산팀 ');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;

-- 테이블 test_user.emp 구조 내보내기
DROP TABLE IF EXISTS `emp`;
CREATE TABLE IF NOT EXISTS `emp` (
  `emp_no` int DEFAULT NULL,
  `e_nm` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `dept_no` int DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  KEY `FK_emp_dept` (`dept_no`),
  CONSTRAINT `FK_emp_dept` FOREIGN KEY (`dept_no`) REFERENCES `dept` (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test_user.emp:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` (`emp_no`, `e_nm`, `age`, `dept_no`, `position`, `salary`) VALUES
	(1, '김과장', 20, 1, '과장', 5250000),
	(2, '사살미', 21, 2, '사원', 3600000),
	(3, '나신순', 22, 2, '대리', 4200000),
	(4, '가시연', 23, 1, '부장', 6750000),
	(5, '곽심의', 24, 1, '차장', 6000000),
	(6, '박이사', 25, 2, '과장', 5250000),
	(7, '이미리', 26, 3, '사원', 3600000),
	(8, '마미솥', 27, 1, '대리', 4200000),
	(9, '데리만수', 28, 1, '부장', 6750000),
	(10, '최주박', 29, 1, '차장', 6000000);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;

-- 테이블 test_user.goods 구조 내보내기
DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `goods_no` int DEFAULT NULL,
  `goods_nm` varchar(30) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `manf_no` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test_user.goods:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`goods_no`, `goods_nm`, `price`, `manf_no`) VALUES
	(1, '산토', 800, 2),
	(2, '쪼고랫', 1000, 1),
	(3, '새우통', 300, 3),
	(4, '동물나라', 400, 10),
	(5, '가물치', 300, 1),
	(6, '거북집', 400, 11),
	(7, '채소스릭', 400, 2),
	(8, '꼴두기칩', 300, 1),
	(9, '토스틱', 400, 3),
	(10, '참깨칩', 300, 2);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

-- 테이블 test_user.manufacturer 구조 내보내기
DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manf_no` int DEFAULT NULL,
  `manf_nm` varchar(30) DEFAULT NULL,
  `est_date` timestamp NULL DEFAULT NULL,
  `cmer_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test_user.manufacturer:~4 rows (대략적) 내보내기
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` (`manf_no`, `manf_nm`, `est_date`, `cmer_date`) VALUES
	(1, '오리옹', '1975-03-01 00:00:00', '1975-03-01 00:00:00'),
	(2, '그라운', '1976-01-01 00:00:00', '1976-05-01 00:00:00'),
	(3, '롱심', '1980-01-01 00:00:00', '1980-02-01 00:00:00'),
	(4, '놋데', '1988-01-01 00:00:00', '1988-01-01 00:00:00');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;

-- 테이블 test_user.sales 구조 내보내기
DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `sale_no` int DEFAULT NULL,
  `goods_no` int DEFAULT NULL,
  `sale_store` varchar(30) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `sale_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test_user.sales:~20 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` (`sale_no`, `goods_no`, `sale_store`, `quantity`, `sale_date`) VALUES
	(1, 3, '사거리 슈퍼', 3, '2022-03-04 00:00:00'),
	(2, 1, '오거리 만장', 1, '2022-03-04 00:00:00'),
	(3, 2, 'DU', 4, '2022-03-04 00:00:00'),
	(4, 4, '만남의 광장', 5, '2022-03-04 00:00:00'),
	(5, 1, 'F Space', 1, '2022-03-04 00:00:00'),
	(6, 5, '올리브 올드', 2, '2022-03-20 00:00:00'),
	(7, 6, '사거리 슈퍼', 3, '2022-03-20 00:00:00'),
	(8, 1, 'DU', 4, '2022-03-20 00:00:00'),
	(9, 7, 'DU', 1, '2022-04-01 00:00:00'),
	(10, 8, 'F Space', 1, '2022-04-01 00:00:00'),
	(11, 2, '올리브 올드', 2, '2022-04-01 00:00:00'),
	(12, 4, 'HS', 3, '2022-04-08 00:00:00'),
	(13, 3, '사거리 슈퍼', 5, '2022-04-08 00:00:00'),
	(14, 1, 'HS', 1, '2022-04-08 00:00:00'),
	(15, 3, 'DU', 1, '2022-04-15 00:00:00'),
	(16, 4, 'F Space', 3, '2022-04-15 00:00:00'),
	(17, 5, '만남의 광장', 4, '2022-04-15 00:00:00'),
	(18, 6, '사거리 슈퍼', 6, '2022-04-23 00:00:00'),
	(19, 1, '오거리 만장', 1, '2022-04-23 00:00:00'),
	(20, 3, '사거리 슈퍼', 2, '2022-04-23 00:00:00');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;

-- 테이블 test_user.voucher 구조 내보내기
DROP TABLE IF EXISTS `voucher`;
CREATE TABLE IF NOT EXISTS `voucher` (
  `c_id` int DEFAULT NULL,
  `voucher_amount` double DEFAULT NULL,
  `issue_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 test_user.voucher:~12 rows (대략적) 내보내기
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` (`c_id`, `voucher_amount`, `issue_date`) VALUES
	(1, 100000, '2022-01-01 00:00:00'),
	(2, 50000, '2022-04-01 00:00:00'),
	(5, 200000, '2022-04-22 00:00:00'),
	(12, 100000, '2022-04-22 00:00:00'),
	(14, 50000, '2022-05-02 00:00:00'),
	(6, 50000, '2022-05-21 00:00:00'),
	(18, 50000, '2022-05-22 00:00:00'),
	(5, 200000, '2022-05-21 00:00:00'),
	(12, 100000, '2022-05-30 00:00:00'),
	(14, 50000, '2022-05-21 00:00:00'),
	(6, 50000, '2022-05-22 00:00:00'),
	(18, 50000, '2022-05-28 00:00:00');
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
