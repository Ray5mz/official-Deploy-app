INSERT INTO care.request_care_coverages(
    id, code, notes, start_date, end_date, demande_date, has_cancer, status, active,
    patient_id, provider_id, medical_center_id,
    created_by, creation_date, last_modified_by, last_modified_date, version
)
VALUES

-- ===================== YOUNG EMPLOYEES (20-25 years) - New employees, limited history =====================
-- Yasmine Baiche (1) - Anemia - Active coverage
(1, 'RCC-001', 'Prise en charge pour anémie ferriprive', '2025-11-15', '2026-11-14', '2025-11-10', false, 'ACCEPTE', true, 1, 1, 4, 'system', '2025-11-10 08:00:00', NULL, NULL, 0),

-- Anfal Daoudi (2) - Migraine - Active coverage
(2, 'RCC-002', 'Prise en charge pour migraine chronique', '2025-10-05', '2026-10-04', '2025-10-01', false, 'ACCEPTE', true, 2, 2, 4, 'system', '2025-10-01 08:00:00', NULL, NULL, 0),

-- Rayane Mouzaoui (3) - Asthma - Active coverage
(3, 'RCC-003', 'Prise en charge pour asthme modéré', '2025-09-10', '2026-09-09', '2025-09-05', false, 'ACCEPTE', true, 3, 3, 9, 'system', '2025-09-05 08:00:00', NULL, NULL, 0),

-- Ilyes Redjel (4) - Hypertension - Expired, then refused renewal, then pending new
(4, 'RCC-004', 'Prise en charge pour hypertension - 1ère année', '2024-08-15', '2025-08-14', '2024-08-10', false, 'ACCEPTE', false, 4, 4, 5, 'system', '2024-08-10 08:00:00', NULL, NULL, 0),
(5, 'RCC-005', 'Prise en charge pour hypertension - Demande de renouvellement', '2025-08-15', '2026-08-14', '2025-08-01', false, 'REFUSE', false, 4, 5, 4, 'system', '2025-08-01 08:00:00', NULL, NULL, 0),
(6, 'RCC-006', 'Prise en charge pour hypertension - Nouvelle demande', '2026-04-15', '2027-04-14', '2026-04-10', false, 'PENDING', false, 4, 1, 4, 'system', '2026-04-10 08:00:00', NULL, NULL, 0),

-- ===================== PARENTS (50-60 years) - Long history with multiple renewals =====================
-- Omar Baiche (5) - Diabetes Type 2 - 3 renewals (first 2 expired, 3rd active)
(7, 'RCC-007', 'Prise en charge pour diabète type 2 - 1ère année', '2022-06-10', '2023-06-09', '2022-06-05', false, 'ACCEPTE', false, 5, 6, 4, 'system', '2022-06-05 08:00:00', NULL, NULL, 0),
(8, 'RCC-008', 'Prise en charge pour diabète type 2 - 2ème année', '2023-06-10', '2024-06-09', '2023-06-01', false, 'ACCEPTE', false, 5, 7, 4, 'system', '2023-06-01 08:00:00', NULL, NULL, 0),
(9, 'RCC-009', 'Prise en charge pour diabète type 2 - 3ème année', '2024-06-10', '2025-06-09', '2024-06-01', false, 'ACCEPTE', false, 5, 1, 4, 'system', '2024-06-01 08:00:00', NULL, NULL, 0),
(10, 'RCC-010', 'Prise en charge pour diabète type 2 - 4ème année', '2025-06-10', '2026-06-09', '2025-06-01', false, 'ACCEPTE', true, 5, 2, 4, 'system', '2025-06-01 08:00:00', NULL, NULL, 0),

-- Salima Ikene (6) - Arthrosis - 4 renewals (3 expired, 1 active)
(11, 'RCC-011', 'Prise en charge pour arthrose - 1ère année', '2022-02-10', '2023-02-09', '2022-02-05', false, 'ACCEPTE', false, 6, 4, 4, 'system', '2022-02-05 08:00:00', NULL, NULL, 0),
(12, 'RCC-012', 'Prise en charge pour arthrose - 2ème année', '2023-02-10', '2024-02-09', '2023-02-01', false, 'ACCEPTE', false, 6, 8, 4, 'system', '2023-02-01 08:00:00', NULL, NULL, 0),
(13, 'RCC-013', 'Prise en charge pour arthrose - 3ème année', '2024-02-10', '2025-02-09', '2024-02-01', false, 'ACCEPTE', false, 6, 1, 4, 'system', '2024-02-01 08:00:00', NULL, NULL, 0),
(14, 'RCC-014', 'Prise en charge pour arthrose - 4ème année', '2025-02-10', '2026-02-09', '2025-02-01', false, 'ACCEPTE', true, 6, 3, 4, 'system', '2025-02-01 08:00:00', NULL, NULL, 0),

-- Mahmoud Daoudi (7) - Hypertension - Long history with one refusal and one cancellation
(15, 'RCC-015', 'Prise en charge pour hypertension - 1ère année', '2021-09-10', '2022-09-09', '2021-09-05', false, 'ACCEPTE', false, 7, 1, 5, 'system', '2021-09-05 08:00:00', NULL, NULL, 0),
(16, 'RCC-016', 'Prise en charge pour hypertension - 2ème année', '2022-09-10', '2023-09-09', '2022-09-01', false, 'ACCEPTE', false, 7, 2, 5, 'system', '2022-09-01 08:00:00', NULL, NULL, 0),
(17, 'RCC-017', 'Prise en charge pour hypertension - Demande renouvellement', '2023-09-10', '2024-09-09', '2023-09-01', false, 'REFUSE', false, 7, 3, 5, 'system', '2023-09-01 08:00:00', NULL, NULL, 0),
(18, 'RCC-018', 'Prise en charge pour hypertension - Nouvelle demande', '2024-03-15', '2025-03-14', '2024-03-10', false, 'CANCELLED', false, 7, 4, 4, 'system', '2024-03-10 08:00:00', NULL, NULL, 0),
(19, 'RCC-019', 'Prise en charge pour hypertension - 3ème année', '2024-09-10', '2025-09-09', '2024-09-01', false, 'ACCEPTE', false, 7, 5, 4, 'system', '2024-09-01 08:00:00', NULL, NULL, 0),
(20, 'RCC-020', 'Prise en charge pour hypertension - 4ème année', '2025-09-10', '2026-09-09', '2025-09-01', false, 'ACCEPTE', true, 7, 1, 4, 'system', '2025-09-01 08:00:00', NULL, NULL, 0),

-- Farida Idoui (8) - Cholesterol - 2 renewals (1 expired, 1 active)
(21, 'RCC-021', 'Prise en charge pour hypercholestérolémie - 1ère année', '2023-03-10', '2024-03-09', '2023-03-05', false, 'ACCEPTE', false, 8, 4, 4, 'system', '2023-03-05 08:00:00', NULL, NULL, 0),
(22, 'RCC-022', 'Prise en charge pour hypercholestérolémie - 2ème année', '2024-03-10', '2025-03-09', '2024-03-01', false, 'ACCEPTE', false, 8, 1, 4, 'system', '2024-03-01 08:00:00', NULL, NULL, 0),
(23, 'RCC-023', 'Prise en charge pour hypercholestérolémie - 3ème année', '2025-03-10', '2026-03-09', '2025-03-01', false, 'ACCEPTE', true, 8, 2, 4, 'system', '2025-03-01 08:00:00', NULL, NULL, 0),

-- ===================== SONELGAZ EMPLOYEES (30-50 years) =====================
-- Miloud Ouziane (2001) - Gastritis - 2 renewals
(24, 'RCC-024', 'Prise en charge pour gastrite - 1ère année', '2023-08-20', '2024-08-19', '2023-08-15', false, 'ACCEPTE', false, 2001, 6, 4, 'system', '2023-08-15 08:00:00', NULL, NULL, 0),
(25, 'RCC-025', 'Prise en charge pour gastrite - 2ème année', '2024-08-20', '2025-08-19', '2024-08-10', false, 'ACCEPTE', false, 2001, 7, 4, 'system', '2024-08-10 08:00:00', NULL, NULL, 0),
(26, 'RCC-026', 'Prise en charge pour gastrite - 3ème année', '2025-08-20', '2026-08-19', '2025-08-10', false, 'ACCEPTE', true, 2001, 1, 4, 'system', '2025-08-10 08:00:00', NULL, NULL, 0),

-- Fatima Ouziane (2002) - Spouse - Simple coverage
(27, 'RCC-027', 'Prise en charge pour soins courants', '2025-03-20', '2026-03-19', '2025-03-15', false, 'ACCEPTE', true, 2002, 2, 4, 'system', '2025-03-15 08:00:00', NULL, NULL, 0),

-- Rachid Ouziane (2003) - Child - Bronchitis coverage
(28, 'RCC-028', 'Prise en charge pour bronchite - 1ère année', '2024-11-10', '2025-11-09', '2024-11-05', false, 'ACCEPTE', false, 2003, 3, 9, 'system', '2024-11-05 08:00:00', NULL, NULL, 0),
(29, 'RCC-029', 'Prise en charge pour bronchite - Renouvellement', '2025-11-10', '2026-11-09', '2025-11-01', false, 'ACCEPTE', true, 2003, 4, 9, 'system', '2025-11-01 08:00:00', NULL, NULL, 0),

-- Mohamed Ouziane (2004) - CANCER case - Special coverage with cancer flag
(30, 'RCC-030', 'Prise en charge pour HTA (pré-cancer)', '2023-03-10', '2024-03-09', '2023-03-05', false, 'ACCEPTE', false, 2004, 5, 5, 'system', '2023-03-05 08:00:00', NULL, NULL, 0),
(31, 'RCC-031', 'Prise en charge pour HTA - Renouvellement', '2024-03-10', '2025-03-09', '2024-03-01', false, 'ACCEPTE', false, 2004, 6, 4, 'system', '2024-03-01 08:00:00', NULL, NULL, 0),
(32, 'RCC-032', 'Prise en charge pour HTA - 3ème année', '2025-03-10', '2026-03-09', '2025-03-01', false, 'ACCEPTE', false, 2004, 7, 4, 'system', '2025-03-01 08:00:00', NULL, NULL, 0),
(33, 'RCC-033', 'Prise en charge pour cancer colorectal + HTA', '2025-05-20', '2027-05-19', '2025-05-15', true, 'ACCEPTE', true, 2004, 1, 12, 'system', '2025-05-15 08:00:00', NULL, NULL, 0),

-- Karim Hamiti (2005) - Ulcers - 3 renewals
(34, 'RCC-034', 'Prise en charge pour ulcères gastriques - 1ère année', '2023-07-10', '2024-07-09', '2023-07-05', false, 'ACCEPTE', false, 2005, 1, 4, 'system', '2023-07-05 08:00:00', NULL, NULL, 0),
(35, 'RCC-035', 'Prise en charge pour ulcères gastriques - 2ème année', '2024-07-10', '2025-07-09', '2024-07-01', false, 'ACCEPTE', false, 2005, 2, 4, 'system', '2024-07-01 08:00:00', NULL, NULL, 0),
(36, 'RCC-036', 'Prise en charge pour ulcères gastriques - 3ème année', '2025-07-10', '2026-07-09', '2025-07-01', false, 'ACCEPTE', true, 2005, 3, 4, 'system', '2025-07-01 08:00:00', NULL, NULL, 0),

-- Zohra Hamiti (2006) - Spouse - Simple coverage
(37, 'RCC-037', 'Prise en charge pour soins préventifs', '2025-06-10', '2026-06-09', '2025-06-05', false, 'ACCEPTE', true, 2006, 4, 4, 'system', '2025-06-05 08:00:00', NULL, NULL, 0),

-- Yacine Hamiti (2007) - Child Asthma - 2 renewals
(38, 'RCC-038', 'Prise en charge pour asthme - 1ère année', '2023-09-15', '2024-09-14', '2023-09-10', false, 'ACCEPTE', false, 2007, 5, 9, 'system', '2023-09-10 08:00:00', NULL, NULL, 0),
(39, 'RCC-039', 'Prise en charge pour asthme - 2ème année', '2024-09-15', '2025-09-14', '2024-09-05', false, 'ACCEPTE', false, 2007, 6, 9, 'system', '2024-09-05 08:00:00', NULL, NULL, 0),
(40, 'RCC-040', 'Prise en charge pour asthme - 3ème année', '2025-09-15', '2026-09-14', '2025-09-05', false, 'ACCEPTE', true, 2007, 7, 9, 'system', '2025-09-05 08:00:00', NULL, NULL, 0),

-- Lina Hamiti (2008) - Child - Simple coverage
(41, 'RCC-041', 'Prise en charge pour soins courants enfant', '2025-08-30', '2026-08-29', '2025-08-25', false, 'ACCEPTE', true, 2008, 1, 9, 'system', '2025-08-25 08:00:00', NULL, NULL, 0),

-- Abdelkader Hamiti (2009) - Elderly parent - Diabetes - Long history with pending renewal
(42, 'RCC-042', 'Prise en charge pour diabète type 2 - 1ère année', '2021-10-10', '2022-10-09', '2021-10-05', false, 'ACCEPTE', false, 2009, 2, 4, 'system', '2021-10-05 08:00:00', NULL, NULL, 0),
(43, 'RCC-043', 'Prise en charge pour diabète type 2 - 2ème année', '2022-10-10', '2023-10-09', '2022-10-01', false, 'ACCEPTE', false, 2009, 3, 4, 'system', '2022-10-01 08:00:00', NULL, NULL, 0),
(44, 'RCC-044', 'Prise en charge pour diabète type 2 - 3ème année', '2023-10-10', '2024-10-09', '2023-10-01', false, 'ACCEPTE', false, 2009, 4, 4, 'system', '2023-10-01 08:00:00', NULL, NULL, 0),
(45, 'RCC-045', 'Prise en charge pour diabète type 2 - 4ème année', '2024-10-10', '2025-10-09', '2024-10-01', false, 'ACCEPTE', false, 2009, 5, 4, 'system', '2024-10-01 08:00:00', NULL, NULL, 0),
(46, 'RCC-046', 'Prise en charge pour diabète type 2 - 5ème année', '2025-10-10', '2026-10-09', '2025-10-01', false, 'ACCEPTE', true, 2009, 1, 4, 'system', '2025-10-01 08:00:00', NULL, NULL, 0),
(47, 'RCC-047', 'Prise en charge pour diabète type 2 - Demande renouvellement 2026', '2026-10-10', '2027-10-09', '2026-09-15', false, 'PENDING', false, 2009, 2, 4, 'system', '2026-09-15 08:00:00', NULL, NULL, 0),

-- Yamina Hamiti (2010) - Elderly parent - Simple coverage
(48, 'RCC-048', 'Prise en charge pour soins courants senior', '2025-05-20', '2026-05-19', '2025-05-15', false, 'ACCEPTE', true, 2010, 3, 4, 'system', '2025-05-15 08:00:00', NULL, NULL, 0),

-- Nabila Hasaine (2011) - Single employee - First coverage (new employee)
(49, 'RCC-049', 'Prise en charge pour soins courants - 1ère année', '2025-11-30', '2026-11-29', '2025-11-25', false, 'ACCEPTE', true, 2011, 4, 4, 'system', '2025-11-25 08:00:00', NULL, NULL, 0),

-- Hocine Miloudi (2012) - Allergies - 2 renewals with pending
(50, 'RCC-050', 'Prise en charge pour allergies - 1ère année', '2023-04-15', '2024-04-14', '2023-04-10', false, 'ACCEPTE', false, 2012, 5, 4, 'system', '2023-04-10 08:00:00', NULL, NULL, 0),
(51, 'RCC-051', 'Prise en charge pour allergies - 2ème année', '2024-04-15', '2025-04-14', '2024-04-05', false, 'ACCEPTE', false, 2012, 6, 5, 'system', '2024-04-05 08:00:00', NULL, NULL, 0),
(52, 'RCC-052', 'Prise en charge pour allergies - 3ème année', '2025-04-15', '2026-04-14', '2025-04-05', false, 'ACCEPTE', true, 2012, 7, 4, 'system', '2025-04-05 08:00:00', NULL, NULL, 0),
(53, 'RCC-053', 'Prise en charge pour allergies - Demande renouvellement', '2026-04-15', '2027-04-14', '2026-03-20', false, 'PENDING', false, 2012, 1, 4, 'system', '2026-03-20 08:00:00', NULL, NULL, 0),

-- Yamina Miloudi (2013) - Spouse - Simple coverage
(54, 'RCC-054', 'Prise en charge pour soins courants', '2025-06-15', '2026-06-14', '2025-06-10', false, 'ACCEPTE', true, 2013, 2, 4, 'system', '2025-06-10 08:00:00', NULL, NULL, 0),

-- Amine Miloudi (2014) - Child - Simple coverage
(55, 'RCC-055', 'Prise en charge pour soins pédiatriques', '2025-05-20', '2026-05-19', '2025-05-15', false, 'ACCEPTE', true, 2014, 3, 9, 'system', '2025-05-15 08:00:00', NULL, NULL, 0),

-- Salah Miloudi (2015) - Child - Simple coverage
(56, 'RCC-056', 'Prise en charge pour soins pédiatriques', '2025-11-02', '2026-11-01', '2025-10-28', false, 'ACCEPTE', true, 2015, 4, 9, 'system', '2025-10-28 08:00:00', NULL, NULL, 0),

-- Aicha Miloudi (2016) - Elderly - Simple coverage
(57, 'RCC-057', 'Prise en charge pour soins courants senior', '2025-08-25', '2026-08-24', '2025-08-20', false, 'ACCEPTE', true, 2016, 5, 4, 'system', '2025-08-20 08:00:00', NULL, NULL, 0),

-- Farid Bouchareb (2017) - Diabetes - 2 renewals
(58, 'RCC-058', 'Prise en charge pour diabète type 2 - 1ère année', '2023-07-18', '2024-07-17', '2023-07-13', false, 'ACCEPTE', false, 2017, 6, 4, 'system', '2023-07-13 08:00:00', NULL, NULL, 0),
(59, 'RCC-059', 'Prise en charge pour diabète type 2 - 2ème année', '2024-07-18', '2025-07-17', '2024-07-08', false, 'ACCEPTE', false, 2017, 7, 4, 'system', '2024-07-08 08:00:00', NULL, NULL, 0),
(60, 'RCC-060', 'Prise en charge pour diabète type 2 - 3ème année', '2025-07-18', '2026-07-17', '2025-07-08', false, 'ACCEPTE', true, 2017, 1, 4, 'system', '2025-07-08 08:00:00', NULL, NULL, 0),

-- Warda Bouchareb (2018) - Spouse - Simple coverage refused then new
(61, 'RCC-061', 'Prise en charge pour soins courants - Demande', '2024-09-15', '2025-09-14', '2024-09-10', false, 'REFUSE', false, 2018, 2, 4, 'system', '2024-09-10 08:00:00', NULL, NULL, 0),
(62, 'RCC-062', 'Prise en charge pour soins courants - Nouvelle demande', '2025-09-15', '2026-09-14', '2025-09-10', false, 'ACCEPTE', true, 2018, 3, 4, 'system', '2025-09-10 08:00:00', NULL, NULL, 0),

-- Bilal Bouchareb (2019) - Child - Simple coverage
(63, 'RCC-063', 'Prise en charge pour soins pédiatriques', '2025-03-22', '2026-03-21', '2025-03-17', false, 'ACCEPTE', true, 2019, 4, 9, 'system', '2025-03-17 08:00:00', NULL, NULL, 0),

-- Salima Khelladi (2020) - Employee - Anemia coverage
(64, 'RCC-064', 'Prise en charge pour anémie - 1ère année', '2025-12-05', '2026-12-04', '2025-11-30', false, 'ACCEPTE', true, 2020, 5, 4, 'system', '2025-11-30 08:00:00', NULL, NULL, 0),

-- Mokhtar Khelladi (2021) - Spouse - Coverage cancelled
(65, 'RCC-065', 'Prise en charge pour soins courants', '2024-08-20', '2025-08-19', '2024-08-15', false, 'CANCELLED', false, 2021, 6, 4, 'system', '2024-08-15 08:00:00', NULL, NULL, 0),
(66, 'RCC-066', 'Prise en charge pour soins courants - Nouvelle demande', '2025-08-20', '2026-08-19', '2025-08-15', false, 'ACCEPTE', true, 2021, 7, 4, 'system', '2025-08-15 08:00:00', NULL, NULL, 0),

-- Fatima Khelladi (2022) - Elderly - Simple coverage
(67, 'RCC-067', 'Prise en charge pour soins courants senior', '2025-05-10', '2026-05-09', '2025-05-05', false, 'ACCEPTE', true, 2022, 1, 4, 'system', '2025-05-05 08:00:00', NULL, NULL, 0),

-- Mohamed Khelladi (2023) - Elderly - Simple coverage
(68, 'RCC-068', 'Prise en charge pour soins courants senior', '2025-10-15', '2026-10-14', '2025-10-10', false, 'ACCEPTE', true, 2023, 2, 4, 'system', '2025-10-10 08:00:00', NULL, NULL, 0),

-- Ahmed Ouziane (2024) - Employee - Ulcers
(69, 'RCC-069', 'Prise en charge pour ulcères gastriques - 1ère année', '2023-08-20', '2024-08-19', '2023-08-15', false, 'ACCEPTE', false, 2024, 3, 4, 'system', '2023-08-15 08:00:00', NULL, NULL, 0),
(70, 'RCC-070', 'Prise en charge pour ulcères gastriques - 2ème année', '2024-08-20', '2025-08-19', '2024-08-10', false, 'ACCEPTE', false, 2024, 4, 4, 'system', '2024-08-10 08:00:00', NULL, NULL, 0),
(71, 'RCC-071', 'Prise en charge pour ulcères gastriques - 3ème année', '2025-08-20', '2026-08-19', '2025-08-10', false, 'ACCEPTE', true, 2024, 5, 4, 'system', '2025-08-10 08:00:00', NULL, NULL, 0),

-- Meryem Ouziane (2025) - Spouse - Simple coverage
(72, 'RCC-072', 'Prise en charge pour soins courants', '2025-06-10', '2026-06-09', '2025-06-05', false, 'ACCEPTE', true, 2025, 6, 4, 'system', '2025-06-05 08:00:00', NULL, NULL, 0),

-- Hamza Ouziane (2026) - Child - Simple coverage
(73, 'RCC-073', 'Prise en charge pour soins pédiatriques', '2025-07-12', '2026-07-11', '2025-07-07', false, 'ACCEPTE', true, 2026, 7, 9, 'system', '2025-07-07 08:00:00', NULL, NULL, 0),

-- Imane Ouziane (2027) - Child - Simple coverage
(74, 'RCC-074', 'Prise en charge pour soins pédiatriques', '2025-04-05', '2026-04-04', '2025-03-31', false, 'ACCEPTE', true, 2027, 1, 9, 'system', '2025-03-31 08:00:00', NULL, NULL, 0),

-- Samira Hamiti (2028) - Single parent - Simple coverage
(75, 'RCC-075', 'Prise en charge pour soins courants - 1ère année', '2025-04-14', '2026-04-13', '2025-04-09', false, 'ACCEPTE', true, 2028, 2, 4, 'system', '2025-04-09 08:00:00', NULL, NULL, 0),

-- Ilyes Hamiti (2029) - Child - Simple coverage
(76, 'RCC-076', 'Prise en charge pour soins pédiatriques', '2025-09-18', '2026-09-17', '2025-09-13', false, 'ACCEPTE', true, 2029, 3, 9, 'system', '2025-09-13 08:00:00', NULL, NULL, 0),

-- Kamel Hasaine (2030) - Employee - Gastritis
(77, 'RCC-077', 'Prise en charge pour gastrite - 1ère année', '2024-11-25', '2025-11-24', '2024-11-20', false, 'ACCEPTE', false, 2030, 4, 4, 'system', '2024-11-20 08:00:00', NULL, NULL, 0),
(78, 'RCC-078', 'Prise en charge pour gastrite - 2ème année', '2025-11-25', '2026-11-24', '2025-11-15', false, 'ACCEPTE', true, 2030, 5, 4, 'system', '2025-11-15 08:00:00', NULL, NULL, 0),

-- Latifa Hasaine (2031) - Spouse - Simple coverage
(79, 'RCC-079', 'Prise en charge pour soins courants', '2025-03-15', '2026-03-14', '2025-03-10', false, 'ACCEPTE', true, 2031, 6, 4, 'system', '2025-03-10 08:00:00', NULL, NULL, 0),

-- Rabah Hasaine (2032) - Elderly - Simple coverage
(80, 'RCC-080', 'Prise en charge pour soins courants senior', '2025-10-20', '2026-10-19', '2025-10-15', false, 'ACCEPTE', true, 2032, 7, 4, 'system', '2025-10-15 08:00:00', NULL, NULL, 0),

-- Rachid Miloudi (2033) - Employee - Simple coverage
(81, 'RCC-081', 'Prise en charge pour soins courants - 1ère année', '2025-06-30', '2026-06-29', '2025-06-25', false, 'ACCEPTE', true, 2033, 1, 4, 'system', '2025-06-25 08:00:00', NULL, NULL, 0),

-- Adel Miloudi (2034) - Child - Simple coverage
(82, 'RCC-082', 'Prise en charge pour soins pédiatriques', '2025-05-15', '2026-05-14', '2025-05-10', false, 'ACCEPTE', true, 2034, 2, 9, 'system', '2025-05-10 08:00:00', NULL, NULL, 0),

-- Leila Miloudi (2035) - Child - Simple coverage
(83, 'RCC-083', 'Prise en charge pour soins pédiatriques', '2025-08-20', '2026-08-19', '2025-08-15', false, 'ACCEPTE', true, 2035, 3, 9, 'system', '2025-08-15 08:00:00', NULL, NULL, 0),

-- Sofiane Bouchareb (2036) - Single employee - Coverage refused then new
(84, 'RCC-084', 'Prise en charge pour soins courants - Demande', '2024-02-17', '2025-02-16', '2024-02-12', false, 'REFUSE', false, 2036, 4, 4, 'system', '2024-02-12 08:00:00', NULL, NULL, 0),
(85, 'RCC-085', 'Prise en charge pour soins courants - Nouvelle demande', '2025-02-17', '2026-02-16', '2025-02-12', false, 'ACCEPTE', true, 2036, 5, 4, 'system', '2025-02-12 08:00:00', NULL, NULL, 0),

-- Houria Bouchareb (2037) - Elderly - Simple coverage
(86, 'RCC-086', 'Prise en charge pour soins courants senior', '2025-03-15', '2026-03-14', '2025-03-10', false, 'ACCEPTE', true, 2037, 6, 4, 'system', '2025-03-10 08:00:00', NULL, NULL, 0),

-- Djamila Khelladi (2038) - Employee - Anemia
(87, 'RCC-087', 'Prise en charge pour anémie - 1ère année', '2025-10-08', '2026-10-07', '2025-10-03', false, 'ACCEPTE', true, 2038, 7, 4, 'system', '2025-10-03 08:00:00', NULL, NULL, 0),

-- Mustapha Khelladi (2039) - Spouse - Coverage pending
(88, 'RCC-088', 'Prise en charge pour soins courants - Demande en attente', '2025-01-20', '2026-01-19', '2025-01-10', false, 'PENDING', false, 2039, 1, 4, 'system', '2025-01-10 08:00:00', NULL, NULL, 0),

-- Anas Khelladi (2040) - Child - Simple coverage
(89, 'RCC-089', 'Prise en charge pour soins pédiatriques', '2025-06-15', '2026-06-14', '2025-06-10', false, 'ACCEPTE', true, 2040, 2, 9, 'system', '2025-06-10 08:00:00', NULL, NULL, 0),

-- Mohamed Khelladi (2041) - Elderly - Simple coverage
(90, 'RCC-090', 'Prise en charge pour soins courants senior', '2025-10-25', '2026-10-24', '2025-10-20', false, 'ACCEPTE', true, 2041, 3, 4, 'system', '2025-10-20 08:00:00', NULL, NULL, 0),

-- Fatima Khelladi (2042) - Elderly - Simple coverage
(91, 'RCC-091', 'Prise en charge pour soins courants senior', '2025-12-10', '2026-12-09', '2025-12-05', false, 'ACCEPTE', true, 2042, 4, 4, 'system', '2025-12-05 08:00:00', NULL, NULL, 0),

-- Youcef Ouziane (2043) - Employee - New employee, first coverage
(92, 'RCC-092', 'Prise en charge pour soins courants - 1ère année', '2026-01-12', '2027-01-11', '2026-01-07', false, 'ACCEPTE', true, 2043, 5, 4, 'system', '2026-01-07 08:00:00', NULL, NULL, 0),

-- Ilyas Ouziane (2044) - Child - Simple coverage
(93, 'RCC-093', 'Prise en charge pour soins pédiatriques', '2025-05-18', '2026-05-17', '2025-05-13', false, 'ACCEPTE', true, 2044, 6, 9, 'system', '2025-05-13 08:00:00', NULL, NULL, 0),

-- Linda Ouziane (2045) - Child - Simple coverage
(94, 'RCC-094', 'Prise en charge pour soins pédiatriques', '2025-08-22', '2026-08-21', '2025-08-17', false, 'ACCEPTE', true, 2045, 7, 9, 'system', '2025-08-17 08:00:00', NULL, NULL, 0),

-- Lazhar Hamiti (2046) - Divorced employee - First coverage
(95, 'RCC-095', 'Prise en charge pour soins courants - 1ère année', '2025-09-03', '2026-09-02', '2025-08-29', false, 'ACCEPTE', true, 2046, 1, 4, 'system', '2025-08-29 08:00:00', NULL, NULL, 0),

-- Anis Hamiti (2047) - Child - Simple coverage
(96, 'RCC-096', 'Prise en charge pour soins pédiatriques', '2025-04-12', '2026-04-11', '2025-04-07', false, 'ACCEPTE', true, 2047, 2, 9, 'system', '2025-04-07 08:00:00', NULL, NULL, 0),

-- Ines Hamiti (2048) - Child - Simple coverage
(97, 'RCC-097', 'Prise en charge pour soins pédiatriques', '2025-09-08', '2026-09-07', '2025-09-03', false, 'ACCEPTE', true, 2048, 3, 9, 'system', '2025-09-03 08:00:00', NULL, NULL, 0),

-- Fadila Hasaine (2049) - Employee - Migraine coverage
(98, 'RCC-098', 'Prise en charge pour migraine - 1ère année', '2025-05-27', '2026-05-26', '2025-05-22', false, 'ACCEPTE', true, 2049, 4, 4, 'system', '2025-05-22 08:00:00', NULL, NULL, 0),

-- Hassan Hasaine (2050) - Spouse - Simple coverage with pending renewal
(99, 'RCC-099', 'Prise en charge pour soins courants', '2025-07-20', '2026-07-19', '2025-07-15', false, 'ACCEPTE', true, 2050, 5, 4, 'system', '2025-07-15 08:00:00', NULL, NULL, 0),
(100, 'RCC-100', 'Prise en charge pour soins courants - Demande renouvellement', '2026-07-20', '2027-07-19', '2026-06-20', false, 'PENDING', false, 2050, 6, 4, 'system', '2026-06-20 08:00:00', NULL, NULL, 0),

-- Kamel Hasaine (2051) - Elderly parent - Diabetes - Long history
(101, 'RCC-101', 'Prise en charge pour diabète type 2 - 1ère année', '2022-10-15', '2023-10-14', '2022-10-10', false, 'ACCEPTE', false, 2051, 7, 4, 'system', '2022-10-10 08:00:00', NULL, NULL, 0),
(102, 'RCC-102', 'Prise en charge pour diabète type 2 - 2ème année', '2023-10-15', '2024-10-14', '2023-10-05', false, 'ACCEPTE', false, 2051, 1, 4, 'system', '2023-10-05 08:00:00', NULL, NULL, 0),
(103, 'RCC-103', 'Prise en charge pour diabète type 2 - 3ème année', '2024-10-15', '2025-10-14', '2024-10-05', false, 'ACCEPTE', false, 2051, 2, 4, 'system', '2024-10-05 08:00:00', NULL, NULL, 0),
(104, 'RCC-104', 'Prise en charge pour diabète type 2 - 4ème année', '2025-10-15', '2026-10-14', '2025-10-05', false, 'ACCEPTE', true, 2051, 3, 4, 'system', '2025-10-05 08:00:00', NULL, NULL, 0),

-- Amira Hasaine (2052) - Elderly - Simple coverage
(105, 'RCC-105', 'Prise en charge pour soins courants senior', '2025-12-05', '2026-12-04', '2025-11-30', false, 'ACCEPTE', true, 2052, 4, 4, 'system', '2025-11-30 08:00:00', NULL, NULL, 0),

-- Nadia Miloudi (2053) - Employee - New employee
(106, 'RCC-106', 'Prise en charge pour soins courants - 1ère année', '2025-11-20', '2026-11-19', '2025-11-15', false, 'ACCEPTE', true, 2053, 5, 4, 'system', '2025-11-15 08:00:00', NULL, NULL, 0),

-- Samira Ouziane (2054) - Employee - New employee
(107, 'RCC-107', 'Prise en charge pour soins courants - 1ère année', '2025-08-15', '2026-08-14', '2025-08-10', false, 'ACCEPTE', true, 2054, 6, 4, 'system', '2025-08-10 08:00:00', NULL, NULL, 0);