

INSERT INTO reference.employee (
    id, employee_number, code,
    first_name, last_name,
    date_of_birth, gender, blood_group,
    address, social_security_number,
    family_situation, subsidiary,
    system_entity, enabled,
    created_by, creation_date,
    last_modified_by, last_modified_date, version
)
VALUES
    (1,'EMP000','E00','Yasmine','Baiche','2005-06-28','FEMALE','B+',
     'Alger Centre','125612369','SINGLE','Filiale Alger',
     false,true,'admin',now(),'admin',now(),0),

    (2,'EMP001','E01','Anfal','Daoudi','2005-04-18','FEMALE','A+',
     'Kouba','125612000','SINGLE','Filiale Ouest',
     false,true,'admin',now(),'admin',now(),0),

    (3,'EMP002','E02','Rayane','Mouzaoui','2005-04-26','MALE','B-',
     'Dely Brahim','125612589','SINGLE','Filiale Est',
     false,true,'admin',now(),'admin',now(),0),

    (4,'EMP003','E03','Ilyes','Redjel','2003-11-27','MALE','O-',
     'El Biar','125612000','SINGLE','Filiale Oran',
     false,true,'admin',now(),'admin',now(),0),

    (3001, 'EMP001', 'EMP001', 'Miloud', 'Ouziane', '1980-05-15', 'MALE', 'B+',
    'Boulevard Saouli - Biskra', '198005150012345', 'MARRIED', 'BISKRA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3002, 'EMP002', 'EMP002', 'Karim', 'Hamiti', '1985-09-22', 'MALE', 'A+',
    'Boulevard Saouli - Biskra', '198509220023456', 'MARRIED', 'BISKRA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3003, 'EMP003', 'EMP003', 'Nabila', 'Hasaine', '1978-11-30', 'FEMALE', 'B-',
    'Boulevard Saouli - Biskra', '197811300034567', 'SINGLE', 'BISKRA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3004, 'EMP004', 'EMP004', 'Hocine', 'Miloudi', '1982-03-10', 'MALE', 'AB+',
    'Rue Didouche Mourad - Jijel', '198203100045678', 'MARRIED', 'JIJEL',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3005, 'EMP005', 'EMP005', 'Farid', 'Bouchareb', '1979-07-18', 'MALE', 'O+',
    'Rue Didouche Mourad - Jijel', '197907180056789', 'MARRIED', 'JIJEL',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3006, 'EMP006', 'EMP006', 'Salima', 'Khelladi', '1986-12-05', 'FEMALE', 'A+',
    'Rue Didouche Mourad - Jijel', '198612050067890', 'MARRIED', 'JIJEL',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3007, 'EMP007', 'EMP007', 'Ahmed', 'Ouziane', '1983-08-20', 'MALE', 'B-',
    'Avenue Bachir Boukadoum - Skikda', '198308200078901', 'MARRIED', 'SKIKDA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3008, 'EMP008', 'EMP008', 'Samira', 'Hamiti', '1987-04-14', 'FEMALE', 'AB+',
    'Avenue Bachir Boukadoum - Skikda', '198704140089012', 'SINGLE', 'SKIKDA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3009, 'EMP009', 'EMP009', 'Kamel', 'Hasaine', '1981-11-25', 'MALE', 'O+',
    'Avenue Bachir Boukadoum - Skikda', '198111250090123', 'MARRIED', 'SKIKDA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3010, 'EMP010', 'EMP010', 'Rachid', 'Miloudi', '1984-06-30', 'MALE', 'A+',
    'Rue Sayoud Achour - Annaba', '198406300101234', 'MARRIED', 'ANNABA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3011, 'EMP011', 'EMP011', 'Sofiane', 'Bouchareb', '1988-02-17', 'MALE', 'B+',
    'Rue Sayoud Achour - Annaba', '198802170112345', 'SINGLE', 'ANNABA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3012, 'EMP012', 'EMP012', 'Djamila', 'Khelladi', '1985-10-08', 'FEMALE', 'O+',
    'Rue Sayoud Achour - Annaba', '198510080123456', 'MARRIED', 'ANNABA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3013, 'EMP013', 'EMP013', 'Youcef', 'Ouziane', '1982-01-12', 'MALE', 'AB+',
    'Cité Sonelgaz Ben Aknoun - Alger', '198201120134567', 'MARRIED', 'BEN AKNOUN',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3014, 'EMP014', 'EMP014', 'Lazhar', 'Hamiti', '1986-09-03', 'MALE', 'A+',
    'Cité Sonelgaz Ben Aknoun - Alger', '198609030145678', 'DIVORCED', 'BEN AKNOUN',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3015, 'EMP015', 'EMP015', 'Fadila', 'Hasaine', '1983-05-27', 'FEMALE', 'B+',
    'Cité Sonelgaz Ben Aknoun - Alger', '198305270156789', 'MARRIED', 'BEN AKNOUN',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3016, 'EMP016', 'EMP016', 'Nadia', 'Miloudi', '1985-11-20', 'FEMALE', 'A+',
    'Rue Sayoud Achour - Annaba', '198511200167890', 'MARRIED', 'ANNABA',
    true, true, 'admin', now(), 'admin', now(), 0),

    (3017, 'EMP017', 'EMP017', 'Samira', 'Ouziane', '1984-08-15', 'FEMALE', 'B+',
    'Cité Sonelgaz Ben Aknoun - Alger', '198408150178901', 'MARRIED', 'BEN AKNOUN',
    true, true, 'admin', now(), 'admin', now(), 0);
