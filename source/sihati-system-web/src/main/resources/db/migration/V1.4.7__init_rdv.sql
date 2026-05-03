INSERT INTO care.request_appointment (
    id, appointment_number, reason, appointment_date, status,
    patient_id, timing_doctor_id, medical_center_id, specialty_id, healthprofessional_id,
    created_by, creation_date, last_modified_by, last_modified_date, version
)
VALUES

-- ===================== YASMINE BAICHE (1) - Anemia =====================
(1, 'REQ-2024-001', 'Première consultation fatigue', '2024-11-15 09:00:00', 'ACCEPTE',
 1, 1, 4, 32, 4, 'system', '2024-11-10 08:00:00', NULL, NULL, 0),
(2, 'REQ-2024-002', 'Résultats bilan sanguin', '2024-12-10 11:00:00', 'ACCEPTE',
 1, 2, 4, 32, 4, 'system', '2024-12-05 08:00:00', NULL, NULL, 0),
(3, 'REQ-2025-001', 'Contrôle anémie', '2025-02-15 09:00:00', 'ACCEPTE',
 1, 297, 4, 32, 4, 'system', '2025-02-10 08:00:00', NULL, NULL, 0),
(4, 'REQ-2025-002', 'Suivi traitement fer', '2025-04-20 14:00:00', 'ACCEPTE',
 1, 298, 4, 32, 4, 'system', '2025-04-15 08:00:00', NULL, NULL, 0),
(5, 'REQ-2025-003', 'Contrôle programmé', '2026-06-03 09:00:00', 'MIS_EN_ATTENTE',
 1, 608, 4, 32, 4, 'system', now(), NULL, NULL, 0),
(6, 'REQ-2025-004', 'Consultation suivi', '2026-07-08 09:00:00', 'MIS_EN_ATTENTE',
 1, 631, 4, 32, 4, 'system', now(), NULL, NULL, 0),
-- Annulé: Patient canceled due to scheduling conflict
(7, 'REQ-2024-100', 'Consultation de routine', '2024-05-20 10:00:00', 'ANNULE',
 1, 297, 4, 32, 4, 'system', '2024-05-15 08:00:00', NULL, NULL, 0),

-- ===================== ANFAL DAOUDI (2) - Migraine =====================
(8, 'REQ-2024-003', 'Première consultation migraine', '2024-10-05 09:00:00', 'ACCEPTE',
 2, 304, 4, 32, 9, 'system', '2024-10-01 08:00:00', NULL, NULL, 0),
(9, 'REQ-2024-004', 'Migraines persistantes', '2024-11-20 09:00:00', 'ACCEPTE',
 2, 305, 4, 32, 9, 'system', '2024-11-15 08:00:00', NULL, NULL, 0),
(10, 'REQ-2025-005', 'Renouvellement traitement', '2025-01-10 10:00:00', 'ACCEPTE',
 2, 297, 4, 32, 4, 'system', '2025-01-05 08:00:00', NULL, NULL, 0),
(11, 'REQ-2025-006', 'Contrôle trimestriel', '2025-03-15 09:00:00', 'ACCEPTE',
 2, 298, 4, 32, 4, 'system', '2025-03-10 08:00:00', NULL, NULL, 0),
(12, 'REQ-2025-007', 'Consultation suivi', '2025-05-20 14:00:00', 'ACCEPTE',
 2, 299, 4, 32, 4, 'system', '2025-05-15 08:00:00', NULL, NULL, 0),
(13, 'REQ-2025-008', 'Migraines plus fréquentes', '2026-07-15 09:00:00', 'MIS_EN_ATTENTE',
 2, 635, 4, 32, 4, 'system', now(), NULL, NULL, 0),
-- Refusé: Insurance didn't cover this specialist
(14, 'REQ-2024-101', 'Consultation spécialiste migraine', '2024-07-25 14:00:00', 'REFUSE',
 2, 8, 4, 1, 35, 'system', '2024-07-20 08:00:00', NULL, NULL, 0),

-- ===================== RAYANE MOUZAOUI (3) - Asthma =====================
(15, 'REQ-2024-005', 'Diagnostic asthme', '2024-09-10 10:00:00', 'ACCEPTE',
 3, 61, 9, 4, 69, 'system', '2024-09-05 08:00:00', NULL, NULL, 0),
(16, 'REQ-2024-006', 'Mise en place traitement', '2024-10-25 09:00:00', 'ACCEPTE',
 3, 61, 9, 4, 69, 'system', '2024-10-20 08:00:00', NULL, NULL, 0),
(17, 'REQ-2025-009', 'Contrôle asthme', '2025-01-15 09:00:00', 'ACCEPTE',
 3, 62, 9, 4, 69, 'system', '2025-01-10 08:00:00', NULL, NULL, 0),
(18, 'REQ-2025-010', 'Crise d''asthme - Consultation', '2025-03-20 09:00:00', 'ACCEPTE',
 3, 63, 9, 4, 69, 'system', '2025-03-15 08:00:00', NULL, NULL, 0),
(19, 'REQ-2025-011', 'Suivi programmé', '2025-05-27 09:00:00', 'ACCEPTE',
 3, 61, 9, 4, 69, 'system', '2025-05-22 08:00:00', NULL, NULL, 0),
(20, 'REQ-2025-012', 'Réajustement traitement', '2026-07-22 09:00:00', 'MIS_EN_ATTENTE',
 3, 676, 9, 4, 69, 'system', now(), NULL, NULL, 0),
-- Annulé: Patient was unavailable
(21, 'REQ-2024-102', 'Contrôle spirométrie', '2024-08-15 11:00:00', 'ANNULE',
 3, 62, 9, 4, 69, 'system', '2024-08-10 08:00:00', NULL, NULL, 0),

-- ===================== ILYES REDJEL (4) - Hypertension =====================
(22, 'REQ-2024-007', 'Découverte hypertension', '2024-08-15 09:00:00', 'ACCEPTE',
 4, 310, 5, 32, 26, 'system', '2024-08-10 08:00:00', NULL, NULL, 0),
(23, 'REQ-2024-008', 'Contrôle tension artérielle', '2024-09-20 10:00:00', 'ACCEPTE',
 4, 311, 5, 32, 26, 'system', '2024-09-15 08:00:00', NULL, NULL, 0),
(24, 'REQ-2024-009', 'Consultation cardiologie', '2024-10-25 09:00:00', 'ACCEPTE',
 4, 8, 4, 1, 35, 'system', '2024-10-20 08:00:00', NULL, NULL, 0),
(25, 'REQ-2024-010', 'Suivi cardiologique', '2024-12-05 11:00:00', 'ACCEPTE',
 4, 11, 5, 1, 35, 'system', '2024-12-01 08:00:00', NULL, NULL, 0),
(26, 'REQ-2025-013', 'Contrôle mensuel', '2025-01-10 09:00:00', 'ACCEPTE',
 4, 8, 4, 1, 35, 'system', '2025-01-05 08:00:00', NULL, NULL, 0),
(27, 'REQ-2025-014', 'Suivi cardiologie', '2025-02-15 14:00:00', 'ACCEPTE',
 4, 10, 4, 1, 35, 'system', '2025-02-10 08:00:00', NULL, NULL, 0),
(28, 'REQ-2025-015', 'Échographie cardiaque', '2025-03-20 09:00:00', 'ACCEPTE',
 4, 14, 6, 1, 36, 'system', '2025-03-15 08:00:00', NULL, NULL, 0),
(29, 'REQ-2025-016', 'Contrôle mensuel', '2025-04-25 10:00:00', 'ACCEPTE',
 4, 517, 4, 1, 35, 'system', '2025-04-20 08:00:00', NULL, NULL, 0),
(30, 'REQ-2025-017', 'Urgence tension élevée', '2025-05-30 09:00:00', 'ACCEPTE',
 4, 311, 5, 32, 26, 'system', '2025-05-28 08:00:00', NULL, NULL, 0),
(31, 'REQ-2025-018', 'Consultation suivi', '2026-06-19 10:00:00', 'MIS_EN_ATTENTE',
 4, 514, 5, 1, 34, 'system', now(), NULL, NULL, 0),
(32, 'REQ-2025-019', 'Contrôle programmé', '2026-08-12 09:00:00', 'MIS_EN_ATTENTE',
 4, 558, 4, 1, 1, 'system', now(), NULL, NULL, 0),
-- Refusé: Request denied by medical board
(33, 'REQ-2024-103', 'Demande de avis cardiologique', '2024-06-18 15:00:00', 'REFUSE',
 4, 10, 4, 1, 35, 'system', '2024-06-13 08:00:00', NULL, NULL, 0),

-- ===================== OMAR BAICHE (5) - Diabetes =====================
(34, 'REQ-2023-001', 'Diagnostic diabète', '2023-06-10 09:00:00', 'ACCEPTE',
 5, 146, 4, 14, 41, 'system', '2023-06-05 08:00:00', NULL, NULL, 0),
(35, 'REQ-2023-002', 'Mise en place traitement', '2023-07-15 10:00:00', 'ACCEPTE',
 5, 146, 4, 14, 41, 'system', '2023-07-10 08:00:00', NULL, NULL, 0),
(36, 'REQ-2023-003', 'Premier contrôle', '2023-08-20 09:00:00', 'ACCEPTE',
 5, 147, 4, 14, 41, 'system', '2023-08-15 08:00:00', NULL, NULL, 0),
(37, 'REQ-2024-011', 'Contrôle trimestriel', '2024-01-25 09:00:00', 'ACCEPTE',
 5, 146, 4, 14, 41, 'system', '2024-01-20 08:00:00', NULL, NULL, 0),
(38, 'REQ-2024-012', 'Consultation cardiologie', '2024-02-28 10:00:00', 'ACCEPTE',
 5, 4, 4, 1, 34, 'system', '2024-02-23 08:00:00', NULL, NULL, 0),
(39, 'REQ-2024-013', 'Examen des yeux', '2024-03-15 10:00:00', 'ACCEPTE',
 5, 30, 10, 2, 49, 'system', '2024-03-10 08:00:00', NULL, NULL, 0),
(40, 'REQ-2024-014', 'Contrôle glycémie', '2024-04-20 09:00:00', 'ACCEPTE',
 5, 147, 4, 14, 41, 'system', '2024-04-15 08:00:00', NULL, NULL, 0),
(41, 'REQ-2024-015', 'Suivi traitement', '2024-07-10 09:00:00', 'ACCEPTE',
 5, 148, 4, 14, 41, 'system', '2024-07-05 08:00:00', NULL, NULL, 0),
(42, 'REQ-2024-016', 'Contrôle cardiologique', '2024-09-05 10:00:00', 'ACCEPTE',
 5, 6, 5, 1, 34, 'system', '2024-08-31 08:00:00', NULL, NULL, 0),
(43, 'REQ-2024-017', 'Bilan semestriel', '2024-11-20 09:00:00', 'ACCEPTE',
 5, 146, 4, 14, 41, 'system', '2024-11-15 08:00:00', NULL, NULL, 0),
(44, 'REQ-2025-020', 'Contrôle trimestriel', '2025-02-10 09:00:00', 'ACCEPTE',
 5, 147, 4, 14, 41, 'system', '2025-02-05 08:00:00', NULL, NULL, 0),
(45, 'REQ-2025-021', 'Consultation ophtalmo', '2025-03-25 10:00:00', 'ACCEPTE',
 5, 31, 10, 2, 49, 'system', '2025-03-20 08:00:00', NULL, NULL, 0),
(46, 'REQ-2025-022', 'Contrôle cardiologie', '2025-05-15 13:00:00', 'ACCEPTE',
 5, 510, 5, 1, 34, 'system', '2025-05-10 08:00:00', NULL, NULL, 0),
(47, 'REQ-2025-023', 'Suivi endocrinologue', '2026-07-01 09:00:00', 'MIS_EN_ATTENTE',
 5, 146, 4, 14, 41, 'system', now(), NULL, NULL, 0),
(48, 'REQ-2025-024', 'Bilan annuel', '2026-09-20 09:00:00', 'MIS_EN_ATTENTE',
 5, 148, 4, 14, 41, 'system', now(), NULL, NULL, 0),
-- Annulé: Patient had emergency surgery
(49, 'REQ-2023-100', 'Consultation endocrinologie', '2023-11-10 14:00:00', 'ANNULE',
 5, 148, 4, 14, 41, 'system', '2023-11-05 08:00:00', NULL, NULL, 0),

-- ===================== SALIMA IKENE (6) - Arthrosis =====================
(50, 'REQ-2024-018', 'Douleurs articulaires', '2024-02-10 09:00:00', 'ACCEPTE',
 6, 109, 4, 8, 87, 'system', '2024-02-05 08:00:00', NULL, NULL, 0),
(51, 'REQ-2024-019', 'Diagnostic arthrose', '2024-03-15 10:00:00', 'ACCEPTE',
 6, 109, 4, 8, 87, 'system', '2024-03-10 08:00:00', NULL, NULL, 0),
(52, 'REQ-2024-020', 'Séance kinésithérapie', '2024-04-05 09:00:00', 'ACCEPTE',
 6, 215, 12, 22, 91, 'system', '2024-04-01 08:00:00', NULL, NULL, 0),
(53, 'REQ-2024-021', 'Contrôle rhumatologie', '2024-06-10 09:00:00', 'ACCEPTE',
 6, 110, 4, 8, 87, 'system', '2024-06-05 08:00:00', NULL, NULL, 0),
(54, 'REQ-2024-022', 'Séance rééducation', '2024-08-20 10:00:00', 'ACCEPTE',
 6, 216, 12, 22, 91, 'system', '2024-08-15 08:00:00', NULL, NULL, 0),
(55, 'REQ-2024-023', 'Contrôle rhumatologie', '2024-10-15 09:00:00', 'ACCEPTE',
 6, 111, 4, 8, 87, 'system', '2024-10-10 08:00:00', NULL, NULL, 0),
(56, 'REQ-2024-024', 'Radiographie genoux', '2024-12-05 10:00:00', 'ACCEPTE',
 6, 242, 12, 26, 230, 'system', '2024-12-01 08:00:00', NULL, NULL, 0),
(57, 'REQ-2025-025', 'Contrôle rhumatologie', '2025-01-20 09:00:00', 'ACCEPTE',
 6, 109, 4, 8, 87, 'system', '2025-01-15 08:00:00', NULL, NULL, 0),
(58, 'REQ-2025-026', 'Séance rééducation', '2025-03-10 09:00:00', 'ACCEPTE',
 6, 215, 12, 22, 91, 'system', '2025-03-05 08:00:00', NULL, NULL, 0),
(59, 'REQ-2025-027', 'Contrôle rhumatologie', '2025-05-05 09:00:00', 'ACCEPTE',
 6, 110, 4, 8, 87, 'system', '2025-04-30 08:00:00', NULL, NULL, 0),
(60, 'REQ-2025-028', 'Suivi programmé', '2026-07-08 09:00:00', 'MIS_EN_ATTENTE',
 6, 110, 4, 8, 87, 'system', now(), NULL, NULL, 0),
(61, 'REQ-2025-029', 'Radiographie contrôle', '2026-08-05 09:00:00', 'MIS_EN_ATTENTE',
 6, 245, 4, 26, 231, 'system', now(), NULL, NULL, 0),
-- Refusé: Procedure not covered
(62, 'REQ-2024-104', 'Infiltration articulaire', '2024-07-18 11:00:00', 'REFUSE',
 6, 111, 4, 8, 87, 'system', '2024-07-13 08:00:00', NULL, NULL, 0),

-- ===================== MAHMOUD DAOUDI (7) - Hypertension =====================
(63, 'REQ-2022-001', 'Diagnostic hypertension', '2022-09-10 09:00:00', 'ACCEPTE',
 7, 310, 5, 32, 26, 'system', '2022-09-05 08:00:00', NULL, NULL, 0),
(64, 'REQ-2022-002', 'Mise en place traitement', '2022-10-15 10:00:00', 'ACCEPTE',
 7, 311, 5, 32, 26, 'system', '2022-10-10 08:00:00', NULL, NULL, 0),
(65, 'REQ-2023-004', 'Consultation cardiologie', '2023-01-20 11:00:00', 'ACCEPTE',
 7, 8, 4, 1, 35, 'system', '2023-01-15 08:00:00', NULL, NULL, 0),
(66, 'REQ-2023-005', 'Contrôle mensuel', '2023-02-25 09:00:00', 'ACCEPTE',
 7, 310, 5, 32, 26, 'system', '2023-02-20 08:00:00', NULL, NULL, 0),
(67, 'REQ-2023-006', 'Suivi cardiologie', '2023-04-05 14:00:00', 'ACCEPTE',
 7, 9, 4, 1, 35, 'system', '2023-04-01 08:00:00', NULL, NULL, 0),
(68, 'REQ-2023-007', 'Échographie cardiaque', '2023-06-10 09:00:00', 'ACCEPTE',
 7, 13, 6, 1, 36, 'system', '2023-06-05 08:00:00', NULL, NULL, 0),
(69, 'REQ-2023-008', 'Contrôle hypertension', '2023-08-15 10:00:00', 'ACCEPTE',
 7, 311, 5, 32, 26, 'system', '2023-08-10 08:00:00', NULL, NULL, 0),
(70, 'REQ-2023-009', 'Consultation cardiologie', '2023-10-20 09:00:00', 'ACCEPTE',
 7, 10, 4, 1, 35, 'system', '2023-10-15 08:00:00', NULL, NULL, 0),
(71, 'REQ-2023-010', 'Contrôle annuel', '2023-12-15 09:00:00', 'ACCEPTE',
 7, 310, 5, 32, 26, 'system', '2023-12-10 08:00:00', NULL, NULL, 0),
(72, 'REQ-2024-025', 'Suivi cardiologie', '2024-02-10 09:00:00', 'ACCEPTE',
 7, 8, 4, 1, 35, 'system', '2024-02-05 08:00:00', NULL, NULL, 0),
(73, 'REQ-2024-026', 'Contrôle tension', '2024-04-15 10:00:00', 'ACCEPTE',
 7, 517, 4, 1, 35, 'system', '2024-04-10 08:00:00', NULL, NULL, 0),
(74, 'REQ-2025-030', 'Consultation suivi', '2025-06-09 09:00:00', 'ACCEPTE',
 7, 519, 4, 1, 35, 'system', '2025-05-25 08:00:00', NULL, NULL, 0),
(75, 'REQ-2025-031', 'Échocardiographie', '2026-07-06 14:00:00', 'MIS_EN_ATTENTE',
 7, 529, 4, 1, 1, 'system', now(), NULL, NULL, 0),
(76, 'REQ-2025-032', 'Contrôle trimestriel', '2026-09-10 09:00:00', 'MIS_EN_ATTENTE',
 7, 520, 4, 1, 35, 'system', now(), NULL, NULL, 0),
-- Annulé x2: Patient rescheduled multiple times
(77, 'REQ-2023-101', 'Consultation de suivi', '2023-07-25 09:00:00', 'ANNULE',
 7, 9, 4, 1, 35, 'system', '2023-07-20 08:00:00', NULL, NULL, 0),
(78, 'REQ-2024-105', 'Contrôle tension', '2024-09-18 11:00:00', 'ANNULE',
 7, 311, 5, 32, 26, 'system', '2024-09-13 08:00:00', NULL, NULL, 0),

-- ===================== FARIDA IDOUI (8) - Cholesterol =====================
(79, 'REQ-2024-027', 'Découverte cholestérol', '2024-03-10 09:00:00', 'ACCEPTE',
 8, 304, 4, 32, 9, 'system', '2024-03-05 08:00:00', NULL, NULL, 0),
(80, 'REQ-2024-028', 'Mise en place régime', '2024-04-15 10:00:00', 'ACCEPTE',
 8, 305, 4, 32, 9, 'system', '2024-04-10 08:00:00', NULL, NULL, 0),
(81, 'REQ-2024-029', 'Premier contrôle', '2024-07-05 09:00:00', 'ACCEPTE',
 8, 297, 4, 32, 4, 'system', '2024-07-01 08:00:00', NULL, NULL, 0),
(82, 'REQ-2024-030', 'Contrôle bilan lipidique', '2024-10-20 10:00:00', 'ACCEPTE',
 8, 298, 4, 32, 4, 'system', '2024-10-15 08:00:00', NULL, NULL, 0),
(83, 'REQ-2025-033', 'Contrôle trimestriel', '2025-01-15 09:00:00', 'ACCEPTE',
 8, 299, 4, 32, 4, 'system', '2025-01-10 08:00:00', NULL, NULL, 0),
(84, 'REQ-2025-034', 'Suivi cholestérol', '2025-04-20 09:00:00', 'ACCEPTE',
 8, 297, 4, 32, 4, 'system', '2025-04-15 08:00:00', NULL, NULL, 0),
(85, 'REQ-2025-035', 'Contrôle programmé', '2026-07-10 09:00:00', 'MIS_EN_ATTENTE',
 8, 298, 4, 32, 4, 'system', now(), NULL, NULL, 0),
-- Refusé: Patient didn't qualify for specialized care
(86, 'REQ-2024-106', 'Consultation nutritionniste', '2024-08-05 14:00:00', 'REFUSE',
 8, 299, 4, 32, 4, 'system', '2024-07-31 08:00:00', NULL, NULL, 0),

-- ===================== MILOUD OUZIANE (2001) - Gastritis =====================
 (87, 'REQ-2024-031', 'Douleurs estomac', '2024-08-20 09:00:00', 'ACCEPTE',
  2001, 297, 4, 32, 4, 'system', '2024-08-15 08:00:00', NULL, NULL, 0),
 (88, 'REQ-2024-032', 'Diagnostic gastrite', '2024-09-25 10:00:00', 'ACCEPTE',
  2001, 298, 4, 32, 4, 'system', '2024-09-20 08:00:00', NULL, NULL, 0),
 (89, 'REQ-2024-033', 'Premier contrôle', '2024-11-10 09:00:00', 'ACCEPTE',
  2001, 299, 4, 32, 4, 'system', '2024-11-05 08:00:00', NULL, NULL, 0),
 (90, 'REQ-2025-036', 'Contrôle semestriel', '2025-01-15 14:00:00', 'ACCEPTE',
  2001, 297, 4, 32, 4, 'system', '2025-01-10 08:00:00', NULL, NULL, 0),
 (91, 'REQ-2025-037', 'Suivi traitement', '2025-03-20 09:00:00', 'ACCEPTE',
  2001, 298, 4, 32, 4, 'system', '2025-03-15 08:00:00', NULL, NULL, 0),
 (92, 'REQ-2025-038', 'Consultation gastro', '2025-05-29 14:00:00', 'ACCEPTE',
  2001, 326, 4, 15, 244, 'system', '2025-05-24 08:00:00', NULL, NULL, 0),
 (93, 'REQ-2025-039', 'Contrôle annuel', '2026-09-15 09:00:00', 'MIS_EN_ATTENTE',
  2001, 299, 4, 32, 4, 'system', now(), NULL, NULL, 0),
-- Annulé: Patient canceled last minute
 (94, 'REQ-2024-107', 'Consultation gastro de urgence', '2024-10-10 15:00:00', 'ANNULE',
  2001, 326, 4, 15, 244, 'system', '2024-10-05 08:00:00', NULL, NULL, 0),

-- ===================== KARIM HAMITI (2005) - Ulcers =====================
 (95, 'REQ-2024-034', 'Douleurs abdominales sévères', '2024-07-10 09:00:00', 'ACCEPTE',
  2005, 1, 4, 32, 4, 'system', '2024-07-05 08:00:00', NULL, NULL, 0),
 (96, 'REQ-2024-035', 'Diagnostic ulcères', '2024-08-15 10:00:00', 'ACCEPTE',
  2005, 2, 4, 32, 4, 'system', '2024-08-10 08:00:00', NULL, NULL, 0),
 (97, 'REQ-2024-036', 'Consultation gastro', '2024-09-20 14:00:00', 'ACCEPTE',
  2005, 326, 4, 15, 244, 'system', '2024-09-15 08:00:00', NULL, NULL, 0),
 (98, 'REQ-2024-037', 'Contrôle trimestriel', '2024-12-05 09:00:00', 'ACCEPTE',
  2005, 327, 4, 15, 244, 'system', '2024-12-01 08:00:00', NULL, NULL, 0),
 (99, 'REQ-2025-040', 'Suivi ulcères', '2025-03-10 09:00:00', 'ACCEPTE',
  2005, 326, 4, 15, 244, 'system', '2025-03-05 08:00:00', NULL, NULL, 0),
 (100, 'REQ-2025-041', 'Contrôle programmé', '2026-06-15 10:00:00', 'MIS_EN_ATTENTE',
  2005, 327, 4, 15, 244, 'system', now(), NULL, NULL, 0),
-- Refusé: Request for emergency endoscopy denied
 (101, 'REQ-2024-108', 'Endoscopie digestive', '2024-11-22 08:00:00', 'REFUSE',
  2005, 327, 4, 15, 244, 'system', '2024-11-17 08:00:00', NULL, NULL, 0),

-- ===================== HOCINE MILOUDI (2012) - Allergy =====================
 (102, 'REQ-2024-038', 'Allergies saisonnières', '2024-04-15 09:00:00', 'ACCEPTE',
  2012, 297, 4, 32, 4, 'system', '2024-04-10 08:00:00', NULL, NULL, 0),
 (103, 'REQ-2024-039', 'Consultation allergo', '2024-05-20 14:00:00', 'ACCEPTE',
  2012, 330, 5, 18, 246, 'system', '2024-05-15 08:00:00', NULL, NULL, 0),
 (104, 'REQ-2024-040', 'Traitement allergie', '2024-06-25 09:00:00', 'ACCEPTE',
  2012, 298, 4, 32, 4, 'system', '2024-06-20 08:00:00', NULL, NULL, 0),
 (105, 'REQ-2024-041', 'Contrôle saisonnier', '2024-09-10 10:00:00', 'ACCEPTE',
  2012, 299, 4, 32, 4, 'system', '2024-09-05 08:00:00', NULL, NULL, 0),
 (106, 'REQ-2025-042', 'Allergies printanières', '2025-03-25 09:00:00', 'ACCEPTE',
  2012, 330, 5, 18, 246, 'system', '2025-03-20 08:00:00', NULL, NULL, 0),
 (107, 'REQ-2025-043', 'Consultation suivi', '2026-07-15 10:00:00', 'MIS_EN_ATTENTE',
  2012, 331, 5, 18, 246, 'system', now(), NULL, NULL, 0),
-- Annulé: Patient forgot and didn't show
 (108, 'REQ-2024-109', 'Test allergologique', '2024-08-10 11:00:00', 'ANNULE',
  2012, 330, 5, 18, 246, 'system', '2024-08-05 08:00:00', NULL, NULL, 0),

-- ===================== MOHAMED OUZIANE (2004) - Cancer =====================
 (109, 'REQ-2024-042', 'Découverte hypertension', '2024-03-10 09:00:00', 'ACCEPTE',
  2004, 310, 5, 32, 26, 'system', '2024-03-05 08:00:00', NULL, NULL, 0),
 (110, 'REQ-2024-043', 'Consultation cardiologie', '2024-04-15 11:00:00', 'ACCEPTE',
  2004, 8, 4, 1, 35, 'system', '2024-04-10 08:00:00', NULL, NULL, 0),
 (111, 'REQ-2024-044', 'Diagnostic cancer', '2024-05-20 09:00:00', 'ACCEPTE',
  2004, 131, 12, 11, 83, 'system', '2024-05-15 08:00:00', NULL, NULL, 0),
 (112, 'REQ-2024-045', 'Première séance oncologie', '2024-06-25 10:00:00', 'ACCEPTE',
  2004, 132, 12, 11, 83, 'system', '2024-06-20 08:00:00', NULL, NULL, 0),
 (113, 'REQ-2024-046', 'Contrôle oncologie', '2024-08-30 09:00:00', 'ACCEPTE',
  2004, 133, 12, 11, 83, 'system', '2024-08-25 08:00:00', NULL, NULL, 0),
 (114, 'REQ-2024-047', 'Suivi cardiologique', '2024-10-15 09:00:00', 'ACCEPTE',
  2004, 10, 4, 1, 35, 'system', '2024-10-10 08:00:00', NULL, NULL, 0),
 (115, 'REQ-2024-048', 'Consultation oncologie', '2024-12-20 11:00:00', 'ACCEPTE',
  2004, 131, 12, 11, 83, 'system', '2024-12-15 08:00:00', NULL, NULL, 0),
 (116, 'REQ-2025-044', 'Contrôle trimestriel', '2025-03-25 10:00:00', 'ACCEPTE',
  2004, 132, 12, 11, 83, 'system', '2025-03-20 08:00:00', NULL, NULL, 0),
 (117, 'REQ-2025-045', 'Suivi oncologique', '2026-06-15 09:00:00', 'MIS_EN_ATTENTE',
  2004, 133, 12, 11, 83, 'system', now(), NULL, NULL, 0),
 (118, 'REQ-2025-046', 'Contrôle cardiologie', '2026-08-10 09:00:00', 'MIS_EN_ATTENTE',
  2004, 11, 5, 1, 35, 'system', now(), NULL, NULL, 0),
-- Refusé: Chemotherapy session refused
 (119, 'REQ-2024-110', 'Séance de chimiothérapie', '2024-07-30 14:00:00', 'REFUSE',
  2004, 133, 12, 11, 83, 'system', '2024-07-25 08:00:00', NULL, NULL, 0),

-- ===================== RACHID OUZIANE (2003) - Bronchitis =====================
 (120, 'REQ-2024-049', 'Toux persistante', '2024-11-10 09:00:00', 'ACCEPTE',
  2003, 61, 9, 4, 69, 'system', '2024-11-05 08:00:00', NULL, NULL, 0),
 (121, 'REQ-2024-050', 'Diagnostic bronchite', '2024-12-15 10:00:00', 'ACCEPTE',
  2003, 62, 9, 4, 69, 'system', '2024-12-10 08:00:00', NULL, NULL, 0),
 (122, 'REQ-2025-047', 'Contrôle bronchite', '2025-02-20 09:00:00', 'ACCEPTE',
  2003, 63, 9, 4, 69, 'system', '2025-02-15 08:00:00', NULL, NULL, 0),
 (123, 'REQ-2025-048', 'Consultation suivi', '2025-05-29 09:00:00', 'ACCEPTE',
  2003, 62, 9, 4, 69, 'system', '2025-05-24 08:00:00', NULL, NULL, 0),
-- Annulé: School conflict
 (124, 'REQ-2024-111', 'Consultation contrôle', '2024-10-05 14:00:00', 'ANNULE',
  2003, 61, 9, 4, 69, 'system', '2024-09-30 08:00:00', NULL, NULL, 0),

-- ===================== YACINE HAMITI (2007) - Asthma =====================
 (125, 'REQ-2024-051', 'Crise de asthme', '2024-09-15 09:00:00', 'ACCEPTE',
  2007, 61, 9, 4, 69, 'system', '2024-09-10 08:00:00', NULL, NULL, 0),
 (126, 'REQ-2024-052', 'Mise en place traitement', '2024-10-20 10:00:00', 'ACCEPTE',
  2007, 62, 9, 4, 69, 'system', '2024-10-15 08:00:00', NULL, NULL, 0),
 (127, 'REQ-2025-049', 'Contrôle asthme', '2025-01-25 09:00:00', 'ACCEPTE',
  2007, 63, 9, 4, 69, 'system', '2025-01-20 08:00:00', NULL, NULL, 0),
 (128, 'REQ-2025-050', 'Suivi programmé', '2025-04-30 10:00:00', 'ACCEPTE',
  2007, 61, 9, 4, 69, 'system', '2025-04-25 08:00:00', NULL, NULL, 0),
 (129, 'REQ-2025-051', 'Consultation suivi', '2026-07-22 09:00:00', 'MIS_EN_ATTENTE',
  2007, 676, 9, 4, 69, 'system', now(), NULL, NULL, 0),
-- Refusé: Referral denied
 (130, 'REQ-2024-112', 'Consultation pneumologie', '2024-11-15 10:00:00', 'REFUSE',
  2007, 125, 10, 9, 215, 'system', '2024-11-10 08:00:00', NULL, NULL, 0),

-- ===================== ABDELKADER HAMITI (2009) - Diabetes =====================
 (131, 'REQ-2023-011', 'Diagnostic diabète', '2023-10-10 09:00:00', 'ACCEPTE',
  2009, 146, 4, 14, 41, 'system', '2023-10-05 08:00:00', NULL, NULL, 0),
 (132, 'REQ-2024-053', 'Contrôle trimestriel', '2024-01-15 09:00:00', 'ACCEPTE',
  2009, 147, 4, 14, 41, 'system', '2024-01-10 08:00:00', NULL, NULL, 0),
 (133, 'REQ-2024-054', 'Consultation cardiologie', '2024-04-20 10:00:00', 'ACCEPTE',
  2009, 4, 4, 1, 34, 'system', '2024-04-15 08:00:00', NULL, NULL, 0),
 (134, 'REQ-2024-055', 'Contrôle diabète', '2024-07-25 09:00:00', 'ACCEPTE',
  2009, 148, 4, 14, 41, 'system', '2024-07-20 08:00:00', NULL, NULL, 0),
 (135, 'REQ-2024-056', 'Examen des yeux', '2024-10-30 10:00:00', 'ACCEPTE',
  2009, 30, 10, 2, 49, 'system', '2024-10-25 08:00:00', NULL, NULL, 0),
 (136, 'REQ-2025-052', 'Contrôle diabète', '2025-02-05 09:00:00', 'ACCEPTE',
  2009, 146, 4, 14, 41, 'system', '2025-01-31 08:00:00', NULL, NULL, 0),
 (137, 'REQ-2025-053', 'Suivi endocrinologue', '2025-05-10 10:00:00', 'ACCEPTE',
  2009, 147, 4, 14, 41, 'system', '2025-05-05 08:00:00', NULL, NULL, 0),
 (138, 'REQ-2025-054', 'Bilan semestriel', '2026-08-20 09:00:00', 'MIS_EN_ATTENTE',
  2009, 148, 4, 14, 41, 'system', now(), NULL, NULL, 0),
-- Annulé x2: Multiple cancellations
 (139, 'REQ-2023-102', 'Contrôle glycémique', '2023-12-10 09:00:00', 'ANNULE',
  2009, 147, 4, 14, 41, 'system', '2023-12-05 08:00:00', NULL, NULL, 0),
 (140, 'REQ-2024-113', 'Consultation nutrition', '2024-06-18 14:00:00', 'ANNULE',
  2009, 148, 4, 14, 41, 'system', '2024-06-13 08:00:00', NULL, NULL, 0),

-- ===================== ADDITIONAL CANCELED/REFUSED APPOINTMENTS =====================
-- Patient 2001 (Miloud) - Another canceled
 (141, 'REQ-2024-114', 'Consultation de contrôle', '2024-12-01 11:00:00', 'ANNULE',
  2001, 299, 4, 32, 4, 'system', '2024-11-26 08:00:00', NULL, NULL, 0),

-- Patient 2005 (Karim) - Another refused
 (142, 'REQ-2024-115', 'Examen endoscopique', '2024-10-25 08:00:00', 'REFUSE',
  2005, 326, 4, 15, 244, 'system', '2024-10-20 08:00:00', NULL, NULL, 0),

-- Patient 2003 (Rachid) - Canceled by parent
 (143, 'REQ-2024-116', 'Vaccination annuelle', '2024-09-22 09:00:00', 'ANNULE',
  2003, 61, 9, 4, 69, 'system', '2024-09-17 08:00:00', NULL, NULL, 0),

-- Patient 2007 (Yacine) - Canceled due to school
 (144, 'REQ-2024-117', 'Consultation suivi', '2024-12-12 15:00:00', 'ANNULE',
  2007, 63, 9, 4, 69, 'system', '2024-12-07 08:00:00', NULL, NULL, 0),

-- Patient 2004 (Mohamed) - Chemotherapy session refused
 (145, 'REQ-2024-118', 'Consultation oncologique', '2024-09-05 11:00:00', 'REFUSE',
  2004, 132, 12, 11, 83, 'system', '2024-08-31 08:00:00', NULL, NULL, 0),

-- Patient 1 (Yasmine) - Canceled routine check
 (146, 'REQ-2024-119', 'Contrôle de routine', '2024-10-10 09:00:00', 'ANNULE',
  1, 298, 4, 32, 4, 'system', '2024-10-05 08:00:00', NULL, NULL, 0),

-- Patient 2 (Anfal) - Refused specialist
 (147, 'REQ-2024-120', 'Consultation neurologique', '2024-12-01 14:00:00', 'REFUSE',
  2, 212, 13, 7, 212, 'system', '2024-11-26 08:00:00', NULL, NULL, 0),

-- Patient 3 (Rayane) - Canceled last minute
 (148, 'REQ-2024-121', 'Test de souffle', '2024-11-18 10:00:00', 'ANNULE',
  3, 62, 9, 4, 69, 'system', '2024-11-13 08:00:00', NULL, NULL, 0),

-- Patient 8 (Farida) - Refused specialized treatment
 (149, 'REQ-2024-122', 'Traitement hypolipémiant', '2024-09-15 09:00:00', 'REFUSE',
  8, 298, 4, 32, 4, 'system', '2024-09-10 08:00:00', NULL, NULL, 0),

-- Patient 2009 (Abdelkader) - Canceled due to illness
 (150, 'REQ-2024-123', 'Consultation cardiologie', '2024-11-20 11:00:00', 'ANNULE',
  2009, 5, 5, 1, 34, 'system', '2024-11-15 08:00:00', NULL, NULL, 0);

SELECT setval(
               'care.request_appointment_seq',
               GREATEST(COALESCE((SELECT MAX(id) FROM care.request_appointment), 0), 1),
               true
       );