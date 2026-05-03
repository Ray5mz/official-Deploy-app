-- Populate relationship for AGENT/RETIRED patients (principal account holders)
UPDATE reference.patient
SET relationship = 'PRINCIPAL'
WHERE internal_type IN ('AGENT', 'RETIRED')
  AND relationship IS NULL;

-- Populate relationship for BENEFICIARY patients from beneficiary table
UPDATE reference.patient p
SET relationship = b.beneficiary_relation
    FROM reference.beneficiary b
WHERE LOWER(p.first_name) = LOWER(b.first_name)
  AND LOWER(p.last_name)  = LOWER(b.last_name)
  AND p.employee_id       = b.employee_id
  AND p.internal_type     = 'BENEFICIARY'
  AND p.relationship      IS NULL;