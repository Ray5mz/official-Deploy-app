INSERT INTO reference.beneficiary(
    id, code, first_name, last_name, date_of_birth, gender, blood_group, social_security_number, address, beneficiary_relation, employee_id, enabled, created_by, creation_date, last_modified_by, last_modified_date, version
)
VALUES
-- ===================== YASMINE BAICHE (employee_id = 1) - Her parents as beneficiaries =====================
-- Omar Baiche (father) - patient_id = 5
(1, 'BEN-001', 'Omar', 'Baiche', '1966-01-05', 'MALE', 'B+', NULL, 'Alger', 'PARENT', 1, true, 'admin', now(), NULL, NULL, 0),

-- Salima Ikene (mother) - patient_id = 6
(2, 'BEN-002', 'Salima', 'Ikene', '1967-06-18', 'FEMALE', 'B+', NULL, 'Alger', 'PARENT', 1, true, 'admin', now(), NULL, NULL, 0),

-- ===================== ANFAL DAOUDI (employee_id = 2) - Her parents as beneficiaries =====================
-- Mahmoud Daoudi (father) - patient_id = 7
(3, 'BEN-003', 'Mahmoud', 'Daoudi', '1960-05-03', 'MALE', 'B-', NULL, 'Kouba', 'PARENT', 2, true, 'admin', now(), NULL, NULL, 0),

-- Farida Idoui (mother) - patient_id = 8
(4, 'BEN-004', 'Farida', 'Idoui', '1967-06-12', 'FEMALE', 'AB+', NULL, 'Kouba', 'PARENT', 2, true, 'admin', now(), NULL, NULL, 0),

-- ===================== RAYANE MOUZAOUI (employee_id = 3) - His parents as beneficiaries =====================
-- Samy Mouzaoui (father) - patient_id = 11
(5, 'BEN-005', 'Samy', 'Mouzaoui', '1970-07-11', 'MALE', 'O+', NULL, 'Alger', 'PARENT', 3, true, 'admin', now(), NULL, NULL, 0),

-- Sabina Guers (mother) - patient_id = 12
(6, 'BEN-006', 'Sabina', 'Guers', '1975-01-20', 'FEMALE', 'A+', NULL, 'Alger', 'PARENT', 3, true, 'admin', now(), NULL, NULL, 0),

-- ===================== ILYES REDJEL (employee_id = 4) - His parents as beneficiaries =====================
-- Samira Boutelja (mother) - patient_id = 13
(7, 'BEN-007', 'Samira', 'Boutelja', '1965-11-15', 'FEMALE', 'A-', NULL, 'El Biar', 'PARENT', 4, true, 'admin', now(), NULL, NULL, 0),

-- Ahmed Redjel (father) - patient_id = 14
(8, 'BEN-008', 'Ahmed', 'Redjel', '1963-04-18', 'MALE', 'B+', NULL, 'El Biar', 'PARENT', 4, true, 'admin', now(), NULL, NULL, 0),

-- ===================== MILOUD OUZIANE (employee_id = 3001) - His family as beneficiaries =====================
-- Fatima Ouziane (spouse) - patient_id = 2002
(9, 'BEN-009', 'Fatima', 'Ouziane', '1982-03-20', 'FEMALE', 'A+', NULL, 'Boulevard Saouli - Biskra', 'SPOUSE', 3001, true, 'admin', now(), NULL, NULL, 0),

-- Rachid Ouziane (child) - patient_id = 2003
(10, 'BEN-010', 'Rachid', 'Ouziane', '2010-07-15', 'MALE', 'O+', NULL, 'Boulevard Saouli - Biskra', 'CHILD', 3001, true, 'admin', now(), NULL, NULL, 0),

-- Mohamed Ouziane (parent) - patient_id = 2004
(11, 'BEN-011', 'Mohamed', 'Ouziane', '1955-08-25', 'MALE', 'AB+', NULL, 'Boulevard Saouli - Biskra', 'PARENT', 3001, true, 'admin', now(), NULL, NULL, 0),

-- ===================== KARIM HAMITI (employee_id = 3002) - His family as beneficiaries =====================
-- Zohra Hamiti (spouse) - patient_id = 2006
(12, 'BEN-012', 'Zohra', 'Hamiti', '1987-06-10', 'FEMALE', 'B+', NULL, 'Boulevard Saouli - Biskra', 'SPOUSE', 3002, true, 'admin', now(), NULL, NULL, 0),

-- Yacine Hamiti (child) - patient_id = 2007
(13, 'BEN-013', 'Yacine', 'Hamiti', '2012-04-18', 'MALE', 'O+', NULL, 'Boulevard Saouli - Biskra', 'CHILD', 3002, true, 'admin', now(), NULL, NULL, 0),

-- Lina Hamiti (child) - patient_id = 2008
(14, 'BEN-014', 'Lina', 'Hamiti', '2015-08-30', 'FEMALE', 'A+', NULL, 'Boulevard Saouli - Biskra', 'CHILD', 3002, true, 'admin', now(), NULL, NULL, 0),

-- Abdelkader Hamiti (parent) - patient_id = 2009
(15, 'BEN-015', 'Abdelkader', 'Hamiti', '1960-02-14', 'MALE', 'AB+', NULL, 'Boulevard Saouli - Biskra', 'PARENT', 3002, true, 'admin', now(), NULL, NULL, 0),

-- Yamina Hamiti (parent) - patient_id = 2010
(16, 'BEN-016', 'Yamina', 'Hamiti', '1965-05-20', 'FEMALE', 'B+', NULL, 'Boulevard Saouli - Biskra', 'PARENT', 3002, true, 'admin', now(), NULL, NULL, 0),

-- ===================== NABILA HASAINE (employee_id = 3003) - NO beneficiaries =====================
-- (Single, no ayants droits)

-- ===================== HOCINE MILOUDI (employee_id = 3004) - His family as beneficiaries =====================
-- Yamina Miloudi (spouse) - patient_id = 2013
(17, 'BEN-017', 'Yamina', 'Miloudi', '1984-06-15', 'FEMALE', 'O+', NULL, 'Rue Didouche Mourad - Jijel', 'SPOUSE', 3004, true, 'admin', now(), NULL, NULL, 0),

-- Amine Miloudi (child) - patient_id = 2014
(18, 'BEN-018', 'Amine', 'Miloudi', '2009-05-20', 'MALE', 'A+', NULL, 'Rue Didouche Mourad - Jijel', 'CHILD', 3004, true, 'admin', now(), NULL, NULL, 0),

-- Salah Miloudi (child) - patient_id = 2015
(19, 'BEN-019', 'Salah', 'Miloudi', '2012-11-02', 'MALE', 'B+', NULL, 'Rue Didouche Mourad - Jijel', 'CHILD', 3004, true, 'admin', now(), NULL, NULL, 0),

-- Aicha Miloudi (parent) - patient_id = 2016
(20, 'BEN-020', 'Aicha', 'Miloudi', '1957-08-25', 'FEMALE', 'O+', NULL, 'Rue Didouche Mourad - Jijel', 'PARENT', 3004, true, 'admin', now(), NULL, NULL, 0),

-- ===================== FARID BOUCHAREB (employee_id = 3005) - His family as beneficiaries =====================
-- Warda Bouchareb (spouse) - patient_id = 2018
(21, 'BEN-021', 'Warda', 'Bouchareb', '1981-09-15', 'FEMALE', 'A+', NULL, 'Rue Didouche Mourad - Jijel', 'SPOUSE', 3005, true, 'admin', now(), NULL, NULL, 0),

-- Bilal Bouchareb (child) - patient_id = 2019
(22, 'BEN-022', 'Bilal', 'Bouchareb', '2010-03-22', 'MALE', 'B+', NULL, 'Rue Didouche Mourad - Jijel', 'CHILD', 3005, true, 'admin', now(), NULL, NULL, 0),

-- ===================== SALIMA KHELLADI (employee_id = 3006) - Her family as beneficiaries =====================
-- Mokhtar Khelladi (spouse) - patient_id = 2021
(23, 'BEN-023', 'Mokhtar', 'Khelladi', '1984-08-20', 'MALE', 'B+', NULL, 'Rue Didouche Mourad - Jijel', 'SPOUSE', 3006, true, 'admin', now(), NULL, NULL, 0),

-- Fatima Khelladi (parent) - patient_id = 2022
(24, 'BEN-024', 'Fatima', 'Khelladi', '1959-05-10', 'FEMALE', 'AB+', NULL, 'Rue Didouche Mourad - Jijel', 'PARENT', 3006, true, 'admin', now(), NULL, NULL, 0),

-- Mohamed Khelladi (parent) - patient_id = 2023
(25, 'BEN-025', 'Mohamed', 'Khelladi', '1958-10-15', 'MALE', 'O+', NULL, 'Rue Didouche Mourad - Jijel', 'PARENT', 3006, true, 'admin', now(), NULL, NULL, 0),

-- ===================== AHMED OUZIANE (employee_id = 3007) - His family as beneficiaries =====================
-- Meryem Ouziane (spouse) - patient_id = 2025
(26, 'BEN-026', 'Meryem', 'Ouziane', '1985-06-10', 'FEMALE', 'A+', NULL, 'Avenue Bachir Boukadoum - Skikda', 'SPOUSE', 3007, true, 'admin', now(), NULL, NULL, 0),

-- Hamza Ouziane (child) - patient_id = 2026
(27, 'BEN-027', 'Hamza', 'Ouziane', '2011-07-12', 'MALE', 'O+', NULL, 'Avenue Bachir Boukadoum - Skikda', 'CHILD', 3007, true, 'admin', now(), NULL, NULL, 0),

-- Imane Ouziane (child) - patient_id = 2027
(28, 'BEN-028', 'Imane', 'Ouziane', '2014-04-05', 'FEMALE', 'B+', NULL, 'Avenue Bachir Boukadoum - Skikda', 'CHILD', 3007, true, 'admin', now(), NULL, NULL, 0),

-- ===================== SAMIRA HAMITI (employee_id = 3008) - Single parent with child =====================
-- Ilyes Hamiti (child) - patient_id = 2029
(29, 'BEN-029', 'Ilyes', 'Hamiti', '2012-09-18', 'MALE', 'O+', NULL, 'Avenue Bachir Boukadoum - Skikda', 'CHILD', 3008, true, 'admin', now(), NULL, NULL, 0),

-- ===================== KAMEL HASAINE (employee_id = 3009) - His family as beneficiaries =====================
-- Latifa Hasaine (spouse) - patient_id = 2031
(30, 'BEN-030', 'Latifa', 'Hasaine', '1983-03-15', 'FEMALE', 'A+', NULL, 'Avenue Bachir Boukadoum - Skikda', 'SPOUSE', 3009, true, 'admin', now(), NULL, NULL, 0),

-- Rabah Hasaine (parent) - patient_id = 2032
(31, 'BEN-031', 'Rabah', 'Hasaine', '1956-10-20', 'MALE', 'B+', NULL, 'Avenue Bachir Boukadoum - Skikda', 'PARENT', 3009, true, 'admin', now(), NULL, NULL, 0),

-- ===================== RACHID MILOUDI (employee_id = 3010) - His family as beneficiaries =====================
-- Adel Miloudi (child) - patient_id = 2034
(32, 'BEN-032', 'Adel', 'Miloudi', '2011-05-15', 'MALE', 'B+', NULL, 'Rue Sayoud Achour - Annaba', 'CHILD', 3010, true, 'admin', now(), NULL, NULL, 0),

-- Leila Miloudi (child) - patient_id = 2035
(33, 'BEN-033', 'Leila', 'Miloudi', '2014-08-20', 'FEMALE', 'A+', NULL, 'Rue Sayoud Achour - Annaba', 'CHILD', 3010, true, 'admin', now(), NULL, NULL, 0),

-- ===================== SOFIANE BOUCHAREB (employee_id = 3011) - His parent as beneficiary =====================
-- Houria Bouchareb (parent) - patient_id = 2037
(34, 'BEN-034', 'Houria', 'Bouchareb', '1965-03-15', 'FEMALE', 'A+', NULL, 'Rue Sayoud Achour - Annaba', 'PARENT', 3011, true, 'admin', now(), NULL, NULL, 0),

-- ===================== DJAMILA KHELLADI (employee_id = 3012) - Her family as beneficiaries =====================
-- Mustapha Khelladi (spouse) - patient_id = 2039
(35, 'BEN-035', 'Mustapha', 'Khelladi', '1983-01-20', 'MALE', 'B+', NULL, 'Rue Sayoud Achour - Annaba', 'SPOUSE', 3012, true, 'admin', now(), NULL, NULL, 0),

-- Anas Khelladi (child) - patient_id = 2040
(36, 'BEN-036', 'Anas', 'Khelladi', '2012-06-15', 'MALE', 'A+', NULL, 'Rue Sayoud Achour - Annaba', 'CHILD', 3012, true, 'admin', now(), NULL, NULL, 0),

-- Mohamed Khelladi (parent) - patient_id = 2041
(37, 'BEN-037', 'Mohamed', 'Khelladi', '1958-10-25', 'MALE', 'AB+', NULL, 'Rue Sayoud Achour - Annaba', 'PARENT', 3012, true, 'admin', now(), NULL, NULL, 0),

-- Fatima Khelladi (parent) - patient_id = 2042
(38, 'BEN-038', 'Fatima', 'Khelladi', '1962-12-10', 'FEMALE', 'O+', NULL, 'Rue Sayoud Achour - Annaba', 'PARENT', 3012, true, 'admin', now(), NULL, NULL, 0),

-- ===================== YOUCEF OUZIANE (employee_id = 3013) - His children as beneficiaries =====================
-- Ilyas Ouziane (child) - patient_id = 2044
(39, 'BEN-039', 'Ilyas', 'Ouziane', '2010-05-18', 'MALE', 'B+', NULL, 'Cité Sonelgaz Ben Aknoun - Alger', 'CHILD', 3013, true, 'admin', now(), NULL, NULL, 0),

-- Linda Ouziane (child) - patient_id = 2045
(40, 'BEN-040', 'Linda', 'Ouziane', '2013-08-22', 'FEMALE', 'A+', NULL, 'Cité Sonelgaz Ben Aknoun - Alger', 'CHILD', 3013, true, 'admin', now(), NULL, NULL, 0),

-- ===================== LAZHAR HAMITI (employee_id = 3014) - Divorced with children =====================
-- Anis Hamiti (child) - patient_id = 2047
(41, 'BEN-041', 'Anis', 'Hamiti', '2011-04-12', 'MALE', 'O+', NULL, 'Cité Sonelgaz Ben Aknoun - Alger', 'CHILD', 3014, true, 'admin', now(), NULL, NULL, 0),

-- Ines Hamiti (child) - patient_id = 2048
(42, 'BEN-042', 'Ines', 'Hamiti', '2014-09-08', 'FEMALE', 'B+', NULL, 'Cité Sonelgaz Ben Aknoun - Alger', 'CHILD', 3014, true, 'admin', now(), NULL, NULL, 0),

-- ===================== FADILA HASAINE (employee_id = 3015) - Her family as beneficiaries =====================
-- Hassan Hasaine (spouse) - patient_id = 2050
(43, 'BEN-043', 'Hassan', 'Hasaine', '1981-07-20', 'MALE', 'A+', NULL, 'Cité Sonelgaz Ben Aknoun - Alger', 'SPOUSE', 3015, true, 'admin', now(), NULL, NULL, 0),

-- Kamel Hasaine (parent) - patient_id = 2051
(44, 'BEN-044', 'Kamel', 'Hasaine', '1958-10-15', 'MALE', 'AB+', NULL, 'Cité Sonelgaz Ben Aknoun - Alger', 'PARENT', 3015, true, 'admin', now(), NULL, NULL, 0),

-- Amira Hasaine (parent) - patient_id = 2052
(45, 'BEN-045', 'Amira', 'Hasaine', '1962-12-05', 'FEMALE', 'O+', NULL, 'Cité Sonelgaz Ben Aknoun - Alger', 'PARENT', 3015, true, 'admin', now(), NULL, NULL, 0);