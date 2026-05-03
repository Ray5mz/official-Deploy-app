
INSERT INTO admin.organisational_structure (id, code, designation, fax, address, phone, commune_id,
                                            parent_organisational_structure, has_data, structure_type, deleted, enabled,
                                            version)
VALUES (2, '1602', 'URA', null, null, null, 570, 1, false, 'REGION', false, true, 0)
        , (3, '0901', 'UDB', null, null, null, 283, 1, false, 'REGION', false, true, 0)
        , (4, '1603', 'BEN AKNOUN', '023 06 78 05', 'SOUS SOL DU BLOC N°02 ET 03, CITE 90 LOGTS SONELGAZ BEN AKNOUN',
           '023 06 78 05', 570, 2, true, 'MC', false, true, 0)
        , (5, '1604', 'GUE DE CONSTANTINE', '021 83 01 69', 'RDC BLOC 01 CITE SONELGAZ GUE DE CONSTANTINE', '021 83 01 69',
           567, 2, true, 'MC', false, true, 0)
        , (6, '1605', 'RUISSEAU', '021 67 27 49', '201 RUE MOHAMED BELOUIZDED ALGER', '021 67 27 49', 528, 2, true, 'MC',
           false, true, 0)
        , (7, '1606', 'KHELIFA BOUKHALFA', '021 23 89 66', '43 ET 45 RUE KHELIFA BOUKHALFA ALGER', '021 23 89 66', 559, 2,
           true, 'MC', false, true, 0)
        , (8, '1607', 'ALGER NORD ', '021 43 94 58', '12 BOULEVARD AMARA RACHID ALGER ', '021 43 94 58', 557, 2, true,
           'MC', false, true, 0)
        , (9, '0901', 'BLIDA', '025 21 55 46', '10 AVENUE AMARA YOUCEF BAB ESSBET BLIDA', '025 21 55 46', 283, 3, true,
           'MC', false, true, 0)
        , (10, '1501', 'TIZI OUZOU ', '026 19 02 78 ', 'BOULEVARD COLONNELE MELLAH TIZI OUZOU', '026 19 02 78 ', 489, 3,
           true, 'MC', false, true, 0),



       (11, '1608', 'LABORATOIRE HASSIBA', null,
        '12 Rue Hassiba Ben Bouali - Alger', '021735510', 556, 2, true, 'MC', false, true, 0),

       (12, '1609', 'REEDUCATION RADIOLOGIE', null,
        'Cité Sonelgaz Ben Aknoun', '021796128', 553, 2, true, 'MC', false, true, 0),

       (13, '1610', 'ORTHOPHONIE', null,
        'Cité Sonelgaz Ben Aknoun', '023384441', 553, 2, true, 'MC', false, true, 0),

       (14, '1611', 'BOUIRA', null,
        'Rue 19 Mars 1962 - Bouira', '026736710', 310, 2, true, 'MC', false, true, 0),

       (15, '1612', 'DJELFA', null,
        'Cité Ain Amara - Djelfa', '027916245', 605, 2, true, 'MC', false, true, 0),

       (16, '1613', 'BOUMERDES', null,
        'Résidence Yesref - Boumerdes', '024943466', 1178, 2, true, 'MC', false, true, 0),



       (20, '1700', 'URA EST', null, null, null, null, 1, false, 'REGION', false, true, 0),

       (21, '1701', 'BATNA', null,
        'Route de la Gare - Batna', '033803055', 119, 20, true, 'MC', false, true, 0),

       (22, '1702', 'BEJAIA', null,
        'Rue de Vieillard - Bejaia', '034174279', 180, 20, true, 'MC', false, true, 0),

       (23, '1703', 'DERGUINA', null,
        'Cité Sonelgaz Derguina', '034398135', 196, 20, true, 'MC', false, true, 0),

       (24, '1704', 'JIJEL', null,
        'Rue Didouche Mourad - Jijel', '034474838', 186, 20, true, 'MC', false, true, 0),

       (25, '1705', 'BISKRA', null,
        'Boulevard Saouli - Biskra', '033558163', 232, 20, true, 'MC', false, true, 0),

       (26, '1706', 'CONSTANTINE', null,
        'Boulevard de la Liberté', '031921650', 868, 20, true, 'MC', false, true, 0),

       (27, '1707', 'SKIKDA', null,
        'Avenue Bachir Boukadoum', '038755234', 755, 20, true, 'MC', false, true, 0),

       (28, '1708', 'ANNABA', null,
        'Rue Sayoud Achour', '038864832', 811, 20, true, 'MC', false, true, 0);

