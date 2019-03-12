-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 09:15 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `29_afifah_pessdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incidentId` int(11) NOT NULL,
  `patrolcarId` varchar(10) NOT NULL,
  `timeDispatched` datetime DEFAULT NULL,
  `timeArrived` datetime DEFAULT NULL,
  `timeCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incidentId`, `patrolcarId`, `timeDispatched`, `timeArrived`, `timeCompleted`) VALUES
(1, 'QX5555D', '2019-03-04 17:08:46', NULL, NULL),
(2, 'QX2288D', '2019-03-04 18:08:53', NULL, NULL),
(3, 'QX8723W', '2019-03-04 18:09:11', NULL, NULL),
(4, 'QX8923T', '2019-03-06 18:14:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incidentId` int(11) NOT NULL,
  `callerName` varchar(30) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `incidentTypeId` varchar(3) NOT NULL,
  `incidentLocation` varchar(50) NOT NULL,
  `incidentDesc` varchar(100) NOT NULL,
  `incidentStatusId` varchar(1) NOT NULL,
  `timeCalled` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incidentId`, `callerName`, `phoneNumber`, `incidentTypeId`, `incidentLocation`, `incidentDesc`, `incidentStatusId`, `timeCalled`) VALUES
(0, '', '', '999', '', '', '1', '2019-02-28 03:08:36'),
(0, 'AIFAH', '12345678', '010', 'ASDFGSAFV', 'DSAFDFGFD', '1', '2019-02-28 06:10:11'),
(0, 'fdfd', '', '010', 'ASDFGSAFV', 'dfsfdf', '2', '2019-03-04 07:45:42'),
(0, 'fdfd', 'vdvdfsd', '010', 'ASDFGSAFV', 'dfsfdf', '2', '2019-03-04 07:46:27'),
(0, 'fdfd', 'vdvdfsd', '010', 'ASDFGSAFV', 'dfsfdf', '2', '2019-03-04 07:46:31'),
(0, 'fdfd', 'vdvdfsd', '010', 'ASDFGSAFV', 'dfsfdf', '2', '2019-03-04 07:47:27'),
(0, 'fdfd', 'vdvdfsd', '010', 'ASDFGSAFV', 'dfsfdf', '2', '2019-03-04 07:47:32'),
(0, 'fdfd', 'vdvdfsd', '010', 'ASDFGSAFV', 'dfsfdf', '2', '2019-03-04 07:48:27'),
(0, 'AIFAH', '12345678', '010', 'ASDFGSAFV', 'sas', '2', '2019-03-05 01:08:45'),
(0, 'xzx', 'axdax', '010', 'xaxa', 'xaxa', '2', '2019-03-05 02:08:53'),
(0, '<br />\r\n<b>Notice</b>:  Undefi', '<br />\r\n<b', '<br', '<br />\r\n<b>Notice</b>:  Undefined index: location ', '<br />\r\n<b>Notice</b>:  Undefined index: incidentDesc in <b>C:xampphtdocsAfifah projectdispatch.php<', '2', '2019-03-05 02:09:10'),
(0, 'AIFAH', '12345678', '010', 'ASDFGSAFV', 'ghfhf', '2', '2019-03-07 02:14:50'),
(0, 'AIFAH', '12345678', '010', 'ASDFGSAFV', 'ghfhf', '1', '2019-03-07 02:14:52'),
(0, 'AIFAH', '12345678', '010', 'ASDFGSAFV', 'ghfhf', '1', '2019-03-07 02:14:54'),
(0, 'AIFAH', '12345678', '030', 'ASDFGSAFV', '', '1', '2019-03-11 01:15:34'),
(0, '<br />\r\n<b>Notice</b>:  Undefi', '<br />\r\n<b', '<br', '<br />\r\n<b>Notice</b>:  Undefined index: location ', '<br />\r\n<b>Notice</b>:  Undefined index: incidentDesc in <b>C:xampphtdocsAfifah projectdispatch.php<', '1', '2019-03-11 01:15:52'),
(0, '<br />\r\n<b>Notice</b>:  Undefi', '<br />\r\n<b', '<br', '<br />\r\n<b>Notice</b>:  Undefined index: location ', '<br />\r\n<b>Notice</b>:  Undefined index: incidentDesc in <b>C:xampphtdocsAfifah projectdispatch.php<', '1', '2019-03-11 01:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `incidenttype`
--

CREATE TABLE `incidenttype` (
  `incidentTypeId` varchar(3) NOT NULL,
  `incidentTypeDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incidenttype`
--

INSERT INTO `incidenttype` (`incidentTypeId`, `incidentTypeDesc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `statusId` varchar(1) NOT NULL,
  `statusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident_status`
--

INSERT INTO `incident_status` (`statusId`, `statusDesc`) VALUES
('1', 'Pending'),
('2', 'Dispatched'),
('3', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcarId` varchar(10) NOT NULL,
  `patrolcarStatusId` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcarId`, `patrolcarStatusId`) VALUES
('QX1234A', '1'),
('QX3456B', '1'),
('QX1111J', '1'),
('QX2222K', '4'),
('QX5555D', '1'),
('QX2288D', '1'),
('QX8769P', '4'),
('QX1342G', '1'),
('QX8723W', '1'),
('QX8923T', '1');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `statusId` varchar(1) NOT NULL,
  `statusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`statusId`, `statusDesc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'Arrived');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incidentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dispatch`
--
ALTER TABLE `dispatch`
  MODIFY `incidentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
