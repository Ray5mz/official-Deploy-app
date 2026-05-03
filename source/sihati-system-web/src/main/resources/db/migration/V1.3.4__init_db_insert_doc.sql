-- Ajouter les colonnes
ALTER TABLE care.medical_report
    ADD COLUMN document_pdf bytea;

ALTER TABLE care.medical_report
    ADD COLUMN file_name character varying(255);