INSERT INTO care.consultation(
    id, consultation_number, status, notes, act_performed, consultation_date, reason_for_consultation, diagnosis, diagnosis_confidential, patient_id, specialty_id, health_professional_id, center_id, constante_vitale_id, enabled, created_by, creation_date, last_modified_by, last_modified_date, version
)
VALUES

-- ===================== YASMINE BAICHE (1) - Anémie =====================
(1, 'CNS-2025-001', 'TERMINEE', 'Patiente jeune, fatigue générale, pâleur', 'Bilan sanguin complet', '2025-11-15 09:00:00',
 'Première consultation fatigue', 'Anémie ferriprive modérée', false, 1, 32, 4, 4, 1, true, 'system', '2025-11-15 10:00:00', NULL, NULL, 0),

(2, 'CNS-2025-002', 'TERMINEE', 'Résultats du bilan sanguin, Hb à 10.5 g/dL', 'Prescription fer + vitamine C', '2025-12-10 11:00:00',
 'Résultats bilan sanguin', 'Anémie ferriprive - Réponse au traitement', false, 1, 32, 4, 4, 2, true, 'system', '2025-12-10 12:00:00', NULL, NULL, 0),

(3, 'CNS-2026-001', 'TERMINEE', 'Patiente en bonne évolution, Hb à 12 g/dL', 'Contrôle sanguin', '2026-02-15 09:00:00',
 'Contrôle anémie', 'Anémie en voie de résolution', false, 1, 32, 4, 4, 3, true, 'system', '2026-02-15 10:00:00', NULL, NULL, 0),

(4, 'CNS-2026-002', 'TERMINEE', 'Patiente asymptomatique, ferritine normalisée', 'Arrêt traitement progressif', '2026-04-20 14:00:00',
 'Suivi traitement fer', 'Anémie résolue', false, 1, 32, 4, 4, 4, true, 'system', '2026-04-20 15:00:00', NULL, NULL, 0),

-- ===================== ANFAL DAOUDI (2) - Migraine =====================
(5, 'CNS-2025-003', 'TERMINEE', 'Patiente présente des migraines depuis 6 mois', 'Examen neurologique', '2025-10-05 09:00:00',
 'Première consultation migraine', 'Migraine sans aura', false, 2, 32, 9, 4, 5, true, 'system', '2025-10-05 10:00:00', NULL, NULL, 0),

(6, 'CNS-2025-004', 'TERMINEE', 'Migraines persistantes malgré traitement de base', 'Ajustement traitement', '2025-11-20 09:00:00',
 'Migraines persistantes', 'Migraine chronique', false, 2, 32, 9, 4, 6, true, 'system', '2025-11-20 10:00:00', NULL, NULL, 0),

(7, 'CNS-2026-005', 'TERMINEE', 'Patiente stable, fréquence migraine réduite', 'Renouvellement traitement', '2026-01-10 10:00:00',
 'Renouvellement traitement', 'Migraine chronique stable', false, 2, 32, 4, 4, 7, true, 'system', '2026-01-10 11:00:00', NULL, NULL, 0),

(8, 'CNS-2026-006', 'TERMINEE', 'Patiente en rémission, 2 crises par mois maximum', 'Contrôle trimestriel', '2026-03-15 09:00:00',
 'Contrôle trimestriel', 'Migraine bien contrôlée', false, 2, 32, 4, 4, 8, true, 'system', '2026-03-15 10:00:00', NULL, NULL, 0),

(9, 'CNS-2026-007', 'TERMINEE', 'Patiente en bonne santé', 'Traitement préventif poursuivi', '2026-05-20 14:00:00',
 'Consultation suivi', 'Migraine stable sous traitement', false, 2, 32, 4, 4, 9, true, 'system', '2026-05-20 15:00:00', NULL, NULL, 0),

-- ===================== RAYANE MOUZAOUI (3) - Asthme =====================
(10, 'CNS-2025-005', 'TERMINEE', 'Patient présente des sifflements et dyspnée', 'Spirométrie', '2025-09-10 10:00:00',
 'Diagnostic asthme', 'Asthme modéré persistant', false, 3, 4, 69, 9, 10, true, 'system', '2025-09-10 11:00:00', NULL, NULL, 0),

(11, 'CNS-2025-006', 'TERMINEE', 'Mise en place du traitement de fond', 'Prescription corticoïdes inhalés', '2025-10-25 09:00:00',
 'Mise en place traitement', 'Asthme modéré - Bonne réponse', false, 3, 4, 69, 9, 11, true, 'system', '2025-10-25 10:00:00', NULL, NULL, 0),

(12, 'CNS-2026-009', 'TERMINEE', 'Patient asymptomatique, 1 crise légère ce trimestre', 'Contrôle fonctionnel', '2026-01-15 09:00:00',
 'Contrôle asthme', 'Asthme contrôlé', false, 3, 4, 69, 9, 12, true, 'system', '2026-01-15 10:00:00', NULL, NULL, 0),

(13, 'CNS-2026-010', 'TERMINEE', 'Crise d''asthme déclenchée par infection respiratoire', 'Corticothérapie courte', '2026-03-20 09:00:00',
 'Crise d''asthme - Consultation', 'Exacerbation d''asthme', false, 3, 4, 69, 9, 13, true, 'system', '2026-03-20 10:00:00', NULL, NULL, 0),

(14, 'CNS-2026-011', 'TERMINEE', 'Patient stabilisé, traitement respecté', 'Contrôle annuel', '2026-05-27 09:00:00',
 'Suivi programmé', 'Asthme bien contrôlé', false, 3, 4, 69, 9, 14, true, 'system', '2026-05-27 10:00:00', NULL, NULL, 0),

-- ===================== ILYES REDJEL (4) - Hypertension Critique =====================
(15, 'CNS-2025-007', 'TERMINEE', 'Patient hypertendu, TA 160/95', 'Prescription IEC', '2025-08-15 09:00:00',
 'Découverte hypertension', 'Hypertension artérielle stade 1', false, 4, 32, 26, 5, 15, true, 'system', '2025-08-15 10:00:00', NULL, NULL, 0),

(16, 'CNS-2025-008', 'TERMINEE', 'Contrôle TA à 145/90, bonne observance', 'Ajustement traitement', '2025-09-20 10:00:00',
 'Contrôle tension artérielle', 'HTA partiellement contrôlée', false, 4, 32, 26, 5, 16, true, 'system', '2025-09-20 11:00:00', NULL, NULL, 0),

(17, 'CNS-2025-009', 'TERMINEE', 'Consultation spécialisée, ECG normal', 'Bilan cardiologique', '2025-10-25 09:00:00',
 'Consultation cardiologie', 'HTA - Pas de retentissement cardiaque', false, 4, 1, 35, 4, 17, true, 'system', '2025-10-25 10:00:00', NULL, NULL, 0),

(18, 'CNS-2025-010', 'TERMINEE', 'TA 130/85, traitement efficace', 'Contrôle cardiologique', '2025-12-05 11:00:00',
 'Suivi cardiologique', 'HTA bien contrôlée', false, 4, 1, 35, 5, 18, true, 'system', '2025-12-05 12:00:00', NULL, NULL, 0),

(19, 'CNS-2026-013', 'TERMINEE', 'TA 135/88, patient asymptomatique', 'Contrôle mensuel', '2026-01-10 09:00:00',
 'Contrôle mensuel', 'HTA stable', false, 4, 1, 35, 4, 19, true, 'system', '2026-01-10 10:00:00', NULL, NULL, 0),

(20, 'CNS-2026-014', 'TERMINEE', 'TA 125/80, excellent contrôle', 'Bilan annuel', '2026-02-15 14:00:00',
 'Suivi cardiologie', 'HTA équilibrée', false, 4, 1, 35, 4, 20, true, 'system', '2026-02-15 15:00:00', NULL, NULL, 0),

(21, 'CNS-2026-015', 'TERMINEE', 'Échocardiographie normale, FEVG 60%', 'ECG échographie', '2026-03-20 09:00:00',
 'Échographie cardiaque', 'Coeur normal', false, 4, 1, 36, 6, 21, true, 'system', '2026-03-20 10:00:00', NULL, NULL, 0),

(22, 'CNS-2026-016', 'TERMINEE', 'TA 128/82, patient adhérent', 'Contrôle mensuel', '2026-04-25 10:00:00',
 'Contrôle mensuel', 'HTA stable', false, 4, 1, 35, 4, 22, true, 'system', '2026-04-25 11:00:00', NULL, NULL, 0),

(23, 'CNS-2026-017', 'TERMINEE', 'Urgence tensionnelle, TA 175/100, crise sur stress', 'Traitement d''urgence + conseils', '2026-05-30 09:00:00',
 'Urgence tension élevée', 'Poussée hypertensive', false, 4, 32, 26, 5, 23, true, 'system', '2026-05-30 10:00:00', NULL, NULL, 0),

-- ===================== OMAR BAICHE (5) - Diabète Type 2 =====================
(24, 'CNS-2024-001', 'TERMINEE', 'Patient diabétique HbA1c 8.5%', 'Mise sous metformine', '2024-06-10 09:00:00',
 'Diagnostic diabète', 'Diabète type 2 non contrôlé', false, 5, 14, 41, 4, 24, true, 'system', '2024-06-10 10:00:00', NULL, NULL, 0),

(25, 'CNS-2024-002', 'TERMINEE', 'Patiente éduquée sur l''alimentation', 'Prescription et éducation', '2024-07-15 10:00:00',
 'Mise en place traitement', 'Diabète type 2 - Début traitement', false, 5, 14, 41, 4, 25, true, 'system', '2024-07-15 11:00:00', NULL, NULL, 0),

(26, 'CNS-2024-003', 'TERMINEE', 'HbA1c 7.2%, bonne amélioration', 'Contrôle glycémique', '2024-08-20 09:00:00',
 'Premier contrôle', 'Diabète partiellement contrôlé', false, 5, 14, 41, 4, 26, true, 'system', '2024-08-20 10:00:00', NULL, NULL, 0),

(27, 'CNS-2025-011', 'TERMINEE', 'HbA1c 7.0%, patient autonome', 'Contrôle trimestriel', '2025-01-25 09:00:00',
 'Contrôle trimestriel', 'Diabète contrôlé', false, 5, 14, 41, 4, 27, true, 'system', '2025-01-25 10:00:00', NULL, NULL, 0),

(28, 'CNS-2025-012', 'TERMINEE', 'Bilan cardiologique normal', 'ECG normal', '2025-02-28 10:00:00',
 'Consultation cardiologie', 'Absence de complications', false, 5, 1, 34, 4, 28, true, 'system', '2025-02-28 11:00:00', NULL, NULL, 0),

(29, 'CNS-2025-013', 'TERMINEE', 'FO normal, pas de rétinopathie', 'Examen ophtalmo', '2025-03-15 10:00:00',
 'Examen des yeux', 'Oeil normal', false, 5, 2, 49, 10, 29, true, 'system', '2025-03-15 11:00:00', NULL, NULL, 0),

(30, 'CNS-2025-014', 'TERMINEE', 'HbA1c 6.8%, bon équilibre', 'Contrôle glycémique', '2025-04-20 09:00:00',
 'Contrôle glycémie', 'Diabète équilibré', false, 5, 14, 41, 4, 30, true, 'system', '2025-04-20 10:00:00', NULL, NULL, 0),

(31, 'CNS-2025-015', 'TERMINEE', 'Patient asymptomatique, HbA1c 7.1%', 'Suivi endocrinologie', '2025-07-10 09:00:00',
 'Suivi traitement', 'Diabète stable', false, 5, 14, 41, 4, 31, true, 'system', '2025-07-10 10:00:00', NULL, NULL, 0),

(32, 'CNS-2025-016', 'TERMINEE', 'Contrôle cardiologique annuel normal', 'ECG + ETT', '2025-09-05 10:00:00',
 'Contrôle cardiologique', 'Coeur normal', false, 5, 1, 34, 5, 32, true, 'system', '2025-09-05 11:00:00', NULL, NULL, 0),

(33, 'CNS-2025-017', 'TERMINEE', 'HbA1c 6.9%, patient compliant', 'Bilan semestriel', '2025-11-20 09:00:00',
 'Bilan semestriel', 'Diabète contrôlé', false, 5, 14, 41, 4, 33, true, 'system', '2025-11-20 10:00:00', NULL, NULL, 0),

(34, 'CNS-2026-020', 'TERMINEE', 'HbA1c 7.0%, stable', 'Contrôle trimestriel', '2026-02-10 09:00:00',
 'Contrôle trimestriel', 'Diabète équilibré', false, 5, 14, 41, 4, 34, true, 'system', '2026-02-10 10:00:00', NULL, NULL, 0),

(35, 'CNS-2026-021', 'TERMINEE', 'FO normal, pas de complication', 'Examen ophtalmo', '2026-03-25 10:00:00',
 'Consultation ophtalmo', 'Oeil normal', false, 5, 2, 49, 10, 35, true, 'system', '2026-03-25 11:00:00', NULL, NULL, 0),

(36, 'CNS-2026-022', 'TERMINEE', 'Contrôle cardiologique OK', 'Bilan complet', '2026-05-15 13:00:00',
 'Contrôle cardiologie', 'Coeur - Bon état', false, 5, 1, 34, 5, 36, true, 'system', '2026-05-15 14:00:00', NULL, NULL, 0),

-- ===================== SALIMA IKENE (6) - Arthrose =====================
(37, 'CNS-2025-018', 'TERMINEE', 'Patiente douleurs genoux +/- 2 ans', 'Radio + anti-inflammatoire', '2025-02-10 09:00:00',
 'Douleurs articulaires', 'Arthrose fémoro-tibiale bilatérale', false, 6, 8, 87, 4, 37, true, 'system', '2025-02-10 10:00:00', NULL, NULL, 0),

(38, 'CNS-2025-019', 'TERMINEE', 'Radio montre pincement articulaire', 'Prescription antalgiques', '2025-03-15 10:00:00',
 'Diagnostic arthrose', 'Arthrose modérée', false, 6, 8, 87, 4, 38, true, 'system', '2025-03-15 11:00:00', NULL, NULL, 0),

(39, 'CNS-2025-020', 'TERMINEE', 'Première séance de kiné', 'Séance de renforcement', '2025-04-05 09:00:00',
 'Séance kinésithérapie', 'Douleurs diminuées après séance', false, 6, 22, 91, 12, 39, true, 'system', '2025-04-05 10:00:00', NULL, NULL, 0),

(40, 'CNS-2025-021', 'TERMINEE', 'Patiente améliorée, douleurs contrôlées', 'Poursuite traitement', '2025-06-10 09:00:00',
 'Contrôle rhumatologie', 'Arthrose stable', false, 6, 8, 87, 4, 40, true, 'system', '2025-06-10 10:00:00', NULL, NULL, 0),

(41, 'CNS-2025-022', 'TERMINEE', 'Mobilité améliorée', 'Séance rééducation', '2025-08-20 10:00:00',
 'Séance rééducation', 'Progression fonctionnelle', false, 6, 22, 91, 12, 41, true, 'system', '2025-08-20 11:00:00', NULL, NULL, 0),

(42, 'CNS-2025-023', 'TERMINEE', 'Patiente asymptomatique au repos', 'Contrôle rhumato', '2025-10-15 09:00:00',
 'Contrôle rhumatologie', 'Arthrose stable', false, 6, 8, 87, 4, 42, true, 'system', '2025-10-15 10:00:00', NULL, NULL, 0),

(43, 'CNS-2025-024', 'TERMINEE', 'Radio contrôle stable', 'Radiographie', '2025-12-05 10:00:00',
 'Radiographie genoux', 'Arthrose stade 2', false, 6, 26, 230, 12, 43, true, 'system', '2025-12-05 11:00:00', NULL, NULL, 0),

(44, 'CNS-2026-025', 'TERMINEE', 'Patiente stable, EVA 3/10', 'Contrôle rhumato', '2026-01-20 09:00:00',
 'Contrôle rhumatologie', 'Arthrose contrôlée', false, 6, 8, 87, 4, 44, true, 'system', '2026-01-20 10:00:00', NULL, NULL, 0),

(45, 'CNS-2026-026', 'TERMINEE', 'Amélioration mobilité', 'Séance rééducation', '2026-03-10 09:00:00',
 'Séance rééducation', 'Bon progrès', false, 6, 22, 91, 12, 45, true, 'system', '2026-03-10 10:00:00', NULL, NULL, 0),

(46, 'CNS-2026-027', 'TERMINEE', 'Patiente satisfaite', 'Contrôle', '2026-05-05 09:00:00',
 'Contrôle rhumatologie', 'Arthrose stable sous traitement', false, 6, 8, 87, 4, 46, true, 'system', '2026-05-05 10:00:00', NULL, NULL, 0),

-- ===================== MAHMOUD DAOUDI (7) - Hypertension =====================
(47, 'CNS-2024-004', 'TERMINEE', 'Patient HTN, TA 155/92', 'Prescription IEC', '2024-09-10 09:00:00',
 'Diagnostic hypertension', 'Hypertension artérielle', false, 7, 32, 26, 5, 47, true, 'system', '2024-09-10 10:00:00', NULL, NULL, 0),

(48, 'CNS-2024-005', 'TERMINEE', 'Bonne observance, TA 140/88', 'Ajustement', '2024-10-15 10:00:00',
 'Mise en place traitement', 'HTA en amélioration', false, 7, 32, 26, 5, 48, true, 'system', '2024-10-15 11:00:00', NULL, NULL, 0),

(49, 'CNS-2025-025', 'TERMINEE', 'Consultation spécialisée', 'Bilan cardiaque', '2025-01-20 11:00:00',
 'Consultation cardiologie', 'HTA - Coeur OK', false, 7, 1, 35, 4, 49, true, 'system', '2025-01-20 12:00:00', NULL, NULL, 0),

(50, 'CNS-2025-026', 'TERMINEE', 'TA 135/85, bon contrôle', 'Contrôle', '2025-02-25 09:00:00',
 'Contrôle mensuel', 'HTA partiellement contrôlée', false, 7, 32, 26, 5, 50, true, 'system', '2025-02-25 10:00:00', NULL, NULL, 0),

(51, 'CNS-2025-027', 'TERMINEE', 'ECG normal, TA 130/82', 'Contrôle cardiologie', '2025-04-05 14:00:00',
 'Suivi cardiologie', 'HTA stable', false, 7, 1, 35, 4, 51, true, 'system', '2025-04-05 15:00:00', NULL, NULL, 0),

(52, 'CNS-2025-028', 'TERMINEE', 'Échographie coeur normal', 'ETT OK', '2025-06-10 09:00:00',
 'Échographie cardiaque', 'Cardiopathie absente', false, 7, 1, 36, 6, 52, true, 'system', '2025-06-10 10:00:00', NULL, NULL, 0),

(53, 'CNS-2025-029', 'TERMINEE', 'TA 128/80, patient stable', 'Contrôle annuel', '2025-08-15 10:00:00',
 'Contrôle hypertension', 'HTA équilibrée', false, 7, 32, 26, 5, 53, true, 'system', '2025-08-15 11:00:00', NULL, NULL, 0),

(54, 'CNS-2025-030', 'TERMINEE', 'Consultation de suivi, TA normale', 'Contrôle', '2025-10-20 09:00:00',
 'Consultation cardiologie', 'HTA contrôlée', false, 7, 1, 35, 4, 54, true, 'system', '2025-10-20 10:00:00', NULL, NULL, 0),

(55, 'CNS-2025-031', 'TERMINEE', 'Bilan annuel OK', 'Bilan complet', '2025-12-15 09:00:00',
 'Contrôle annuel', 'HTA équilibrée - Pas complications', false, 7, 32, 26, 5, 55, true, 'system', '2025-12-15 10:00:00', NULL, NULL, 0),

(56, 'CNS-2026-030', 'TERMINEE', 'TA 125/78, excellent', 'Suivi cardiologie', '2026-02-10 09:00:00',
 'Suivi cardiologie', 'HTA parfaitement contrôlée', false, 7, 1, 35, 4, 56, true, 'system', '2026-02-10 10:00:00', NULL, NULL, 0),

(57, 'CNS-2026-031', 'TERMINEE', 'Contrôle tension OK', 'Bilan', '2026-04-15 10:00:00',
 'Contrôle tension', 'HTA stable', false, 7, 1, 35, 4, 57, true, 'system', '2026-04-15 11:00:00', NULL, NULL, 0),

-- ===================== FARIDA IDOUI (8) - Cholestérol =====================
(58, 'CNS-2025-032', 'TERMINEE', 'Bilan lipidique perturbé, LDL 1.6', 'Règles hygiéno-diététiques', '2025-03-10 09:00:00',
 'Découverte cholestérol', 'Hypercholestérolémie modérée', false, 8, 32, 9, 4, 58, true, 'system', '2025-03-10 10:00:00', NULL, NULL, 0),

(59, 'CNS-2025-033', 'TERMINEE', 'Patiente motivée, régime expliqué', 'Prescription statine', '2025-04-15 10:00:00',
 'Mise en place régime', 'Dyslipidémie', false, 8, 32, 9, 4, 59, true, 'system', '2025-04-15 11:00:00', NULL, NULL, 0),

(60, 'CNS-2025-034', 'TERMINEE', 'LDL 1.2, bonne amélioration', 'Contrôle lipidique', '2025-07-05 09:00:00',
 'Premier contrôle', 'Hypercholestérolémie améliorée', false, 8, 32, 4, 4, 60, true, 'system', '2025-07-05 10:00:00', NULL, NULL, 0),

(61, 'CNS-2025-035', 'TERMINEE', 'Bilan lipidique normal', 'Contrôle', '2025-10-20 10:00:00',
 'Contrôle bilan lipidique', 'Lipides équilibrés', false, 8, 32, 4, 4, 61, true, 'system', '2025-10-20 11:00:00', NULL, NULL, 0),

(62, 'CNS-2026-035', 'TERMINEE', 'LDL 1.1, patiente compliant', 'Contrôle trimestriel', '2026-01-15 09:00:00',
 'Contrôle trimestriel', 'Dyslipidémie contrôlée', false, 8, 32, 4, 4, 62, true, 'system', '2026-01-15 10:00:00', NULL, NULL, 0),

(63, 'CNS-2026-036', 'TERMINEE', 'Bilan lipidique stable', 'Suivi', '2026-04-20 09:00:00',
 'Suivi cholestérol', 'Lipides normaux', false, 8, 32, 4, 4, 63, true, 'system', '2026-04-20 10:00:00', NULL, NULL, 0),

-- ===================== MILOUD OUZIANE (2001) - Gastrite =====================
(64, 'CNS-2025-036', 'TERMINEE', 'Douleurs épigastriques post-prandiales', 'Prescription IPP', '2025-08-20 09:00:00',
 'Douleurs estomac', 'Gastrite érythémateuse', false, 2001, 32, 4, 4, 64, true, 'system', '2025-08-20 10:00:00', NULL, NULL, 0),

(65, 'CNS-2025-037', 'TERMINEE', 'Amélioration des symptômes', 'Poursuite traitement', '2025-09-25 10:00:00',
 'Diagnostic gastrite', 'Gastrite en rémission', false, 2001, 32, 4, 4, 65, true, 'system', '2025-09-25 11:00:00', NULL, NULL, 0),

(66, 'CNS-2025-038', 'TERMINEE', 'Patient asymptomatique', 'Contrôle', '2025-11-10 09:00:00',
 'Premier contrôle', 'Gastrite résolue', false, 2001, 32, 4, 4, 66, true, 'system', '2025-11-10 10:00:00', NULL, NULL, 0),

(67, 'CNS-2026-038', 'TERMINEE', 'Patiente en bonne santé', 'Contrôle semestriel', '2026-01-15 14:00:00',
 'Contrôle semestriel', 'Gastrite - Bonne évolution', false, 2001, 32, 4, 4, 67, true, 'system', '2026-01-15 15:00:00', NULL, NULL, 0),

(68, 'CNS-2026-039', 'TERMINEE', 'Bilan de contrôle OK', 'Suivi', '2026-03-20 09:00:00',
 'Suivi traitement', 'Stable', false, 2001, 32, 4, 4, 68, true, 'system', '2026-03-20 10:00:00', NULL, NULL, 0),

(69, 'CNS-2026-040', 'TERMINEE', 'Consultation spécialisée, pas de lésion', 'Gastro', '2026-05-29 14:00:00',
 'Consultation gastro', 'Gastrite - muqueuse normale', false, 2001, 15, 244, 4, 69, true, 'system', '2026-05-29 15:00:00', NULL, NULL, 0),

-- ===================== KARIM HAMITI (2005) - Ulcères gastriques =====================
(70, 'CNS-2025-039', 'TERMINEE', 'Douleurs intenses + brûlures', 'Prescription IPP double dose', '2025-07-10 09:00:00',
 'Douleurs abdominales sévères', 'Ulcère gastrique actif', false, 2005, 32, 4, 4, 70, true, 'system', '2025-07-10 10:00:00', NULL, NULL, 0),

(71, 'CNS-2025-040', 'TERMINEE', 'Gastroscopie: ulcère bulbaire', 'Traitement anti-HP', '2025-08-15 10:00:00',
 'Diagnostic ulcères', 'Ulcère duodénal HP+', false, 2005, 32, 4, 4, 71, true, 'system', '2025-08-15 11:00:00', NULL, NULL, 0),

(72, 'CNS-2025-041', 'TERMINEE', 'Traitement anti-HP débuté', 'Consultation gastro', '2025-09-20 14:00:00',
 'Consultation gastro', 'Ulcère duodenal - Traitement en cours', false, 2005, 15, 244, 4, 72, true, 'system', '2025-09-20 15:00:00', NULL, NULL, 0),

(73, 'CNS-2025-042', 'TERMINEE', 'Patiente asymptomatique, test HP négatif', 'Contrôle', '2025-12-05 09:00:00',
 'Contrôle trimestriel', 'Ulcère guéri', false, 2005, 15, 244, 4, 73, true, 'system', '2025-12-05 10:00:00', NULL, NULL, 0),

(74, 'CNS-2026-042', 'TERMINEE', 'Pas de récidive, patient satisfait', 'Suivi', '2026-03-10 09:00:00',
 'Suivi ulcères', 'Cicatrisation confirmée', false, 2005, 15, 244, 4, 74, true, 'system', '2026-03-10 10:00:00', NULL, NULL, 0),

-- ===================== HOCINE MILOUDI (2012) - Allergie =====================
(75, 'CNS-2025-043', 'TERMINEE', 'Rhinite printanière, éternuements', 'Antihistaminiques', '2025-04-15 09:00:00',
 'Allergies saisonnières', 'Rhinite allergique saisonnière', false, 2012, 32, 4, 4, 75, true, 'system', '2025-04-15 10:00:00', NULL, NULL, 0),

(76, 'CNS-2025-044', 'TERMINEE', 'Tests allergologiques positifs aux pollens', 'Prescription prophylaxie', '2025-05-20 14:00:00',
 'Consultation allergo', 'Pollinose', false, 2012, 18, 246, 5, 76, true, 'system', '2025-05-20 15:00:00', NULL, NULL, 0),

(77, 'CNS-2025-045', 'TERMINEE', 'Patient amélioré sous traitement', 'Contrôle', '2025-06-25 09:00:00',
 'Traitement allergie', 'Allergie contrôlée', false, 2012, 32, 4, 4, 77, true, 'system', '2025-06-25 10:00:00', NULL, NULL, 0),

(78, 'CNS-2025-046', 'TERMINEE', 'Patiente asymptomatique hors saison', 'Préparation saison suivante', '2025-09-10 10:00:00',
 'Contrôle saisonnier', 'RAA bien toléré', false, 2012, 32, 4, 4, 78, true, 'system', '2025-09-10 11:00:00', NULL, NULL, 0),

(79, 'CNS-2026-044', 'TERMINEE', 'Début saison, patient sous traitement préventif', 'Consultation allergo', '2026-03-25 09:00:00',
 'Allergies printanières', 'Rhinite allergique', false, 2012, 18, 246, 5, 79, true, 'system', '2026-03-25 10:00:00', NULL, NULL, 0),

-- ===================== MOHAMED OUZIANE (2004) - Cancer + HTA =====================
(80, 'CNS-2025-047', 'TERMINEE', 'Patient 70 ans, TA 165/95', 'Prescription IEC', '2025-03-10 09:00:00',
 'Découverte hypertension', 'HTA stade 2', false, 2004, 32, 26, 5, 80, true, 'system', '2025-03-10 10:00:00', NULL, NULL, 0),

(81, 'CNS-2025-048', 'TERMINEE', 'ECG normal, TA 145/88', 'Bilan cardiologique', '2025-04-15 11:00:00',
 'Consultation cardiologie', 'HTA - Bon état cardiaque', false, 2004, 1, 35, 4, 81, true, 'system', '2025-04-15 12:00:00', NULL, NULL, 0),

(82, 'CNS-2025-049', 'TERMINEE', 'Découverte masse colique', 'Dossier oncologique', '2025-05-20 09:00:00',
 'Diagnostic cancer', 'Adénocarcinome colique', true, 2004, 11, 83, 12, 82, true, 'system', '2025-05-20 10:00:00', NULL, NULL, 0),

(83, 'CNS-2025-050', 'TERMINEE', '1ère cure de chimiothérapie', 'Chimiothérapie', '2025-06-25 10:00:00',
 'Première séance oncologie', 'Cancer - Traitement débuté', true, 2004, 11, 83, 12, 83, true, 'system', '2025-06-25 11:00:00', NULL, NULL, 0),

(84, 'CNS-2025-051', 'TERMINEE', 'Patient tolère traitement, bonne réponse', 'Contrôle oncologie', '2025-08-30 09:00:00',
 'Contrôle oncologie', 'Cancer - Evolution favorable', true, 2004, 11, 83, 12, 84, true, 'system', '2025-08-30 10:00:00', NULL, NULL, 0),

(85, 'CNS-2025-052', 'TERMINEE', 'Contrôle cardiaque OK, HTA équilibrée', 'Suivi', '2025-10-15 09:00:00',
 'Suivi cardiologique', 'HTA contrôlée', false, 2004, 1, 35, 4, 85, true, 'system', '2025-10-15 10:00:00', NULL, NULL, 0),

(86, 'CNS-2025-053', 'TERMINEE', 'Fin de traitement, bilan d''évaluation', 'Consultation oncologie', '2025-12-20 11:00:00',
 'Consultation oncologie', 'Cancer - Rémission', true, 2004, 11, 83, 12, 86, true, 'system', '2025-12-20 12:00:00', NULL, NULL, 0),

(87, 'CNS-2026-046', 'TERMINEE', 'CT scan de contrôle normal', 'Contrôle trimestriel', '2026-03-25 10:00:00',
 'Contrôle trimestriel', 'Cancer - Absence de récidive', true, 2004, 11, 83, 12, 87, true, 'system', '2026-03-25 11:00:00', NULL, NULL, 0),

-- ===================== RACHID OUZIANE (2003) - Bronchite =====================
(88, 'CNS-2025-054', 'TERMINEE', 'Toux grasse, fièvre 38.5, auscultation encombrement', 'Antibiotiques + kiné', '2025-11-10 09:00:00',
 'Toux persistante', 'Bronchite aiguë', false, 2003, 4, 69, 9, 88, true, 'system', '2025-11-10 10:00:00', NULL, NULL, 0),

(89, 'CNS-2025-055', 'TERMINEE', 'Patient amélioré, toux résiduelle', 'Contrôle', '2025-12-15 10:00:00',
 'Diagnostic bronchite', 'Bronchite en voie de guérison', false, 2003, 4, 69, 9, 89, true, 'system', '2025-12-15 11:00:00', NULL, NULL, 0),

(90, 'CNS-2026-049', 'TERMINEE', 'Patient asymptomatique', 'Contrôle', '2026-02-20 09:00:00',
 'Contrôle bronchite', 'Guérison complète', false, 2003, 4, 69, 9, 90, true, 'system', '2026-02-20 10:00:00', NULL, NULL, 0),

(91, 'CNS-2026-050', 'TERMINEE', 'Contrôle OK, pas de séquelle', 'Suivi', '2026-05-29 09:00:00',
 'Consultation suivi', 'Bronchite résolue', false, 2003, 4, 69, 9, 91, true, 'system', '2026-05-29 10:00:00', NULL, NULL, 0),

-- ===================== YACINE HAMITI (2007) - Asthme =====================
(92, 'CNS-2025-056', 'TERMINEE', 'Première crise d''asthme, sibilants', 'BDCA + corticoides', '2025-09-15 09:00:00',
 'Crise d''asthme', 'Asthme aigu', false, 2007, 4, 69, 9, 92, true, 'system', '2025-09-15 10:00:00', NULL, NULL, 0),

(93, 'CNS-2025-057', 'TERMINEE', 'Traitement de fond débuté', 'Prescription', '2025-10-20 10:00:00',
 'Mise en place traitement', 'Asthme modéré', false, 2007, 4, 69, 9, 93, true, 'system', '2025-10-20 11:00:00', NULL, NULL, 0),

(94, 'CNS-2025-058', 'TERMINEE', 'Patient stable, 1 micro-crise', 'Contrôle', '2026-01-25 09:00:00',
 'Contrôle asthme', 'Asthme contrôlé', false, 2007, 4, 69, 9, 94, true, 'system', '2026-01-25 10:00:00', NULL, NULL, 0),

(95, 'CNS-2026-051', 'TERMINEE', 'Patient asymptomatique, sevre progressive', 'Suivi', '2026-04-30 10:00:00',
 'Suivi programmé', 'Asthme partiellement contrôlé', false, 2007, 4, 69, 9, 95, true, 'system', '2026-04-30 11:00:00', NULL, NULL, 0),

-- ===================== ABDELKADER HAMITI (2009) - Diabète Type 2 =====================
(96, 'CNS-2024-006', 'TERMINEE', 'Patient 65 ans, HbA1c 9.2%', 'Mise sous metformine', '2024-10-10 09:00:00',
 'Diagnostic diabète', 'Diabète type 2 déséquilibré', false, 2009, 14, 41, 4, 96, true, 'system', '2024-10-10 10:00:00', NULL, NULL, 0),

(97, 'CNS-2025-059', 'TERMINEE', 'HbA1c 7.8%, meilleur équilibre', 'Contrôle', '2025-01-15 09:00:00',
 'Contrôle trimestriel', 'Diabète partiellement contrôlé', false, 2009, 14, 41, 4, 97, true, 'system', '2025-01-15 10:00:00', NULL, NULL, 0),

(98, 'CNS-2025-060', 'TERMINEE', 'Bilan cardiologique OK', 'Consultation', '2025-04-20 10:00:00',
 'Consultation cardiologie', 'Pas de complication cardiaque', false, 2009, 1, 34, 4, 98, true, 'system', '2025-04-20 11:00:00', NULL, NULL, 0),

(99, 'CNS-2025-061', 'TERMINEE', 'HbA1c 7.2%, bonne observance', 'Contrôle', '2025-07-25 09:00:00',
 'Contrôle diabète', 'Diabète contrôlé', false, 2009, 14, 41, 4, 99, true, 'system', '2025-07-25 10:00:00', NULL, NULL, 0),

(100, 'CNS-2025-062', 'TERMINEE', 'FO normal, rétine OK', 'Examen ophtalmo', '2025-10-30 10:00:00',
 'Examen des yeux', 'Absence de rétinopathie', false, 2009, 2, 49, 10, 100, true, 'system', '2025-10-30 11:00:00', NULL, NULL, 0),

(101, 'CNS-2026-053', 'TERMINEE', 'HbA1c 7.0%, stable', 'Contrôle', '2026-02-05 09:00:00',
 'Contrôle diabète', 'Diabète équilibré', false, 2009, 14, 41, 4, 101, true, 'system', '2026-02-05 10:00:00', NULL, NULL, 0),

(102, 'CNS-2026-054', 'TERMINEE', 'Patient asymptomatique, HbA1c 7.1%', 'Suivi', '2026-05-10 10:00:00',
 'Suivi endocrinologue', 'Diabète stable', false, 2009, 14, 41, 4, 102, true, 'system', '2026-05-10 11:00:00', NULL, NULL, 0);