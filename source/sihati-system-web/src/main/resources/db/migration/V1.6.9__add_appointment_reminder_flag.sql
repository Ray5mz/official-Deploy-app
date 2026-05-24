-- ===============================
-- Add reminder tracking to request_appointment
-- ===============================

ALTER TABLE care.request_appointment
    ADD COLUMN IF NOT EXISTS reminder_sent BOOLEAN DEFAULT FALSE;

COMMENT ON COLUMN care.request_appointment.reminder_sent
    IS 'True once the 24h-before reminder notification has been fired by Quartz';