
CREATE SCHEMA IF NOT EXISTS care;


-- Table pathologies
CREATE TABLE IF NOT EXISTS care.pathologies (

                             id              BIGINT PRIMARY KEY,
                             patient_id      INTEGER NOT NULL,
                             nom             VARCHAR(255) NOT NULL,
                             severite        VARCHAR(50) CHECK (severite IN ('légère', 'modérée', 'sévère', 'critique')),
                             created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP,


                             CONSTRAINT fk_patient
                                 FOREIGN KEY (patient_id)
                                     REFERENCES reference.patient(id)
                                     ON DELETE CASCADE
);

 CREATE SEQUENCE IF NOT EXISTS communication.newnotification_seq
     START WITH 1
     INCREMENT BY 1;