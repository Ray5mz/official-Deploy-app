INSERT INTO care.medical_report(
    id, medical_report_number, certificate_type, certificate_sub_type, notes, description, status, consultation_id, enabled, created_by, creation_date, last_modified_by, last_modified_date, version, document_pdf, file_name
)
VALUES

-- ===================== YASMINE BAICHE (1) - Anemia =====================
(1, 'MR-2025-001', 'PRESCRIPTION', 'MEDICATION', 'Prescription for iron supplements', 'Ferrous sulfate 200mg daily for 3 months', 'SIGNED', 1, true, 'system', '2025-11-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Ordonnance_1.pdf'),
(2, 'MR-2025-002', 'LABORATORY', 'BLOOD_TEST', 'Complete blood count results', 'Hb: 10.5 g/dL, Ferritin: 12 ng/mL', 'SIGNED', 2, true, 'system', '2025-12-10 12:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(3, 'MR-2026-001', 'LABORATORY', 'BLOOD_TEST', 'Follow-up blood test', 'Hb: 12.0 g/dL, Ferritin: 35 ng/mL - Improvement', 'SIGNED', 3, true, 'system', '2026-02-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(4, 'MR-2026-002', 'PRESCRIPTION', 'MEDICATION', 'Iron continuation', 'Maintenance dose: Ferrous sulfate 200mg once daily', 'SIGNED', 4, true, 'system', '2026-04-20 15:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Bilan_Anemie_Avril2026.pdf'),

-- ===================== ANFAL DAOUDI (2) - Migraine =====================
(5, 'MR-2025-003', 'PRESCRIPTION', 'MEDICATION', 'Migraine treatment prescription', 'Sumatriptan 50mg as needed, Propranolol 40mg daily', 'SIGNED', 5, true, 'system', '2025-10-05 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Ordonnance_1.pdf'),
(6, 'MR-2025-004', 'MEDICAL_CERTIFICATE', 'WORK_LEAVE', 'Work leave for severe migraine', '3 days rest recommended', 'SIGNED', 6, true, 'system', '2025-11-20 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(7, 'MR-2026-003', 'PRESCRIPTION', 'RENEWAL', 'Treatment renewal', 'Continue current treatment for 6 months', 'SIGNED', 7, true, 'system', '2026-01-10 11:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(8, 'MR-2026-004', 'MEDICAL_REPORT', 'FULLOW_UP', 'Quarterly follow-up', 'Migraine frequency reduced to 2-3 per month', 'SIGNED', 8, true, 'system', '2026-03-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Suivi_Migraine_Mars2026.pdf'),

-- ===================== RAYANE MOUZAOUI (3) - Asthma =====================
(9, 'MR-2025-005', 'DIAGNOSIS', 'ASTHMA', 'Initial asthma diagnosis', 'Moderate persistent asthma - FEV1 75%', 'SIGNED', 10, true, 'system', '2025-09-10 11:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(10, 'MR-2025-006', 'PRESCRIPTION', 'INHALER', 'Inhaler prescription', 'Seretide 250/25 twice daily, Ventolin as needed', 'SIGNED', 11, true, 'system', '2025-10-25 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(11, 'MR-2026-005', 'LABORATORY', 'RESPIRATORY', 'Spirometry results', 'FEV1 85%, improved with treatment', 'SIGNED', 12, true, 'system', '2026-01-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Spirometrie_Jan2026.pdf'),

-- ===================== ILYES REDJEL (4) - Hypertension =====================
(12, 'MR-2025-007', 'DIAGNOSIS', 'HYPERTENSION', 'Initial hypertension diagnosis', 'Stage 1 Hypertension - BP 160/95', 'SIGNED', 15, true, 'system', '2025-08-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(13, 'MR-2025-008', 'PRESCRIPTION', 'MEDICATION', 'Antihypertensive prescription', 'Lisinopril 10mg daily', 'SIGNED', 16, true, 'system', '2025-09-20 11:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(14, 'MR-2025-009', 'LABORATORY', 'CARDIAC', 'ECG Results', 'Normal sinus rhythm, no abnormalities', 'SIGNED', 17, true, 'system', '2025-10-25 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'ECG_Oct2025.pdf'),
(15, 'MR-2026-006', 'LABORATORY', 'CARDIAC', 'Control ECG', 'Normal, stable condition', 'SIGNED', 18, true, 'system', '2025-12-05 12:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'ECG_Controle_Dec2025.pdf'),

-- ===================== OMAR BAICHE (5) - Diabetes =====================
(16, 'MR-2024-001', 'DIAGNOSIS', 'DIABETES', 'Type 2 diabetes diagnosis', 'HbA1c 8.5% - Moderate hyperglycemia', 'SIGNED', 24, true, 'system', '2024-06-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(17, 'MR-2024-002', 'PRESCRIPTION', 'DIABETES', 'Oral antidiabetic prescription', 'Metformin 500mg twice daily', 'SIGNED', 25, true, 'system', '2024-07-15 11:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Ordonnance_1.pdf'),
(18, 'MR-2025-011', 'LABORATORY', 'DIABETES', 'Follow-up HbA1c', 'HbA1c 7.0% - Improved control', 'SIGNED', 27, true, 'system', '2025-01-25 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(19, 'MR-2025-012', 'LABORATORY', 'DIABETES', 'Quarterly control', 'HbA1c 6.8%, Fasting glucose 110mg/dL', 'SIGNED', 30, true, 'system', '2025-04-20 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Bilan_Diabete_Avril2025.pdf'),
(20, 'MR-2026-007', 'LABORATORY', 'DIABETES', 'Semestrial control', 'HbA1c 7.0%, stable', 'SIGNED', 34, true, 'system', '2026-02-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Bilan_Diabete_Fev2026.pdf'),

-- ===================== SALIMA IKENE (6) - Arthrose =====================
(21, 'MR-2025-018', 'DIAGNOSIS', 'ARTHROSIS', 'Arthrosis diagnosis', 'Femorotibial arthrosis stage 2', 'SIGNED', 37, true, 'system', '2025-02-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(22, 'MR-2025-019', 'PRESCRIPTION', 'MEDICATION', 'Pain management', 'Ibuprofen 400mg as needed, Paracetamol', 'SIGNED', 38, true, 'system', '2025-03-15 11:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(23, 'MR-2025-024', 'RADIOLOGY', 'XRAY', 'Knee X-ray', 'Joint space narrowing, osteophytes present', 'SIGNED', 43, true, 'system', '2025-12-05 11:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Radio_Genoux_Dec2025.pdf'),

-- ===================== MAHMOUD DAOUDI (7) - Hypertension =====================
(24, 'MR-2024-004', 'DIAGNOSIS', 'HYPERTENSION', 'Hypertension diagnosis', 'BP 155/92, Stage 1', 'SIGNED', 47, true, 'system', '2024-09-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(25, 'MR-2025-025', 'PRESCRIPTION', 'MEDICATION', 'Antihypertensive', 'Amlodipine 5mg daily', 'SIGNED', 49, true, 'system', '2025-01-20 12:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(26, 'MR-2025-028', 'LABORATORY', 'CARDIAC', 'Cardiac echography', 'Normal cardiac function, LVEF 60%', 'SIGNED', 52, true, 'system', '2025-06-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Echographie_Cardiaque_Juin2025.pdf'),

-- ===================== FARIDA IDOUI (8) - Cholestérol =====================
(27, 'MR-2025-032', 'DIAGNOSIS', 'CHOLESTEROL', 'Hypercholesterolemia', 'Total cholesterol 2.6g/L, LDL 1.6g/L', 'SIGNED', 58, true, 'system', '2025-03-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(28, 'MR-2025-033', 'PRESCRIPTION', 'MEDICATION', 'Statin prescription', 'Atorvastatin 10mg daily', 'SIGNED', 59, true, 'system', '2025-04-15 11:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(29, 'MR-2025-034', 'LABORATORY', 'BLOOD_TEST', 'Control lipid profile', 'Total cholesterol 1.8g/L, LDL 1.1g/L - Improvement', 'SIGNED', 60, true, 'system', '2025-07-05 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Bilan_Lipidique_Juil2025.pdf'),

-- ===================== MILOUD OUZIANE (2001) - Gastrite =====================
(30, 'MR-2025-036', 'DIAGNOSIS', 'GASTRITIS', 'Gastritis diagnosis', 'Erythematous gastritis on endoscopy', 'SIGNED', 64, true, 'system', '2025-08-20 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(31, 'MR-2025-037', 'PRESCRIPTION', 'MEDICATION', 'PPI prescription', 'Omeprazole 20mg daily for 8 weeks', 'SIGNED', 65, true, 'system', '2025-09-25 11:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),

-- ===================== KARIM HAMITI (2005) - Ulcères =====================
(32, 'MR-2025-039', 'DIAGNOSIS', 'ULCER', 'Gastric ulcer diagnosis', 'Duodenal ulcer H. pylori positive', 'SIGNED', 70, true, 'system', '2025-07-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(33, 'MR-2025-040', 'PRESCRIPTION', 'MEDICATION', 'Anti-HP triple therapy', 'Amoxicillin + Clarithromycin + Omeprazole', 'SIGNED', 71, true, 'system', '2025-08-15 11:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),

-- ===================== HOCINE MILOUDI (2012) - Allergie =====================
(34, 'MR-2025-043', 'DIAGNOSIS', 'ALLERGY', 'Seasonal allergy diagnosis', 'Pollen allergy - Positive skin tests', 'SIGNED', 75, true, 'system', '2025-04-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Bilan_Allergique_Avril2025.pdf'),
(35, 'MR-2025-044', 'PRESCRIPTION', 'MEDICATION', 'Antihistamine prescription', 'Cetirizine 10mg daily during pollen season', 'SIGNED', 76, true, 'system', '2025-05-20 15:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),

-- ===================== MOHAMED OUZIANE (2004) - Cancer + HTA =====================
(36, 'MR-2025-047', 'DIAGNOSIS', 'HYPERTENSION', 'HTA diagnosis', 'BP 165/95', 'SIGNED', 80, true, 'system', '2025-03-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(37, 'MR-2025-049', 'DIAGNOSIS', 'CANCER', 'Colon cancer diagnosis', 'Adenocarcinoma of the colon', 'SIGNED', 82, true, 'system', '2025-05-20 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Diagnostic_Cancer_Colon_2025.pdf'),
(38, 'MR-2025-050', 'PRESCRIPTION', 'CHEMOTHERAPY', 'Chemotherapy protocol', 'FOLFOX regimen - 6 cycles', 'SIGNED', 83, true, 'system', '2025-06-25 11:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Protocole_Chimiotherapie_2025.pdf'),

-- ===================== RACHID OUZIANE (2003) - Bronchite =====================
(39, 'MR-2025-054', 'DIAGNOSIS', 'BRONCHITIS', 'Acute bronchitis', 'Inflammation of bronchial tubes', 'SIGNED', 88, true, 'system', '2025-11-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),
(40, 'MR-2025-055', 'PRESCRIPTION', 'MEDICATION', 'Antibiotic prescription', 'Amoxicillin 500mg 3x/day for 7 days', 'SIGNED', 89, true, 'system', '2025-12-15 11:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Ordonnance_1.pdf'),

-- ===================== YACINE HAMITI (2007) - Asthme =====================
(41, 'MR-2025-056', 'DIAGNOSIS', 'ASTHMA', 'First asthma attack', 'Acute asthma - responsive to bronchodilators', 'SIGNED', 92, true, 'system', '2025-09-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Ordonnance_2.pdf'),
(42, 'MR-2025-057', 'PRESCRIPTION', 'INHALER', 'Asthma treatment', 'Budesonide 200mcg twice daily', 'SIGNED', 93, true, 'system', '2025-10-20 11:00:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Ordonnance_3.pdf'),

-- ===================== ABDELKADER HAMITI (2009) - Diabète =====================
(43, 'MR-2024-006', 'DIAGNOSIS', 'DIABETES', 'Type 2 diabetes diagnosis', 'HbA1c 9.2%', 'SIGNED', 96, true, 'system', '2024-10-10 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_1.pdf'), 'Ordonnance_1.pdf'),
(44, 'MR-2025-059', 'LABORATORY', 'DIABETES', '3-month control', 'HbA1c 7.8% - Improvement', 'SIGNED', 97, true, 'system', '2025-01-15 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_2.pdf'), 'Bilan_Diabete_Jan2025.pdf'),
(45, 'MR-2025-061', 'LABORATORY', 'DIABETES', 'Semestrial control', 'HbA1c 7.2% - Good control', 'SIGNED', 99, true, 'system', '2025-07-25 10:30:00', NULL, NULL, 0, pg_read_binary_file('C:/Ordonnance_3.pdf'), 'Bilan_Diabete_Juil2025.pdf');

-- ===================== UPDATE statements for PDF files =====================
-- Update Ordonnance_1.pdf for reports with id 1,5,7,14,17,20,23,26,29,34,37,40,43
UPDATE care.medical_report SET document_pdf = pg_read_binary_file('C:/Ordonnance_1.pdf'), file_name = 'Ordonnance_1.pdf' WHERE id IN (1,5,7,14,17,20,23,26,29,34,37,40,43);

-- Update Ordonnance_2.pdf for reports with id 2,6,9,12,18,21,24,27,30,32,35,38,41,44
UPDATE care.medical_report SET document_pdf = pg_read_binary_file('C:/Ordonnance_2.pdf'), file_name = 'Ordonnance_2.pdf' WHERE id IN (2,6,9,12,18,21,24,27,30,32,35,38,41,44);

-- Update Ordonnance_3.pdf for reports with id 3,8,10,13,16,19,22,25,28,31,33,36,39,42,45
UPDATE care.medical_report SET document_pdf = pg_read_binary_file('C:/Ordonnance_3.pdf'), file_name = 'Ordonnance_3.pdf' WHERE id IN (3,8,10,13,16,19,22,25,28,31,33,36,39,42,45);