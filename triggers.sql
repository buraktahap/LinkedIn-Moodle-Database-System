DELIMITER $$
CREATE TRIGGER like_date
BEFORE INSERT ON likepost
FOR EACH ROW
    BEGIN
        Set new.Ldate=date(now());
    END
$$ DELIMITER ;


DELIMITER $$
CREATE TRIGGER share_date
BEFORE INSERT ON sharepost
FOR EACH ROW
    BEGIN
        SET new.sdate=date(now());
    END
$$ DELIMITER ;


DELIMITER $$
CREATE TRIGGER comment_time
BEFORE INSERT ON commentpost
FOR EACH ROW
    BEGIN
        SET NEW.ldate = date(now());
    END
$$ DELIMITER ;


DELIMITER $$
CREATE TRIGGER cant_connect_yourself BEFORE INSERT ON CONNECTMEM
FOR EACH ROW
    BEGIN 
    IF NEW.member_id=NEW.Umember_id THEN
    SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Kişi kendisiyle bağlantı kuramaz';
END IF;
END$$


DELIMITER $$
CREATE TRIGGER start_Date_error BEFORE INSERT ON ORGANISATION
FOR EACH ROW
BEGIN
    IF NEW.start_date>=DATE(NOW()) THEN
    SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Başlama tarihi bugünden büyük olamaz';
    END IF;
    END$$


delimiter //
CREATE TRIGGER student_no_check BEFORE INSERT
ON student
for each row 
IF new.student_no < 123450  OR new.student_no > 123999  THEN
SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Öğrenci numarası 123450 ve 123999 arasında olmalıdır.';
END IF; //
