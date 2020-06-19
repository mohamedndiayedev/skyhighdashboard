-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 19 juin 2020 à 05:17
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hrm_project`
--

-- --------------------------------------------------------

--
-- Structure de la table `attendance_file`
--

CREATE TABLE `attendance_file` (
  `file_id` int(11) NOT NULL,
  `attendance_file_name` varchar(200) NOT NULL,
  `upload_date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `attendance_file`
--

INSERT INTO `attendance_file` (`file_id`, `attendance_file_name`, `upload_date`) VALUES
(2, 'attendance_sample.xlsx', '2020-06-16');

-- --------------------------------------------------------

--
-- Structure de la table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `attendance_id` int(25) NOT NULL,
  `employee_id` varchar(15) DEFAULT NULL,
  `ac_no` varchar(15) DEFAULT NULL,
  `no` varchar(15) DEFAULT NULL,
  `employee_name` varchar(65) DEFAULT NULL,
  `auto_assign` varchar(15) DEFAULT NULL,
  `a_date` date DEFAULT NULL,
  `timetable` varchar(15) DEFAULT NULL,
  `on_duty` varchar(15) DEFAULT NULL,
  `off_duty` varchar(15) DEFAULT NULL,
  `clock_in` varchar(15) DEFAULT NULL,
  `clock_out` varchar(15) DEFAULT NULL,
  `normal` varchar(15) DEFAULT NULL,
  `real_time` varchar(15) DEFAULT NULL,
  `late` decimal(15,2) DEFAULT NULL,
  `early` decimal(15,2) DEFAULT NULL,
  `absent` varchar(15) DEFAULT NULL,
  `ot_time` decimal(15,2) DEFAULT NULL,
  `work_time` varchar(15) DEFAULT NULL,
  `exception` varchar(15) DEFAULT NULL,
  `must_c_in` varchar(15) DEFAULT NULL,
  `must_c_out` varchar(15) DEFAULT NULL,
  `department` varchar(15) DEFAULT NULL,
  `ndays` varchar(15) DEFAULT NULL,
  `weekend` varchar(15) DEFAULT NULL,
  `holiday` varchar(15) DEFAULT NULL,
  `att_time` varchar(15) DEFAULT NULL,
  `n_days_ot` varchar(15) DEFAULT NULL,
  `weekend_ot` varchar(15) DEFAULT NULL,
  `holiday_ot` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `attendance_info`
--

INSERT INTO `attendance_info` (`attendance_id`, `employee_id`, `ac_no`, `no`, `employee_name`, `auto_assign`, `a_date`, `timetable`, `on_duty`, `off_duty`, `clock_in`, `clock_out`, `normal`, `real_time`, `late`, `early`, `absent`, `ot_time`, `work_time`, `exception`, `must_c_in`, `must_c_out`, `department`, `ndays`, `weekend`, `holiday`, `att_time`, `n_days_ot`, `weekend_ot`, `holiday_ot`) VALUES
(1, 'EMP3178', '97', '', 'Mohamed Jaiteh', 'May', '2020-05-16', 'Daytime', '09:00', '18:00', '08:00', '05:00', '1', '', '0.00', '0.00', 'No', '0.00', 'Mon-Fri', 'Saturday', 'True', 'True', 'IT', '', '', '', '', '', '', ''),
(2, 'EMP3178', '97', '', 'Jony Shikdar', 'May', '2018-05-02', 'Daytime', 'Yes', '18:00', '', '', '1', '', '0.00', '0.00', '', '0.00', '', '', 'True', 'True', 'Jacquard', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `bonus_type`
--

CREATE TABLE `bonus_type` (
  `bonus_type_id` varchar(15) NOT NULL,
  `bonus_type` varchar(40) DEFAULT NULL,
  `bonus_per` varchar(50) NOT NULL,
  `bonus_mnt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bonus_type`
--

INSERT INTO `bonus_type` (`bonus_type_id`, `bonus_type`, `bonus_per`, `bonus_mnt`) VALUES
('EmpTy5ba4fbff86', 'Quality Performance', '5', 'January');

-- --------------------------------------------------------

--
-- Structure de la table `company_info`
--

CREATE TABLE `company_info` (
  `company_id` varchar(25) NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `company_details` varchar(200) NOT NULL,
  `company_city` varchar(50) NOT NULL,
  `company_street` varchar(50) NOT NULL,
  `company_zip` int(10) NOT NULL,
  `company_number` varchar(20) NOT NULL,
  `company_2number` varchar(20) NOT NULL,
  `company_email` varchar(30) NOT NULL,
  `company_fax` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `company_info`
--

INSERT INTO `company_info` (`company_id`, `company_name`, `company_address`, `company_details`, `company_city`, `company_street`, `company_zip`, `company_number`, `company_2number`, `company_email`, `company_fax`) VALUES
('1', 'Sky High Group (Gambia) Ltd.', 'Banjul - Gambia', 'A property company with over 10 years experience in construction and developing real estate.', 'Banjul', 'Banjul City', 1205, '2209419146', '2209419146', 'info@skyhighltd.gm', 'No fax');

-- --------------------------------------------------------

--
-- Structure de la table `dept_info`
--

CREATE TABLE `dept_info` (
  `dept_id` varchar(15) NOT NULL,
  `dept_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dept_info`
--

INSERT INTO `dept_info` (`dept_id`, `dept_name`) VALUES
('Dep5bae409ac43c', 'Accounts'),
('Dep5bb7212699e1', 'Sales & Marketing'),
('Dep5bb7213deb4d', 'Production'),
('Dep5ee8f35c1841', 'IT Dept.'),
('Dep5eea32335309', 'Stock Dept.'),
('Dep5eea63f1e892', 'Managmt.');

-- --------------------------------------------------------

--
-- Structure de la table `desgn_info`
--

CREATE TABLE `desgn_info` (
  `desgn_id` varchar(15) NOT NULL,
  `desgn_name` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `desgn_info`
--

INSERT INTO `desgn_info` (`desgn_id`, `desgn_name`) VALUES
('Des5bae454f9d3f', 'Head Accountant'),
('Des5bb720d6e2ca', 'Asst. Accountant'),
('Des5bb720f10de3', 'Blowing Asst. Operator'),
('Des5bb720fda44e', 'Executive HR'),
('Des5bb721060ed8', 'Executive Marketing'),
('Des5ee8f3fcb371', 'Teach Lead'),
('Des5ee8f4ee25fb', 'Support Tech Lead'),
('Des5eea3253a214', 'Head HR');

-- --------------------------------------------------------

--
-- Structure de la table `employee_info`
--

CREATE TABLE `employee_info` (
  `employee_id` varchar(25) NOT NULL,
  `employee_name` varchar(40) NOT NULL,
  `employee_type` varchar(20) NOT NULL,
  `employee_gender` varchar(25) NOT NULL,
  `employee_dept` varchar(45) NOT NULL,
  `employee_desgn` varchar(45) NOT NULL,
  `employee_pay` varchar(25) NOT NULL,
  `employee_idno` varchar(20) NOT NULL,
  `employee_dob` varchar(25) NOT NULL,
  `employee_status` varchar(25) NOT NULL,
  `employee_joindate` varchar(25) NOT NULL,
  `newName` varchar(500) NOT NULL,
  `employee_contNum` varchar(20) NOT NULL,
  `employee_email` varchar(40) NOT NULL,
  `employee_ref` varchar(20) NOT NULL,
  `employee_marital_status` varchar(20) NOT NULL,
  `employee_nid` varchar(25) NOT NULL,
  `employee_passportid` varchar(25) NOT NULL,
  `employee_emg_contNum` varchar(20) DEFAULT NULL,
  `father_name` varchar(60) DEFAULT NULL,
  `mother_name` varchar(60) DEFAULT NULL,
  `present_address` varchar(150) DEFAULT NULL,
  `permanent_address` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employee_info`
--

INSERT INTO `employee_info` (`employee_id`, `employee_name`, `employee_type`, `employee_gender`, `employee_dept`, `employee_desgn`, `employee_pay`, `employee_idno`, `employee_dob`, `employee_status`, `employee_joindate`, `newName`, `employee_contNum`, `employee_email`, `employee_ref`, `employee_marital_status`, `employee_nid`, `employee_passportid`, `employee_emg_contNum`, `father_name`, `mother_name`, `present_address`, `permanent_address`) VALUES
('Emp5b920b0be9eb7', 'Mohamed NDIAYE', 'Staff', 'Male', 'Production', 'Blowing Asst. Operator', '', 'EMP0128', '03/02/1994', 'Inactive', '09/03/2018', '24862187_1543348409047365_3311190201032314793_n.jpg', '2203444617', 'mohamed@gmail.com', 'tanveer', 'Married', '1111', '122', '3', 's', 'ww', 's', 'a'),
('Emp5ee8fc4e09704', 'Ahamd NDIAYE', 'IT developer', 'Male', 'IT Dept.', 'Support Tech Lead', 'Bank', 'EMP1136', '04/10/1992', 'ACTIVE', '06/15/2020', '20200616190726_n.jpg', '2203444615', 'ahmad@gmail.com', 'Mohamed NDIAYE', 'Single', '5544', 'A01744800', '', '', '', '', ''),
('Emp5ee9261151c60', 'Mohamed Jaiteh', 'Manager', 'Male', 'Sales & Marketing', 'Executive Marketing', 'Bank', 'EMP5385', '04/10/1992', 'ACTIVE', '06/05/2020', '20200616220537_20190129_091509.jpg', '2203444617', 'jaiteh@gmail.com', 'Mohamed NDIAYE', 'Single', '5566', 'A01744800', '', '', '', '', ''),
('Emp5eea32cfd4f70', 'Ousmane Jallo', 'Manager', 'Male', 'Sales & Marketing', 'Head Accountant', 'Mobile', 'EMP9186', '03/10/1991', 'Inactive', '06/12/2020', '20200617171215_42763470_497546157323614_2658941576061814325_n.jpg', '2203444617', 'jallo@gmail.com', 'Mohamed NDIAYE', 'Single', '5543', 'A01744830', '', '', '', '', ''),
('Emp5eea645c7ac21', 'Moussa Bah', 'Staff', 'Male', 'Production', 'Asst. Accountant', 'Debit Card', 'EMP6684', '03/10/1991', 'ACTIVE', '06/16/2020', '20200617204340_46592509_131913164389650_7137185400833430849_n.jpg', '2203444610', 'mouss@gmail.com', 'Mohamed Jaiteh', 'Single', '0000', 'A01744803', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `employee_type`
--

CREATE TABLE `employee_type` (
  `employee_type_id` varchar(25) NOT NULL,
  `employee_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employee_type`
--

INSERT INTO `employee_type` (`employee_type_id`, `employee_type`) VALUES
('EmpTy5b903551b8884', 'Manager'),
('EmpTy5b9035d4c9b9d', 'Staff'),
('EmpTy5b9b8e1b28099', 'Worker'),
('EmpTy5ee8f53d30944', 'IT developer');

-- --------------------------------------------------------

--
-- Structure de la table `generate_salary`
--

CREATE TABLE `generate_salary` (
  `id` int(255) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `house_rent` int(11) NOT NULL,
  `medical` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `total_over_time_salary` int(11) NOT NULL,
  `Bonus` int(11) NOT NULL,
  `total_payable_salary` int(11) NOT NULL,
  `OT Salary` int(11) NOT NULL,
  `Payable Salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `generate_salary`
--

INSERT INTO `generate_salary` (`id`, `employee_name`, `month`, `year`, `basic_salary`, `house_rent`, `medical`, `transport`, `vat`, `total_over_time_salary`, `Bonus`, `total_payable_salary`, `OT Salary`, `Payable Salary`) VALUES
(1, 'Ahmad NDIAYE', 'January', 2020, 700, 35, 35, 35, 40, 765, 5, 12000, 5000, 17000);

-- --------------------------------------------------------

--
-- Structure de la table `holiday_info`
--

CREATE TABLE `holiday_info` (
  `holiday_info_id` varchar(15) NOT NULL,
  `holiday_title` varchar(25) DEFAULT NULL,
  `datefrom` date DEFAULT NULL,
  `dateto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `holiday_info`
--

INSERT INTO `holiday_info` (`holiday_info_id`, `holiday_title`, `datefrom`, `dateto`) VALUES
('Hol5ba3872038c6', 'Eid Mubarak', '2020-05-05', '2020-05-08'),
('Hol5bbbb467ae00', 'ramadan', '2020-05-15', '2018-05-18');

-- --------------------------------------------------------

--
-- Structure de la table `out_work_info`
--

CREATE TABLE `out_work_info` (
  `requisition_id` varchar(15) NOT NULL,
  `employee_name` varchar(65) NOT NULL,
  `requisition_title` varchar(65) NOT NULL,
  `requisition_date` varchar(15) NOT NULL,
  `requisition_time_from` varchar(20) NOT NULL,
  `requisition_time_to` varchar(20) NOT NULL,
  `requisition_enter` varchar(20) NOT NULL,
  `requisition_details` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `out_work_info`
--

INSERT INTO `out_work_info` (`requisition_id`, `employee_name`, `requisition_title`, `requisition_date`, `requisition_time_from`, `requisition_time_to`, `requisition_enter`, `requisition_details`) VALUES
('Req5bafde0838c4', 'Mohamed Ndiaye', 'ok', '01/02/2020', '09', '10', '11', '');

-- --------------------------------------------------------

--
-- Structure de la table `salary_info`
--

CREATE TABLE `salary_info` (
  `salary_id` varchar(25) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `Basic_Salary` int(20) DEFAULT NULL,
  `House_rent` int(20) DEFAULT NULL,
  `Medical` int(20) DEFAULT NULL,
  `Transport` int(20) DEFAULT NULL,
  `vat` int(20) DEFAULT NULL,
  `total_salary` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salary_info`
--

INSERT INTO `salary_info` (`salary_id`, `employee_name`, `Basic_Salary`, `House_rent`, `Medical`, `Transport`, `vat`, `total_salary`) VALUES
('Sal5b97c69466417', 'Mohamed NDIAYE', 12000, 600, 360, 240, 264, 12936),
('Sal5ee919383d3a2', 'Ahamd NDIAYE', 700, 35, 35, 35, 40, 765),
('Sal5ee9263d0112a', 'Mohamed Jaiteh', 20000, 800, 1600, 1000, 2340, 21060);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `User_ID` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Acess` int(5) DEFAULT NULL,
  `OTP` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`User_ID`, `Email`, `Password`, `Name`, `Type`, `Acess`, `OTP`) VALUES
('123', 'jaayahmad@gmail.com', '@admin.12', 'Mohamed NDIAYE Msc. Software Engineer', 'Manager', 1, ''),
('User5ee8fc4e0971f', 'ahmad@gmail.com', '/jLj7?W0i1', 'Ahamd NDIAYE', 'IT developer', 6, ''),
('User5ee9261151c6f', 'jaiteh@gmail.com', 'D56K0zz&85', 'Mohamed Jaiteh', 'Manager', 6, ''),
('User5eea32cfd4f84', 'jallo@gmail.com', 'Ds6&j%i#6%', 'Ousmane Jallo', 'Manager', 6, ''),
('User5eea645c7ac37', 'mouss@gmail.com', 'jr%?tKC@8f', 'Moussa Bah', 'Staff', 6, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `attendance_file`
--
ALTER TABLE `attendance_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Index pour la table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Index pour la table `bonus_type`
--
ALTER TABLE `bonus_type`
  ADD PRIMARY KEY (`bonus_type_id`);

--
-- Index pour la table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`company_id`);

--
-- Index pour la table `dept_info`
--
ALTER TABLE `dept_info`
  ADD PRIMARY KEY (`dept_id`);

--
-- Index pour la table `desgn_info`
--
ALTER TABLE `desgn_info`
  ADD PRIMARY KEY (`desgn_id`);

--
-- Index pour la table `employee_info`
--
ALTER TABLE `employee_info`
  ADD PRIMARY KEY (`employee_id`);

--
-- Index pour la table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`employee_type_id`);

--
-- Index pour la table `holiday_info`
--
ALTER TABLE `holiday_info`
  ADD PRIMARY KEY (`holiday_info_id`);

--
-- Index pour la table `out_work_info`
--
ALTER TABLE `out_work_info`
  ADD PRIMARY KEY (`requisition_id`);

--
-- Index pour la table `salary_info`
--
ALTER TABLE `salary_info`
  ADD PRIMARY KEY (`salary_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `attendance_file`
--
ALTER TABLE `attendance_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `attendance_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
