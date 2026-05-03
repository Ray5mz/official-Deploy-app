-- Fix: Set password_change = true for all users who have not yet changed their password.
-- This allows them to log in without being blocked by the first-login password change flow.

UPDATE admin."user"
SET password_change = true
WHERE password_change = false;