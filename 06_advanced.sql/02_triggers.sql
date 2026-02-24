DELIMITER |

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END|

DELIMITER ; 

UPDATE users SET email = 'no_correo' WHERE user_id = 2;

SELECT * FROM email_history;

DROP TRIGGER tg_email;




