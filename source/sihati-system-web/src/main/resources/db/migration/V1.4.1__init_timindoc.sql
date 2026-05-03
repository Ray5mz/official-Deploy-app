INSERT INTO care.timing_doctor (id, duration, code, timing_doctor_date, status, specialty_id, medical_center_id, health_professional_id, created_by, creation_date, last_modified_by, last_modified_date, version)
VALUES
-- ===================== CARDIOLOGISTS (Specialty 1) - MAY/JUNE 2026 =====================
-- Dr Brahmi (1) - BEN AKNOUN (4)
(1, 30, 'CAR-001', '2026-05-27 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
(2, 30, 'CAR-002', '2026-05-29 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
(3, 30, 'CAR-003', '2026-06-01 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),

-- Dr Brahmi (34) - BEN AKNOUN (4) & GUE DE CONSTANTINE (5)
(4, 30, 'CAR-004', '2026-05-27 10:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
(5, 30, 'CAR-005', '2026-05-29 14:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
(6, 30, 'CAR-006', '2026-05-29 13:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
(7, 30, 'CAR-007', '2026-06-01 10:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),

-- Dr Rami (35) - BEN AKNOUN (4) & GUE DE CONSTANTINE (5)
(8, 30, 'CAR-008', '2026-05-28 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
(9, 30, 'CAR-009', '2026-05-30 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
(10, 30, 'CAR-010', '2026-06-02 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
(11, 30, 'CAR-011', '2026-05-28 11:00:00', 'DISPONIBLE', 1, 5, 35, 'system', now(), NULL, NULL, 0),
(12, 30, 'CAR-012', '2026-05-30 11:00:00', 'DISPONIBLE', 1, 5, 35, 'system', now(), NULL, NULL, 0),

-- Dr Chelbabi (36) - RUISSEAU (6)
(13, 30, 'CAR-013', '2026-05-27 09:00:00', 'DISPONIBLE', 1, 6, 36, 'system', now(), NULL, NULL, 0),
(14, 30, 'CAR-014', '2026-05-29 09:00:00', 'DISPONIBLE', 1, 6, 36, 'system', now(), NULL, NULL, 0),
(15, 30, 'CAR-015', '2026-06-01 09:00:00', 'DISPONIBLE', 1, 6, 36, 'system', now(), NULL, NULL, 0),

-- Dr Ghdiri (38) - KHELIFA BOUKHALFA (7)
(16, 30, 'CAR-016', '2026-05-28 14:00:00', 'DISPONIBLE', 1, 7, 38, 'system', now(), NULL, NULL, 0),
(17, 30, 'CAR-017', '2026-05-30 14:00:00', 'DISPONIBLE', 1, 7, 38, 'system', now(), NULL, NULL, 0),
(18, 30, 'CAR-018', '2026-06-02 09:00:00', 'DISPONIBLE', 1, 7, 38, 'system', now(), NULL, NULL, 0),

-- Dr Ouafek (39) - ALGER NORD (8)
(19, 30, 'CAR-019', '2026-05-27 09:00:00', 'DISPONIBLE', 1, 8, 39, 'system', now(), NULL, NULL, 0),
(20, 30, 'CAR-020', '2026-05-29 09:00:00', 'DISPONIBLE', 1, 8, 39, 'system', now(), NULL, NULL, 0),
(21, 30, 'CAR-021', '2026-06-01 09:00:00', 'DISPONIBLE', 1, 8, 39, 'system', now(), NULL, NULL, 0),

-- Dr Tiloult (40) - LABORATOIRE HASSIBA (11)
(22, 30, 'CAR-022', '2026-05-28 09:00:00', 'DISPONIBLE', 1, 11, 40, 'system', now(), NULL, NULL, 0),
(23, 30, 'CAR-023', '2026-05-30 09:00:00', 'DISPONIBLE', 1, 11, 40, 'system', now(), NULL, NULL, 0),

-- Dr Benali (200) - BEN AKNOUN (4)
(24, 30, 'CAR-024', '2026-05-28 14:00:00', 'DISPONIBLE', 1, 4, 200, 'system', now(), NULL, NULL, 0),
(25, 30, 'CAR-025', '2026-05-30 14:00:00', 'DISPONIBLE', 1, 4, 200, 'system', now(), NULL, NULL, 0),

-- Dr Khelil (201) - GUE DE CONSTANTINE (5)
(26, 30, 'CAR-026', '2026-05-27 14:00:00', 'DISPONIBLE', 1, 5, 201, 'system', now(), NULL, NULL, 0),
(27, 30, 'CAR-027', '2026-05-29 10:00:00', 'DISPONIBLE', 1, 5, 201, 'system', now(), NULL, NULL, 0),

-- Dr Zerrouki (202) - RUISSEAU (6)
(28, 30, 'CAR-028', '2026-05-28 10:00:00', 'DISPONIBLE', 1, 6, 202, 'system', now(), NULL, NULL, 0),
(29, 30, 'CAR-029', '2026-05-30 10:00:00', 'DISPONIBLE', 1, 6, 202, 'system', now(), NULL, NULL, 0),

-- ===================== OPHTHALMOLOGISTS (Specialty 2) =====================
-- Dr Tabet aoul (49) - TIZI OUZOU (10)
(30, 30, 'OPH-001', '2026-05-28 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
(31, 30, 'OPH-002', '2026-05-29 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
(32, 30, 'OPH-003', '2026-06-01 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
(33, 30, 'OPH-004', '2026-06-02 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),

-- Dr Bennouar (50) - BLIDA (9)
(34, 30, 'OPH-005', '2026-05-28 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
(35, 30, 'OPH-006', '2026-05-30 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
(36, 30, 'OPH-007', '2026-06-02 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),

-- Dr Bouchemla (51) - BEN AKNOUN (4)
(37, 30, 'OPH-008', '2026-05-27 14:00:00', 'DISPONIBLE', 2, 4, 51, 'system', now(), NULL, NULL, 0),
(38, 30, 'OPH-009', '2026-05-29 14:00:00', 'DISPONIBLE', 2, 4, 51, 'system', now(), NULL, NULL, 0),
(39, 30, 'OPH-010', '2026-06-01 14:00:00', 'DISPONIBLE', 2, 4, 51, 'system', now(), NULL, NULL, 0),

-- Dr Mellak (52) - GUE DE CONSTANTINE (5)
(40, 30, 'OPH-011', '2026-05-28 09:00:00', 'DISPONIBLE', 2, 5, 52, 'system', now(), NULL, NULL, 0),
(41, 30, 'OPH-012', '2026-05-30 09:00:00', 'DISPONIBLE', 2, 5, 52, 'system', now(), NULL, NULL, 0),

-- Dr Ghouini (53) - RUISSEAU (6)
(42, 30, 'OPH-013', '2026-05-27 09:00:00', 'DISPONIBLE', 2, 6, 53, 'system', now(), NULL, NULL, 0),
(43, 30, 'OPH-014', '2026-05-29 14:00:00', 'DISPONIBLE', 2, 6, 53, 'system', now(), NULL, NULL, 0),
(44, 30, 'OPH-015', '2026-06-01 09:00:00', 'DISPONIBLE', 2, 6, 53, 'system', now(), NULL, NULL, 0),

-- Dr Touati (54) - KHELIFA BOUKHALFA (7)
(45, 30, 'OPH-016', '2026-05-28 09:00:00', 'DISPONIBLE', 2, 7, 54, 'system', now(), NULL, NULL, 0),
(46, 30, 'OPH-017', '2026-05-30 09:00:00', 'DISPONIBLE', 2, 7, 54, 'system', now(), NULL, NULL, 0),

-- Dr Mansouri (203) - ALGER NORD (8)
(47, 30, 'OPH-018', '2026-05-27 14:00:00', 'DISPONIBLE', 2, 8, 203, 'system', now(), NULL, NULL, 0),
(48, 30, 'OPH-019', '2026-05-29 14:00:00', 'DISPONIBLE', 2, 8, 203, 'system', now(), NULL, NULL, 0),

-- Dr Slimani (204) - LABORATOIRE HASSIBA (11)
(49, 30, 'OPH-020', '2026-05-30 09:00:00', 'DISPONIBLE', 2, 11, 204, 'system', now(), NULL, NULL, 0),
(50, 30, 'OPH-021', '2026-06-02 09:00:00', 'DISPONIBLE', 2, 11, 204, 'system', now(), NULL, NULL, 0),

-- ===================== DERMATOLOGISTS (Specialty 3) =====================
-- Dr Ait Aldjet (56) - BEN AKNOUN (4)
(51, 30, 'DER-001', '2026-05-28 09:00:00', 'DISPONIBLE', 3, 4, 56, 'system', now(), NULL, NULL, 0),
(52, 30, 'DER-002', '2026-05-30 09:00:00', 'DISPONIBLE', 3, 4, 56, 'system', now(), NULL, NULL, 0),
(53, 30, 'DER-003', '2026-06-02 09:00:00', 'DISPONIBLE', 3, 4, 56, 'system', now(), NULL, NULL, 0),

-- Dr Azouaou (57) - BLIDA (9)
(54, 30, 'DER-004', '2026-05-27 10:00:00', 'DISPONIBLE', 3, 9, 57, 'system', now(), NULL, NULL, 0),
(55, 30, 'DER-005', '2026-05-29 10:00:00', 'DISPONIBLE', 3, 9, 57, 'system', now(), NULL, NULL, 0),
(56, 30, 'DER-006', '2026-06-01 10:00:00', 'DISPONIBLE', 3, 9, 57, 'system', now(), NULL, NULL, 0),

-- Dr Haddad (205) - GUE DE CONSTANTINE (5)
(57, 30, 'DER-007', '2026-05-28 14:00:00', 'DISPONIBLE', 3, 5, 205, 'system', now(), NULL, NULL, 0),
(58, 30, 'DER-008', '2026-05-30 14:00:00', 'DISPONIBLE', 3, 5, 205, 'system', now(), NULL, NULL, 0),

-- Dr Kara (206) - RUISSEAU (6)
(59, 30, 'DER-009', '2026-05-27 14:00:00', 'DISPONIBLE', 3, 6, 206, 'system', now(), NULL, NULL, 0),
(60, 30, 'DER-010', '2026-05-29 09:00:00', 'DISPONIBLE', 3, 6, 206, 'system', now(), NULL, NULL, 0),

-- ===================== PEDIATRICIANS (Specialty 4) =====================
-- Dr Saadi (69) - BLIDA (9)
(61, 30, 'PED-001', '2026-05-27 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
(62, 30, 'PED-002', '2026-05-29 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
(63, 30, 'PED-003', '2026-06-01 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),

-- Dr Bouferssaoui (70) - BEN AKNOUN (4)
(64, 30, 'PED-004', '2026-05-28 09:00:00', 'DISPONIBLE', 4, 4, 70, 'system', now(), NULL, NULL, 0),
(65, 30, 'PED-005', '2026-05-30 09:00:00', 'DISPONIBLE', 4, 4, 70, 'system', now(), NULL, NULL, 0),
(66, 30, 'PED-006', '2026-06-02 09:00:00', 'DISPONIBLE', 4, 4, 70, 'system', now(), NULL, NULL, 0),

-- Dr Gueddoir (71) - TIZI OUZOU (10)
(67, 30, 'PED-007', '2026-05-27 14:00:00', 'DISPONIBLE', 4, 10, 71, 'system', now(), NULL, NULL, 0),
(68, 30, 'PED-008', '2026-05-29 14:00:00', 'DISPONIBLE', 4, 10, 71, 'system', now(), NULL, NULL, 0),
(69, 30, 'PED-009', '2026-06-01 14:00:00', 'DISPONIBLE', 4, 10, 71, 'system', now(), NULL, NULL, 0),

-- Dr Snouci (72) - ALGER NORD (8)
(70, 30, 'PED-010', '2026-05-28 09:00:00', 'DISPONIBLE', 4, 8, 72, 'system', now(), NULL, NULL, 0),
(71, 30, 'PED-011', '2026-05-30 09:00:00', 'DISPONIBLE', 4, 8, 72, 'system', now(), NULL, NULL, 0),

-- Dr Haine (73) - KHELIFA BOUKHALFA (7)
(72, 30, 'PED-012', '2026-05-27 09:00:00', 'DISPONIBLE', 4, 7, 73, 'system', now(), NULL, NULL, 0),
(73, 30, 'PED-013', '2026-05-29 09:00:00', 'DISPONIBLE', 4, 7, 73, 'system', now(), NULL, NULL, 0),
(74, 30, 'PED-014', '2026-06-01 09:00:00', 'DISPONIBLE', 4, 7, 73, 'system', now(), NULL, NULL, 0),

-- Dr Boudiaf (207) - LABORATOIRE HASSIBA (11)
(75, 30, 'PED-015', '2026-05-29 10:00:00', 'DISPONIBLE', 4, 11, 207, 'system', now(), NULL, NULL, 0),
(76, 30, 'PED-016', '2026-06-01 10:00:00', 'DISPONIBLE', 4, 11, 207, 'system', now(), NULL, NULL, 0),

-- ===================== PSYCHIATRISTS (Specialty 5) =====================
-- Dr Rmessaoudi (84) - REEDUCATION RADIOLOGIE (12)
(77, 45, 'PSY-001', '2026-05-27 10:00:00', 'DISPONIBLE', 5, 12, 84, 'system', now(), NULL, NULL, 0),
(78, 45, 'PSY-002', '2026-05-29 10:00:00', 'DISPONIBLE', 5, 12, 84, 'system', now(), NULL, NULL, 0),
(79, 45, 'PSY-003', '2026-06-01 10:00:00', 'DISPONIBLE', 5, 12, 84, 'system', now(), NULL, NULL, 0),

-- Dr Boudjellal (208) - ORTHOPHONIE (13)
(80, 45, 'PSY-004', '2026-05-28 09:00:00', 'DISPONIBLE', 5, 13, 208, 'system', now(), NULL, NULL, 0),
(81, 45, 'PSY-005', '2026-05-30 09:00:00', 'DISPONIBLE', 5, 13, 208, 'system', now(), NULL, NULL, 0),

-- Dr Chaouche (209) - BEN AKNOUN (4)
(82, 45, 'PSY-006', '2026-05-28 14:00:00', 'DISPONIBLE', 5, 4, 209, 'system', now(), NULL, NULL, 0),
(83, 45, 'PSY-007', '2026-05-30 14:00:00', 'DISPONIBLE', 5, 4, 209, 'system', now(), NULL, NULL, 0),

-- ===================== GYNECOLOGISTS (Specialty 6) =====================
-- Dr Regeum (61) - BEN AKNOUN (4)
(84, 30, 'GYN-001', '2026-05-27 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
(85, 30, 'GYN-002', '2026-05-29 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
(86, 30, 'GYN-003', '2026-06-01 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),

-- Dr Belaiboud (62) - BLIDA (9)
(87, 30, 'GYN-004', '2026-05-28 09:00:00', 'DISPONIBLE', 6, 9, 62, 'system', now(), NULL, NULL, 0),
(88, 30, 'GYN-005', '2026-05-30 09:00:00', 'DISPONIBLE', 6, 9, 62, 'system', now(), NULL, NULL, 0),
(89, 30, 'GYN-006', '2026-06-02 09:00:00', 'DISPONIBLE', 6, 9, 62, 'system', now(), NULL, NULL, 0),

-- Dr Ouafi (63) - GUE DE CONSTANTINE (5)
(90, 30, 'GYN-007', '2026-05-27 14:00:00', 'DISPONIBLE', 6, 5, 63, 'system', now(), NULL, NULL, 0),
(91, 30, 'GYN-008', '2026-05-29 14:00:00', 'DISPONIBLE', 6, 5, 63, 'system', now(), NULL, NULL, 0),
(92, 30, 'GYN-009', '2026-06-01 14:00:00', 'DISPONIBLE', 6, 5, 63, 'system', now(), NULL, NULL, 0),

-- Dr Tikdjda (64) - RUISSEAU (6)
(93, 30, 'GYN-010', '2026-05-28 10:00:00', 'DISPONIBLE', 6, 6, 64, 'system', now(), NULL, NULL, 0),
(94, 30, 'GYN-011', '2026-05-30 10:00:00', 'DISPONIBLE', 6, 6, 64, 'system', now(), NULL, NULL, 0),

-- Dr Hadjadj (210) - TIZI OUZOU (10)
(95, 30, 'GYN-012', '2026-05-27 09:00:00', 'DISPONIBLE', 6, 10, 210, 'system', now(), NULL, NULL, 0),
(96, 30, 'GYN-013', '2026-05-29 09:00:00', 'DISPONIBLE', 6, 10, 210, 'system', now(), NULL, NULL, 0),

-- Dr Ouali (211) - KHELIFA BOUKHALFA (7)
(97, 30, 'GYN-014', '2026-05-28 14:00:00', 'DISPONIBLE', 6, 7, 211, 'system', now(), NULL, NULL, 0),
(98, 30, 'GYN-015', '2026-05-30 14:00:00', 'DISPONIBLE', 6, 7, 211, 'system', now(), NULL, NULL, 0),

-- ===================== NEUROLOGISTS (Specialty 7) =====================
-- Dr Gherbi (95) - BEN AKNOUN (4)
(99, 45, 'NEU-001', '2026-05-27 14:00:00', 'DISPONIBLE', 7, 4, 95, 'system', now(), NULL, NULL, 0),
(100, 45, 'NEU-002', '2026-05-29 14:00:00', 'DISPONIBLE', 7, 4, 95, 'system', now(), NULL, NULL, 0),
(101, 45, 'NEU-003', '2026-06-01 14:00:00', 'DISPONIBLE', 7, 4, 95, 'system', now(), NULL, NULL, 0),

-- Dr Mezghiche (96) - REEDUCATION RADIOLOGIE (12)
(102, 45, 'NEU-004', '2026-05-28 09:00:00', 'DISPONIBLE', 7, 12, 96, 'system', now(), NULL, NULL, 0),
(103, 45, 'NEU-005', '2026-05-30 09:00:00', 'DISPONIBLE', 7, 12, 96, 'system', now(), NULL, NULL, 0),

-- Dr Terki (212) - ORTHOPHONIE (13)
(104, 45, 'NEU-006', '2026-05-27 10:00:00', 'DISPONIBLE', 7, 13, 212, 'system', now(), NULL, NULL, 0),
(105, 45, 'NEU-007', '2026-05-29 10:00:00', 'DISPONIBLE', 7, 13, 212, 'system', now(), NULL, NULL, 0),
(106, 45, 'NEU-008', '2026-06-01 10:00:00', 'DISPONIBLE', 7, 13, 212, 'system', now(), NULL, NULL, 0),

-- Dr Bensalem (213) - BLIDA (9)
(107, 45, 'NEU-009', '2026-05-28 14:00:00', 'DISPONIBLE', 7, 9, 213, 'system', now(), NULL, NULL, 0),
(108, 45, 'NEU-010', '2026-05-30 14:00:00', 'DISPONIBLE', 7, 9, 213, 'system', now(), NULL, NULL, 0),

-- ===================== RHEUMATOLOGISTS (Specialty 8) =====================
-- Dr Gasmi (87) - BEN AKNOUN (4)
(109, 30, 'RHU-001', '2026-05-28 09:00:00', 'DISPONIBLE', 8, 4, 87, 'system', now(), NULL, NULL, 0),
(110, 30, 'RHU-002', '2026-05-30 09:00:00', 'DISPONIBLE', 8, 4, 87, 'system', now(), NULL, NULL, 0),
(111, 30, 'RHU-003', '2026-06-02 09:00:00', 'DISPONIBLE', 8, 4, 87, 'system', now(), NULL, NULL, 0),

-- Dr Amriou (88) - GUE DE CONSTANTINE (5)
(112, 30, 'RHU-004', '2026-05-27 09:00:00', 'DISPONIBLE', 8, 5, 88, 'system', now(), NULL, NULL, 0),
(113, 30, 'RHU-005', '2026-05-29 09:00:00', 'DISPONIBLE', 8, 5, 88, 'system', now(), NULL, NULL, 0),
(114, 30, 'RHU-006', '2026-06-01 09:00:00', 'DISPONIBLE', 8, 5, 88, 'system', now(), NULL, NULL, 0),

-- Dr Guerboukha (89) - RUISSEAU (6)
(115, 30, 'RHU-007', '2026-05-28 14:00:00', 'DISPONIBLE', 8, 6, 89, 'system', now(), NULL, NULL, 0),
(116, 30, 'RHU-008', '2026-05-30 14:00:00', 'DISPONIBLE', 8, 6, 89, 'system', now(), NULL, NULL, 0),

-- Dr Lakhel (90) - ALGER NORD (8)
(117, 30, 'RHU-009', '2026-05-27 09:00:00', 'DISPONIBLE', 8, 8, 90, 'system', now(), NULL, NULL, 0),
(118, 30, 'RHU-010', '2026-05-29 09:00:00', 'DISPONIBLE', 8, 8, 90, 'system', now(), NULL, NULL, 0),

-- Dr Meziane (214) - LABORATOIRE HASSIBA (11)
(119, 30, 'RHU-011', '2026-05-30 10:00:00', 'DISPONIBLE', 8, 11, 214, 'system', now(), NULL, NULL, 0),
(120, 30, 'RHU-012', '2026-06-02 10:00:00', 'DISPONIBLE', 8, 11, 214, 'system', now(), NULL, NULL, 0),

-- ===================== PNEUMOLOGISTS (Specialty 9) =====================
-- Dr Benkacimi (74) - BEN AKNOUN (4)
(121, 30, 'PNE-001', '2026-05-27 09:00:00', 'DISPONIBLE', 9, 4, 74, 'system', now(), NULL, NULL, 0),
(122, 30, 'PNE-002', '2026-05-29 09:00:00', 'DISPONIBLE', 9, 4, 74, 'system', now(), NULL, NULL, 0),

-- Dr Hitachi (75) - BLIDA (9)
(123, 30, 'PNE-003', '2026-05-28 09:00:00', 'DISPONIBLE', 9, 9, 75, 'system', now(), NULL, NULL, 0),
(124, 30, 'PNE-004', '2026-05-30 09:00:00', 'DISPONIBLE', 9, 9, 75, 'system', now(), NULL, NULL, 0),

-- Dr Khellaf (215) - TIZI OUZOU (10)
(125, 30, 'PNE-005', '2026-05-27 14:00:00', 'DISPONIBLE', 9, 10, 215, 'system', now(), NULL, NULL, 0),
(126, 30, 'PNE-006', '2026-05-29 14:00:00', 'DISPONIBLE', 9, 10, 215, 'system', now(), NULL, NULL, 0),

-- ===================== NEPHROLOGISTS (Specialty 10) =====================
-- Dr Rabhia (79) - BEN AKNOUN (4)
(127, 30, 'NEP-001', '2026-05-28 09:00:00', 'DISPONIBLE', 10, 4, 79, 'system', now(), NULL, NULL, 0),
(128, 30, 'NEP-002', '2026-05-30 09:00:00', 'DISPONIBLE', 10, 4, 79, 'system', now(), NULL, NULL, 0),

-- Dr Boukhelifa (216) - GUE DE CONSTANTINE (5)
(129, 30, 'NEP-003', '2026-05-27 14:00:00', 'DISPONIBLE', 10, 5, 216, 'system', now(), NULL, NULL, 0),
(130, 30, 'NEP-004', '2026-05-29 14:00:00', 'DISPONIBLE', 10, 5, 216, 'system', now(), NULL, NULL, 0),

-- ===================== ONCOLOGISTS (Specialty 11) =====================
-- Dr Rabhia (83) - REEDUCATION RADIOLOGIE (12)
(131, 45, 'ONC-001', '2026-05-27 09:00:00', 'DISPONIBLE', 11, 12, 83, 'system', now(), NULL, NULL, 0),
(132, 45, 'ONC-002', '2026-05-29 09:00:00', 'DISPONIBLE', 11, 12, 83, 'system', now(), NULL, NULL, 0),
(133, 45, 'ONC-003', '2026-06-01 09:00:00', 'DISPONIBLE', 11, 12, 83, 'system', now(), NULL, NULL, 0),

-- Dr Cherifi (217) - BEN AKNOUN (4)
(134, 45, 'ONC-004', '2026-05-28 14:00:00', 'DISPONIBLE', 11, 4, 217, 'system', now(), NULL, NULL, 0),
(135, 45, 'ONC-005', '2026-05-30 14:00:00', 'DISPONIBLE', 11, 4, 217, 'system', now(), NULL, NULL, 0),

-- Dr Bouali (218) - BLIDA (9)
(136, 45, 'ONC-006', '2026-05-27 14:00:00', 'DISPONIBLE', 11, 9, 218, 'system', now(), NULL, NULL, 0),
(137, 45, 'ONC-007', '2026-05-29 14:00:00', 'DISPONIBLE', 11, 9, 218, 'system', now(), NULL, NULL, 0),

-- ===================== GENERAL SURGEONS (Specialty 13) =====================
-- Dr Abbou (55) - BEN AKNOUN (4)
(138, 45, 'CHIR-001', '2026-05-27 09:00:00', 'DISPONIBLE', 13, 4, 55, 'system', now(), NULL, NULL, 0),
(139, 45, 'CHIR-002', '2026-05-29 09:00:00', 'DISPONIBLE', 13, 4, 55, 'system', now(), NULL, NULL, 0),
(140, 45, 'CHIR-003', '2026-06-01 09:00:00', 'DISPONIBLE', 13, 4, 55, 'system', now(), NULL, NULL, 0),

-- Dr Zerroug (219) - GUE DE CONSTANTINE (5)
(141, 45, 'CHIR-004', '2026-05-28 09:00:00', 'DISPONIBLE', 13, 5, 219, 'system', now(), NULL, NULL, 0),
(142, 45, 'CHIR-005', '2026-05-30 09:00:00', 'DISPONIBLE', 13, 5, 219, 'system', now(), NULL, NULL, 0),

-- Dr Lounis (220) - RUISSEAU (6)
(143, 45, 'CHIR-006', '2026-05-27 14:00:00', 'DISPONIBLE', 13, 6, 220, 'system', now(), NULL, NULL, 0),
(144, 45, 'CHIR-007', '2026-05-29 14:00:00', 'DISPONIBLE', 13, 6, 220, 'system', now(), NULL, NULL, 0),
(145, 45, 'CHIR-008', '2026-06-01 14:00:00', 'DISPONIBLE', 13, 6, 220, 'system', now(), NULL, NULL, 0),

-- ===================== ENDOCRINOLOGISTS (Specialty 14) =====================
-- Pr Rahal (41) - BEN AKNOUN (4)
(146, 30, 'END-001', '2026-05-27 09:00:00', 'DISPONIBLE', 14, 4, 41, 'system', now(), NULL, NULL, 0),
(147, 30, 'END-002', '2026-05-29 09:00:00', 'DISPONIBLE', 14, 4, 41, 'system', now(), NULL, NULL, 0),
(148, 30, 'END-003', '2026-06-01 09:00:00', 'DISPONIBLE', 14, 4, 41, 'system', now(), NULL, NULL, 0),

-- Dr Kherraba (42) - BLIDA (9)
(149, 30, 'END-004', '2026-05-28 09:00:00', 'DISPONIBLE', 14, 9, 42, 'system', now(), NULL, NULL, 0),
(150, 30, 'END-005', '2026-05-30 09:00:00', 'DISPONIBLE', 14, 9, 42, 'system', now(), NULL, NULL, 0),

-- Dr Chabane (43) - TIZI OUZOU (10)
(151, 30, 'END-006', '2026-05-27 09:00:00', 'DISPONIBLE', 14, 10, 43, 'system', now(), NULL, NULL, 0),
(152, 30, 'END-007', '2026-05-29 09:00:00', 'DISPONIBLE', 14, 10, 43, 'system', now(), NULL, NULL, 0),
(153, 30, 'END-008', '2026-06-01 09:00:00', 'DISPONIBLE', 14, 10, 43, 'system', now(), NULL, NULL, 0),

-- Pr Hadjarab (44) - GUE DE CONSTANTINE (5)
(154, 30, 'END-009', '2026-05-28 14:00:00', 'DISPONIBLE', 14, 5, 44, 'system', now(), NULL, NULL, 0),
(155, 30, 'END-010', '2026-05-30 14:00:00', 'DISPONIBLE', 14, 5, 44, 'system', now(), NULL, NULL, 0),

-- Dr Nacer (45) - RUISSEAU (6)
(156, 30, 'END-011', '2026-05-27 09:00:00', 'DISPONIBLE', 14, 6, 45, 'system', now(), NULL, NULL, 0),
(157, 30, 'END-012', '2026-05-29 09:00:00', 'DISPONIBLE', 14, 6, 45, 'system', now(), NULL, NULL, 0),

-- Dr Sissaoui (46) - KHELIFA BOUKHALFA (7)
(158, 30, 'END-013', '2026-05-28 09:00:00', 'DISPONIBLE', 14, 7, 46, 'system', now(), NULL, NULL, 0),
(159, 30, 'END-014', '2026-05-30 09:00:00', 'DISPONIBLE', 14, 7, 46, 'system', now(), NULL, NULL, 0),
(160, 30, 'END-015', '2026-06-02 09:00:00', 'DISPONIBLE', 14, 7, 46, 'system', now(), NULL, NULL, 0),

-- Pr Meftah (47) - ALGER NORD (8)
(161, 30, 'END-016', '2026-05-27 14:00:00', 'DISPONIBLE', 14, 8, 47, 'system', now(), NULL, NULL, 0),
(162, 30, 'END-017', '2026-05-29 14:00:00', 'DISPONIBLE', 14, 8, 47, 'system', now(), NULL, NULL, 0),

-- Pr Nabti (48) - LABORATOIRE HASSIBA (11)
(163, 30, 'END-018', '2026-05-28 09:00:00', 'DISPONIBLE', 14, 11, 48, 'system', now(), NULL, NULL, 0),
(164, 30, 'END-019', '2026-05-30 09:00:00', 'DISPONIBLE', 14, 11, 48, 'system', now(), NULL, NULL, 0),

-- ===================== HEMATOLOGISTS (Specialty 16) =====================
-- Dr Boukhemia (82) - BEN AKNOUN (4)
(165, 30, 'HEM-001', '2026-05-29 09:00:00', 'DISPONIBLE', 16, 4, 82, 'system', now(), NULL, NULL, 0),
(166, 30, 'HEM-002', '2026-06-01 09:00:00', 'DISPONIBLE', 16, 4, 82, 'system', now(), NULL, NULL, 0),

-- Dr Gharbi (221) - REEDUCATION RADIOLOGIE (12)
(167, 30, 'HEM-003', '2026-05-28 09:00:00', 'DISPONIBLE', 16, 12, 221, 'system', now(), NULL, NULL, 0),
(168, 30, 'HEM-004', '2026-05-30 09:00:00', 'DISPONIBLE', 16, 12, 221, 'system', now(), NULL, NULL, 0),

-- ===================== ENT SPECIALISTS (Specialty 17) =====================
-- Dr Bouhdiche (58) - BEN AKNOUN (4)
(169, 30, 'ORL-001', '2026-05-27 09:00:00', 'DISPONIBLE', 17, 4, 58, 'system', now(), NULL, NULL, 0),
(170, 30, 'ORL-002', '2026-05-29 09:00:00', 'DISPONIBLE', 17, 4, 58, 'system', now(), NULL, NULL, 0),
(171, 30, 'ORL-003', '2026-06-01 09:00:00', 'DISPONIBLE', 17, 4, 58, 'system', now(), NULL, NULL, 0),

-- Dr Boutiba (59) - BLIDA (9)
(172, 30, 'ORL-004', '2026-05-28 09:00:00', 'DISPONIBLE', 17, 9, 59, 'system', now(), NULL, NULL, 0),
(173, 30, 'ORL-005', '2026-05-30 09:00:00', 'DISPONIBLE', 17, 9, 59, 'system', now(), NULL, NULL, 0),
(174, 30, 'ORL-006', '2026-06-02 09:00:00', 'DISPONIBLE', 17, 9, 59, 'system', now(), NULL, NULL, 0),

-- Dr Moussaoui (60) - GUE DE CONSTANTINE (5)
(175, 30, 'ORL-007', '2026-05-27 14:00:00', 'DISPONIBLE', 17, 5, 60, 'system', now(), NULL, NULL, 0),
(176, 30, 'ORL-008', '2026-05-29 14:00:00', 'DISPONIBLE', 17, 5, 60, 'system', now(), NULL, NULL, 0),

-- Dr Derradj (65) - RUISSEAU (6)
(177, 30, 'ORL-009', '2026-05-28 09:00:00', 'DISPONIBLE', 17, 6, 65, 'system', now(), NULL, NULL, 0),
(178, 30, 'ORL-010', '2026-05-30 09:00:00', 'DISPONIBLE', 17, 6, 65, 'system', now(), NULL, NULL, 0),

-- Dr Fissah (66) - TIZI OUZOU (10)
(179, 30, 'ORL-011', '2026-05-27 14:00:00', 'DISPONIBLE', 17, 10, 66, 'system', now(), NULL, NULL, 0),
(180, 30, 'ORL-012', '2026-05-29 14:00:00', 'DISPONIBLE', 17, 10, 66, 'system', now(), NULL, NULL, 0),
(181, 30, 'ORL-013', '2026-06-01 14:00:00', 'DISPONIBLE', 17, 10, 66, 'system', now(), NULL, NULL, 0),

-- Dr Houacine (67) - KHELIFA BOUKHALFA (7)
(182, 30, 'ORL-014', '2026-05-28 09:00:00', 'DISPONIBLE', 17, 7, 67, 'system', now(), NULL, NULL, 0),
(183, 30, 'ORL-015', '2026-05-30 09:00:00', 'DISPONIBLE', 17, 7, 67, 'system', now(), NULL, NULL, 0),

-- Dr Boudoucha (68) - ALGER NORD (8)
(184, 30, 'ORL-016', '2026-05-27 09:00:00', 'DISPONIBLE', 17, 8, 68, 'system', now(), NULL, NULL, 0),
(185, 30, 'ORL-017', '2026-05-29 09:00:00', 'DISPONIBLE', 17, 8, 68, 'system', now(), NULL, NULL, 0),
(186, 30, 'ORL-018', '2026-06-01 09:00:00', 'DISPONIBLE', 17, 8, 68, 'system', now(), NULL, NULL, 0),

-- Dr Mokhtari (222) - LABORATOIRE HASSIBA (11)
(187, 30, 'ORL-019', '2026-05-29 14:00:00', 'DISPONIBLE', 17, 11, 222, 'system', now(), NULL, NULL, 0),
(188, 30, 'ORL-020', '2026-06-01 14:00:00', 'DISPONIBLE', 17, 11, 222, 'system', now(), NULL, NULL, 0),

-- ===================== PSYCHOLOGISTS (Specialty 19) =====================
-- Dr Mechtaoui (85) - ORTHOPHONIE (13)
(189, 45, 'PCH-001', '2026-05-27 10:00:00', 'DISPONIBLE', 19, 13, 85, 'system', now(), NULL, NULL, 0),
(190, 45, 'PCH-002', '2026-05-29 10:00:00', 'DISPONIBLE', 19, 13, 85, 'system', now(), NULL, NULL, 0),
(191, 45, 'PCH-003', '2026-06-01 10:00:00', 'DISPONIBLE', 19, 13, 85, 'system', now(), NULL, NULL, 0),

-- Dr Bellout (86) - REEDUCATION RADIOLOGIE (12)
(192, 45, 'PCH-004', '2026-05-28 14:00:00', 'DISPONIBLE', 19, 12, 86, 'system', now(), NULL, NULL, 0),
(193, 45, 'PCH-005', '2026-05-30 14:00:00', 'DISPONIBLE', 19, 12, 86, 'system', now(), NULL, NULL, 0),

-- Dr Boudia (223) - BEN AKNOUN (4)
(194, 45, 'PCH-006', '2026-05-28 09:00:00', 'DISPONIBLE', 19, 4, 223, 'system', now(), NULL, NULL, 0),
(195, 45, 'PCH-007', '2026-05-30 09:00:00', 'DISPONIBLE', 19, 4, 223, 'system', now(), NULL, NULL, 0),

-- Dr Kaci (224) - BLIDA (9)
(196, 45, 'PCH-008', '2026-05-27 14:00:00', 'DISPONIBLE', 19, 9, 224, 'system', now(), NULL, NULL, 0),
(197, 45, 'PCH-009', '2026-05-29 14:00:00', 'DISPONIBLE', 19, 9, 224, 'system', now(), NULL, NULL, 0),

-- ===================== SENOLOGISTS (Specialty 20) =====================
-- Dr Bouadou (80) - BEN AKNOUN (4)
(198, 30, 'SEN-001', '2026-05-27 14:00:00', 'DISPONIBLE', 20, 4, 80, 'system', now(), NULL, NULL, 0),
(199, 30, 'SEN-002', '2026-05-29 14:00:00', 'DISPONIBLE', 20, 4, 80, 'system', now(), NULL, NULL, 0),
(200, 30, 'SEN-003', '2026-06-01 14:00:00', 'DISPONIBLE', 20, 4, 80, 'system', now(), NULL, NULL, 0),

-- Dr Boughazala (81) - GUE DE CONSTANTINE (5)
(201, 30, 'SEN-004', '2026-05-28 09:00:00', 'DISPONIBLE', 20, 5, 81, 'system', now(), NULL, NULL, 0),
(202, 30, 'SEN-005', '2026-05-30 09:00:00', 'DISPONIBLE', 20, 5, 81, 'system', now(), NULL, NULL, 0),

-- Dr Mammeri (225) - TIZI OUZOU (10)
(203, 30, 'SEN-006', '2026-05-28 14:00:00', 'DISPONIBLE', 20, 10, 225, 'system', now(), NULL, NULL, 0),
(204, 30, 'SEN-007', '2026-05-30 14:00:00', 'DISPONIBLE', 20, 10, 225, 'system', now(), NULL, NULL, 0),

-- ===================== UROLOGISTS (Specialty 21) =====================
-- Dr Rezkallah (76) - BEN AKNOUN (4)
(205, 30, 'URO-001', '2026-05-27 09:00:00', 'DISPONIBLE', 21, 4, 76, 'system', now(), NULL, NULL, 0),
(206, 30, 'URO-002', '2026-05-29 09:00:00', 'DISPONIBLE', 21, 4, 76, 'system', now(), NULL, NULL, 0),
(207, 30, 'URO-003', '2026-06-01 09:00:00', 'DISPONIBLE', 21, 4, 76, 'system', now(), NULL, NULL, 0),

-- Dr Benali (77) - BLIDA (9)
(208, 30, 'URO-004', '2026-05-28 09:00:00', 'DISPONIBLE', 21, 9, 77, 'system', now(), NULL, NULL, 0),
(209, 30, 'URO-005', '2026-05-30 09:00:00', 'DISPONIBLE', 21, 9, 77, 'system', now(), NULL, NULL, 0),

-- Dr Krim (78) - RUISSEAU (6)
(210, 30, 'URO-006', '2026-05-27 14:00:00', 'DISPONIBLE', 21, 6, 78, 'system', now(), NULL, NULL, 0),
(211, 30, 'URO-007', '2026-05-29 14:00:00', 'DISPONIBLE', 21, 6, 78, 'system', now(), NULL, NULL, 0),

-- Dr Djemai (226) - KHELIFA BOUKHALFA (7)
(212, 30, 'URO-008', '2026-05-28 09:00:00', 'DISPONIBLE', 21, 7, 226, 'system', now(), NULL, NULL, 0),
(213, 30, 'URO-009', '2026-05-30 09:00:00', 'DISPONIBLE', 21, 7, 226, 'system', now(), NULL, NULL, 0),
(214, 30, 'URO-010', '2026-06-02 09:00:00', 'DISPONIBLE', 21, 7, 226, 'system', now(), NULL, NULL, 0),

-- ===================== REHABILITATION (Specialty 22) =====================
-- Dr Addi (91) - REEDUCATION RADIOLOGIE (12)
(215, 45, 'REF-001', '2026-05-27 09:00:00', 'DISPONIBLE', 22, 12, 91, 'system', now(), NULL, NULL, 0),
(216, 45, 'REF-002', '2026-05-29 09:00:00', 'DISPONIBLE', 22, 12, 91, 'system', now(), NULL, NULL, 0),
(217, 45, 'REF-003', '2026-06-01 09:00:00', 'DISPONIBLE', 22, 12, 91, 'system', now(), NULL, NULL, 0),

-- Dr Ghalmi (92) - ORTHOPHONIE (13)
(218, 45, 'REF-004', '2026-05-28 09:00:00', 'DISPONIBLE', 22, 13, 92, 'system', now(), NULL, NULL, 0),
(219, 45, 'REF-005', '2026-05-30 09:00:00', 'DISPONIBLE', 22, 13, 92, 'system', now(), NULL, NULL, 0),

-- Dr Beldjoudi (93) - BEN AKNOUN (4)
(220, 45, 'REF-006', '2026-05-28 14:00:00', 'DISPONIBLE', 22, 4, 93, 'system', now(), NULL, NULL, 0),
(221, 45, 'REF-007', '2026-05-30 14:00:00', 'DISPONIBLE', 22, 4, 93, 'system', now(), NULL, NULL, 0),

-- Dr Brahimi (227) - GUE DE CONSTANTINE (5)
(222, 45, 'REF-008', '2026-05-27 09:00:00', 'DISPONIBLE', 22, 5, 227, 'system', now(), NULL, NULL, 0),
(223, 45, 'REF-009', '2026-05-29 09:00:00', 'DISPONIBLE', 22, 5, 227, 'system', now(), NULL, NULL, 0),

-- ===================== ORTHOPEDISTS (Specialty 24) =====================
-- Dr Lamouchi (100) - BEN AKNOUN (4)
(224, 30, 'ORT-001', '2026-05-27 09:00:00', 'DISPONIBLE', 24, 4, 100, 'system', now(), NULL, NULL, 0),
(225, 30, 'ORT-002', '2026-05-29 09:00:00', 'DISPONIBLE', 24, 4, 100, 'system', now(), NULL, NULL, 0),
(226, 30, 'ORT-003', '2026-06-01 09:00:00', 'DISPONIBLE', 24, 4, 100, 'system', now(), NULL, NULL, 0),

-- Dr Yakoubi (101) - BLIDA (9)
(227, 30, 'ORT-004', '2026-05-28 09:00:00', 'DISPONIBLE', 24, 9, 101, 'system', now(), NULL, NULL, 0),
(228, 30, 'ORT-005', '2026-05-30 09:00:00', 'DISPONIBLE', 24, 9, 101, 'system', now(), NULL, NULL, 0),
(229, 30, 'ORT-006', '2026-06-02 09:00:00', 'DISPONIBLE', 24, 9, 101, 'system', now(), NULL, NULL, 0),

-- Dr Amrane (102) - GUE DE CONSTANTINE (5)
(230, 30, 'ORT-007', '2026-05-27 14:00:00', 'DISPONIBLE', 24, 5, 102, 'system', now(), NULL, NULL, 0),
(231, 30, 'ORT-008', '2026-05-29 14:00:00', 'DISPONIBLE', 24, 5, 102, 'system', now(), NULL, NULL, 0),
(232, 30, 'ORT-009', '2026-06-01 14:00:00', 'DISPONIBLE', 24, 5, 102, 'system', now(), NULL, NULL, 0),

-- Dr Larkem (103) - RUISSEAU (6)
(233, 30, 'ORT-010', '2026-05-28 09:00:00', 'DISPONIBLE', 24, 6, 103, 'system', now(), NULL, NULL, 0),
(234, 30, 'ORT-011', '2026-05-30 09:00:00', 'DISPONIBLE', 24, 6, 103, 'system', now(), NULL, NULL, 0),

-- Dr Guessab (228) - TIZI OUZOU (10)
(235, 30, 'ORT-012', '2026-05-27 09:00:00', 'DISPONIBLE', 24, 10, 228, 'system', now(), NULL, NULL, 0),
(236, 30, 'ORT-013', '2026-05-29 09:00:00', 'DISPONIBLE', 24, 10, 228, 'system', now(), NULL, NULL, 0),

-- ===================== PEDO PSYCHIATRISTS (Specialty 25) =====================
-- Dr Guenniche (98) - ORTHOPHONIE (13)
(237, 45, 'PEP-001', '2026-05-27 14:00:00', 'DISPONIBLE', 25, 13, 98, 'system', now(), NULL, NULL, 0),
(238, 45, 'PEP-002', '2026-05-29 14:00:00', 'DISPONIBLE', 25, 13, 98, 'system', now(), NULL, NULL, 0),
(239, 45, 'PEP-003', '2026-06-01 14:00:00', 'DISPONIBLE', 25, 13, 98, 'system', now(), NULL, NULL, 0),

-- Dr Khelladi (229) - REEDUCATION RADIOLOGIE (12)
(240, 45, 'PEP-004', '2026-05-28 09:00:00', 'DISPONIBLE', 25, 12, 229, 'system', now(), NULL, NULL, 0),
(241, 45, 'PEP-005', '2026-05-30 09:00:00', 'DISPONIBLE', 25, 12, 229, 'system', now(), NULL, NULL, 0),

-- ===================== RADIOLOGISTS (Specialty 26) =====================
-- Dr Benchohra (230) - REEDUCATION RADIOLOGIE (12)
(242, 30, 'RAD-001', '2026-05-27 09:00:00', 'DISPONIBLE', 26, 12, 230, 'system', now(), NULL, NULL, 0),
(243, 30, 'RAD-002', '2026-05-29 09:00:00', 'DISPONIBLE', 26, 12, 230, 'system', now(), NULL, NULL, 0),
(244, 30, 'RAD-003', '2026-06-01 09:00:00', 'DISPONIBLE', 26, 12, 230, 'system', now(), NULL, NULL, 0),

-- Dr Touati (231) - BEN AKNOUN (4)
(245, 30, 'RAD-004', '2026-05-28 09:00:00', 'DISPONIBLE', 26, 4, 231, 'system', now(), NULL, NULL, 0),
(246, 30, 'RAD-005', '2026-05-30 09:00:00', 'DISPONIBLE', 26, 4, 231, 'system', now(), NULL, NULL, 0),

-- Dr Mebarki (232) - BLIDA (9)
(247, 30, 'RAD-006', '2026-05-27 14:00:00', 'DISPONIBLE', 26, 9, 232, 'system', now(), NULL, NULL, 0),
(248, 30, 'RAD-007', '2026-05-29 14:00:00', 'DISPONIBLE', 26, 9, 232, 'system', now(), NULL, NULL, 0),
(249, 30, 'RAD-008', '2026-06-01 14:00:00', 'DISPONIBLE', 26, 9, 232, 'system', now(), NULL, NULL, 0),

-- ===================== SPEECH THERAPISTS (Specialty 27) =====================
-- Dr Boudraa (99) - ORTHOPHONIE (13)
(250, 45, 'PHO-001', '2026-05-27 09:00:00', 'DISPONIBLE', 27, 13, 99, 'system', now(), NULL, NULL, 0),
(251, 45, 'PHO-002', '2026-05-29 09:00:00', 'DISPONIBLE', 27, 13, 99, 'system', now(), NULL, NULL, 0),
(252, 45, 'PHO-003', '2026-06-01 09:00:00', 'DISPONIBLE', 27, 13, 99, 'system', now(), NULL, NULL, 0),

-- Dr Bensaid (233) - REEDUCATION RADIOLOGIE (12)
(253, 45, 'PHO-004', '2026-05-28 14:00:00', 'DISPONIBLE', 27, 12, 233, 'system', now(), NULL, NULL, 0),
(254, 45, 'PHO-005', '2026-05-30 14:00:00', 'DISPONIBLE', 27, 12, 233, 'system', now(), NULL, NULL, 0),

-- ===================== DENTAL SURGEONS (Specialty 30) =====================
-- Dr Khelifati (7) - BEN AKNOUN (4)
(255, 30, 'DEN-001', '2026-05-27 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
(256, 30, 'DEN-002', '2026-05-29 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
(257, 30, 'DEN-003', '2026-06-01 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),

-- Dr Berrami (25) - BLIDA (9)
(258, 30, 'DEN-004', '2026-05-28 09:00:00', 'DISPONIBLE', 30, 9, 25, 'system', now(), NULL, NULL, 0),
(259, 30, 'DEN-005', '2026-05-30 09:00:00', 'DISPONIBLE', 30, 9, 25, 'system', now(), NULL, NULL, 0),
(260, 30, 'DEN-006', '2026-06-02 09:00:00', 'DISPONIBLE', 30, 9, 25, 'system', now(), NULL, NULL, 0),

-- Dr Bensalem (234) - GUE DE CONSTANTINE (5)
(261, 30, 'DEN-007', '2026-05-27 14:00:00', 'DISPONIBLE', 30, 5, 234, 'system', now(), NULL, NULL, 0),
(262, 30, 'DEN-008', '2026-05-29 14:00:00', 'DISPONIBLE', 30, 5, 234, 'system', now(), NULL, NULL, 0),

-- Dr Kerroumi (235) - TIZI OUZOU (10)
(263, 30, 'DEN-009', '2026-05-28 09:00:00', 'DISPONIBLE', 30, 10, 235, 'system', now(), NULL, NULL, 0),
(264, 30, 'DEN-010', '2026-05-30 09:00:00', 'DISPONIBLE', 30, 10, 235, 'system', now(), NULL, NULL, 0),

-- ===================== NURSES (Specialty 31) =====================
-- Inf Hamidi (11) - BEN AKNOUN (4)
(265, 60, 'INF-001', '2026-05-27 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(266, 60, 'INF-002', '2026-05-27 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(267, 60, 'INF-003', '2026-05-28 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(268, 60, 'INF-004', '2026-05-28 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(269, 60, 'INF-005', '2026-05-29 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(270, 60, 'INF-006', '2026-05-29 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(271, 60, 'INF-007', '2026-05-30 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(272, 60, 'INF-008', '2026-05-30 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(273, 60, 'INF-009', '2026-06-01 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(274, 60, 'INF-010', '2026-06-01 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(275, 60, 'INF-011', '2026-06-02 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
(276, 60, 'INF-012', '2026-06-03 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),

-- Inf Boumaza (236) - BLIDA (9)
(277, 60, 'INF-013', '2026-05-27 08:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(278, 60, 'INF-014', '2026-05-27 10:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(279, 60, 'INF-015', '2026-05-28 08:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(280, 60, 'INF-016', '2026-05-28 10:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(281, 60, 'INF-017', '2026-05-29 08:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(282, 60, 'INF-018', '2026-05-29 10:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(283, 60, 'INF-019', '2026-05-30 08:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(284, 60, 'INF-020', '2026-05-30 10:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),
(285, 60, 'INF-021', '2026-06-01 08:00:00', 'DISPONIBLE', 31, 9, 236, 'system', now(), NULL, NULL, 0),

-- Inf Zerguine (237) - GUE DE CONSTANTINE (5)
(286, 60, 'INF-022', '2026-05-27 08:00:00', 'DISPONIBLE', 31, 5, 237, 'system', now(), NULL, NULL, 0),
(287, 60, 'INF-023', '2026-05-27 10:00:00', 'DISPONIBLE', 31, 5, 237, 'system', now(), NULL, NULL, 0),
(288, 60, 'INF-024', '2026-05-29 08:00:00', 'DISPONIBLE', 31, 5, 237, 'system', now(), NULL, NULL, 0),
(289, 60, 'INF-025', '2026-05-29 10:00:00', 'DISPONIBLE', 31, 5, 237, 'system', now(), NULL, NULL, 0),
(290, 60, 'INF-026', '2026-06-01 08:00:00', 'DISPONIBLE', 31, 5, 237, 'system', now(), NULL, NULL, 0),
(291, 60, 'INF-027', '2026-06-01 10:00:00', 'DISPONIBLE', 31, 5, 237, 'system', now(), NULL, NULL, 0),

-- Inf Kadri (238) - RUISSEAU (6)
(292, 60, 'INF-028', '2026-05-28 08:00:00', 'DISPONIBLE', 31, 6, 238, 'system', now(), NULL, NULL, 0),
(293, 60, 'INF-029', '2026-05-28 10:00:00', 'DISPONIBLE', 31, 6, 238, 'system', now(), NULL, NULL, 0),
(294, 60, 'INF-030', '2026-05-30 08:00:00', 'DISPONIBLE', 31, 6, 238, 'system', now(), NULL, NULL, 0),
(295, 60, 'INF-031', '2026-05-30 10:00:00', 'DISPONIBLE', 31, 6, 238, 'system', now(), NULL, NULL, 0),
(296, 60, 'INF-032', '2026-06-02 08:00:00', 'DISPONIBLE', 31, 6, 238, 'system', now(), NULL, NULL, 0),

-- ===================== GENERAL PRACTITIONERS (Specialty 32) =====================
-- Dr Sihati (4) - BEN AKNOUN (4)
(297, 30, 'GEN-001', '2026-05-27 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
(298, 30, 'GEN-002', '2026-05-29 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
(299, 30, 'GEN-003', '2026-06-01 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),

-- Dr Charchour (8) - BEN AKNOUN (4)
(300, 30, 'GEN-004', '2026-05-27 09:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
(301, 30, 'GEN-005', '2026-05-27 14:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
(302, 30, 'GEN-006', '2026-05-29 09:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
(303, 30, 'GEN-007', '2026-05-30 14:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),

-- Dr Hedid (9) - BEN AKNOUN (4)
(304, 30, 'GEN-008', '2026-05-28 09:00:00', 'DISPONIBLE', 32, 4, 9, 'system', now(), NULL, NULL, 0),
(305, 30, 'GEN-009', '2026-05-28 14:00:00', 'DISPONIBLE', 32, 4, 9, 'system', now(), NULL, NULL, 0),
(306, 30, 'GEN-010', '2026-06-01 09:00:00', 'DISPONIBLE', 32, 4, 9, 'system', now(), NULL, NULL, 0),

-- Dr Redouane (24) - BLIDA (9)
(307, 30, 'GEN-011', '2026-05-27 09:00:00', 'DISPONIBLE', 32, 9, 24, 'system', now(), NULL, NULL, 0),
(308, 30, 'GEN-012', '2026-05-29 09:00:00', 'DISPONIBLE', 32, 9, 24, 'system', now(), NULL, NULL, 0),
(309, 30, 'GEN-013', '2026-06-01 09:00:00', 'DISPONIBLE', 32, 9, 24, 'system', now(), NULL, NULL, 0),

-- Dr Belgacem (26) - GUE DE CONSTANTINE (5)
(310, 30, 'GEN-014', '2026-05-28 09:00:00', 'DISPONIBLE', 32, 5, 26, 'system', now(), NULL, NULL, 0),
(311, 30, 'GEN-015', '2026-05-30 09:00:00', 'DISPONIBLE', 32, 5, 26, 'system', now(), NULL, NULL, 0),
(312, 30, 'GEN-016', '2026-06-02 09:00:00', 'DISPONIBLE', 32, 5, 26, 'system', now(), NULL, NULL, 0),

-- Dr Benbrahim (239) - RUISSEAU (6)
(313, 30, 'GEN-017', '2026-05-27 09:00:00', 'DISPONIBLE', 32, 6, 239, 'system', now(), NULL, NULL, 0),
(314, 30, 'GEN-018', '2026-05-29 09:00:00', 'DISPONIBLE', 32, 6, 239, 'system', now(), NULL, NULL, 0),
(315, 30, 'GEN-019', '2026-06-01 09:00:00', 'DISPONIBLE', 32, 6, 239, 'system', now(), NULL, NULL, 0),

-- Dr Boukhari (240) - TIZI OUZOU (10)
(316, 30, 'GEN-020', '2026-05-28 09:00:00', 'DISPONIBLE', 32, 10, 240, 'system', now(), NULL, NULL, 0),
(317, 30, 'GEN-021', '2026-05-30 09:00:00', 'DISPONIBLE', 32, 10, 240, 'system', now(), NULL, NULL, 0),

-- Dr Mebtouche (241) - KHELIFA BOUKHALFA (7)
(318, 30, 'GEN-022', '2026-05-27 14:00:00', 'DISPONIBLE', 32, 7, 241, 'system', now(), NULL, NULL, 0),
(319, 30, 'GEN-023', '2026-05-29 14:00:00', 'DISPONIBLE', 32, 7, 241, 'system', now(), NULL, NULL, 0),
(320, 30, 'GEN-024', '2026-06-01 14:00:00', 'DISPONIBLE', 32, 7, 241, 'system', now(), NULL, NULL, 0),

-- Dr Hadjeb (242) - ALGER NORD (8)
(321, 30, 'GEN-025', '2026-05-28 09:00:00', 'DISPONIBLE', 32, 8, 242, 'system', now(), NULL, NULL, 0),
(322, 30, 'GEN-026', '2026-05-30 09:00:00', 'DISPONIBLE', 32, 8, 242, 'system', now(), NULL, NULL, 0),
(323, 30, 'GEN-027', '2026-06-02 09:00:00', 'DISPONIBLE', 32, 8, 242, 'system', now(), NULL, NULL, 0),

-- Dr Mekki (243) - LABORATOIRE HASSIBA (11)
(324, 30, 'GEN-028', '2026-05-27 09:00:00', 'DISPONIBLE', 32, 11, 243, 'system', now(), NULL, NULL, 0),
(325, 30, 'GEN-029', '2026-05-29 09:00:00', 'DISPONIBLE', 32, 11, 243, 'system', now(), NULL, NULL, 0),

-- ===================== GASTROENTEROLOGISTS (Specialty 15) =====================
-- Dr Fodil (244) - BEN AKNOUN (4)
(326, 30, 'GAS-001', '2026-05-29 14:00:00', 'DISPONIBLE', 15, 4, 244, 'system', now(), NULL, NULL, 0),
(327, 30, 'GAS-002', '2026-06-01 14:00:00', 'DISPONIBLE', 15, 4, 244, 'system', now(), NULL, NULL, 0),

-- Dr Belaid (245) - BLIDA (9)
(328, 30, 'GAS-003', '2026-05-28 14:00:00', 'DISPONIBLE', 15, 9, 245, 'system', now(), NULL, NULL, 0),
(329, 30, 'GAS-004', '2026-05-30 14:00:00', 'DISPONIBLE', 15, 9, 245, 'system', now(), NULL, NULL, 0),

-- ===================== ALLERGOLOGISTS (Specialty 18) =====================
-- Dr Hamdi (246) - GUE DE CONSTANTINE (5)
(330, 30, 'ALL-001', '2026-05-29 09:00:00', 'DISPONIBLE', 18, 5, 246, 'system', now(), NULL, NULL, 0),
(331, 30, 'ALL-002', '2026-06-01 09:00:00', 'DISPONIBLE', 18, 5, 246, 'system', now(), NULL, NULL, 0),

-- Dr Messai (247) - RUISSEAU (6)
(332, 30, 'ALL-003', '2026-05-28 14:00:00', 'DISPONIBLE', 18, 6, 247, 'system', now(), NULL, NULL, 0),
(333, 30, 'ALL-004', '2026-05-30 14:00:00', 'DISPONIBLE', 18, 6, 247, 'system', now(), NULL, NULL, 0),

-- ===================== MAXILLO FACIAL (Specialty 29) =====================
-- Dr Boukhelif (248) - BEN AKNOUN (4)
(334, 45, 'MAX-001', '2026-05-30 09:00:00', 'DISPONIBLE', 29, 4, 248, 'system', now(), NULL, NULL, 0),
(335, 45, 'MAX-002', '2026-06-02 09:00:00', 'DISPONIBLE', 29, 4, 248, 'system', now(), NULL, NULL, 0),

-- Dr Tlemcani (249) - TIZI OUZOU (10)
(336, 45, 'MAX-003', '2026-05-29 14:00:00', 'DISPONIBLE', 29, 10, 249, 'system', now(), NULL, NULL, 0),
(337, 45, 'MAX-004', '2026-06-01 14:00:00', 'DISPONIBLE', 29, 10, 249, 'system', now(), NULL, NULL, 0),

-- ===================== INTERNAL MEDICINE (Specialty 12) =====================
-- Dr Bennaceur (250) - REEDUCATION RADIOLOGIE (12)
(338, 30, 'MIN-001', '2026-05-27 14:00:00', 'DISPONIBLE', 12, 12, 250, 'system', now(), NULL, NULL, 0),
(339, 30, 'MIN-002', '2026-05-29 14:00:00', 'DISPONIBLE', 12, 12, 250, 'system', now(), NULL, NULL, 0),
(340, 30, 'MIN-003', '2026-06-01 14:00:00', 'DISPONIBLE', 12, 12, 250, 'system', now(), NULL, NULL, 0),

-- Dr Larabi (251) - BEN AKNOUN (4)
(341, 30, 'MIN-004', '2026-05-29 14:00:00', 'DISPONIBLE', 12, 4, 251, 'system', now(), NULL, NULL, 0),
(342, 30, 'MIN-005', '2026-06-01 09:00:00', 'DISPONIBLE', 12, 4, 251, 'system', now(), NULL, NULL, 0),

-- Dr Zemri (252) - BLIDA (9)
(343, 30, 'MIN-006', '2026-05-27 14:00:00', 'DISPONIBLE', 12, 9, 252, 'system', now(), NULL, NULL, 0),
(344, 30, 'MIN-007', '2026-05-29 14:00:00', 'DISPONIBLE', 12, 9, 252, 'system', now(), NULL, NULL, 0),

-- ===================== HEPATOLOGISTS (Specialty 28) =====================
-- Dr Mokhtari (253) - GUE DE CONSTANTINE (5)
(345, 30, 'HEP-001', '2026-05-28 14:00:00', 'DISPONIBLE', 28, 5, 253, 'system', now(), NULL, NULL, 0),
(346, 30, 'HEP-002', '2026-05-30 14:00:00', 'DISPONIBLE', 28, 5, 253, 'system', now(), NULL, NULL, 0),

-- Dr Benaissa (254) - RUISSEAU (6)
(347, 30, 'HEP-003', '2026-05-29 09:00:00', 'DISPONIBLE', 28, 6, 254, 'system', now(), NULL, NULL, 0),
(348, 30, 'HEP-004', '2026-06-01 09:00:00', 'DISPONIBLE', 28, 6, 254, 'system', now(), NULL, NULL, 0),

-- ===================== OCCUPATIONAL THERAPISTS (Specialty 23) =====================
-- Dr Bouhired (255) - ORTHOPHONIE (13)
(349, 45, 'ERG-001', '2026-05-28 14:00:00', 'DISPONIBLE', 23, 13, 255, 'system', now(), NULL, NULL, 0),
(350, 45, 'ERG-002', '2026-05-30 14:00:00', 'DISPONIBLE', 23, 13, 255, 'system', now(), NULL, NULL, 0),

-- Dr Benkhelifa (256) - REEDUCATION RADIOLOGIE (12)
(351, 45, 'ERG-003', '2026-05-27 14:00:00', 'DISPONIBLE', 23, 12, 256, 'system', now(), NULL, NULL, 0),
(352, 45, 'ERG-004', '2026-05-29 14:00:00', 'DISPONIBLE', 23, 12, 256, 'system', now(), NULL, NULL, 0),

(500, 30, 'CAR-JUN-001', '2026-06-03 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (501, 30, 'CAR-JUN-002', '2026-06-08 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (502, 30, 'CAR-JUN-003', '2026-06-10 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (503, 30, 'CAR-JUN-004', '2026-06-15 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (504, 30, 'CAR-JUN-005', '2026-06-17 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (505, 30, 'CAR-JUN-006', '2026-06-22 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (506, 30, 'CAR-JUN-007', '2026-06-24 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (507, 30, 'CAR-JUN-008', '2026-06-29 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),

-- Dr Brahmi (34) - BEN AKNOUN (4) & GUE DE CONSTANTINE (5)
    (508, 30, 'CAR-JUN-009', '2026-06-03 10:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (509, 30, 'CAR-JUN-010', '2026-06-05 14:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (510, 30, 'CAR-JUN-011', '2026-06-05 13:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (511, 30, 'CAR-JUN-012', '2026-06-10 10:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (512, 30, 'CAR-JUN-013', '2026-06-12 14:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (513, 30, 'CAR-JUN-014', '2026-06-17 13:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (514, 30, 'CAR-JUN-015', '2026-06-19 10:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (515, 30, 'CAR-JUN-016', '2026-06-24 14:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (516, 30, 'CAR-JUN-017', '2026-06-26 13:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),

-- Dr Rami (35) - BEN AKNOUN (4) & GUE DE CONSTANTINE (5)
    (517, 30, 'CAR-JUN-018', '2026-06-04 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
    (518, 30, 'CAR-JUN-019', '2026-06-06 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
    (519, 30, 'CAR-JUN-020', '2026-06-09 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
    (520, 30, 'CAR-JUN-021', '2026-06-04 11:00:00', 'DISPONIBLE', 1, 5, 35, 'system', now(), NULL, NULL, 0),
    (521, 30, 'CAR-JUN-022', '2026-06-06 11:00:00', 'DISPONIBLE', 1, 5, 35, 'system', now(), NULL, NULL, 0),
    (522, 30, 'CAR-JUN-023', '2026-06-11 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
    (523, 30, 'CAR-JUN-024', '2026-06-13 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
    (524, 30, 'CAR-JUN-025', '2026-06-16 09:00:00', 'DISPONIBLE', 1, 4, 35, 'system', now(), NULL, NULL, 0),
    (525, 30, 'CAR-JUN-026', '2026-06-18 11:00:00', 'DISPONIBLE', 1, 5, 35, 'system', now(), NULL, NULL, 0),
    (526, 30, 'CAR-JUN-027', '2026-06-20 11:00:00', 'DISPONIBLE', 1, 5, 35, 'system', now(), NULL, NULL, 0),

-- ===================== CARDIOLOGISTS - JULY 2026 =====================
    (527, 30, 'CAR-JUL-001', '2026-07-01 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (528, 30, 'CAR-JUL-002', '2026-07-03 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (529, 30, 'CAR-JUL-003', '2026-07-06 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (530, 30, 'CAR-JUL-004', '2026-07-08 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (531, 30, 'CAR-JUL-005', '2026-07-10 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (532, 30, 'CAR-JUL-006', '2026-07-13 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (533, 30, 'CAR-JUL-007', '2026-07-15 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (534, 30, 'CAR-JUL-008', '2026-07-17 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (535, 30, 'CAR-JUL-009', '2026-07-20 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (536, 30, 'CAR-JUL-010', '2026-07-22 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (537, 30, 'CAR-JUL-011', '2026-07-24 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (538, 30, 'CAR-JUL-012', '2026-07-27 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (539, 30, 'CAR-JUL-013', '2026-07-29 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (540, 30, 'CAR-JUL-014', '2026-07-31 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),

-- Dr Brahmi (34) - JULY 2026
    (541, 30, 'CAR-JUL-015', '2026-07-01 10:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (542, 30, 'CAR-JUL-016', '2026-07-03 14:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (543, 30, 'CAR-JUL-017', '2026-07-03 13:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (544, 30, 'CAR-JUL-018', '2026-07-08 10:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (545, 30, 'CAR-JUL-019', '2026-07-10 14:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (546, 30, 'CAR-JUL-020', '2026-07-15 13:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (547, 30, 'CAR-JUL-021', '2026-07-17 10:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (548, 30, 'CAR-JUL-022', '2026-07-22 14:00:00', 'DISPONIBLE', 1, 4, 34, 'system', now(), NULL, NULL, 0),
    (549, 30, 'CAR-JUL-023', '2026-07-24 13:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),
    (550, 30, 'CAR-JUL-024', '2026-07-29 10:00:00', 'DISPONIBLE', 1, 5, 34, 'system', now(), NULL, NULL, 0),

-- ===================== CARDIOLOGISTS - AUGUST 2026 =====================
    (551, 30, 'CAR-AUG-001', '2026-08-03 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (552, 30, 'CAR-AUG-002', '2026-08-05 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (553, 30, 'CAR-AUG-003', '2026-08-07 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (554, 30, 'CAR-AUG-004', '2026-08-10 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (555, 30, 'CAR-AUG-005', '2026-08-12 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (556, 30, 'CAR-AUG-006', '2026-08-14 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (557, 30, 'CAR-AUG-007', '2026-08-17 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (558, 30, 'CAR-AUG-008', '2026-08-19 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (559, 30, 'CAR-AUG-009', '2026-08-21 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (560, 30, 'CAR-AUG-010', '2026-08-24 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (561, 30, 'CAR-AUG-011', '2026-08-26 11:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (562, 30, 'CAR-AUG-012', '2026-08-28 14:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),
    (563, 30, 'CAR-AUG-013', '2026-08-31 09:00:00', 'DISPONIBLE', 1, 4, 1, 'system', now(), NULL, NULL, 0),

-- ===================== OPHTHALMOLOGISTS (Specialty 2) - JUNE 2026 =====================
-- Dr Tabet aoul (49) - TIZI OUZOU (10)
    (564, 30, 'OPH-JUN-001', '2026-06-04 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (565, 30, 'OPH-JUN-002', '2026-06-05 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (566, 30, 'OPH-JUN-003', '2026-06-08 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (567, 30, 'OPH-JUN-004', '2026-06-09 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (568, 30, 'OPH-JUN-005', '2026-06-11 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (569, 30, 'OPH-JUN-006', '2026-06-12 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (570, 30, 'OPH-JUN-007', '2026-06-15 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (571, 30, 'OPH-JUN-008', '2026-06-16 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),

-- Dr Bennouar (50) - BLIDA (9) - JUNE 2026
    (572, 30, 'OPH-JUN-009', '2026-06-04 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
    (573, 30, 'OPH-JUN-010', '2026-06-06 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
    (574, 30, 'OPH-JUN-011', '2026-06-09 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
    (575, 30, 'OPH-JUN-012', '2026-06-11 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
    (576, 30, 'OPH-JUN-013', '2026-06-13 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
    (577, 30, 'OPH-JUN-014', '2026-06-16 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),
    (578, 30, 'OPH-JUN-015', '2026-06-18 09:00:00', 'DISPONIBLE', 2, 9, 50, 'system', now(), NULL, NULL, 0),

-- ===================== OPHTHALMOLOGISTS - JULY 2026 =====================
    (579, 30, 'OPH-JUL-001', '2026-07-02 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (580, 30, 'OPH-JUL-002', '2026-07-03 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (581, 30, 'OPH-JUL-003', '2026-07-06 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (582, 30, 'OPH-JUL-004', '2026-07-07 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (583, 30, 'OPH-JUL-005', '2026-07-09 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (584, 30, 'OPH-JUL-006', '2026-07-10 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (585, 30, 'OPH-JUL-007', '2026-07-13 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (586, 30, 'OPH-JUL-008', '2026-07-14 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (587, 30, 'OPH-JUL-009', '2026-07-16 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (588, 30, 'OPH-JUL-010', '2026-07-17 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (589, 30, 'OPH-JUL-011', '2026-07-20 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (590, 30, 'OPH-JUL-012', '2026-07-21 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (591, 30, 'OPH-JUL-013', '2026-07-23 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (592, 30, 'OPH-JUL-014', '2026-07-24 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (593, 30, 'OPH-JUL-015', '2026-07-27 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),

-- ===================== OPHTHALMOLOGISTS - AUGUST 2026 =====================
    (594, 30, 'OPH-AUG-001', '2026-08-03 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (595, 30, 'OPH-AUG-002', '2026-08-04 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (596, 30, 'OPH-AUG-003', '2026-08-06 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (597, 30, 'OPH-AUG-004', '2026-08-07 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (598, 30, 'OPH-AUG-005', '2026-08-10 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (599, 30, 'OPH-AUG-006', '2026-08-11 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (600, 30, 'OPH-AUG-007', '2026-08-13 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (601, 30, 'OPH-AUG-008', '2026-08-14 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (602, 30, 'OPH-AUG-009', '2026-08-17 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (603, 30, 'OPH-AUG-010', '2026-08-18 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (604, 30, 'OPH-AUG-011', '2026-08-20 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (605, 30, 'OPH-AUG-012', '2026-08-21 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (606, 30, 'OPH-AUG-013', '2026-08-24 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),
    (607, 30, 'OPH-AUG-014', '2026-08-25 10:00:00', 'DISPONIBLE', 2, 10, 49, 'system', now(), NULL, NULL, 0),

-- ===================== GENERAL PRACTITIONERS (Specialty 32) - JUNE 2026 =====================
-- Dr Sihati (4) - BEN AKNOUN (4)
    (608, 30, 'GEN-JUN-001', '2026-06-03 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (609, 30, 'GEN-JUN-002', '2026-06-05 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (610, 30, 'GEN-JUN-003', '2026-06-08 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (611, 30, 'GEN-JUN-004', '2026-06-10 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (612, 30, 'GEN-JUN-005', '2026-06-12 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (613, 30, 'GEN-JUN-006', '2026-06-15 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (614, 30, 'GEN-JUN-007', '2026-06-17 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (615, 30, 'GEN-JUN-008', '2026-06-19 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (616, 30, 'GEN-JUN-009', '2026-06-22 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (617, 30, 'GEN-JUN-010', '2026-06-24 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (618, 30, 'GEN-JUN-011', '2026-06-26 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (619, 30, 'GEN-JUN-012', '2026-06-29 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),

-- Dr Charchour (8) - BEN AKNOUN (4) - JUNE 2026
    (620, 30, 'GEN-JUN-013', '2026-06-03 09:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
    (621, 30, 'GEN-JUN-014', '2026-06-03 14:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
    (622, 30, 'GEN-JUN-015', '2026-06-05 09:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
    (623, 30, 'GEN-JUN-016', '2026-06-06 14:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
    (624, 30, 'GEN-JUN-017', '2026-06-08 09:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
    (625, 30, 'GEN-JUN-018', '2026-06-10 14:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
    (626, 30, 'GEN-JUN-019', '2026-06-12 09:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),
    (627, 30, 'GEN-JUN-020', '2026-06-13 14:00:00', 'DISPONIBLE', 32, 4, 8, 'system', now(), NULL, NULL, 0),

-- ===================== GENERAL PRACTITIONERS - JULY 2026 =====================
    (628, 30, 'GEN-JUL-001', '2026-07-01 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (629, 30, 'GEN-JUL-002', '2026-07-03 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (630, 30, 'GEN-JUL-003', '2026-07-06 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (631, 30, 'GEN-JUL-004', '2026-07-08 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (632, 30, 'GEN-JUL-005', '2026-07-10 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (633, 30, 'GEN-JUL-006', '2026-07-13 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (634, 30, 'GEN-JUL-007', '2026-07-15 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (635, 30, 'GEN-JUL-008', '2026-07-17 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (636, 30, 'GEN-JUL-009', '2026-07-20 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (637, 30, 'GEN-JUL-010', '2026-07-22 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (638, 30, 'GEN-JUL-011', '2026-07-24 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (639, 30, 'GEN-JUL-012', '2026-07-27 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (640, 30, 'GEN-JUL-013', '2026-07-29 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (641, 30, 'GEN-JUL-014', '2026-07-31 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),

-- ===================== GENERAL PRACTITIONERS - AUGUST 2026 =====================
    (642, 30, 'GEN-AUG-001', '2026-08-03 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (643, 30, 'GEN-AUG-002', '2026-08-05 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (644, 30, 'GEN-AUG-003', '2026-08-07 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (645, 30, 'GEN-AUG-004', '2026-08-10 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (646, 30, 'GEN-AUG-005', '2026-08-12 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (647, 30, 'GEN-AUG-006', '2026-08-14 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (648, 30, 'GEN-AUG-007', '2026-08-17 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (649, 30, 'GEN-AUG-008', '2026-08-19 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (650, 30, 'GEN-AUG-009', '2026-08-21 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (651, 30, 'GEN-AUG-010', '2026-08-24 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (652, 30, 'GEN-AUG-011', '2026-08-26 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (653, 30, 'GEN-AUG-012', '2026-08-28 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),
    (654, 30, 'GEN-AUG-013', '2026-08-31 09:00:00', 'DISPONIBLE', 32, 4, 4, 'system', now(), NULL, NULL, 0),

-- ===================== PEDIATRICIANS (Specialty 4) - JUNE 2026 =====================
-- Dr Saadi (69) - BLIDA (9)
    (655, 30, 'PED-JUN-001', '2026-06-03 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (656, 30, 'PED-JUN-002', '2026-06-05 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (657, 30, 'PED-JUN-003', '2026-06-08 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (658, 30, 'PED-JUN-004', '2026-06-10 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (659, 30, 'PED-JUN-005', '2026-06-12 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (660, 30, 'PED-JUN-006', '2026-06-15 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (661, 30, 'PED-JUN-007', '2026-06-17 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (662, 30, 'PED-JUN-008', '2026-06-19 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (663, 30, 'PED-JUN-009', '2026-06-22 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (664, 30, 'PED-JUN-010', '2026-06-24 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (665, 30, 'PED-JUN-011', '2026-06-26 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (666, 30, 'PED-JUN-012', '2026-06-29 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),

-- ===================== PEDIATRICIANS - JULY 2026 =====================
    (667, 30, 'PED-JUL-001', '2026-07-01 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (668, 30, 'PED-JUL-002', '2026-07-03 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (669, 30, 'PED-JUL-003', '2026-07-06 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (670, 30, 'PED-JUL-004', '2026-07-08 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (671, 30, 'PED-JUL-005', '2026-07-10 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (672, 30, 'PED-JUL-006', '2026-07-13 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (673, 30, 'PED-JUL-007', '2026-07-15 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (674, 30, 'PED-JUL-008', '2026-07-17 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (675, 30, 'PED-JUL-009', '2026-07-20 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (676, 30, 'PED-JUL-010', '2026-07-22 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (677, 30, 'PED-JUL-011', '2026-07-24 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (678, 30, 'PED-JUL-012', '2026-07-27 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (679, 30, 'PED-JUL-013', '2026-07-29 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (680, 30, 'PED-JUL-014', '2026-07-31 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),

-- ===================== PEDIATRICIANS - AUGUST 2026 =====================
    (681, 30, 'PED-AUG-001', '2026-08-03 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (682, 30, 'PED-AUG-002', '2026-08-05 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (683, 30, 'PED-AUG-003', '2026-08-07 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (684, 30, 'PED-AUG-004', '2026-08-10 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (685, 30, 'PED-AUG-005', '2026-08-12 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (686, 30, 'PED-AUG-006', '2026-08-14 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (687, 30, 'PED-AUG-007', '2026-08-17 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (688, 30, 'PED-AUG-008', '2026-08-19 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (689, 30, 'PED-AUG-009', '2026-08-21 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (690, 30, 'PED-AUG-010', '2026-08-24 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (691, 30, 'PED-AUG-011', '2026-08-26 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (692, 30, 'PED-AUG-012', '2026-08-28 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),
    (693, 30, 'PED-AUG-013', '2026-08-31 09:00:00', 'DISPONIBLE', 4, 9, 69, 'system', now(), NULL, NULL, 0),

-- ===================== NURSES (Specialty 31) - JUNE 2026 =====================
-- Inf Hamidi (11) - BEN AKNOUN (4) - June 2026
    (694, 60, 'INF-JUN-001', '2026-06-03 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (695, 60, 'INF-JUN-002', '2026-06-03 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (696, 60, 'INF-JUN-003', '2026-06-04 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (697, 60, 'INF-JUN-004', '2026-06-04 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (698, 60, 'INF-JUN-005', '2026-06-05 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (699, 60, 'INF-JUN-006', '2026-06-05 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (700, 60, 'INF-JUN-007', '2026-06-08 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (701, 60, 'INF-JUN-008', '2026-06-08 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (702, 60, 'INF-JUN-009', '2026-06-09 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (703, 60, 'INF-JUN-010', '2026-06-09 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (704, 60, 'INF-JUN-011', '2026-06-10 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (705, 60, 'INF-JUN-012', '2026-06-10 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (706, 60, 'INF-JUN-013', '2026-06-11 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (707, 60, 'INF-JUN-014', '2026-06-11 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (708, 60, 'INF-JUN-015', '2026-06-12 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (709, 60, 'INF-JUN-016', '2026-06-12 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (710, 60, 'INF-JUN-017', '2026-06-15 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (711, 60, 'INF-JUN-018', '2026-06-15 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),

-- ===================== NURSES - JULY 2026 =====================
    (712, 60, 'INF-JUL-001', '2026-07-01 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (713, 60, 'INF-JUL-002', '2026-07-01 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (714, 60, 'INF-JUL-003', '2026-07-02 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (715, 60, 'INF-JUL-004', '2026-07-02 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (716, 60, 'INF-JUL-005', '2026-07-03 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (717, 60, 'INF-JUL-006', '2026-07-03 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (718, 60, 'INF-JUL-007', '2026-07-06 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (719, 60, 'INF-JUL-008', '2026-07-06 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (720, 60, 'INF-JUL-009', '2026-07-07 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (721, 60, 'INF-JUL-010', '2026-07-07 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (722, 60, 'INF-JUL-011', '2026-07-08 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (723, 60, 'INF-JUL-012', '2026-07-08 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (724, 60, 'INF-JUL-013', '2026-07-09 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (725, 60, 'INF-JUL-014', '2026-07-09 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (726, 60, 'INF-JUL-015', '2026-07-10 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (727, 60, 'INF-JUL-016', '2026-07-10 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),

-- ===================== NURSES - AUGUST 2026 =====================
    (728, 60, 'INF-AUG-001', '2026-08-03 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (729, 60, 'INF-AUG-002', '2026-08-03 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (730, 60, 'INF-AUG-003', '2026-08-04 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (731, 60, 'INF-AUG-004', '2026-08-04 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (732, 60, 'INF-AUG-005', '2026-08-05 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (733, 60, 'INF-AUG-006', '2026-08-05 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (734, 60, 'INF-AUG-007', '2026-08-06 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (735, 60, 'INF-AUG-008', '2026-08-06 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (736, 60, 'INF-AUG-009', '2026-08-07 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (737, 60, 'INF-AUG-010', '2026-08-07 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (738, 60, 'INF-AUG-011', '2026-08-10 08:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),
    (739, 60, 'INF-AUG-012', '2026-08-10 10:00:00', 'DISPONIBLE', 31, 4, 11, 'system', now(), NULL, NULL, 0),

-- ===================== DENTAL SURGEONS (Specialty 30) - JUNE 2026 =====================
-- Dr Khelifati (7) - BEN AKNOUN (4)
    (740, 30, 'DEN-JUN-001', '2026-06-03 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (741, 30, 'DEN-JUN-002', '2026-06-05 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (742, 30, 'DEN-JUN-003', '2026-06-08 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (743, 30, 'DEN-JUN-004', '2026-06-10 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (744, 30, 'DEN-JUN-005', '2026-06-12 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (745, 30, 'DEN-JUN-006', '2026-06-15 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (746, 30, 'DEN-JUN-007', '2026-06-17 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (747, 30, 'DEN-JUN-008', '2026-06-19 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (748, 30, 'DEN-JUN-009', '2026-06-22 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (749, 30, 'DEN-JUN-010', '2026-06-24 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (750, 30, 'DEN-JUN-011', '2026-06-26 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (751, 30, 'DEN-JUN-012', '2026-06-29 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),

-- ===================== DENTAL SURGEONS - JULY 2026 =====================
    (752, 30, 'DEN-JUL-001', '2026-07-01 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (753, 30, 'DEN-JUL-002', '2026-07-03 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (754, 30, 'DEN-JUL-003', '2026-07-06 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (755, 30, 'DEN-JUL-004', '2026-07-08 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (756, 30, 'DEN-JUL-005', '2026-07-10 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (757, 30, 'DEN-JUL-006', '2026-07-13 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (758, 30, 'DEN-JUL-007', '2026-07-15 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (759, 30, 'DEN-JUL-008', '2026-07-17 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (760, 30, 'DEN-JUL-009', '2026-07-20 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (761, 30, 'DEN-JUL-010', '2026-07-22 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (762, 30, 'DEN-JUL-011', '2026-07-24 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (763, 30, 'DEN-JUL-012', '2026-07-27 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (764, 30, 'DEN-JUL-013', '2026-07-29 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (765, 30, 'DEN-JUL-014', '2026-07-31 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),

-- ===================== DENTAL SURGEONS - AUGUST 2026 =====================
    (766, 30, 'DEN-AUG-001', '2026-08-03 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (767, 30, 'DEN-AUG-002', '2026-08-05 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (768, 30, 'DEN-AUG-003', '2026-08-07 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (769, 30, 'DEN-AUG-004', '2026-08-10 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (770, 30, 'DEN-AUG-005', '2026-08-12 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (771, 30, 'DEN-AUG-006', '2026-08-14 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (772, 30, 'DEN-AUG-007', '2026-08-17 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (773, 30, 'DEN-AUG-008', '2026-08-19 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (774, 30, 'DEN-AUG-009', '2026-08-21 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (775, 30, 'DEN-AUG-010', '2026-08-24 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (776, 30, 'DEN-AUG-011', '2026-08-26 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (777, 30, 'DEN-AUG-012', '2026-08-28 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),
    (778, 30, 'DEN-AUG-013', '2026-08-31 09:00:00', 'DISPONIBLE', 30, 4, 7, 'system', now(), NULL, NULL, 0),

-- ===================== GYNECOLOGISTS (Specialty 6) - JUNE 2026 =====================
-- Dr Regeum (61) - BEN AKNOUN (4)
    (779, 30, 'GYN-JUN-001', '2026-06-03 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (780, 30, 'GYN-JUN-002', '2026-06-05 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (781, 30, 'GYN-JUN-003', '2026-06-08 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (782, 30, 'GYN-JUN-004', '2026-06-10 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (783, 30, 'GYN-JUN-005', '2026-06-12 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (784, 30, 'GYN-JUN-006', '2026-06-15 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (785, 30, 'GYN-JUN-007', '2026-06-17 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (786, 30, 'GYN-JUN-008', '2026-06-19 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (787, 30, 'GYN-JUN-009', '2026-06-22 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (788, 30, 'GYN-JUN-010', '2026-06-24 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (789, 30, 'GYN-JUN-011', '2026-06-26 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (790, 30, 'GYN-JUN-012', '2026-06-29 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),

-- ===================== GYNECOLOGISTS - JULY 2026 =====================
    (791, 30, 'GYN-JUL-001', '2026-07-01 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (792, 30, 'GYN-JUL-002', '2026-07-03 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (793, 30, 'GYN-JUL-003', '2026-07-06 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (794, 30, 'GYN-JUL-004', '2026-07-08 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (795, 30, 'GYN-JUL-005', '2026-07-10 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (796, 30, 'GYN-JUL-006', '2026-07-13 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (797, 30, 'GYN-JUL-007', '2026-07-15 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (798, 30, 'GYN-JUL-008', '2026-07-17 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (799, 30, 'GYN-JUL-009', '2026-07-20 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (800, 30, 'GYN-JUL-010', '2026-07-22 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (801, 30, 'GYN-JUL-011', '2026-07-24 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (802, 30, 'GYN-JUL-012', '2026-07-27 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (803, 30, 'GYN-JUL-013', '2026-07-29 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (804, 30, 'GYN-JUL-014', '2026-07-31 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),

-- ===================== GYNECOLOGISTS - AUGUST 2026 =====================
    (805, 30, 'GYN-AUG-001', '2026-08-03 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (806, 30, 'GYN-AUG-002', '2026-08-05 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (807, 30, 'GYN-AUG-003', '2026-08-07 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (808, 30, 'GYN-AUG-004', '2026-08-10 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (809, 30, 'GYN-AUG-005', '2026-08-12 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (810, 30, 'GYN-AUG-006', '2026-08-14 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (811, 30, 'GYN-AUG-007', '2026-08-17 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (812, 30, 'GYN-AUG-008', '2026-08-19 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (813, 30, 'GYN-AUG-009', '2026-08-21 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (814, 30, 'GYN-AUG-010', '2026-08-24 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (815, 30, 'GYN-AUG-011', '2026-08-26 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (816, 30, 'GYN-AUG-012', '2026-08-28 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0),
    (817, 30, 'GYN-AUG-013', '2026-08-31 09:00:00', 'DISPONIBLE', 6, 4, 61, 'system', now(), NULL, NULL, 0);