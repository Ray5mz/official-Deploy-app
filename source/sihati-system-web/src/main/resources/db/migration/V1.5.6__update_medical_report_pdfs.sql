UPDATE care.medical_report SET document_pdf = NULL, file_name = 'ordonnance1.pdf' WHERE id IN (1, 5, 10, 22, 31, 38);
UPDATE care.medical_report SET document_pdf = NULL, file_name = 'ordonnance2.pdf' WHERE id IN (4, 13, 25, 33, 40);
UPDATE care.medical_report SET document_pdf = NULL, file_name = 'ordonnance3.pdf' WHERE id IN (7, 17, 28, 35, 42);

UPDATE care.medical_report SET document_pdf = NULL, file_name = 'bilan1.pdf'      WHERE id IN (2, 14, 18, 26, 44);
UPDATE care.medical_report SET document_pdf = NULL, file_name = 'bilan2.pdf'      WHERE id IN (3, 15, 19, 29, 45);
UPDATE care.medical_report SET document_pdf = NULL, file_name = 'bilan3.pdf'      WHERE id IN (11, 20);

UPDATE care.medical_report SET document_pdf = NULL, file_name = 'irm1.pdf'        WHERE id IN (6,  9,  21, 27, 34, 39);
UPDATE care.medical_report SET document_pdf = NULL, file_name = 'irm2.pdf'        WHERE id IN (8,  12, 23, 30, 36, 41);
UPDATE care.medical_report SET document_pdf = NULL, file_name = 'irm3.pdf'        WHERE id IN (16, 24, 32, 37, 43);