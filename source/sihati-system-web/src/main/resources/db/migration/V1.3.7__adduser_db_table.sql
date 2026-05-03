-- 1. Ajouter UNIQUE sur code d'abord
ALTER TABLE admin."user"
    ADD CONSTRAINT user_code_uk UNIQUE (code);

-- 2. Ensuite ajouter la colonne et la FK
ALTER TABLE admin."user"
    ADD COLUMN password_source_code VARCHAR(10) DEFAULT NULL;

ALTER TABLE admin."user"
    ADD CONSTRAINT fk_password_source
        FOREIGN KEY (password_source_code)
            REFERENCES admin."user"(code);


-- U001 = Yasmine Baiche (student/employee)
-- Family: Omar Baiche (U005), Salima Ikene (U006)
UPDATE admin."user" SET password_source_code = 'U001'
WHERE code IN ('U005', 'U006');

-- U002 = Anfal Daoudi
-- Family: Mahmoud Daoudi (U007), Farida Idoui (U008)
UPDATE admin."user" SET password_source_code = 'U002'
WHERE code IN ('U007', 'U008');

-- U003 = Rayane Mouzaoui
-- Family: Samy Mouzaoui (U011), Sabina Guers (U012)
UPDATE admin."user" SET password_source_code = 'U003'
WHERE code IN ('U011', 'U012');

-- U004 = Ilyes Redjel
-- Family: Samira Boutelja (U013), Ahmed Redjel (U014)
UPDATE admin."user" SET password_source_code = 'U004'
WHERE code IN ('U013', 'U014');

-- U016 = Miloud Ouziane (BISKRA Employee 1)
-- Family: Fatima/wife (U017), Rachid/child (U018), Mohamed/father (U019)
UPDATE admin."user" SET password_source_code = 'U016'
WHERE code IN ('U017', 'U018', 'U019');

-- U020 = Karim Hamiti (BISKRA Employee 2)
-- Family: Zohra/wife (U021), Yacine/child1 (U022), Lina/child2 (U023),
--         Abdelkader/father (U024), Yamina/mother (U025)
UPDATE admin."user" SET password_source_code = 'U020'
WHERE code IN ('U021', 'U022', 'U023', 'U024', 'U025');

-- U026 = Nabila Hasaine (BISKRA Employee 3 - SINGLE, no ayants droits)
-- No dependents

-- U027 = Hocine Miloudi (JIJEL Employee 4)
-- Family: Yamina/wife (U028), Amine/child1 (U029), Salah/child2 (U030),
--         Aicha/mother (U031)
UPDATE admin."user" SET password_source_code = 'U027'
WHERE code IN ('U028', 'U029', 'U030', 'U031');

-- U032 = Farid Bouchareb (JIJEL Employee 5)
-- Family: Warda/wife (U033), Bilal/child1 (U034)
UPDATE admin."user" SET password_source_code = 'U032'
WHERE code IN ('U033', 'U034');

-- U035 = Salima Khelladi (JIJEL Employee 6)
-- Family: Mokhtar/husband (U036), Fatima/mother (U037), Mohamed/father (U038)
UPDATE admin."user" SET password_source_code = 'U035'
WHERE code IN ('U036', 'U037', 'U038');

-- U039 = Ahmed Ouziane (SKIKDA Employee 7)
-- Family: Meryem/wife (U040), Hamza/child1 (U041), Imane/child2 (U042)
UPDATE admin."user" SET password_source_code = 'U039'
WHERE code IN ('U040', 'U041', 'U042');

-- U043 = Samira Hamiti (SKIKDA Employee 8 - single parent)
-- Family: Ilyes/child1 (U044)
UPDATE admin."user" SET password_source_code = 'U043'
WHERE code IN ('U044');

-- U045 = Kamel Hasaine (SKIKDA Employee 9)
-- Family: Latifa/wife (U046), Rabah/father (U047)
UPDATE admin."user" SET password_source_code = 'U045'
WHERE code IN ('U046', 'U047');

-- U048 = Rachid Miloudi (ANNABA Employee 10)
-- Family: Adel/child1 (U049), Leila/child2 (U050)
-- Note: no wife listed in seed data
UPDATE admin."user" SET password_source_code = 'U048'
WHERE code IN ('U049', 'U050');

-- U051 = Sofiane Bouchareb (ANNABA Employee 11)
-- Family: Houria/mother (U052)
UPDATE admin."user" SET password_source_code = 'U051'
WHERE code IN ('U052');

-- U053 = Djamila Khelladi (ANNABA Employee 12)
-- Family: Mustapha/husband (U054), Anas/child1 (U055),
--         Mohamed/father (U056), Fatima/mother (U057)
UPDATE admin."user" SET password_source_code = 'U053'
WHERE code IN ('U054', 'U055', 'U056', 'U057');

-- U058 = Youcef Ouziane (ALGER Employee 13)
-- Family: Ilyas/child1 (U059), Linda/child2 (U060)
-- Note: no wife listed in seed data
UPDATE admin."user" SET password_source_code = 'U058'
WHERE code IN ('U059', 'U060');

-- U061 = Lazhar Hamiti (ALGER Employee 14 - divorced)
-- Family: Anis/child1 (U062), Ines/child2 (U063)
UPDATE admin."user" SET password_source_code = 'U061'
WHERE code IN ('U062', 'U063');

-- U064 = Fadila Hasaine (ALGER Employee 15)
-- Family: Hassan/husband (U065), Kamel/father (U066), Amira/mother (U067)
UPDATE admin."user" SET password_source_code = 'U064'
WHERE code IN ('U065', 'U066', 'U067');

-- U068 = Nadia Miloudi (ANNABA separate employee - no dependents listed)
-- U069 = Samira Ouziane (ALGER separate employee - no dependents listed)
-- No password_source_code needed for these two