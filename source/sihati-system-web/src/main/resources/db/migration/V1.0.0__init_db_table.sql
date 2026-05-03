-- ===============================
-- Création des schémas
-- ===============================
CREATE SCHEMA IF NOT EXISTS reference;
CREATE SCHEMA IF NOT EXISTS care;
CREATE SCHEMA IF NOT EXISTS admin;
CREATE SCHEMA IF NOT EXISTS communication;
CREATE SCHEMA IF NOT EXISTS quartz;

CREATE SEQUENCE IF NOT EXISTS care.constante_vitale_seq;

-- ===============================
-- SEQUENCES pour SCHEMA reference
-- ===============================
CREATE SEQUENCE IF NOT EXISTS reference.health_professional_seq;
CREATE SEQUENCE IF NOT EXISTS reference.patient_seq;
CREATE SEQUENCE IF NOT EXISTS reference.provider_seq;
CREATE SEQUENCE IF NOT EXISTS reference.employee_seq;
CREATE SEQUENCE IF NOT EXISTS reference.beneficiary_seq;
CREATE SEQUENCE IF NOT EXISTS reference.specialty_seq;
CREATE SEQUENCE IF NOT EXISTS reference.medical_act_category_seq;
CREATE SEQUENCE IF NOT EXISTS reference.wilaya_seq;
CREATE SEQUENCE IF NOT EXISTS reference.refcodedomain_seq;
CREATE SEQUENCE IF NOT EXISTS reference.refcode_seq;
CREATE SEQUENCE IF NOT EXISTS reference.commune_seq;

-- Création des types ENUM

-- ===============================
-- TABLES pour SCHEMA reference
-- ===============================

CREATE TABLE IF NOT EXISTS reference.ref_code_domain
(
    id bigint NOT NULL DEFAULT nextval('reference.refcodedomain_seq') PRIMARY KEY,
    nom_domain character varying  NOT NULL,
    designation character varying,
    created_by character varying(255) ,
    creation_date timestamp without time zone,
    last_modified_by character varying(255) ,
    last_modified_date timestamp without time zone,
    version integer
    );

CREATE TABLE IF NOT EXISTS reference.ref_code
(
    id bigint NOT NULL DEFAULT nextval('reference.refcode_seq') PRIMARY KEY,
    code character varying  NOT NULL,
    designation character varying  NOT NULL,
    id_domain BIGINT NOT NULL REFERENCES reference.ref_code_domain(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION  ,
    created_by character varying(255) ,
    creation_date timestamp without time zone,
    last_modified_by character varying(255) ,
    last_modified_date timestamp without time zone,
    version integer
    );

CREATE TABLE IF NOT EXISTS reference.wilaya
(
    id bigint NOT NULL DEFAULT nextval('reference.wilaya_seq'::regclass) PRIMARY KEY,
    code character varying(255) ,
    designation character varying(255) ,
    created_by character varying(255) ,
    creation_date timestamp without time zone,
    last_modified_by character varying(255) ,
    last_modified_date timestamp without time zone,
    version integer,
    CONSTRAINT uk_wilaya_code UNIQUE (code)
    );

CREATE TABLE IF NOT EXISTS reference.commune
(
    id bigint NOT NULL DEFAULT nextval('reference.commune_seq') PRIMARY KEY,
    code character varying(255) ,
    designation character varying(255) ,
    daira character varying(255) ,
    wilaya_id BIGINT NOT NULL REFERENCES reference.wilaya(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
    created_by character varying(255) ,
    creation_date timestamp without time zone,
    last_modified_by character varying(255) ,
    last_modified_date timestamp without time zone,
    version integer,
    CONSTRAINT uk_commune_code UNIQUE (code)
    );

-- Table employee
CREATE TABLE reference.employee (
                                    id BIGINT NOT NULL DEFAULT nextval('reference.employee_seq') PRIMARY KEY,
                                    employee_number VARCHAR(50),
                                    code VARCHAR(100) NOT NULL,
                                    first_name VARCHAR(100) NOT NULL,
                                    last_name VARCHAR(100) NOT NULL,
                                    date_of_birth DATE,
                                    gender VARCHAR(10),
                                    blood_group VARCHAR(10),
                                    role VARCHAR(100),
                                    address TEXT,
                                    email VARCHAR(255),
                                    phone_number VARCHAR(50),
                                    social_security_number VARCHAR(50),
                                    family_situation VARCHAR(50),
                                    subsidiary VARCHAR(100),
                                    system_entity boolean DEFAULT false,
                                    enabled boolean DEFAULT true,
                                    created_by character varying(255),
                                    creation_date timestamp without time zone,
                                    last_modified_by character varying(255),
                                    last_modified_date timestamp without time zone,
                                    version integer
);

-- Table beneficiary (ayant droit)
CREATE TABLE reference.beneficiary (
                                       id BIGINT NOT NULL DEFAULT nextval('reference.beneficiary_seq') PRIMARY KEY,
                                       code VARCHAR(100) NOT NULL,
                                       first_name VARCHAR(100) NOT NULL,
                                       last_name VARCHAR(100) NOT NULL,
                                       date_of_birth DATE,
                                       gender VARCHAR(10),
                                       blood_group VARCHAR(10),
                                       social_security_number VARCHAR(50),
                                       address TEXT,
                                       beneficiary_relation  TEXT,
                                       employee_id BIGINT NOT NULL REFERENCES reference.employee(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                       enabled boolean DEFAULT true,
                                       created_by character varying(255) ,
                                       creation_date timestamp without time zone,
                                       last_modified_by character varying(255),
                                       last_modified_date timestamp without time zone,
                                       version integer
);

-- Table specialty (must be created before health_professional)
CREATE TABLE reference.specialty (
                                     id BIGINT NOT NULL DEFAULT nextval('reference.specialty_seq') PRIMARY KEY,
                                     name VARCHAR(150) NOT NULL,
                                     code character varying(10),
                                     code_color character varying(10),
                                     description TEXT,
                                     enabled boolean DEFAULT true,
                                     created_by character varying(255) ,
                                     creation_date timestamp without time zone,
                                     last_modified_by character varying(255),
                                     last_modified_date timestamp without time zone,
                                     version integer
);

-- Table health professional
CREATE TABLE IF NOT EXISTS reference.health_professional (
                                                             id BIGINT NOT NULL DEFAULT nextval('reference.health_professional_seq') PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(255),
    license_number VARCHAR(255),
    nick_name VARCHAR(255),
    specialty_id BIGINT REFERENCES reference.specialty(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    enabled BOOLEAN DEFAULT TRUE,
    created_by VARCHAR(255),
    creation_date TIMESTAMP WITHOUT TIME ZONE,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP WITHOUT TIME ZONE,
    version INTEGER
    );

-- Table patient
CREATE TABLE reference.patient (
                                   id BIGINT NOT NULL DEFAULT nextval('reference.patient_seq') PRIMARY KEY,
                                   social_security_number VARCHAR(50),
                                   code VARCHAR(100) NOT NULL,
                                   first_name VARCHAR(100) NOT NULL,
                                   last_name VARCHAR(100) NOT NULL,
                                   date_of_birth DATE,
                                   gender VARCHAR(10),
                                   blood_group VARCHAR(10),
                                   phone VARCHAR(50),
                                   email VARCHAR(150),
                                   address TEXT,
                                   family_situation VARCHAR(50),
                                   patient_category character varying(50) NOT NULL DEFAULT 'EXTERNAL',
                                   internal_type character varying(50),
                                   relationship  character varying(50),
                                   employment_status  character varying(50),
                                   system_entity boolean DEFAULT false,
                                   commune_id BIGINT REFERENCES reference.commune(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                   employee_id BIGINT REFERENCES reference.employee(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                   enabled boolean DEFAULT true,
                                   created_by character varying(255) ,
                                   creation_date timestamp without time zone,
                                   last_modified_by character varying(255),
                                   last_modified_date timestamp without time zone,
                                   version integer,
                                   CONSTRAINT chk_patient_category_relation CHECK (
                                       (patient_category = 'INTERNAL' AND internal_type = 'BENEFICIARY' AND relationship IN ('PARENT','CHILD','SPOUSE'))
                                           OR (patient_category = 'INTERNAL' AND internal_type IN ('AGENT','RETIRED') AND relationship = 'PRINCIPAL')
                                          OR (patient_category = 'EXTERNAL' AND internal_type IS NULL AND relationship IS NULL)
                                       )
);

-- Table medical_act_category
CREATE TABLE reference.medical_act_category (
                                                id BIGINT NOT NULL DEFAULT nextval('reference.medical_act_category_seq') PRIMARY KEY,
                                                code character varying(10),
                                                name VARCHAR(150) NOT NULL,
                                                description TEXT,
                                                max_reimbursement_amount NUMERIC(15,2) DEFAULT 1000.00,
                                                medical_center_coverage_percentage NUMERIC(5,2) DEFAULT 0.00,
                                                enabled boolean DEFAULT true,
                                                created_by character varying(255) ,
                                                creation_date timestamp without time zone,
                                                last_modified_by character varying(255),
                                                last_modified_date timestamp without time zone,
                                                version integer
);

-- Table provider (prestataire)
CREATE TABLE reference.provider (
                                    id BIGINT NOT NULL DEFAULT nextval('reference.provider_seq') PRIMARY KEY,
                                    code character varying(10),
                                    name VARCHAR(150) NOT NULL,
                                    phone VARCHAR(50),
                                    email VARCHAR(150),
                                    company_name VARCHAR(150),
                                    license_number VARCHAR(150),
                                    manager_name VARCHAR(150),
                                    address TEXT,
                                    category_id BIGINT REFERENCES reference.medical_act_category(id) ON DELETE SET NULL,
                                    commune_id BIGINT REFERENCES reference.commune(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                    enabled boolean DEFAULT true,
                                    created_by character varying(255) ,
                                    creation_date timestamp without time zone,
                                    last_modified_by character varying(255),
                                    last_modified_date timestamp without time zone,
                                    version integer
);

-- ===============================
-- SEQUENCES pour SCHEMA ADMIN
-- ===============================
CREATE SEQUENCE IF NOT EXISTS admin.organisational_structure_seq;
CREATE SEQUENCE IF NOT EXISTS admin.user_seq;

-- ===============================
-- TABLES pour SCHEMA ADMIN
-- ===============================

CREATE TABLE IF NOT EXISTS admin.organisational_structure
(
    id bigint NOT NULL DEFAULT nextval('admin.organisational_structure_seq') PRIMARY KEY,
    code character varying(255) ,
    designation character varying(255) ,
    designation_ar character varying(255) ,
    email character varying(255) ,
    fax character varying(255) ,
    address character varying(255) ,
    phone character varying(255) ,
    structure_type character varying(50) not null ,
    has_data boolean DEFAULT false,
    logo character varying(255) ,
    latitude double precision,
    longitude double precision,
    deleted boolean,
    deleted_date timestamp without time zone,
    commune_id bigint REFERENCES reference.commune(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    parent_organisational_structure bigint REFERENCES admin.organisational_structure(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    enabled boolean DEFAULT true,
    created_by character varying(255) ,
    creation_date timestamp without time zone,
    last_modified_by character varying(255),
    last_modified_date timestamp without time zone,
    version integer,
    CONSTRAINT organisational_structure_uk UNIQUE (code, deleted, deleted_date)
    );

CREATE TABLE IF NOT EXISTS admin.user
(
    id bigint NOT NULL DEFAULT nextval('admin.user_seq')  PRIMARY KEY,
    code character varying(10)  NOT NULL,
    username character varying(255)  NOT NULL,
    email character varying(255) ,
    first_name character varying(255) ,
    last_name character varying(255) ,
    password character varying(255) ,
    phone_number character varying(255) ,
    system_entity boolean DEFAULT true,
    password_change boolean,
    disable_notification boolean,
    deleted boolean,
    deleted_date timestamp without time zone,
    organisational_structure_id bigint  REFERENCES admin.organisational_structure(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
    max_access_organisational_structure_id bigint REFERENCES admin.organisational_structure(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    enabled boolean DEFAULT true,
    created_by character varying(255) ,
    creation_date timestamp without time zone,
    last_modified_by character varying(255),
    last_modified_date timestamp without time zone,
    version integer,
    CONSTRAINT user_uk UNIQUE (username, deleted, deleted_date)
    );

-- ===============================
-- SEQUENCES pour SCHEMA care
-- ===============================
CREATE SEQUENCE IF NOT EXISTS care.consultation_seq;
CREATE SEQUENCE IF NOT EXISTS care.care_coverages_seq;
CREATE SEQUENCE IF NOT EXISTS care.agreement_seq;
CREATE SEQUENCE IF NOT EXISTS care.medical_doc_seq;
CREATE SEQUENCE IF NOT EXISTS care.medical_report_seq;
CREATE SEQUENCE IF NOT EXISTS care.timing_doctor_seq;
CREATE SEQUENCE IF NOT EXISTS care.request_appointment_seq;

-- ===============================
-- TABLES pour SCHEMA care
-- ===============================

-- Création de la table agreement
CREATE TABLE care.agreement (
                                id BIGINT NOT NULL DEFAULT nextval('care.agreement_seq') PRIMARY KEY,
                                code VARCHAR(255),
                                agreement_number VARCHAR(255),
                                notes TEXT,
                                start_date DATE,
                                end_date DATE,
                                status VARCHAR(50),
                                organisational_structure_id  BIGINT NOT NULL REFERENCES admin.organisational_structure(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                provider_id  BIGINT NOT NULL REFERENCES reference.provider(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                enabled BOOLEAN DEFAULT TRUE,
                                created_by character varying(255) ,
                                creation_date timestamp without time zone,
                                last_modified_by character varying(255),
                                last_modified_date timestamp without time zone,
                                version integer
);

CREATE TABLE IF NOT EXISTS care.constante_vitale
(
    id bigint NOT NULL DEFAULT nextval('care.constante_vitale_seq'::regclass) PRIMARY KEY,
    weight  numeric,
    glycemie numeric,
    blod_pressure numeric,
    height numeric,
    save_date time without time zone,
    enabled boolean DEFAULT true,
    created_by character varying(255),
    creation_date timestamp without time zone,
    last_modified_by character varying(255),
    last_modified_date timestamp without time zone,
    version integer
    );

-- Table consultation
CREATE TABLE care.consultation (
                                   id BIGINT NOT NULL DEFAULT nextval('care.consultation_seq') PRIMARY KEY,
                                   consultation_number VARCHAR(50),
                                   status   VARCHAR(50),
                                   notes   TEXT,
                                   act_performed TEXT,
                                   consultation_date TIMESTAMP DEFAULT NOW(),
                                   reason_for_consultation TEXT,
                                   diagnosis TEXT,
                                   diagnosis_confidential TEXT,
                                   patient_id BIGINT NOT NULL REFERENCES reference.patient(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                   specialty_id BIGINT NOT NULL REFERENCES reference.specialty(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                   health_professional_id BIGINT NOT NULL REFERENCES reference.health_professional(id),
                                   center_id BIGINT NOT NULL REFERENCES admin.organisational_structure(id),
                                   constante_vitale_id BIGINT NOT NULL REFERENCES care.constante_vitale(id),
                                   enabled boolean DEFAULT true,
                                   created_by character varying(255) ,
                                   creation_date timestamp without time zone,
                                   last_modified_by character varying(255),
                                   last_modified_date timestamp without time zone,
                                   version integer
);



CREATE TABLE care.request_care_coverages
(
    id BIGINT NOT NULL DEFAULT nextval('care.care_coverages_seq'::regclass) PRIMARY KEY,

    code VARCHAR(150) NOT NULL,

    notes TEXT,

    start_date DATE NOT NULL,
    end_date DATE,
    demande_date DATE,

    has_cancer BOOLEAN DEFAULT false,


    status VARCHAR(50) DEFAULT 'PENDING',


    active BOOLEAN DEFAULT false,

    -- relations
    patient_id BIGINT NOT NULL
        REFERENCES reference.patient(id)
            ON UPDATE NO ACTION ON DELETE NO ACTION,

    provider_id BIGINT
        REFERENCES reference.provider(id)
            ON UPDATE NO ACTION ON DELETE NO ACTION,

    medical_center_id BIGINT
        REFERENCES admin.organisational_structure(id),

    -- auditing
    created_by VARCHAR(255),
    creation_date TIMESTAMP,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP,
    version INTEGER
);
-- Table: care.Medical_Doc
CREATE TABLE IF NOT EXISTS care.medical_doc
(
    id bigint NOT NULL DEFAULT nextval('care.medical_doc_seq'::regclass) PRIMARY KEY,
    code character varying(255),
    extension character varying(255),
    libelle character varying(255),
    path character varying(255),
    path_pere character varying(255),
    mime_type character varying(255),
    size numeric,
    id_request_care_coverege bigint REFERENCES care.request_care_coverages(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    created_by character varying(255),
    creation_date timestamp without time zone,
    last_modified_by character varying(255),
    last_modified_date timestamp without time zone,
    version integer
    );

CREATE TABLE IF NOT EXISTS care.medical_report
(
    id bigint NOT NULL DEFAULT nextval('care.medical_report_seq'::regclass) PRIMARY KEY,
    medical_report_number character varying(50) NOT NULL,
    certificate_type character varying(100),
    certificate_sub_type character varying(100),
    notes text,
    description text,
    status character varying(50),
    consultation_id bigint NOT NULL REFERENCES care.consultation(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    enabled boolean DEFAULT true,
    created_by character varying(255),
    creation_date timestamp without time zone,
    last_modified_by character varying(255),
    last_modified_date timestamp without time zone,
    version integer
    );

-- Create ENUM types
DO $$ BEGIN
CREATE TYPE care.timing_status_enum AS ENUM (
        'DISPONIBLE',
        'INDISPONIBLE'
    );
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

CREATE TABLE care.timing_doctor(
                                   id BIGINT NOT NULL DEFAULT nextval('care.timing_doctor_seq') PRIMARY KEY,
                                   duration integer,
                                   code character varying,
                                   timing_doctor_date timestamp without time zone NOT NULL,
                                   status care.timing_status_enum,
                                   specialty_id BIGINT NOT NULL REFERENCES reference.specialty(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION ,
                                   medical_center_id BIGINT REFERENCES admin.organisational_structure(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
                                   health_professional_id BIGINT REFERENCES reference.health_professional(id),
                                   created_by character varying(255),
                                   creation_date timestamp without time zone,
                                   last_modified_by character varying(255),
                                   last_modified_date timestamp without time zone,
                                   version integer
);

DO $$ BEGIN
CREATE TYPE care.request_appointment_status_enum AS ENUM (
        'ACCEPTE',
        'REFUSE',
        'MIS_EN_ATTENTE',
        'ANNULE'
    );
EXCEPTION
    WHEN duplicate_object THEN null;
END $$;

CREATE TABLE care.request_appointment (
                                          id BIGINT NOT NULL DEFAULT nextval('care.request_appointment_seq') PRIMARY KEY,
                                          appointment_number VARCHAR(50),
                                          reason TEXT,
                                          appointment_date timestamp without time zone,
                                          status character varying(50) DEFAULT 'MIS_EN_ATTENTE',
                                          patient_id BIGINT REFERENCES reference.patient(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
                                          timing_doctor_id BIGINT REFERENCES care.timing_doctor(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
                                          medical_center_id BIGINT,
                                          specialty_id BIGINT,
                                          healthProfessional_id BIGINT,
                                          created_by character varying(255) ,
                                          creation_date timestamp without time zone,
                                          last_modified_by character varying(255),
                                          last_modified_date timestamp without time zone,
                                          version integer
);

CREATE TABLE reference.health_professional_medical_center
(
    health_professional_id BIGINT REFERENCES reference.health_professional(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    medical_center_id BIGINT REFERENCES admin.organisational_structure(id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION,
    day_of_week VARCHAR(10) NOT NULL CHECK (day_of_week IN ('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday','Sunday')),
    period_of_day VARCHAR (10) NOT NULL CHECK (period_of_day IN ('Morning', 'Afternoon')),
    CONSTRAINT health_professional_medical_center_pkey PRIMARY KEY (health_professional_id, medical_center_id, day_of_week, period_of_day)
);

ALTER TABLE care.constante_vitale ADD COLUMN IF NOT EXISTS constante_vitale_number character varying(50);

-- ===============================
-- SEQUENCES pour SCHEMA communication
-- ===============================
CREATE SEQUENCE IF NOT EXISTS communication.attached_document_seq;

CREATE SEQUENCE IF NOT EXISTS communication.newnotification_seq ;

-- ===============================
-- TABLES pour SCHEMA communication
-- ===============================

CREATE TABLE IF NOT EXISTS communication.attached_document
(
    id bigint NOT NULL DEFAULT nextval('communication.attached_document_seq') PRIMARY KEY,
    attached_document_type character varying(255) ,
    attachment_entity character varying(255) ,
    attachment_entity_id character varying(255) ,
    file_extension character varying(255) ,
    media_type character varying(255) ,
    path_to_scanned_document character varying(255) ,
    upload_date timestamp without time zone,
    created_by character varying(255) ,
    creation_date timestamp without time zone,
    last_modified_by character varying(255),
    last_modified_date timestamp without time zone,
    version integer
    );


CREATE TABLE IF NOT EXISTS communication.newnotification (
                                                             id BIGINT PRIMARY KEY,
                                                             code VARCHAR(255) NOT NULL,
    message VARCHAR(255),
    seen BOOLEAN DEFAULT FALSE,
    patient_id BIGINT,
    request_appointment_id BIGINT,
    request_care_coverage_id BIGINT,
    type VARCHAR(2) NOT NULL CHECK (type IN ('RA', 'RC')),
    CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES reference.patient(id),
    CONSTRAINT fk_request_appointment FOREIGN KEY (request_appointment_id) REFERENCES care.request_appointment(id),
    CONSTRAINT fk_request_care_coverage FOREIGN KEY (request_care_coverage_id) REFERENCES care.request_care_coverages(id)
    );





-- ===============================
-- TABLES pour SCHEMA quartz
-- ===============================

CREATE TABLE IF NOT EXISTS quartz.qrtz_job_details
(
    job_name character varying(128) COLLATE pg_catalog."default" NOT NULL,
    job_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    description character varying(120) COLLATE pg_catalog."default",
    job_class_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    is_durable boolean,
    is_nonconcurrent boolean,
    is_update_data boolean,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    requests_recovery boolean,
    job_data bytea,
    CONSTRAINT qrtz_job_details_pkey PRIMARY KEY (sched_name, job_name, job_group)
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_triggers
(
    trigger_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    trigger_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    job_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    job_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    description character varying(120) COLLATE pg_catalog."default",
    next_fire_time bigint,
    prev_fire_time bigint,
    priority integer,
    trigger_state character varying(16) COLLATE pg_catalog."default" NOT NULL,
    trigger_type character varying(8) COLLATE pg_catalog."default" NOT NULL,
    start_time bigint NOT NULL,
    end_time bigint,
    calendar_name character varying(80) COLLATE pg_catalog."default",
    misfire_instr smallint,
    job_data bytea,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group),
    CONSTRAINT qrtz_triggers_sched_name_fkey FOREIGN KEY (sched_name, job_name, job_group)
    REFERENCES quartz.qrtz_job_details (sched_name, job_name, job_group) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_blob_triggers
(
    trigger_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    trigger_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    blob_data text COLLATE pg_catalog."default",
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_blob_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group),
    CONSTRAINT qrtz_blob_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group)
    REFERENCES quartz.qrtz_triggers (sched_name, trigger_name, trigger_group) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_calendars
(
    calendar_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    calendar text COLLATE pg_catalog."default" NOT NULL,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_calendars_pkey PRIMARY KEY (sched_name, calendar_name)
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_cron_triggers
(
    trigger_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    trigger_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    cron_expression character varying(80) COLLATE pg_catalog."default" NOT NULL,
    time_zone_id character varying(80) COLLATE pg_catalog."default",
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_cron_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group),
    CONSTRAINT qrtz_cron_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group)
    REFERENCES quartz.qrtz_triggers (sched_name, trigger_name, trigger_group) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_fired_triggers
(
    entry_id character varying(95) COLLATE pg_catalog."default" NOT NULL,
    trigger_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    trigger_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    instance_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    fired_time bigint NOT NULL,
    priority integer NOT NULL,
    state character varying(16) COLLATE pg_catalog."default" NOT NULL,
    job_name character varying(80) COLLATE pg_catalog."default",
    job_group character varying(80) COLLATE pg_catalog."default",
    is_nonconcurrent boolean,
    is_update_data boolean,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    sched_time bigint NOT NULL,
    requests_recovery boolean,
    CONSTRAINT qrtz_fired_triggers_pkey PRIMARY KEY (sched_name, entry_id)
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_locks
(
    lock_name character varying(40) COLLATE pg_catalog."default" NOT NULL,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_locks_pkey PRIMARY KEY (sched_name, lock_name)
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_paused_trigger_grps
(
    trigger_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_paused_trigger_grps_pkey PRIMARY KEY (sched_name, trigger_group)
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_scheduler_state
(
    instance_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    last_checkin_time bigint,
    checkin_interval bigint,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_scheduler_state_pkey PRIMARY KEY (sched_name, instance_name)
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_simple_triggers
(
    trigger_name character varying(80) COLLATE pg_catalog."default" NOT NULL,
    trigger_group character varying(80) COLLATE pg_catalog."default" NOT NULL,
    repeat_count bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL,
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL DEFAULT 'JobScheduler'::character varying,
    CONSTRAINT qrtz_simple_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group),
    CONSTRAINT qrtz_simple_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group)
    REFERENCES quartz.qrtz_triggers (sched_name, trigger_name, trigger_group) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
    );

CREATE TABLE IF NOT EXISTS quartz.qrtz_simprop_triggers
(
    sched_name character varying(120) COLLATE pg_catalog."default" NOT NULL,
    trigger_name character varying(200) COLLATE pg_catalog."default" NOT NULL,
    trigger_group character varying(200) COLLATE pg_catalog."default" NOT NULL,
    str_prop_1 character varying(512) COLLATE pg_catalog."default",
    str_prop_2 character varying(512) COLLATE pg_catalog."default",
    str_prop_3 character varying(512) COLLATE pg_catalog."default",
    int_prop_1 integer,
    int_prop_2 integer,
    long_prop_1 bigint,
    long_prop_2 bigint,
    dec_prop_1 numeric(13,4),
    dec_prop_2 numeric(13,4),
    bool_prop_1 boolean,
    bool_prop_2 boolean,
    CONSTRAINT qrtz_simprop_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group),
    CONSTRAINT qrtz_simprop_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group)
    REFERENCES quartz.qrtz_triggers (sched_name, trigger_name, trigger_group) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
    );

-- ===============================
-- INDEX pour SCHEMA quartz
-- ===============================

CREATE INDEX IF NOT EXISTS idx_qrtz_j_grp
    ON quartz.qrtz_job_details USING btree
    (sched_name COLLATE pg_catalog."default" ASC NULLS LAST, job_group COLLATE pg_catalog."default" ASC NULLS LAST);

CREATE INDEX IF NOT EXISTS idx_qrtz_ft_j_g
    ON quartz.qrtz_fired_triggers USING btree
    (sched_name COLLATE pg_catalog."default" ASC NULLS LAST, job_name COLLATE pg_catalog."default" ASC NULLS LAST, job_group COLLATE pg_catalog."default" ASC NULLS LAST);

CREATE INDEX IF NOT EXISTS idx_qrtz_ft_jg
    ON quartz.qrtz_fired_triggers USING btree
    (sched_name COLLATE pg_catalog."default" ASC NULLS LAST, job_group COLLATE pg_catalog."default" ASC NULLS LAST);

CREATE INDEX IF NOT EXISTS idx_qrtz_ft_t_g
    ON quartz.qrtz_fired_triggers USING btree
    (sched_name COLLATE pg_catalog."default" ASC NULLS LAST, trigger_name COLLATE pg_catalog."default" ASC NULLS LAST, trigger_group COLLATE pg_catalog."default" ASC NULLS LAST);

CREATE INDEX IF NOT EXISTS idx_qrtz_ft_tg
    ON quartz.qrtz_fired_triggers USING btree
    (sched_name COLLATE pg_catalog."default" ASC NULLS LAST, trigger_group COLLATE pg_catalog."default" ASC NULLS LAST);
