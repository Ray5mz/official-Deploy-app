-- ===================== FIRST: ENSURE SPECIALTIES EXIST =====================
INSERT INTO reference.specialty (id, name, code, code_color, description, enabled, version)
VALUES
    (1, 'Cardiologie', 'CAR', 'ae0909', 'Médecine du cœur', true, 1),
    (2, 'Ophtalmologie', 'OPH', 'bc12bf', 'Soins de la vue', true, 1),
    (3, 'Dermatologie', 'DER', 'eb8347', 'Soins de la peau', true, 1),
    (4, 'Pédiatrie', 'PED', 'ffba19', 'Médecine des enfants', true, 1),
    (5, 'Psychiatrie', 'PSY', 'e585a7', 'Soins des troubles mentaux', true, 1),
    (6, 'Gynécologie', 'GYN', 'ff4772', 'Soins de la santé féminine', true, 1),
    (7, 'Neurologie', 'NEU', '743ae9', 'Soins du système nerveux', true, 1),
    (8, 'Rhumatologie', 'RHU', 'a770f5', 'Soins des articulations et muscles', true, 1),
    (9, 'Pneumologie', 'PNE', '2676ee', 'Soins des poumons et voies respiratoires', true, 1),
    (10, 'Néphrologie', 'NEP', '408ac3', 'Soins des reins', true, 1),
    (11, 'Oncologie', 'ONC', 'e5004c', 'Traitement du cancer', true, 1),
    (12, 'Médecine Interne', 'MIN', 'd09b1f', 'Soins globaux de l''adulte', true, 1),
    (13, 'Chirurgie Générale', 'CHIR', 'b85b14', 'Interventions chirurgicales générales', true, 1),
    (14, 'Endocrinologie', 'END', 'e59900', 'Soins des hormones et métabolisme', true, 1),
    (15, 'Gastrologie Entérologie', 'GAS', 'ffdd80', 'Soins de l''appareil digestif', true, 1),
    (16, 'Hématologie', 'HEM', 'edcc12', 'Étude du sang et de ses maladies', true, 1),
    (17, 'ORL', 'ORL', 'bacb01', 'Soins des oreilles, nez et gorge', true, 1),
    (18, 'Allergologie', 'ALL', '76c408', 'Traitement des allergies', true, 1),
    (19, 'Psychologie', 'PCH', '14bb6a', 'Accompagnement psychologique', true, 1),
    (20, 'Sénologie', 'SEN', '9beaa2', 'Soins du sein', true, 1),
    (21, 'Urologie', 'URO', '78e3ca', 'Soins de l''appareil urinaire', true, 1),
    (22, 'Rééducation Fonctionnelle', 'REF', '00e5bf', 'Rééducation motrice et fonctionnelle', true, 1),
    (23, 'Ergothérapie', 'ERG', '2ef0fa', 'Soins par l''activité adaptée', true, 1),
    (24, 'Orthopédie', 'ORT', '66bfff', 'Soins du squelette et des os', true, 1),
    (25, 'Pédo Psychiatrie', 'PEP', '87ade5', 'Soins psychiatriques pour enfants', true, 1),
    (26, 'Radiologie', 'RAD', '4961e6', 'Imagerie médicale', true, 1),
    (27, 'Orthophonie', 'PHO', '756adc', 'Rééducation de la parole', true, 1),
    (28, 'Hépatologie', 'HEP', 'ec80ff', 'Soins du foie', true, 1),
    (29, 'Maxillo Faciale', 'MAX', 'ec51ab', 'Chirurgie du visage et mâchoire', true, 1),
    (30, 'Chirurgie Dentaire', 'DEN', 'ee96d5', 'Soins et chirurgie dentaire', true, 1),
    (31, 'Infirmerie', 'INF', 'bfcdd9', 'Soins infirmiers généraux', true, 1),
    (32, 'Médecine Générale', 'GEN', 'a2c381', 'Médecine Générale', true, 1)
    ON CONFLICT (id) DO NOTHING;

-- ===================== THEN INSERT HEALTH PROFESSIONALS =====================
INSERT INTO reference.health_professional (id, first_name, last_name, phone_number, license_number, nick_name, specialty_id, enabled, created_by, creation_date, last_modified_by, last_modified_date, version) VALUES
-- CARDIOLOGISTS (Specialty 1)
(1, 'Karim', 'Brahmi', '0551000001', 'L0000001', 'DR Brahmi', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(34, 'Ali', 'Brahmi', '0551000034', 'L0000034', 'DR Brahmi', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(35, 'Rachid', 'Rami', '0551000035', 'L0000035', 'DR Rami', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(36, 'Sofiane', 'Chelbabi', '0551000036', 'L0000036', 'DR Chelbabi', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(38, 'Walid', 'Ghdiri', '0551000038', 'L0000038', 'DR Ghdiri', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(39, 'Leila', 'Ouafek', '0551000039', 'L0000039', 'DR Ouafek', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(40, 'Amina', 'Tiloult', '0551000040', 'L0000040', 'DR Tiloult', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(200, 'Sami', 'Benali', '0551000200', 'L0000200', 'Dr Benali', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(201, 'Nadia', 'Khelil', '0551000201', 'L0000201', 'Dr Khelil', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(202, 'Rachid', 'Zerrouki', '0551000202', 'L0000202', 'Dr Zerrouki', 1, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- OPHTHALMOLOGISTS (Specialty 2)
(49, 'Farid', 'Tabet Aoul', '0551000049', 'L0000049', 'DR Tabet aoul', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(50, 'Nassim', 'Bennouar', '0551000050', 'L0000050', 'DR Bennouar', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(51, 'Houria', 'Bouchemla', '0551000051', 'L0000051', 'DR Bouchemla', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(52, 'Kamel', 'Mellak', '0551000052', 'L0000052', 'DR Mellak', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(53, 'Riad', 'Ghouini', '0551000053', 'L0000053', 'DR Ghouini', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(54, 'Meriem', 'Touati', '0551000054', 'L0000054', 'DR Touati', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(203, 'Lyes', 'Mansouri', '0551000203', 'L0000203', 'Dr Mansouri', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(204, 'Fatima', 'Slimani', '0551000204', 'L0000204', 'Dr Slimani', 2, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- DERMATOLOGISTS (Specialty 3)
(56, 'Zineb', 'Ait Aldjet', '0551000056', 'L0000056', 'DR Ait aldjet', 3, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(57, 'Ryad', 'Azouaou', '0551000057', 'L0000057', 'DR Azouaou', 3, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(205, 'Samira', 'Haddad', '0551000205', 'L0000205', 'Dr Haddad', 3, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(206, 'Mohamed', 'Kara', '0551000206', 'L0000206', 'Dr Kara', 3, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- PEDIATRICIANS (Specialty 4)
(69, 'Lotfi', 'Saadi', '0551000069', 'L0000069', 'DR Saadi', 4, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(70, 'Hamza', 'Bouferssaoui', '0551000070', 'L0000070', 'DR Bouferssaoui', 4, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(71, 'Rania', 'Gueddoir', '0551000071', 'L0000071', 'DR Gueddoir', 4, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(72, 'Ilhem', 'Snouci', '0551000072', 'L0000072', 'DR Snouci', 4, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(73, 'Tahar', 'Haine', '0551000073', 'L0000073', 'DR Haine', 4, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(207, 'Sonia', 'Boudiaf', '0551000207', 'L0000207', 'Dr Boudiaf', 4, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- PSYCHIATRISTS (Specialty 5)
(84, 'Nawel', 'Rmessaoudi', '0551000084', 'L0000084', 'DR Rmessaoudi', 5, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(208, 'Karim', 'Boudjellal', '0551000208', 'L0000208', 'Dr Boudjellal', 5, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(209, 'Nadia', 'Chaouche', '0551000209', 'L0000209', 'Dr Chaouche', 5, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- GYNECOLOGISTS (Specialty 6)
(61, 'Fatiha', 'Regeum', '0551000061', 'L0000061', 'DR Regeum', 6, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(62, 'Asma', 'Belaiboud', '0551000062', 'L0000062', 'DR Belaiboud', 6, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(63, 'Lyes', 'Ouafi', '0551000063', 'L0000063', 'DR Ouafi', 6, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(64, 'Sara', 'Tikdjda', '0551000064', 'L0000064', 'DR Tikdjda', 6, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(210, 'Meriem', 'Hadjadj', '0551000210', 'L0000210', 'Dr Hadjadj', 6, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(211, 'Salima', 'Ouali', '0551000211', 'L0000211', 'Dr Ouali', 6, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- NEUROLOGISTS (Specialty 7)
(95, 'Yacine', 'Gherbi', '0551000095', 'L0000095', 'DR Gherbi', 7, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(96, 'Donia', 'Mezghiche', '0551000096', 'L0000096', 'DR Mezghiche', 7, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(212, 'Ahmed', 'Terki', '0551000212', 'L0000212', 'Dr Terki', 7, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(213, 'Fatima', 'Bensalem', '0551000213', 'L0000213', 'Dr Bensalem', 7, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- RHEUMATOLOGISTS (Specialty 8)
(87, 'Malek', 'Gasmi', '0551000087', 'L0000087', 'DR Gasmi', 8, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(88, 'Idir', 'Amriou', '0551000088', 'L0000088', 'DR Amriou', 8, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(89, 'Ferhat', 'Guerboukha', '0551000089', 'L0000089', 'DR Guerboukha', 8, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(90, 'Safia', 'Lakhel', '0551000090', 'L0000090', 'DR Lakhel', 8, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(214, 'Rachid', 'Meziane', '0551000214', 'L0000214', 'Dr Meziane', 8, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- PNEUMOLOGISTS (Specialty 9)
(74, 'Reda', 'Benkacimi', '0551000074', 'L0000074', 'DR Benkacimi', 9, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(75, 'Mounir', 'Hitachi', '0551000075', 'L0000075', 'DR Hitachi', 9, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(215, 'Samir', 'Khellaf', '0551000215', 'L0000215', 'Dr Khellaf', 9, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- NEPHROLOGISTS (Specialty 10)
(79, 'Billal', 'Rabhia', '0551000079', 'L0000079', 'DR Rabhia', 10, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(216, 'Abdelkrim', 'Boukhelifa', '0551000216', 'L0000216', 'Dr Boukhelifa', 10, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- ONCOLOGISTS (Specialty 11)
(83, 'Fouad', 'Rabhia', '0551000083', 'L0000083', 'DR Rabhia', 11, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(217, 'Nadia', 'Cherifi', '0551000217', 'L0000217', 'Dr Cherifi', 11, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(218, 'Karim', 'Bouali', '0551000218', 'L0000218', 'Dr Bouali', 11, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- GENERAL SURGEONS (Specialty 13)
(55, 'Bachir', 'Abbou', '0551000055', 'L0000055', 'DR Abbou', 13, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(219, 'Amine', 'Zerroug', '0551000219', 'L0000219', 'Dr Zerroug', 13, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(220, 'Sofia', 'Lounis', '0551000220', 'L0000220', 'Dr Lounis', 13, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- ENDOCRINOLOGISTS (Specialty 14)
(41, 'Abdelkader', 'Rahal', '0551000041', 'L0000041', 'PR Rahal', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(42, 'Salim', 'Kherraba', '0551000042', 'L0000042', 'DR Kherraba', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(43, 'Karima', 'Chabane', '0551000043', 'L0000043', 'DR Chabane', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(44, 'Mourad', 'Hadjarab', '0551000044', 'L0000044', 'PR Hadjarab', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(45, 'Hichem', 'Nacer', '0551000045', 'L0000045', 'DR Nacer', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(46, 'Djamila', 'Sissaoui', '0551000046', 'L0000046', 'DR Sissaoui', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(47, 'Tarek', 'Meftah', '0551000047', 'L0000047', 'PR Meftah', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(48, 'Samira', 'Nabti', '0551000048', 'L0000048', 'PR Nabti', 14, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- GASTROENTEROLOGISTS (Specialty 15)
(244, 'Rachida', 'Fodil', '0551000244', 'L0000244', 'Dr Fodil', 15, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(245, 'Mourad', 'Belaid', '0551000245', 'L0000245', 'Dr Belaid', 15, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- HEMATOLOGISTS (Specialty 16)
(82, 'Hakim', 'Boukhemia', '0551000082', 'L0000082', 'DR Boukhemia', 16, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(221, 'Nadia', 'Gharbi', '0551000221', 'L0000221', 'Dr Gharbi', 16, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- ENT SPECIALISTS (Specialty 17)
(58, 'Nabil', 'Bouhdiche', '0551000058', 'L0000058', 'DR Bouhdiche', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(59, 'Djamel', 'Boutiba', '0551000059', 'L0000059', 'DR Boutiba', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(60, 'Souad', 'Moussaoui', '0551000060', 'L0000060', 'DR Moussaoui', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(65, 'Adel', 'Derradj', '0551000065', 'L0000065', 'DR Derradj', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(66, 'Imane', 'Fissah', '0551000066', 'L0000066', 'DR Fissah', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(67, 'Yazid', 'Houacine', '0551000067', 'L0000067', 'DR Houacine', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(68, 'Nawal', 'Boudoucha', '0551000068', 'L0000068', 'DR Boudoucha', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(222, 'Yacine', 'Mokhtari', '0551000222', 'L0000222', 'Dr Mokhtari', 17, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- ALLERGOLOGISTS (Specialty 18)
(246, 'Samira', 'Hamdi', '0551000246', 'L0000246', 'Dr Hamdi', 18, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(247, 'Fouad', 'Messai', '0551000247', 'L0000247', 'Dr Messai', 18, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- PSYCHOLOGISTS (Specialty 19)
(85, 'Sabrina', 'Mechtaoui', '0551000085', 'L0000085', 'DR Mechtaoui', 19, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(86, 'Kenza', 'Bellout', '0551000086', 'L0000086', 'DR Bellout', 19, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(223, 'Nassima', 'Boudia', '0551000223', 'L0000223', 'Dr Boudia', 19, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(224, 'Sofiane', 'Kaci', '0551000224', 'L0000224', 'Dr Kaci', 19, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- SENOLOGISTS (Specialty 20)
(80, 'Siham', 'Bouadou', '0551000080', 'L0000080', 'DR Bouadou', 20, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(81, 'Malika', 'Boughazala', '0551000081', 'L0000081', 'DR Boughazala', 20, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(225, 'Leila', 'Mammeri', '0551000225', 'L0000225', 'Dr Mammeri', 20, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- UROLOGISTS (Specialty 21)
(76, 'Khalid', 'Rezkallah', '0551000076', 'L0000076', 'DR Rezkallah', 21, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(77, 'Nour', 'Benali', '0551000077', 'L0000077', 'DR Benali', 21, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(78, 'Amel', 'Krim', '0551000078', 'L0000078', 'DR Krim', 21, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(226, 'Mustapha', 'Djemai', '0551000226', 'L0000226', 'Dr Djemai', 21, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- REHABILITATION (Specialty 22)
(91, 'Abdou', 'Addi', '0551000091', 'L0000091', 'DR Addi', 22, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(92, 'Lynda', 'Ghalmi', '0551000092', 'L0000092', 'DR Ghalmi', 22, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(93, 'Rym', 'Beldjoudi', '0551000093', 'L0000093', 'DR Beldjoudi', 22, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(227, 'Hocine', 'Brahimi', '0551000227', 'L0000227', 'Dr Brahimi', 22, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- OCCUPATIONAL THERAPISTS (Specialty 23)
(255, 'Lynda', 'Bouhired', '0551000255', 'L0000255', 'Dr Bouhired', 23, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(256, 'Amel', 'Benkhelifa', '0551000256', 'L0000256', 'Dr Benkhelifa', 23, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- ORTHOPEDISTS (Specialty 24)
(100, 'Mehdi', 'Lamouchi', '0551000100', 'L0000100', 'DR Lamouchi', 24, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(101, 'Nabil', 'Yakoubi', '0551000101', 'L0000101', 'DR Yakoubi', 24, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(102, 'Yasmine', 'Amrane', '0551000102', 'L0000102', 'DR Amrane', 24, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(103, 'Hicene', 'Larkem', '0551000103', 'L0000103', 'DR Larkem', 24, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(228, 'Redouane', 'Guessab', '0551000228', 'L0000228', 'Dr Guessab', 24, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- PEDO PSYCHIATRISTS (Specialty 25)
(98, 'Sonia', 'Guenniche', '0551000098', 'L0000098', 'DR Guenniche', 25, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(229, 'Fatiha', 'Khelladi', '0551000229', 'L0000229', 'Dr Khelladi', 25, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- RADIOLOGISTS (Specialty 26)
(230, 'Adel', 'Benchohra', '0551000230', 'L0000230', 'Dr Benchohra', 26, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(231, 'Karima', 'Touati', '0551000231', 'L0000231', 'Dr Touati', 26, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(232, 'Sofiane', 'Mebarki', '0551000232', 'L0000232', 'Dr Mebarki', 26, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- SPEECH THERAPISTS (Specialty 27)
(99, 'Issam', 'Boudraa', '0551000099', 'L0000099', 'DR Boudraa', 27, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(233, 'Nabila', 'Bensaid', '0551000233', 'L0000233', 'Dr Bensaid', 27, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- HEPATOLOGISTS (Specialty 28)
(253, 'Karim', 'Mokhtari', '0551000253', 'L0000253', 'Dr Mokhtari', 28, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(254, 'Sonia', 'Benaissa', '0551000254', 'L0000254', 'Dr Benaissa', 28, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- MAXILLO FACIAL (Specialty 29)
(248, 'Ahmed', 'Boukhelif', '0551000248', 'L0000248', 'Dr Boukhelif', 29, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(249, 'Nadia', 'Tlemcani', '0551000249', 'L0000249', 'Dr Tlemcani', 29, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- DENTAL SURGEONS (Specialty 30)
(7, 'Fatima', 'Khelifati', '0551000007', 'L0000007', 'DR Khelifati', 30, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(25, 'Nadia', 'Berrami', '0551000025', 'L0000025', 'DR Berrami', 30, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(234, 'Tarek', 'Bensalem', '0551000234', 'L0000234', 'Dr Bensalem', 30, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(235, 'Samia', 'Kerroumi', '0551000235', 'L0000235', 'Dr Kerroumi', 30, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- NURSES (Specialty 31)
(11, 'Hamid', 'Hamidi', '0551000011', 'L0000011', 'INF Hamidi', 31, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(236, 'Naouel', 'Boumaza', '0551000236', 'L0000236', 'Inf Boumaza', 31, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(237, 'Rachid', 'Zerguine', '0551000237', 'L0000237', 'Inf Zerguine', 31, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(238, 'Fatima Zohra', 'Kadri', '0551000238', 'L0000238', 'Inf Kadri', 31, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- GENERAL PRACTITIONERS (Specialty 32)
(4, 'Mohamed', 'Sihati', '0551000004', 'L0000004', 'DR Sihati', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(8, 'Ahmed', 'Charchour', '0551000008', 'L0000008', 'DR Charchour', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(9, 'Samir', 'Hedid', '0551000009', 'L0000009', 'DR Hedid', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(24, 'Omar', 'Redouane', '0551000024', 'L0000024', 'DR Redouane', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(26, 'Youcef', 'Belgacem', '0551000026', 'L0000026', 'DR Belgacem', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(239, 'Abdelhamid', 'Benbrahim', '0551000239', 'L0000239', 'Dr Benbrahim', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(240, 'Safia', 'Boukhari', '0551000240', 'L0000240', 'Dr Boukhari', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(241, 'Ali', 'Mebtouche', '0551000241', 'L0000241', 'Dr Mebtouche', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(242, 'Djamila', 'Hadjeb', '0551000242', 'L0000242', 'Dr Hadjeb', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(243, 'Slimane', 'Mekki', '0551000243', 'L0000243', 'Dr Mekki', 32, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),

-- INTERNAL MEDICINE (Specialty 12)
(250, 'Hassiba', 'Bennaceur', '0551000250', 'L0000250', 'Dr Bennaceur', 12, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(251, 'Mohamed', 'Larabi', '0551000251', 'L0000251', 'Dr Larabi', 12, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0),
(252, 'Fatima', 'Zemri', '0551000252', 'L0000252', 'Dr Zemri', 12, true, 'system', '2026-01-01 08:00:00', NULL, NULL, 0)

    ON CONFLICT (id) DO NOTHING;