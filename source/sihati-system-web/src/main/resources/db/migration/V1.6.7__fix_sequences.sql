SELECT setval(
               'care.request_appointment_seq',
               GREATEST(COALESCE((SELECT MAX(id) FROM care.request_appointment), 0), 1),
               true
       );

SELECT setval(
               'communication.newnotification_seq',
               GREATEST(COALESCE((SELECT MAX(id) FROM communication.newnotification), 0), 1),
               true
       );
SELECT setval(
               'care.care_coverages_seq',
               (SELECT MAX(id) FROM care.request_care_coverages)
       );