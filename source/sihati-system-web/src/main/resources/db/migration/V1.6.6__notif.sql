INSERT INTO communication.newnotification(
    id, code, message, seen, patient_id, request_appointment_id, request_care_coverage_id, type)
VALUES

-- ===================== YASMINE BAICHE (1) - Notifications for appointments =====================
(1, 'NOTIF-001', 'Votre rendez-vous du 2024-11-15 a été accepté', false, 1, 1, NULL, 'RA'),
(2, 'NOTIF-002', 'Votre rendez-vous du 2024-12-10 a été accepté', false, 1, 2, NULL, 'RA'),
(3, 'NOTIF-003', 'Votre rendez-vous du 2025-02-15 a été accepté', false, 1, 3, NULL, 'RA'),
(4, 'NOTIF-004', 'Votre rendez-vous du 2025-04-20 a été accepté', false, 1, 4, NULL, 'RA'),
(5, 'NOTIF-005', 'Votre rendez-vous du 2026-06-03 est en attente', true, 1, 5, NULL, 'RA'),
(6, 'NOTIF-006', 'Votre rendez-vous du 2026-07-08 est en attente', true, 1, 6, NULL, 'RA'),
(7, 'NOTIF-007', 'Votre rendez-vous du 2024-05-20 a été annulé', true, 1, 7, NULL, 'RA'),
(8, 'NOTIF-008', 'Votre demande de prise en charge pour anémie a été acceptée', false, 1, NULL, 1, 'RC'),

-- ===================== ANFAL DAOUDI (2) =====================
(9, 'NOTIF-009', 'Votre rendez-vous du 2024-10-05 a été accepté', false, 2, 8, NULL, 'RA'),
(10, 'NOTIF-010', 'Votre rendez-vous du 2024-11-20 a été accepté', false, 2, 9, NULL, 'RA'),
(11, 'NOTIF-011', 'Votre rendez-vous du 2025-01-10 a été accepté', false, 2, 10, NULL, 'RA'),
(12, 'NOTIF-012', 'Votre rendez-vous du 2025-03-15 a été accepté', false, 2, 11, NULL, 'RA'),
(13, 'NOTIF-013', 'Votre rendez-vous du 2025-05-20 a été accepté', false, 2, 12, NULL, 'RA'),
(14, 'NOTIF-014', 'Votre rendez-vous du 2026-07-15 est en attente', true, 2, 13, NULL, 'RA'),
(15, 'NOTIF-015', 'Votre rendez-vous du 2024-07-25 a été refusé', true, 2, 14, NULL, 'RA'),
(16, 'NOTIF-016', 'Votre demande de prise en charge pour migraine a été acceptée', false, 2, NULL, 2, 'RC'),

-- ===================== RAYANE MOUZAOUI (3) =====================
(17, 'NOTIF-017', 'Votre rendez-vous du 2024-09-10 a été accepté', false, 3, 15, NULL, 'RA'),
(18, 'NOTIF-018', 'Votre rendez-vous du 2024-10-25 a été accepté', false, 3, 16, NULL, 'RA'),
(19, 'NOTIF-019', 'Votre rendez-vous du 2025-01-15 a été accepté', false, 3, 17, NULL, 'RA'),
(20, 'NOTIF-020', 'Votre rendez-vous du 2025-03-20 a été accepté', false, 3, 18, NULL, 'RA'),
(21, 'NOTIF-021', 'Votre rendez-vous du 2025-05-27 a été accepté', false, 3, 19, NULL, 'RA'),
(22, 'NOTIF-022', 'Votre rendez-vous du 2026-07-22 est en attente', true, 3, 20, NULL, 'RA'),
(23, 'NOTIF-023', 'Votre rendez-vous du 2024-08-15 a été annulé', true, 3, 21, NULL, 'RA'),
(24, 'NOTIF-024', 'Votre demande de prise en charge pour asthme a été acceptée', false, 3, NULL, 3, 'RC'),

-- ===================== ILYES REDJEL (4) =====================
(25, 'NOTIF-025', 'Votre rendez-vous du 2024-08-15 a été accepté', false, 4, 22, NULL, 'RA'),
(26, 'NOTIF-026', 'Votre rendez-vous du 2024-09-20 a été accepté', false, 4, 23, NULL, 'RA'),
(27, 'NOTIF-027', 'Votre rendez-vous du 2024-10-25 a été accepté', false, 4, 24, NULL, 'RA'),
(28, 'NOTIF-028', 'Votre rendez-vous du 2024-12-05 a été accepté', false, 4, 25, NULL, 'RA'),
(29, 'NOTIF-029', 'Votre rendez-vous du 2025-01-10 a été accepté', false, 4, 26, NULL, 'RA'),
(30, 'NOTIF-030', 'Votre rendez-vous du 2025-02-15 a été accepté', false, 4, 27, NULL, 'RA'),
(31, 'NOTIF-031', 'Votre rendez-vous du 2025-03-20 a été accepté', false, 4, 28, NULL, 'RA'),
(32, 'NOTIF-032', 'Votre rendez-vous du 2025-04-25 a été accepté', false, 4, 29, NULL, 'RA'),
(33, 'NOTIF-033', 'Votre rendez-vous du 2025-05-30 a été accepté', false, 4, 30, NULL, 'RA'),
(34, 'NOTIF-034', 'Votre rendez-vous du 2026-06-19 est en attente', true, 4, 31, NULL, 'RA'),
(35, 'NOTIF-035', 'Votre rendez-vous du 2026-08-12 est en attente', true, 4, 32, NULL, 'RA'),
(36, 'NOTIF-036', 'Votre rendez-vous du 2024-06-18 a été refusé', true, 4, 33, NULL, 'RA'),
(37, 'NOTIF-037', 'Votre demande de prise en charge HTA (2024) a expiré', true, 4, NULL, 4, 'RC'),
(38, 'NOTIF-038', 'Votre demande de renouvellement HTA a été refusée', true, 4, NULL, 5, 'RC'),
(39, 'NOTIF-039', 'Votre nouvelle demande HTA est en attente', true, 4, NULL, 6, 'RC'),

-- ===================== OMAR BAICHE (5) =====================
(40, 'NOTIF-040', 'Votre rendez-vous du 2023-06-10 a été accepté', true, 5, 34, NULL, 'RA'),
(41, 'NOTIF-041', 'Votre rendez-vous du 2023-07-15 a été accepté', true, 5, 35, NULL, 'RA'),
(42, 'NOTIF-042', 'Votre rendez-vous du 2023-08-20 a été accepté', true, 5, 36, NULL, 'RA'),
(43, 'NOTIF-043', 'Votre rendez-vous du 2024-01-25 a été accepté', false, 5, 37, NULL, 'RA'),
(44, 'NOTIF-044', 'Votre rendez-vous du 2024-02-28 a été accepté', false, 5, 38, NULL, 'RA'),
(45, 'NOTIF-045', 'Votre rendez-vous du 2024-03-15 a été accepté', false, 5, 39, NULL, 'RA'),
(46, 'NOTIF-046', 'Votre rendez-vous du 2024-04-20 a été accepté', false, 5, 40, NULL, 'RA'),
(47, 'NOTIF-047', 'Votre rendez-vous du 2024-07-10 a été accepté', false, 5, 41, NULL, 'RA'),
(48, 'NOTIF-048', 'Votre rendez-vous du 2024-09-05 a été accepté', false, 5, 42, NULL, 'RA'),
(49, 'NOTIF-049', 'Votre rendez-vous du 2024-11-20 a été accepté', false, 5, 43, NULL, 'RA'),
(50, 'NOTIF-050', 'Votre rendez-vous du 2025-02-10 a été accepté', false, 5, 44, NULL, 'RA'),
(51, 'NOTIF-051', 'Votre rendez-vous du 2025-03-25 a été accepté', false, 5, 45, NULL, 'RA'),
(52, 'NOTIF-052', 'Votre rendez-vous du 2025-05-15 a été accepté', false, 5, 46, NULL, 'RA'),
(53, 'NOTIF-053', 'Votre rendez-vous du 2026-07-01 est en attente', true, 5, 47, NULL, 'RA'),
(54, 'NOTIF-054', 'Votre rendez-vous du 2026-09-20 est en attente', true, 5, 48, NULL, 'RA'),
(55, 'NOTIF-055', 'Votre rendez-vous du 2023-11-10 a été annulé', true, 5, 49, NULL, 'RA'),
(56, 'NOTIF-056', 'Votre demande de prise en charge diabète (2025-2026) est active', false, 5, NULL, 10, 'RC'),

-- ===================== SALIMA IKENE (6) =====================
(57, 'NOTIF-057', 'Votre rendez-vous du 2024-02-10 a été accepté', false, 6, 50, NULL, 'RA'),
(58, 'NOTIF-058', 'Votre rendez-vous du 2024-03-15 a été accepté', false, 6, 51, NULL, 'RA'),
(59, 'NOTIF-059', 'Votre rendez-vous du 2024-04-05 a été accepté', false, 6, 52, NULL, 'RA'),
(60, 'NOTIF-060', 'Votre rendez-vous du 2024-06-10 a été accepté', false, 6, 53, NULL, 'RA'),
(61, 'NOTIF-061', 'Votre rendez-vous du 2024-08-20 a été accepté', false, 6, 54, NULL, 'RA'),
(62, 'NOTIF-062', 'Votre rendez-vous du 2024-10-15 a été accepté', false, 6, 55, NULL, 'RA'),
(63, 'NOTIF-063', 'Votre rendez-vous du 2024-12-05 a été accepté', false, 6, 56, NULL, 'RA'),
(64, 'NOTIF-064', 'Votre rendez-vous du 2025-01-20 a été accepté', false, 6, 57, NULL, 'RA'),
(65, 'NOTIF-065', 'Votre rendez-vous du 2025-03-10 a été accepté', false, 6, 58, NULL, 'RA'),
(66, 'NOTIF-066', 'Votre rendez-vous du 2025-05-05 a été accepté', false, 6, 59, NULL, 'RA'),
(67, 'NOTIF-067', 'Votre rendez-vous du 2026-07-08 est en attente', true, 6, 60, NULL, 'RA'),
(68, 'NOTIF-068', 'Votre rendez-vous du 2026-08-05 est en attente', true, 6, 61, NULL, 'RA'),
(69, 'NOTIF-069', 'Votre rendez-vous du 2024-07-18 a été refusé', true, 6, 62, NULL, 'RA'),
(70, 'NOTIF-070', 'Votre demande de prise en charge arthrose (2025) est active', false, 6, NULL, 14, 'RC'),

-- ===================== MAHMOUD DAOUDI (7) =====================
(71, 'NOTIF-071', 'Votre rendez-vous du 2022-09-10 a été accepté', true, 7, 63, NULL, 'RA'),
(72, 'NOTIF-072', 'Votre rendez-vous du 2023-01-20 a été accepté', true, 7, 65, NULL, 'RA'),
(73, 'NOTIF-073', 'Votre rendez-vous du 2025-06-09 a été accepté', false, 7, 74, NULL, 'RA'),
(74, 'NOTIF-074', 'Votre rendez-vous du 2026-07-06 est en attente', true, 7, 75, NULL, 'RA'),
(75, 'NOTIF-075', 'Votre rendez-vous du 2026-09-10 est en attente', true, 7, 76, NULL, 'RA'),
(76, 'NOTIF-076', 'Votre demande de renouvellement HTA a été refusée', true, 7, NULL, 17, 'RC'),
(77, 'NOTIF-077', 'Votre demande de prise en charge a été annulée', true, 7, NULL, 18, 'RC'),
(78, 'NOTIF-078', 'Votre demande de prise en charge HTA (2025) est active', false, 7, NULL, 20, 'RC'),

-- ===================== FARIDA IDOUI (8) =====================
(79, 'NOTIF-079', 'Votre rendez-vous du 2024-03-10 a été accepté', false, 8, 79, NULL, 'RA'),
(80, 'NOTIF-080', 'Votre rendez-vous du 2024-04-15 a été accepté', false, 8, 80, NULL, 'RA'),
(81, 'NOTIF-081', 'Votre rendez-vous du 2024-07-05 a été accepté', false, 8, 81, NULL, 'RA'),
(82, 'NOTIF-082', 'Votre rendez-vous du 2024-10-20 a été accepté', false, 8, 82, NULL, 'RA'),
(83, 'NOTIF-083', 'Votre rendez-vous du 2025-01-15 a été accepté', false, 8, 83, NULL, 'RA'),
(84, 'NOTIF-084', 'Votre rendez-vous du 2025-04-20 a été accepté', false, 8, 84, NULL, 'RA'),
(85, 'NOTIF-085', 'Votre rendez-vous du 2026-07-10 est en attente', true, 8, 85, NULL, 'RA'),
(86, 'NOTIF-086', 'Votre rendez-vous du 2024-08-05 a été refusé', true, 8, 86, NULL, 'RA'),
(87, 'NOTIF-087', 'Votre demande de prise en charge cholestérol (2025) est active', false, 8, NULL, 23, 'RC'),

-- ===================== MILOUD OUZIANE (2001) =====================
(88, 'NOTIF-088', 'Votre rendez-vous du 2024-08-20 a été accepté', false, 2001, 87, NULL, 'RA'),
(89, 'NOTIF-089', 'Votre rendez-vous du 2024-09-25 a été accepté', false, 2001, 88, NULL, 'RA'),
(90, 'NOTIF-090', 'Votre rendez-vous du 2024-11-10 a été accepté', false, 2001, 89, NULL, 'RA'),
(91, 'NOTIF-091', 'Votre rendez-vous du 2025-01-15 a été accepté', false, 2001, 90, NULL, 'RA'),
(92, 'NOTIF-092', 'Votre rendez-vous du 2025-03-20 a été accepté', false, 2001, 91, NULL, 'RA'),
(93, 'NOTIF-093', 'Votre rendez-vous du 2025-05-29 a été accepté', false, 2001, 92, NULL, 'RA'),
(94, 'NOTIF-094', 'Votre rendez-vous du 2026-09-15 est en attente', true, 2001, 93, NULL, 'RA'),
(95, 'NOTIF-095', 'Votre rendez-vous du 2024-10-10 a été annulé', true, 2001, 94, NULL, 'RA'),
(96, 'NOTIF-096', 'Votre rendez-vous du 2024-12-01 a été annulé', true, 2001, 141, NULL, 'RA'),
(97, 'NOTIF-097', 'Votre demande de prise en charge gastrite (2025) est active', false, 2001, NULL, 26, 'RC'),

-- ===================== KARIM HAMITI (2005) =====================
(98, 'NOTIF-098', 'Votre rendez-vous du 2024-07-10 a été accepté', false, 2005, 95, NULL, 'RA'),
(99, 'NOTIF-099', 'Votre rendez-vous du 2024-08-15 a été accepté', false, 2005, 96, NULL, 'RA'),
(100, 'NOTIF-100', 'Votre rendez-vous du 2024-09-20 a été accepté', false, 2005, 97, NULL, 'RA'),
(101, 'NOTIF-101', 'Votre rendez-vous du 2024-12-05 a été accepté', false, 2005, 98, NULL, 'RA'),
(102, 'NOTIF-102', 'Votre rendez-vous du 2025-03-10 a été accepté', false, 2005, 99, NULL, 'RA'),
(103, 'NOTIF-103', 'Votre rendez-vous du 2026-06-15 est en attente', true, 2005, 100, NULL, 'RA'),
(104, 'NOTIF-104', 'Votre rendez-vous du 2024-11-22 a été refusé', true, 2005, 101, NULL, 'RA'),
(105, 'NOTIF-105', 'Votre demande de prise en charge ulcères (2025) est active', false, 2005, NULL, 36, 'RC'),

-- ===================== HOCINE MILOUDI (2012) =====================
(106, 'NOTIF-106', 'Votre rendez-vous du 2024-04-15 a été accepté', false, 2012, 102, NULL, 'RA'),
(107, 'NOTIF-107', 'Votre rendez-vous du 2024-05-20 a été accepté', false, 2012, 103, NULL, 'RA'),
(108, 'NOTIF-108', 'Votre rendez-vous du 2024-06-25 a été accepté', false, 2012, 104, NULL, 'RA'),
(109, 'NOTIF-109', 'Votre rendez-vous du 2024-09-10 a été accepté', false, 2012, 105, NULL, 'RA'),
(110, 'NOTIF-110', 'Votre rendez-vous du 2025-03-25 a été accepté', false, 2012, 106, NULL, 'RA'),
(111, 'NOTIF-111', 'Votre rendez-vous du 2026-07-15 est en attente', true, 2012, 107, NULL, 'RA'),
(112, 'NOTIF-112', 'Votre rendez-vous du 2024-08-10 a été annulé', true, 2012, 108, NULL, 'RA'),
(113, 'NOTIF-113', 'Votre demande de prise en charge allergies (2025) est active', false, 2012, NULL, 52, 'RC'),
(114, 'NOTIF-114', 'Votre demande de renouvellement allergies est en attente', true, 2012, NULL, 53, 'RC'),

-- ===================== MOHAMED OUZIANE (2004) =====================
(115, 'NOTIF-115', 'Votre rendez-vous du 2024-03-10 a été accepté', false, 2004, 109, NULL, 'RA'),
(116, 'NOTIF-116', 'Votre rendez-vous du 2024-04-15 a été accepté', false, 2004, 110, NULL, 'RA'),
(117, 'NOTIF-117', 'Votre rendez-vous du 2024-05-20 a été accepté', false, 2004, 111, NULL, 'RA'),
(118, 'NOTIF-118', 'Votre rendez-vous du 2024-06-25 a été accepté', false, 2004, 112, NULL, 'RA'),
(119, 'NOTIF-119', 'Votre rendez-vous du 2024-08-30 a été accepté', false, 2004, 113, NULL, 'RA'),
(120, 'NOTIF-120', 'Votre rendez-vous du 2024-10-15 a été accepté', false, 2004, 114, NULL, 'RA'),
(121, 'NOTIF-121', 'Votre rendez-vous du 2024-12-20 a été accepté', false, 2004, 115, NULL, 'RA'),
(122, 'NOTIF-122', 'Votre rendez-vous du 2025-03-25 a été accepté', false, 2004, 116, NULL, 'RA'),
(123, 'NOTIF-123', 'Votre rendez-vous du 2026-06-15 est en attente', true, 2004, 117, NULL, 'RA'),
(124, 'NOTIF-124', 'Votre rendez-vous du 2026-08-10 est en attente', true, 2004, 118, NULL, 'RA'),
(125, 'NOTIF-125', 'Votre rendez-vous du 2024-07-30 a été refusé', true, 2004, 119, NULL, 'RA'),
(126, 'NOTIF-126', 'Votre demande de prise en charge cancer a été acceptée', false, 2004, NULL, 33, 'RC'),

-- ===================== RACHID OUZIANE (2003) =====================
(127, 'NOTIF-127', 'Votre rendez-vous du 2024-11-10 a été accepté', false, 2003, 120, NULL, 'RA'),
(128, 'NOTIF-128', 'Votre rendez-vous du 2024-12-15 a été accepté', false, 2003, 121, NULL, 'RA'),
(129, 'NOTIF-129', 'Votre rendez-vous du 2025-02-20 a été accepté', false, 2003, 122, NULL, 'RA'),
(130, 'NOTIF-130', 'Votre rendez-vous du 2025-05-29 a été accepté', false, 2003, 123, NULL, 'RA'),
(131, 'NOTIF-131', 'Votre rendez-vous du 2024-10-05 a été annulé', true, 2003, 124, NULL, 'RA'),
(132, 'NOTIF-132', 'Votre rendez-vous du 2024-09-22 a été annulé', true, 2003, 143, NULL, 'RA'),
(133, 'NOTIF-133', 'Votre demande de prise en charge bronchite (2025) est active', false, 2003, NULL, 29, 'RC'),

-- ===================== YACINE HAMITI (2007) =====================
(134, 'NOTIF-134', 'Votre rendez-vous du 2024-09-15 a été accepté', false, 2007, 125, NULL, 'RA'),
(135, 'NOTIF-135', 'Votre rendez-vous du 2024-10-20 a été accepté', false, 2007, 126, NULL, 'RA'),
(136, 'NOTIF-136', 'Votre rendez-vous du 2025-01-25 a été accepté', false, 2007, 127, NULL, 'RA'),
(137, 'NOTIF-137', 'Votre rendez-vous du 2025-04-30 a été accepté', false, 2007, 128, NULL, 'RA'),
(138, 'NOTIF-138', 'Votre rendez-vous du 2026-07-22 est en attente', true, 2007, 129, NULL, 'RA'),
(139, 'NOTIF-139', 'Votre rendez-vous du 2024-11-15 a été refusé', true, 2007, 130, NULL, 'RA'),
(140, 'NOTIF-140', 'Votre demande de prise en charge asthme (2025) est active', false, 2007, NULL, 40, 'RC'),

-- ===================== ABDELKADER HAMITI (2009) =====================
(141, 'NOTIF-141', 'Votre rendez-vous du 2023-10-10 a été accepté', true, 2009, 131, NULL, 'RA'),
(142, 'NOTIF-142', 'Votre rendez-vous du 2024-01-15 a été accepté', false, 2009, 132, NULL, 'RA'),
(143, 'NOTIF-143', 'Votre rendez-vous du 2024-04-20 a été accepté', false, 2009, 133, NULL, 'RA'),
(144, 'NOTIF-144', 'Votre rendez-vous du 2024-07-25 a été accepté', false, 2009, 134, NULL, 'RA'),
(145, 'NOTIF-145', 'Votre rendez-vous du 2024-10-30 a été accepté', false, 2009, 135, NULL, 'RA'),
(146, 'NOTIF-146', 'Votre rendez-vous du 2025-02-05 a été accepté', false, 2009, 136, NULL, 'RA'),
(147, 'NOTIF-147', 'Votre rendez-vous du 2025-05-10 a été accepté', false, 2009, 137, NULL, 'RA'),
(148, 'NOTIF-148', 'Votre rendez-vous du 2026-08-20 est en attente', true, 2009, 138, NULL, 'RA'),
(149, 'NOTIF-149', 'Votre rendez-vous du 2024-11-20 a été annulé', true, 2009, 150, NULL, 'RA'),
(150, 'NOTIF-150', 'Votre demande de prise en charge diabète (2025) est active', false, 2009, NULL, 46, 'RC'),
(151, 'NOTIF-151', 'Votre demande de renouvellement diabète est en attente', true, 2009, NULL, 47, 'RC'),

-- ===================== ZOHRA HAMITI (2006) =====================
(152, 'NOTIF-152', 'Votre demande de prise en charge soins préventifs est active', false, 2006, NULL, 37, 'RC'),

-- ===================== LINA HAMITI (2008) =====================
(153, 'NOTIF-153', 'Votre demande de prise en charge soins courants enfant est active', false, 2008, NULL, 41, 'RC'),

-- ===================== YAMINA HAMITI (2010) =====================
(154, 'NOTIF-154', 'Votre demande de prise en charge soins courants senior est active', false, 2010, NULL, 48, 'RC'),

-- ===================== NABILA HASAINE (2011) =====================
(155, 'NOTIF-155', 'Votre demande de prise en charge soins courants est active', false, 2011, NULL, 49, 'RC'),

-- ===================== YAMINA MILOUDI (2013) =====================
(156, 'NOTIF-156', 'Votre demande de prise en charge soins courants est active', false, 2013, NULL, 54, 'RC'),

-- ===================== AMINE MILOUDI (2014) =====================
(157, 'NOTIF-157', 'Votre demande de prise en charge soins pédiatriques est active', false, 2014, NULL, 55, 'RC'),

-- ===================== SALAH MILOUDI (2015) =====================
(158, 'NOTIF-158', 'Votre demande de prise en charge soins pédiatriques est active', false, 2015, NULL, 56, 'RC'),

-- ===================== FATIMA BOUCHAREB (2018) =====================
(159, 'NOTIF-159', 'Votre demande de prise en charge a été refusée', true, 2018, NULL, 61, 'RC'),
(160, 'NOTIF-160', 'Votre nouvelle demande de prise en charge a été acceptée', false, 2018, NULL, 62, 'RC'),

-- ===================== MOKHTAR KHELLADI (2021) =====================
(161, 'NOTIF-161', 'Votre demande de prise en charge a été annulée', true, 2021, NULL, 65, 'RC'),
(162, 'NOTIF-162', 'Votre nouvelle demande de prise en charge a été acceptée', false, 2021, NULL, 66, 'RC'),

-- ===================== SOFIANE BOUCHAREB (2036) =====================
(163, 'NOTIF-163', 'Votre demande de prise en charge a été refusée', true, 2036, NULL, 84, 'RC'),
(164, 'NOTIF-164', 'Votre nouvelle demande de prise en charge a été acceptée', false, 2036, NULL, 85, 'RC'),

-- ===================== MUSTAPHA KHELLADI (2039) =====================
(165, 'NOTIF-165', 'Votre demande de prise en charge est en attente', true, 2039, NULL, 88, 'RC'),

-- ===================== HASSAN HASAINE (2050) =====================
(166, 'NOTIF-166', 'Votre demande de prise en charge est active', false, 2050, NULL, 99, 'RC'),
(167, 'NOTIF-167', 'Votre demande de renouvellement est en attente', true, 2050, NULL, 100, 'RC'),

-- ===================== KAMEL HASAINE (2051) =====================
(168, 'NOTIF-168', 'Votre demande de prise en charge diabète (2025) est active', false, 2051, NULL, 104, 'RC'),

-- ===================== ADDITIONAL NOTIFICATIONS =====================
-- Patient 2003 - Canceled by parent (already covered above)
-- Patient 2007 - Canceled due to school (already covered above)
-- Patient 1 - Canceled routine check (already covered)
-- Patient 2 - Refused specialist (already covered)
-- Patient 3 - Canceled last minute (already covered)
-- Patient 8 - Refused specialized treatment (already covered)

-- ===================== NEW EMPLOYEES NOTIFICATIONS =====================
(169, 'NOTIF-169', 'Votre demande de prise en charge pour soins courants est active', false, 2043, NULL, 92, 'RC'),
(170, 'NOTIF-170', 'Votre demande de prise en charge pour soins courants est active', false, 2053, NULL, 106, 'RC'),
(171, 'NOTIF-171', 'Votre demande de prise en charge pour soins courants est active', false, 2054, NULL, 107, 'RC'),
(172, 'NOTIF-172', 'Votre demande de prise en charge pour soins courants senior est active', false, 2052, NULL, 105, 'RC'),
(173, 'NOTIF-173', 'Votre demande de prise en charge pour soins pédiatriques est active', false, 2044, NULL, 93, 'RC'),
(174, 'NOTIF-174', 'Votre demande de prise en charge pour soins pédiatriques est active', false, 2045, NULL, 94, 'RC'),
(175, 'NOTIF-175', 'Votre demande de prise en charge pour soins pédiatriques est active', false, 2047, NULL, 96, 'RC'),
(176, 'NOTIF-176', 'Votre demande de prise en charge pour soins pédiatriques est active', false, 2048, NULL, 97, 'RC'),
(177, 'NOTIF-177', 'Votre demande de prise en charge pour migraine est active', false, 2049, NULL, 98, 'RC');
SELECT setval(
               'communication.newnotification_seq',
               GREATEST(COALESCE((SELECT MAX(id) FROM communication.newnotification), 0), 1),
               true
       );

-- ADD THIS AT THE END:
UPDATE communication.newnotification n
SET creation_date =
        CASE
            WHEN n.type = 'RA' THEN COALESCE(
                    (SELECT ra.creation_date FROM care.request_appointment ra
                     WHERE ra.id = n.request_appointment_id LIMIT 1),
                NOW()
            )
            WHEN n.type = 'RC' THEN COALESCE(
                    (SELECT rc.creation_date FROM care.request_care_coverages rc
                     WHERE rc.id = n.request_care_coverage_id LIMIT 1),
                NOW()
            )
            ELSE NOW()
            END
WHERE creation_date IS NULL;