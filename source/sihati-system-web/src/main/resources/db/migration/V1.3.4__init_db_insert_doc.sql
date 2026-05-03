-- Ajouter les colonnes
ALTER TABLE care.medical_report
    ADD COLUMN document_pdf bytea;

ALTER TABLE care.medical_report
    ADD COLUMN file_name character varying(255);


update care.medical_report set document_pdf =pg_read_binary_file('C:/Ordonnance_3.pdf'), file_name='Ordonnance_3.pdf';

update care.medical_report set document_pdf =pg_read_binary_file('C:/Ordonnance_2.pdf'), file_name='Ordonnance_2.pdf';
update care.medical_report set document_pdf =pg_read_binary_file('C:/Ordonnance_1.pdf'), file_name='Ordonnance_1.pdf';