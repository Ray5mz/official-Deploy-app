

INSERT INTO reference.patient (
    id, social_security_number, code,
    first_name, last_name,
    date_of_birth, gender, blood_group,
    phone, email, address,
    family_situation,
    patient_category, internal_type,
    relationship, employment_status,
    system_entity, commune_id, employee_id,
    enabled, created_by, creation_date,
    last_modified_by, last_modified_date, version
)
VALUES

    (1,'121256489','U001','Yasmine','Baiche','2005-06-28','FEMALE','B+',
     '0679741913','yasmine.baiche2005@gmail.com','Alger',
     'SINGLE','INTERNAL','AGENT','PRINCIPAL','EMPLOYED',
     false,3,1,true,'admin',now(),'admin',now(),1),

    (2,NULL,'U002','Anfal','Daoudi','2005-04-18','FEMALE','A+',
     '0796973267','daoudi.anfal2005@gmail.com','Kouba',
     'SINGLE','INTERNAL','AGENT','PRINCIPAL','EMPLOYED',
     false,3,2,true,'admin',now(),'admin',now(),1),

    (3,NULL,'U003','Rayane','Mouzaoui','2005-04-26','MALE','B-',
     '079123010','rayane.mouzaoui2005@gmail.com','Alger',
     'SINGLE','INTERNAL','AGENT','PRINCIPAL','EMPLOYED',
     false,4,3,true,'admin',now(),'admin',now(),1),

    (4,NULL,'U004','Ilyes','Redjel','2003-11-27','MALE','O-',
     '055728401','ilyes.redjel2005@gmail.com','Alger',
     'SINGLE','INTERNAL','AGENT','PRINCIPAL','EMPLOYED',
     false,5,4,true,'admin',now(),'admin',now(),1),

-- ayant droit


-- Parents of Yasmine (employee_id = 1)
(5,NULL,'U005','Omar','Baiche','1966-01-05','MALE','B+',
 '0778123648','omar.baiche2005@gmail.com','Alger',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,3,1,true,'admin',now(),'admin',now(),1),

(6,NULL,'U006','Salima','Ikene','1967-06-18','FEMALE','B+',
 '0559100203','salima.ikene2005@gmail.com','Alger',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,3,1,true,'admin',now(),'admin',now(),1),


-- Parents of Anfal (employee_id = 2)
(7,NULL,'U007','Mahmoud','Daoudi','1960-05-03','MALE','B-',
 '0662718892','daoudi.mahmoud2005@gmail.dz','Kouba',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,5,2,true,'admin',now(),'admin',now(),1),

(8,NULL,'U008','Farida','Idoui','1967-06-12','FEMALE','AB+',
 '0673741123','farida.idoui2005@gmail.dz','Kouba',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,5,2,true,'admin',now(),'admin',now(),1),



-- Parents of Rayane (employee_id = 3)
(11,NULL,'U011','Samy','Mouzaoui','1970-07-11','MALE','O+',
 '0778200011','samy.mouzaoui2005@gmail.com','Alger',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,4,3,true,'admin',now(),'admin',now(),1),

(12,NULL,'U012','Sabina','Guers','1975-01-20','FEMALE','A+',
 '0512389019','sabrina.guers2005@gmail.com','Alger',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,4,3,true,'admin',now(),'admin',now(),1),


-- Parents of Ilyes (employee_id = 4)
(13,NULL,'U013','Samira','Boutelja','1965-11-15','FEMALE','A-',
 '0699991928','boutelja.samira2005@gmail.dz','El Biar',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,5,4,true,'admin',now(),'admin',now(),1),

(14,NULL,'U014','Ahmed','Redjel','1963-04-18','MALE','B+',
 '0673741929','redjel.ahmed2005@gmail.dz','El Biar',
 'MARRIED','INTERNAL','BENEFICIARY','PARENT','EMPLOYED',
 false,5,4,true,'admin',now(),'admin',now(),1),
(2001, '198005150012345', 'U016', 'Miloud', 'Ouziane', '1980-05-15', 'MALE', 'B+',
    '0551122334', 'miloud.ouziane@sonelgaz.dz', 'Boulevard Saouli - Biskra',
    'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
    true, 232, 3001, true, 'admin', now(), 'admin', now(), 1),

(2002, NULL, 'U017', 'Fatima', 'Ouziane', '1982-03-20', 'FEMALE', 'A+',
 '0551122335', 'fatima.ouziane@patient.dz', 'Boulevard Saouli - Biskra',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 232, 3001, true, 'admin', now(), 'admin', now(), 1),

(2003, NULL, 'U018', 'Rachid', 'Ouziane', '2010-07-15', 'MALE', 'O+',
 '0551122336', 'rachid.ouziane@patient.dz', 'Boulevard Saouli - Biskra',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 232, 3001, true, 'admin', now(), 'admin', now(), 1),

(2004, NULL, 'U019', 'Mohamed', 'Ouziane', '1955-08-25', 'MALE', 'AB+',
 '0551122338', 'mohamed.ouziane@patient.dz', 'Boulevard Saouli - Biskra',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 232, 3001, true, 'admin', now(), 'admin', now(), 1),

-- BISKRA - Karim Hamiti (employee_id = 3002)
(2005, '198509220023456', 'U020', 'Karim', 'Hamiti', '1985-09-22', 'MALE', 'A+',
 '0551122339', 'karim.hamiti@sonelgaz.dz', 'Boulevard Saouli - Biskra',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 232, 3002, true, 'admin', now(), 'admin', now(), 1),

(2006, NULL, 'U021', 'Zohra', 'Hamiti', '1987-06-10', 'FEMALE', 'B+',
 '0551122340', 'zohra.hamiti@patient.dz', 'Boulevard Saouli - Biskra',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 232, 3002, true, 'admin', now(), 'admin', now(), 1),

(2007, NULL, 'U022', 'Yacine', 'Hamiti', '2012-04-18', 'MALE', 'O+',
 '0551122341', 'yacine.hamiti@patient.dz', 'Boulevard Saouli - Biskra',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 232, 3002, true, 'admin', now(), 'admin', now(), 1),

(2008, NULL, 'U023', 'Lina', 'Hamiti', '2015-08-30', 'FEMALE', 'A+',
 '0551122342', 'lina.hamiti@patient.dz', 'Boulevard Saouli - Biskra',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 232, 3002, true, 'admin', now(), 'admin', now(), 1),

(2009, NULL, 'U024', 'Abdelkader', 'Hamiti', '1960-02-14', 'MALE', 'AB+',
 '0551122343', 'abdelkader.hamiti@patient.dz', 'Boulevard Saouli - Biskra',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 232, 3002, true, 'admin', now(), 'admin', now(), 1),

(2010, NULL, 'U025', 'Yamina', 'Hamiti', '1965-05-20', 'FEMALE', 'B+',
 '0551122344', 'yamina.hamiti@patient.dz', 'Boulevard Saouli - Biskra',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 232, 3002, true, 'admin', now(), 'admin', now(), 1),

-- BISKRA - Nabila Hasaine (employee_id = 3003) - SINGLE, no ayants droits
(2011, '197811300034567', 'U026', 'Nabila', 'Hasaine', '1978-11-30', 'FEMALE', 'B-',
 '0551122345', 'nabila.hasaine@sonelgaz.dz', 'Boulevard Saouli - Biskra',
 'SINGLE', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 232, 3003, true, 'admin', now(), 'admin', now(), 1),

-- JIJEL - Hocine Miloudi (employee_id = 3004)
(2012, '198203100045678', 'U027', 'Hocine', 'Miloudi', '1982-03-10', 'MALE', 'AB+',
 '0552122334', 'hocine.miloudi@sonelgaz.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 186, 3004, true, 'admin', now(), 'admin', now(), 1),

(2013, NULL, 'U028', 'Yamina', 'Miloudi', '1984-06-15', 'FEMALE', 'O+',
 '0552122335', 'yamina.miloudi@patient.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 186, 3004, true, 'admin', now(), 'admin', now(), 1),

(2014, NULL, 'U029', 'Amine', 'Miloudi', '2009-05-20', 'MALE', 'A+',
 '0552122336', 'amine.miloudi@patient.dz', 'Rue Didouche Mourad - Jijel',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 186, 3004, true, 'admin', now(), 'admin', now(), 1),

(2015, NULL, 'U030', 'Salah', 'Miloudi', '2012-11-02', 'MALE', 'B+',
 '0552122337', 'salah.miloudi@patient.dz', 'Rue Didouche Mourad - Jijel',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 186, 3004, true, 'admin', now(), 'admin', now(), 1),

(2016, NULL, 'U031', 'Aicha', 'Miloudi', '1957-08-25', 'FEMALE', 'O+',
 '0552122338', 'aicha.miloudi@patient.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 186, 3004, true, 'admin', now(), 'admin', now(), 1),

-- JIJEL - Farid Bouchareb (employee_id = 3005)
(2017, '197907180056789', 'U032', 'Farid', 'Bouchareb', '1979-07-18', 'MALE', 'O+',
 '0552122339', 'farid.bouchareb@sonelgaz.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 186, 3005, true, 'admin', now(), 'admin', now(), 1),

(2018, NULL, 'U033', 'Warda', 'Bouchareb', '1981-09-15', 'FEMALE', 'A+',
 '0552122340', 'warda.bouchareb@patient.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 186, 3005, true, 'admin', now(), 'admin', now(), 1),

(2019, NULL, 'U034', 'Bilal', 'Bouchareb', '2010-03-22', 'MALE', 'B+',
 '0552122341', 'bilal.bouchareb@patient.dz', 'Rue Didouche Mourad - Jijel',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 186, 3005, true, 'admin', now(), 'admin', now(), 1),

-- JIJEL - Salima Khelladi (employee_id = 3006)
(2020, '198612050067890', 'U035', 'Salima', 'Khelladi', '1986-12-05', 'FEMALE', 'A+',
 '0552122344', 'salima.khelladi@sonelgaz.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 186, 3006, true, 'admin', now(), 'admin', now(), 1),

(2021, NULL, 'U036', 'Mokhtar', 'Khelladi', '1984-08-20', 'MALE', 'B+',
 '0552122345', 'mokhtar.khelladi@patient.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 186, 3006, true, 'admin', now(), 'admin', now(), 1),

(2022, NULL, 'U037', 'Fatima', 'Khelladi', '1959-05-10', 'FEMALE', 'AB+',
 '0552122348', 'fatima.khelladi@patient.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 186, 3006, true, 'admin', now(), 'admin', now(), 1),

(2023, NULL, 'U038', 'Mohamed', 'Khelladi', '1958-10-15', 'MALE', 'O+',
 '0552122349', 'mohamed.khelladi@patient.dz', 'Rue Didouche Mourad - Jijel',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 186, 3006, true, 'admin', now(), 'admin', now(), 1),

-- SKIKDA - Ahmed Ouziane (employee_id = 3007)
(2024, '198308200078901', 'U039', 'Ahmed', 'Ouziane', '1983-08-20', 'MALE', 'B-',
 '0553122334', 'ahmed.ouziane@sonelgaz.dz', 'Avenue Bachir Boukadoum - Skikda',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 755, 3007, true, 'admin', now(), 'admin', now(), 1),

(2025, NULL, 'U040', 'Meryem', 'Ouziane', '1985-06-10', 'FEMALE', 'A+',
 '0553122335', 'meryem.ouziane@patient.dz', 'Avenue Bachir Boukadoum - Skikda',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 755, 3007, true, 'admin', now(), 'admin', now(), 1),

(2026, NULL, 'U041', 'Hamza', 'Ouziane', '2011-07-12', 'MALE', 'O+',
 '0553122336', 'hamza.ouziane@patient.dz', 'Avenue Bachir Boukadoum - Skikda',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 755, 3007, true, 'admin', now(), 'admin', now(), 1),

(2027, NULL, 'U042', 'Imane', 'Ouziane', '2014-04-05', 'FEMALE', 'B+',
 '0553122337', 'imane.ouziane@patient.dz', 'Avenue Bachir Boukadoum - Skikda',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 755, 3007, true, 'admin', now(), 'admin', now(), 1),

-- SKIKDA - Samira Hamiti (employee_id = 3008) - Single parent
(2028, '198704140089012', 'U043', 'Samira', 'Hamiti', '1987-04-14', 'FEMALE', 'AB+',
 '0553122339', 'samira.hamiti@sonelgaz.dz', 'Avenue Bachir Boukadoum - Skikda',
 'SINGLE', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 755, 3008, true, 'admin', now(), 'admin', now(), 1),

(2029, NULL, 'U044', 'Ilyes', 'Hamiti', '2012-09-18', 'MALE', 'O+',
 '0553122341', 'ilyes.hamiti@patient.dz', 'Avenue Bachir Boukadoum - Skikda',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 755, 3008, true, 'admin', now(), 'admin', now(), 1),

-- SKIKDA - Kamel Hasaine (employee_id = 3009)
(2030, '198111250090123', 'U045', 'Kamel', 'Hasaine', '1981-11-25', 'MALE', 'O+',
 '0553122344', 'kamel.hasaine@sonelgaz.dz', 'Avenue Bachir Boukadoum - Skikda',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 755, 3009, true, 'admin', now(), 'admin', now(), 1),

(2031, NULL, 'U046', 'Latifa', 'Hasaine', '1983-03-15', 'FEMALE', 'A+',
 '0553122345', 'latifa.hasaine@patient.dz', 'Avenue Bachir Boukadoum - Skikda',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 755, 3009, true, 'admin', now(), 'admin', now(), 1),

(2032, NULL, 'U047', 'Rabah', 'Hasaine', '1956-10-20', 'MALE', 'B+',
 '0553122348', 'rabah.hasaine@patient.dz', 'Avenue Bachir Boukadoum - Skikda',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 755, 3009, true, 'admin', now(), 'admin', now(), 1),

-- ANNABA - Rachid Miloudi (employee_id = 3010)
(2033, '198406300101234', 'U048', 'Rachid', 'Miloudi', '1984-06-30', 'MALE', 'A+',
 '0554122334', 'rachid.miloudi@sonelgaz.dz', 'Rue Sayoud Achour - Annaba',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 811, 3010, true, 'admin', now(), 'admin', now(), 1),

(2034, NULL, 'U049', 'Adel', 'Miloudi', '2011-05-15', 'MALE', 'B+',
 '0554122336', 'adel.miloudi@patient.dz', 'Rue Sayoud Achour - Annaba',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 811, 3010, true, 'admin', now(), 'admin', now(), 1),

(2035, NULL, 'U050', 'Leila', 'Miloudi', '2014-08-20', 'FEMALE', 'A+',
 '0554122338', 'leila.miloudi@patient.dz', 'Rue Sayoud Achour - Annaba',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 811, 3010, true, 'admin', now(), 'admin', now(), 1),

-- ANNABA - Sofiane Bouchareb (employee_id = 3011)
(2036, '198802170112345', 'U051', 'Sofiane', 'Bouchareb', '1988-02-17', 'MALE', 'B+',
 '0554122339', 'sofiane.bouchareb@sonelgaz.dz', 'Rue Sayoud Achour - Annaba',
 'SINGLE', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 811, 3011, true, 'admin', now(), 'admin', now(), 1),

(2037, NULL, 'U052', 'Houria', 'Bouchareb', '1965-03-15', 'FEMALE', 'A+',
 '0554122340', 'houria.bouchareb@patient.dz', 'Rue Sayoud Achour - Annaba',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 811, 3011, true, 'admin', now(), 'admin', now(), 1),

-- ANNABA - Djamila Khelladi (employee_id = 3012)
(2038, '198510080123456', 'U053', 'Djamila', 'Khelladi', '1985-10-08', 'FEMALE', 'O+',
 '0554122344', 'djamila.khelladi@sonelgaz.dz', 'Rue Sayoud Achour - Annaba',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 811, 3012, true, 'admin', now(), 'admin', now(), 1),

(2039, NULL, 'U054', 'Mustapha', 'Khelladi', '1983-01-20', 'MALE', 'B+',
 '0554122345', 'mustapha.khelladi@patient.dz', 'Rue Sayoud Achour - Annaba',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 811, 3012, true, 'admin', now(), 'admin', now(), 1),

(2040, NULL, 'U055', 'Anas', 'Khelladi', '2012-06-15', 'MALE', 'A+',
 '0554122346', 'anas.khelladi@patient.dz', 'Rue Sayoud Achour - Annaba',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 811, 3012, true, 'admin', now(), 'admin', now(), 1),

(2041, NULL, 'U056', 'Mohamed', 'Khelladi', '1958-10-25', 'MALE', 'AB+',
 '0554122348', 'mohamed.khelladi@patient.dz', 'Rue Sayoud Achour - Annaba',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 811, 3012, true, 'admin', now(), 'admin', now(), 1),

(2042, NULL, 'U057', 'Fatima', 'Khelladi', '1962-12-10', 'FEMALE', 'O+',
 '0554122349', 'fatima.khelladi@patient.dz', 'Rue Sayoud Achour - Annaba',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 811, 3012, true, 'admin', now(), 'admin', now(), 1),

-- ALGER - Youcef Ouziane (employee_id = 3013)
(2043, '198201120134567', 'U058', 'Youcef', 'Ouziane', '1982-01-12', 'MALE', 'AB+',
 '0555122334', 'youcef.ouziane@sonelgaz.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 570, 3013, true, 'admin', now(), 'admin', now(), 1),

(2044, NULL, 'U059', 'Ilyas', 'Ouziane', '2010-05-18', 'MALE', 'B+',
 '0555122336', 'ilyas.ouziane@patient.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 570, 3013, true, 'admin', now(), 'admin', now(), 1),

(2045, NULL, 'U060', 'Linda', 'Ouziane', '2013-08-22', 'FEMALE', 'A+',
 '0555122337', 'linda.ouziane@patient.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 570, 3013, true, 'admin', now(), 'admin', now(), 1),

-- ALGER - Lazhar Hamiti (employee_id = 3014)
(2046, '198609030145678', 'U061', 'Lazhar', 'Hamiti', '1986-09-03', 'MALE', 'A+',
 '0555122339', 'lazhar.hamiti@sonelgaz.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'DIVORCED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 570, 3014, true, 'admin', now(), 'admin', now(), 1),

(2047, NULL, 'U062', 'Anis', 'Hamiti', '2011-04-12', 'MALE', 'O+',
 '0555122341', 'anis.hamiti@patient.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 570, 3014, true, 'admin', now(), 'admin', now(), 1),

(2048, NULL, 'U063', 'Ines', 'Hamiti', '2014-09-08', 'FEMALE', 'B+',
 '0555122342', 'ines.hamiti@patient.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'SINGLE', 'INTERNAL', 'BENEFICIARY', 'CHILD', 'DEPENDENT',
 true, 570, 3014, true, 'admin', now(), 'admin', now(), 1),

-- ALGER - Fadila Hasaine (employee_id = 3015)
(2049, '198305270156789', 'U064', 'Fadila', 'Hasaine', '1983-05-27', 'FEMALE', 'B+',
 '0555122344', 'fadila.hasaine@sonelgaz.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 570, 3015, true, 'admin', now(), 'admin', now(), 1),

(2050, NULL, 'U065', 'Hassan', 'Hasaine', '1981-07-20', 'MALE', 'A+',
 '0555122345', 'hassan.hasaine@patient.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'SPOUSE', 'DEPENDENT',
 true, 570, 3015, true, 'admin', now(), 'admin', now(), 1),

(2051, NULL, 'U066', 'Kamel', 'Hasaine', '1958-10-15', 'MALE', 'AB+',
 '0555122348', 'kamel.hasaine@patient.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 570, 3015, true, 'admin', now(), 'admin', now(), 1),

(2052, NULL, 'U067', 'Amira', 'Hasaine', '1962-12-05', 'FEMALE', 'O+',
 '0555122349', 'amira.hasaine@patient.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'MARRIED', 'INTERNAL', 'BENEFICIARY', 'PARENT', 'RETIRED',
 true, 570, 3015, true, 'admin', now(), 'admin', now(), 1),

-- Wives who work at Sonelgaz (separate employees)
(2053, '198511200167890', 'U068', 'Nadia', 'Miloudi', '1985-11-20', 'FEMALE', 'A+',
 '0554122335', 'nadia.miloudi@sonelgaz.dz', 'Rue Sayoud Achour - Annaba',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 811, 3016, true, 'admin', now(), 'admin', now(), 1),

(2054, '198408150178901', 'U069', 'Samira', 'Ouziane', '1984-08-15', 'FEMALE', 'B+',
 '0555122335', 'samira.ouziane@sonelgaz.dz', 'Cité Sonelgaz Ben Aknoun - Alger',
 'MARRIED', 'INTERNAL', 'AGENT', 'PRINCIPAL', 'EMPLOYED',
 true, 570, 3017, true, 'admin', now(), 'admin', now(), 1);