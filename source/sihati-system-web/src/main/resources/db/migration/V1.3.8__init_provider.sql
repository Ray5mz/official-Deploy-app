INSERT INTO reference.provider(
    id, code, name, phone, email,
    company_name, license_number, manager_name,
    address, category_id, commune_id,
    enabled, created_by, creation_date,
    last_modified_by, last_modified_date, version
)
VALUES
    -- ── CHU / Hôpitaux généraux (category NULL) ──────────────────────────────
    (1,  'PRV001', 'CHU Mustapha Pacha',          '021123456', 'contact@chu-mustapha.dz',   'Ministère de la Santé', 'CHU-ALG-001', 'Dr. Benyahia Karim',     'Place du 1er Mai - Alger',     NULL, 6,    true, 'admin', now(), 'admin', now(), 1),
    (2,  'PRV002', 'CHU Beni Messous',             '021223344', 'contact@beni-messous.dz',   'Ministère de la Santé', 'CHU-ALG-002', 'Dr. Lounis Amar',        'Beni Messous - Alger',         NULL, 6,    true, 'admin', now(), 'admin', now(), 1),
    (3,  'PRV003', 'CHU Oran',                     '041334455', 'contact@chu-oran.dz',       'Ministère de la Santé', 'CHU-ORN-003', 'Dr. Hachemi Farid',      'Oran Centre',                  NULL, 1082, true, 'admin', now(), 'admin', now(), 1),
    (4,  'PRV004', 'CHU Constantine',              '031556677', 'contact@chu-constantine.dz','Ministère de la Santé', 'CHU-CST-004', 'Dr. Abdelkader Djafer',  'Constantine',                  NULL, 868,  true, 'admin', now(), 'admin', now(), 1),
    (5,  'PRV005', 'CHU Biskra',                   '033452210', 'contact@chu-biskra.dz',     'Ministère de la Santé', 'CHU-BSK-005', 'Dr. Lounis Benyahia',    'Boulevard Saouli - Biskra',    NULL, 232,  true, 'admin', now(), 'admin', now(), 1),
    (30, 'PRV030', 'CHU Annaba',                   '038333333', 'chu@annaba.dz',             'Ministère de la Santé', 'CHU-023',     'Dr. C. Djafer',          'Annaba',                       NULL, 811,  true, 'admin', now(), 'admin', now(), 1),
    (31, 'PRV031', 'CHU Setif',                    '036666666', 'chu@setif.dz',              'Ministère de la Santé', 'CHU-026',     'Dr. F. Benali',          'Setif',                        NULL, 677,  true, 'admin', now(), 'admin', now(), 1),
    (32, 'PRV032', 'CHU Tizi Ouzou',               '026404040', 'chu@tizi.dz',               'Ministère de la Santé', 'CHU-033',     'Dr. M. Hamadi',          'Tizi Ouzou',                   NULL, 489,  true, 'admin', now(), 'admin', now(), 1),
    (33, 'PRV033', 'Centre Médical El Amel Jijel', '034556677', 'amel@med.dz',               'El Amel Center',        'MED-JIJ-402', 'Dr. Rachid Belkacem',    'Jijel',                        NULL, 617,  true, 'admin', now(), 'admin', now(), 1),
    (34, 'PRV034', 'Polyclinique El Hidaya Blida', '025778899', 'hidaya@med.dz',             'El Hidaya',             'MED-BLD-403', 'Dr. Sofiane Boudjemaa',  'Blida',                        NULL, 283,  true, 'admin', now(), 'admin', now(), 1),
    (35, 'PRV035', 'Centre Médical Boudouaou',     '024999999', 'boudouaou@dz.dz',           'CM Boudouaou',          'MED-029',     'Dr. I. Seddik',          'Boudouaou',                    NULL, 1181, true, 'admin', now(), 'admin', now(), 1),

    -- ── category_id = 1 : Centre d'Imagerie (CI) ─────────────────────────────
    (6,  'PRV006', 'Centre Radiologie El Djazair', '021778899', 'rad@eljazair.dz',           'Radiologie DZ',         'RAD-ALG-301', 'Dr. Noureddine Hamadi',  'El Biar - Alger',              1, 6,    true, 'admin', now(), 'admin', now(), 1),
    (7,  'PRV007', 'Centre Imagerie Biskra',        '033998877', 'img@biskra.dz',             'Imagerie Sud',          'RAD-BSK-302', 'Dr. Hicham Ghrib',       'Biskra',                       1, 232,  true, 'admin', now(), 'admin', now(), 1),
    (8,  'PRV008', 'Centre Scanner Oran',           '041223344', 'scanner@oran.dz',           'Scanner West',          'RAD-ORN-303', 'Dr. Adel Seddik',        'Oran',                         1, 1082, true, 'admin', now(), 'admin', now(), 1),
    (9,  'PRV009', 'Radiologie El Amine',           '021555555', 'amine@dz.dz',               'El Amine',              'RAD-025',     'Dr. E. Hamadi',          'Alger',                        1, 6,    true, 'admin', now(), 'admin', now(), 1),
    (10, 'PRV010', 'Radiologie Atlas Oran',         '041202020', 'atlas@dz.dz',               'Atlas Rad',             'RAD-031',     'Dr. K. Boudjemaa',       'Oran',                         1, 1082, true, 'admin', now(), 'admin', now(), 1),

    -- ── category_id = 2 : Laboratoire Médical (LM) ───────────────────────────
    (11, 'PRV011', 'Laboratoire Atlas Médical',     '021445566', 'atlas@lab.dz',              'Atlas Lab',             'LAB-ALG-201', 'Dr. Yacine Mokrani',     'Bab Ezzouar - Alger',          2, 6,    true, 'admin', now(), 'admin', now(), 1),
    (12, 'PRV012', 'Laboratoire El Hayat Biskra',   '033556677', 'hayat@lab.dz',              'El Hayat Lab',          'LAB-BSK-202', 'Dr. Nadia Boudiaf',      'Biskra',                       2, 232,  true, 'admin', now(), 'admin', now(), 1),
    (13, 'PRV013', 'Laboratoire Pasteur Alger',     '021778899', 'pasteur@lab.dz',            'Pasteur DZ',            'LAB-ALG-203', 'Dr. Rachid Belkacem',    'Alger Centre',                 2, 6,    true, 'admin', now(), 'admin', now(), 1),
    (14, 'PRV014', 'Laboratoire Médical Jijel',     '034556677', 'lab@jijel.dz',              'Jijel Lab',             'LAB-JIJ-204', 'Dr. Amine Boudjemaa',    'Jijel',                        2, 617,  true, 'admin', now(), 'admin', now(), 1),
    (15, 'PRV015', 'Laboratoire BioPlus',           '021222222', 'bioplus@dz.dz',             'BioPlus',               'LAB-022',     'Dr. B. Hamdi',           'Alger',                        2, 6,    true, 'admin', now(), 'admin', now(), 1),
    (16, 'PRV016', 'Laboratoire NovaLab',           '021888888', 'nova@dz.dz',                'NovaLab',               'LAB-028',     'Dr. H. Mokrani',         'Alger',                        2, 6,    true, 'admin', now(), 'admin', now(), 1),
    (17, 'PRV017', 'Laboratoire El Djazair',        '021303030', 'lab@dz.dz',                 'El Djazair Lab',        'LAB-032',     'Dr. L. Belkacem',        'Alger',                        2, 6,    true, 'admin', now(), 'admin', now(), 1),

    -- ── category_id = 3 : Clinique de Chirurgie (CHIR) ───────────────────────
    (18, 'PRV018', 'Clinique El Amel Alger',        '021998877', 'info@elamel.dz',            'El Amel Medical',       'CLN-ALG-101', 'Dr. Samir Khelifi',      'Hydra - Alger',                3, 6,    true, 'admin', now(), 'admin', now(), 1),
    (19, 'PRV019', 'Clinique Ibn Sina Oran',         '041887766', 'contact@ibnsina.dz',        'Ibn Sina Clinic',       'CLN-ORN-102', 'Dr. Hamid Bensalem',     'Oran',                         3, 1082, true, 'admin', now(), 'admin', now(), 1),
    (20, 'PRV020', 'Clinique El Rahma Jijel',        '034112233', 'rahma@clinic.dz',           'El Rahma Medical',      'CLN-JIJ-103', 'Dr. Farid Bouchareb',    'Jijel Centre',                 3, 617,  true, 'admin', now(), 'admin', now(), 1),
    (21, 'PRV021', 'Clinique El Farabi Blida',       '025667788', 'farabi@clinic.dz',          'El Farabi Clinic',      'CLN-BLD-104', 'Dr. Nadia Hamdi',        'Blida',                        3, 283,  true, 'admin', now(), 'admin', now(), 1),
    (22, 'PRV022', 'Clinique El Wafa Biskra',        '033667788', 'wafa@clinic.dz',            'El Wafa Center',        'CLN-BSK-105', 'Dr. Hicham Ghrib',       'Biskra',                       3, 232,  true, 'admin', now(), 'admin', now(), 1),
    (23, 'PRV023', 'Clinique El Kenz Alger',         '021111111', 'kenz@dz.dz',                'El Kenz',               'CLN-021',     'Dr. A. Khelifi',         'Alger',                        3, 6,    true, 'admin', now(), 'admin', now(), 1),
    (24, 'PRV024', 'Clinique MedCare Oran',          '041444444', 'medcare@dz.dz',             'MedCare',               'CLN-024',     'Dr. D. Hamid',           'Oran',                         3, 1082, true, 'admin', now(), 'admin', now(), 1),
    (25, 'PRV025', 'Clinique El Hayat Oran',         '041777777', 'hayat@dz.dz',               'El Hayat',              'CLN-027',     'Dr. G. Khelif',          'Oran',                         3, 1082, true, 'admin', now(), 'admin', now(), 1),
    (26, 'PRV026', 'Clinique El Rahma Alger',        '021101010', 'rahma@dz.dz',               'El Rahma',              'CLN-030',     'Dr. J. Hamdi',           'Alger',                        3, 6,    true, 'admin', now(), 'admin', now(), 1),
    (27, 'PRV027', 'Clinique El Fajr',               '021505050', 'fajr@dz.dz',                'El Fajr',               'CLN-034',     'Dr. N. Khelifi',         'Alger',                        3, 6,    true, 'admin', now(), 'admin', now(), 1),

    -- ── category_id = 4 : Clinique d'Oncologie (ONC) ─────────────────────────
    (28, 'PRV028', 'Centre Oncologie El Wafa',       '021667788', 'wafa@oncologie.dz',         'El Wafa Oncology',      'ONC-ALG-401', 'Dr. Mohamed Seddik',     'Sidi Yahia - Alger',           4, 6,    true, 'admin', now(), 'admin', now(), 1),
    (29, 'PRV029', 'Centre Oncologie Oran',          '041606060', 'oncologie@oran.dz',         'Ibn Rochd Oncology',    'ONC-ORN-402', 'Dr. O. Seddik',          'Oran',                         4, 1082, true, 'admin', now(), 'admin', now(), 1);