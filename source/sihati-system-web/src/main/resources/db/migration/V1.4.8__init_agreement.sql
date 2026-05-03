INSERT INTO care.agreement(
    id, code, agreement_number, notes, start_date, end_date, status, organisational_structure_id, provider_id, enabled, created_by, creation_date, last_modified_by, last_modified_date, version
)
VALUES

-- ===================== ALGER REGION (URA - id=2) AGREEMENTS =====================
-- CHU Mustapha Pacha (provider_id=1)
(1, 'AGR-001', 'AGR-2024-001', 'Convention CHU Mustapha Pacha - Alger', '2024-01-01', '2026-12-31', 'ACTIVE', 2, 1, true, 'system', now(), NULL, NULL, 0),

-- CHU Beni Messous (provider_id=2)
(2, 'AGR-002', 'AGR-2024-002', 'Convention CHU Beni Messous - Alger', '2024-01-01', '2026-12-31', 'ACTIVE', 2, 2, true, 'system', now(), NULL, NULL, 0),

-- Clinique El Amel Alger (provider_id=6)
(3, 'AGR-003', 'AGR-2024-003', 'Convention Clinique El Amel - Hydra', '2024-03-15', '2026-03-14', 'ACTIVE', 2, 6, true, 'system', now(), NULL, NULL, 0),

-- Laboratoire Atlas Médical (provider_id=11)
(4, 'AGR-004', 'AGR-2024-004', 'Convention Laboratoire Atlas Médical', '2024-02-01', '2026-01-31', 'ACTIVE', 2, 11, true, 'system', now(), NULL, NULL, 0),

-- Laboratoire Pasteur Alger (provider_id=13)
(5, 'AGR-005', 'AGR-2024-005', 'Convention Laboratoire Pasteur Alger', '2024-01-10', '2026-01-09', 'ACTIVE', 2, 13, true, 'system', now(), NULL, NULL, 0),

-- Centre Radiologie El Djazair (provider_id=15)
(6, 'AGR-006', 'AGR-2024-006', 'Convention Centre Radiologie El Djazair', '2024-04-01', '2026-03-31', 'ACTIVE', 2, 15, true, 'system', now(), NULL, NULL, 0),

-- Centre Médical El Wafa (provider_id=18)
(7, 'AGR-007', 'AGR-2024-007', 'Convention Centre Médical El Wafa', '2024-05-01', '2026-04-30', 'ACTIVE', 2, 18, true, 'system', now(), NULL, NULL, 0),

-- Clinique El Kenz Alger (provider_id=21)
(8, 'AGR-008', 'AGR-2024-008', 'Convention Clinique El Kenz', '2024-06-01', '2026-05-31', 'ACTIVE', 2, 21, true, 'system', now(), NULL, NULL, 0),

-- Laboratoire BioPlus (provider_id=22)
(9, 'AGR-009', 'AGR-2024-009', 'Convention Laboratoire BioPlus', '2024-07-01', '2026-06-30', 'ACTIVE', 2, 22, true, 'system', now(), NULL, NULL, 0),

-- Radiologie El Amine (provider_id=25)
(10, 'AGR-010', 'AGR-2024-010', 'Convention Radiologie El Amine', '2024-08-01', '2026-07-31', 'ACTIVE', 2, 25, true, 'system', now(), NULL, NULL, 0),

-- Laboratoire NovaLab (provider_id=28)
(11, 'AGR-011', 'AGR-2024-011', 'Convention Laboratoire NovaLab', '2024-09-01', '2026-08-31', 'ACTIVE', 2, 28, true, 'system', now(), NULL, NULL, 0),

-- Clinique El Rahma Alger (provider_id=30)
(12, 'AGR-012', 'AGR-2024-012', 'Convention Clinique El Rahma', '2024-10-01', '2026-09-30', 'ACTIVE', 2, 30, true, 'system', now(), NULL, NULL, 0),

-- Laboratoire El Djazair (provider_id=32)
(13, 'AGR-013', 'AGR-2024-013', 'Convention Laboratoire El Djazair', '2024-11-01', '2026-10-31', 'ACTIVE', 2, 32, true, 'system', now(), NULL, NULL, 0),

-- Clinique El Fajr (provider_id=34)
(14, 'AGR-014', 'AGR-2024-014', 'Convention Clinique El Fajr', '2024-12-01', '2026-11-30', 'ACTIVE', 2, 34, true, 'system', now(), NULL, NULL, 0),

-- ===================== BLIDA REGION (UDB - id=3) AGREEMENTS =====================
-- Clinique El Farabi Blida (provider_id=9)
(15, 'AGR-015', 'AGR-2024-015', 'Convention Clinique El Farabi - Blida', '2024-02-15', '2026-02-14', 'ACTIVE', 3, 9, true, 'system', now(), NULL, NULL, 0),

-- Polyclinique El Hidaya Blida (provider_id=20)
(16, 'AGR-016', 'AGR-2024-016', 'Convention Polyclinique El Hidaya - Blida', '2024-03-01', '2026-02-28', 'ACTIVE', 3, 20, true, 'system', now(), NULL, NULL, 0),

-- ===================== ORAN REGION agreements with URA (id=2) - Oran providers under URA =====================
-- CHU Oran (provider_id=3)
(17, 'AGR-017', 'AGR-2024-017', 'Convention CHU Oran', '2024-01-01', '2026-12-31', 'ACTIVE', 2, 3, true, 'system', now(), NULL, NULL, 0),

-- Clinique Ibn Sina Oran (provider_id=7)
(18, 'AGR-018', 'AGR-2024-018', 'Convention Clinique Ibn Sina - Oran', '2024-03-15', '2026-03-14', 'ACTIVE', 2, 7, true, 'system', now(), NULL, NULL, 0),

-- Clinique MedCare Oran (provider_id=24)
(19, 'AGR-019', 'AGR-2024-019', 'Convention Clinique MedCare - Oran', '2024-04-01', '2026-03-31', 'ACTIVE', 2, 24, true, 'system', now(), NULL, NULL, 0),

-- Clinique El Hayat Oran (provider_id=27)
(20, 'AGR-020', 'AGR-2024-020', 'Convention Clinique El Hayat - Oran', '2024-05-01', '2026-04-30', 'ACTIVE', 2, 27, true, 'system', now(), NULL, NULL, 0),

-- Centre Scanner Oran (provider_id=17)
(21, 'AGR-021', 'AGR-2024-021', 'Convention Centre Scanner - Oran', '2024-06-01', '2026-05-31', 'ACTIVE', 2, 17, true, 'system', now(), NULL, NULL, 0),

-- Radiologie Atlas Oran (provider_id=31)
(22, 'AGR-022', 'AGR-2024-022', 'Convention Radiologie Atlas - Oran', '2024-07-01', '2026-06-30', 'ACTIVE', 2, 31, true, 'system', now(), NULL, NULL, 0),

-- Centre Médical Ibn Rochd Oran (provider_id=35)
(23, 'AGR-023', 'AGR-2024-023', 'Convention Centre Médical Ibn Rochd - Oran', '2024-08-01', '2026-07-31', 'ACTIVE', 2, 35, true, 'system', now(), NULL, NULL, 0),

-- ===================== CONSTANTINE REGION (URA EST - id=20) AGREEMENTS =====================
-- CHU Constantine (provider_id=4)
(24, 'AGR-024', 'AGR-2024-024', 'Convention CHU Constantine', '2024-01-01', '2026-12-31', 'ACTIVE', 20, 4, true, 'system', now(), NULL, NULL, 0),

-- CHU Annaba (provider_id=23)
(25, 'AGR-025', 'AGR-2024-025', 'Convention CHU Annaba', '2024-01-01', '2026-12-31', 'ACTIVE', 20, 23, true, 'system', now(), NULL, NULL, 0),

-- CHU Setif (provider_id=26)
(26, 'AGR-026', 'AGR-2024-026', 'Convention CHU Setif', '2024-01-01', '2026-12-31', 'ACTIVE', 20, 26, true, 'system', now(), NULL, NULL, 0),

-- CHU Tizi Ouzou (provider_id=33)
(27, 'AGR-027', 'AGR-2024-027', 'Convention CHU Tizi Ouzou', '2024-01-01', '2026-12-31', 'ACTIVE', 20, 33, true, 'system', now(), NULL, NULL, 0),

-- ===================== BISKRA REGION (MC - id=25) AGREEMENTS =====================
-- CHU Biskra (provider_id=5)
(28, 'AGR-028', 'AGR-2024-028', 'Convention CHU Biskra', '2024-01-01', '2026-12-31', 'ACTIVE', 25, 5, true, 'system', now(), NULL, NULL, 0),

-- Clinique El Wafa Biskra (provider_id=10)
(29, 'AGR-029', 'AGR-2024-029', 'Convention Clinique El Wafa - Biskra', '2024-03-15', '2026-03-14', 'ACTIVE', 25, 10, true, 'system', now(), NULL, NULL, 0),

-- Laboratoire El Hayat Biskra (provider_id=12)
(30, 'AGR-030', 'AGR-2024-030', 'Convention Laboratoire El Hayat - Biskra', '2024-04-01', '2026-03-31', 'ACTIVE', 25, 12, true, 'system', now(), NULL, NULL, 0),

-- Centre Imagerie Biskra (provider_id=16)
(31, 'AGR-031', 'AGR-2024-031', 'Convention Centre Imagerie - Biskra', '2024-05-01', '2026-04-30', 'ACTIVE', 25, 16, true, 'system', now(), NULL, NULL, 0),

-- ===================== JIJEL REGION (MC - id=24) AGREEMENTS =====================
-- Clinique El Rahma Jijel (provider_id=8)
(32, 'AGR-032', 'AGR-2024-032', 'Convention Clinique El Rahma - Jijel', '2024-03-01', '2026-02-28', 'ACTIVE', 24, 8, true, 'system', now(), NULL, NULL, 0),

-- Laboratoire Médical Jijel (provider_id=14)
(33, 'AGR-033', 'AGR-2024-033', 'Convention Laboratoire Médical - Jijel', '2024-04-15', '2026-04-14', 'ACTIVE', 24, 14, true, 'system', now(), NULL, NULL, 0),

-- Centre Médical El Amel Jijel (provider_id=19)
(34, 'AGR-034', 'AGR-2024-034', 'Convention Centre Médical El Amel - Jijel', '2024-05-15', '2026-05-14', 'ACTIVE', 24, 19, true, 'system', now(), NULL, NULL, 0),

-- ===================== EXPIRED AGREEMENTS =====================
-- Old agreement for CHU Mustapha Pacha (expired)
(35, 'AGR-035', 'AGR-2020-001', 'Ancienne convention CHU Mustapha Pacha', '2020-01-01', '2022-12-31', 'EXPIRED', 2, 1, false, 'system', '2020-01-01 08:00:00', NULL, NULL, 0),

-- Old agreement for Clinique El Amel (expired)
(36, 'AGR-036', 'AGR-2020-002', 'Ancienne convention Clinique El Amel', '2020-06-01', '2022-05-31', 'EXPIRED', 2, 6, false, 'system', '2020-06-01 08:00:00', NULL, NULL, 0),

-- ===================== INACTIVE AGREEMENTS =====================
-- Temporarily inactive provider agreement
(37, 'AGR-037', 'AGR-2023-001', 'Convention suspendue - renouvellement en cours', '2023-01-01', '2023-12-31', 'INACTIVE', 2, 34, false, 'system', '2023-01-01 08:00:00', NULL, NULL, 0),

-- ===================== CANCELLED AGREEMENTS =====================
-- Cancelled agreement for demonstration
(38, 'AGR-038', 'AGR-2022-001', 'Convention annulée - non-respect des termes', '2022-03-01', '2023-02-28', 'CANCELLED', 3, 9, false, 'system', '2022-03-01 08:00:00', NULL, NULL, 0),

-- ===================== BEN AKNOUN MC (id=4) - Specific medical center agreements =====================
-- BEN AKNOUN medical center agreements (organisational_structure_id=4)
(39, 'AGR-039', 'AGR-BA-001', 'Convention BEN AKNOUN - CHU Mustapha Pacha', '2024-01-01', '2026-12-31', 'ACTIVE', 4, 1, true, 'system', now(), NULL, NULL, 0),
(40, 'AGR-040', 'AGR-BA-002', 'Convention BEN AKNOUN - Clinique El Amel', '2024-03-15', '2026-03-14', 'ACTIVE', 4, 6, true, 'system', now(), NULL, NULL, 0),
(41, 'AGR-041', 'AGR-BA-003', 'Convention BEN AKNOUN - Laboratoire Pasteur', '2024-01-10', '2026-01-09', 'ACTIVE', 4, 13, true, 'system', now(), NULL, NULL, 0),

-- ===================== GUE DE CONSTANTINE MC (id=5) - Specific medical center agreements =====================
(42, 'AGR-042', 'AGR-GC-001', 'Convention GUE DE CONSTANTINE - CHU Mustapha Pacha', '2024-01-01', '2026-12-31', 'ACTIVE', 5, 1, true, 'system', now(), NULL, NULL, 0),
(43, 'AGR-043', 'AGR-GC-002', 'Convention GUE DE CONSTANTINE - CHU Constantine', '2024-01-01', '2026-12-31', 'ACTIVE', 5, 4, true, 'system', now(), NULL, NULL, 0),

-- ===================== RUISSEAU MC (id=6) - Specific medical center agreements =====================
(44, 'AGR-044', 'AGR-RUI-001', 'Convention RUISSEAU - Laboratoire Atlas', '2024-02-01', '2026-01-31', 'ACTIVE', 6, 11, true, 'system', now(), NULL, NULL, 0),

-- ===================== BLIDA MC (id=9) - Specific agreements =====================
(45, 'AGR-045', 'AGR-BLD-001', 'Convention BLIDA - Clinique El Farabi', '2024-02-15', '2026-02-14', 'ACTIVE', 9, 9, true, 'system', now(), NULL, NULL, 0),
(46, 'AGR-046', 'AGR-BLD-002', 'Convention BLIDA - Polyclinique El Hidaya', '2024-03-01', '2026-02-28', 'ACTIVE', 9, 20, true, 'system', now(), NULL, NULL, 0),

-- ===================== TIZI OUZOU MC (id=10) - Specific agreements =====================
(47, 'AGR-047', 'AGR-TO-001', 'Convention TIZI OUZOU - CHU Tizi Ouzou', '2024-01-01', '2026-12-31', 'ACTIVE', 10, 33, true, 'system', now(), NULL, NULL, 0),

-- ===================== LABORATOIRE HASSIBA MC (id=11) - Specific agreements =====================
(48, 'AGR-048', 'AGR-LH-001', 'Convention LABORATOIRE HASSIBA - Laboratoire BioPlus', '2024-07-01', '2026-06-30', 'ACTIVE', 11, 22, true, 'system', now(), NULL, NULL, 0),
(49, 'AGR-049', 'AGR-LH-002', 'Convention LABORATOIRE HASSIBA - Laboratoire El Djazair', '2024-11-01', '2026-10-31', 'ACTIVE', 11, 32, true, 'system', now(), NULL, NULL, 0),

-- ===================== REEDUCATION RADIOLOGIE MC (id=12) - Specific agreements =====================
(50, 'AGR-050', 'AGR-RR-001', 'Convention REEDUCATION RADIOLOGIE - Centre Radiologie El Djazair', '2024-04-01', '2026-03-31', 'ACTIVE', 12, 15, true, 'system', now(), NULL, NULL, 0),
(51, 'AGR-051', 'AGR-RR-002', 'Convention REEDUCATION RADIOLOGIE - Radiologie El Amine', '2024-08-01', '2026-07-31', 'ACTIVE', 12, 25, true, 'system', now(), NULL, NULL, 0),

-- ===================== BISKRA MC (id=25) - Additional specific agreements =====================
(52, 'AGR-052', 'AGR-BSK-001', 'Convention BISKRA - CHU Biskra', '2024-01-01', '2026-12-31', 'ACTIVE', 25, 5, true, 'system', now(), NULL, NULL, 0),
(53, 'AGR-053', 'AGR-BSK-002', 'Convention BISKRA - Clinique El Wafa', '2024-03-15', '2026-03-14', 'ACTIVE', 25, 10, true, 'system', now(), NULL, NULL, 0),

-- ===================== JIJEL MC (id=24) - Additional specific agreements =====================
(54, 'AGR-054', 'AGR-JJL-001', 'Convention JIJEL - Clinique El Rahma', '2024-03-01', '2026-02-28', 'ACTIVE', 24, 8, true, 'system', now(), NULL, NULL, 0),

-- ===================== BATNA MC (id=21) - New agreements =====================
(55, 'AGR-055', 'AGR-BAT-001', 'Convention BATNA - CHU Constantine', '2024-01-01', '2026-12-31', 'ACTIVE', 21, 4, true, 'system', now(), NULL, NULL, 0),

-- ===================== BEJAIA MC (id=22) - New agreements =====================
(56, 'AGR-056', 'AGR-BJA-001', 'Convention BEJAIA - CHU Setif', '2024-01-01', '2026-12-31', 'ACTIVE', 22, 26, true, 'system', now(), NULL, NULL, 0),

-- ===================== ANNABA MC (id=28) - New agreements =====================
(57, 'AGR-057', 'AGR-ANB-001', 'Convention ANNABA - CHU Annaba', '2024-01-01', '2026-12-31', 'ACTIVE', 28, 23, true, 'system', now(), NULL, NULL, 0),

-- ===================== SKIKDA MC (id=27) - New agreements =====================
(58, 'AGR-058', 'AGR-SKD-001', 'Convention SKIKDA - CHU Constantine', '2024-01-01', '2026-12-31', 'ACTIVE', 27, 4, true, 'system', now(), NULL, NULL, 0),

-- ===================== CONSTANTINE MC (id=26) - Specific agreements =====================
(59, 'AGR-059', 'AGR-CST-001', 'Convention CONSTANTINE - CHU Constantine', '2024-01-01', '2026-12-31', 'ACTIVE', 26, 4, true, 'system', now(), NULL, NULL, 0);