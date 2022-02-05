INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (1,'aygunonur@protonmail.com','123456','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (2,'arcelik@gmail.com','12345','ORGANISATION');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (3,'turktelekom@gmail.com','12345','ORGANISATION');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (4,'samitugal1907@gmail.com','123456','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (5,'bildoga7@gmail.com','123456','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (6,'turkiyefinans@gmail.com','1234','ORGANISATION');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (7,'onuraygun1999@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (8,'ciceksepeti@gmail.com','12345','ORGANISATION');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (9,'buraktahapeksen@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (10,'ozancoskun@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (11,'anilozsoy@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (12,'andres@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (13,'mert@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (14,'yagmurdurukan@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (15,'zeynepduru@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (16,'egeyazici@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (17,'alierdemsafak@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (18,'berfinerdogan@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (19,'meyrasahin@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (20,'ulassenturk@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (21,'egebilgisayar@gmail.com','12345','ORGANISATION');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (22,'rizacenkerdur@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (23,'muratosmanunalir@gmail.com','12345','PERSON');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (24,'egeuniversitesi@gmail.com','12345','ORGANISATION');
INSERT INTO MEMBER (member_id,mail,Mpassword,member_type) VALUES (25,'necdetbudak@gmail.com','12345','PERSON');

INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (1,'2020-02-23',NULL,1);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (4,'2021-03-22',NULL,2);
INSERT INTO ORGANISATION (member_id,start_date,Umember_id) VALUES (2,'2020-02-23',1);
INSERT INTO ORGANISATION (member_id,start_date,Umember_id) VALUES (3,'2021-03-22',4);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (5,'2021-06-01',NULL,3);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (7,'2022-01-01',NULL,5);
INSERT INTO ORGANISATION (member_id,start_date,Umember_id) VALUES (6,'2022-01-01',7);
INSERT INTO ORGANISATION (member_id,start_date,Umember_id) VALUES (8,'2022-02-01',9);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (9,'2020-02-01',NULL,6);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (10,'2020-02-01',NULL,7);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (11,'2020-02-01',NULL,8);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (12,'2020-02-01',NULL,9);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (13,'2020-02-01',NULL,10);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (14,'2020-02-01',NULL,11);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (15,NULL,NULL,NULL);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (16,NULL,NULL,NULL);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (17,NULL,NULL,NULL);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (18,NULL,NULL,NULL);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (19,NULL,NULL,NULL);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (20,NULL,NULL,NULL);
INSERT INTO ORGANISATION (member_id,start_date,Umember_id) VALUES (21,'2021-09-23',23);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (22,'1985-02-02',NULL,12);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (23,'2021-09-23',NULL,13);
INSERT INTO ORGANISATION (member_id,start_date,Umember_id) VALUES (24,'2018-02-02',25);
INSERT INTO PERSON (member_id,start_date,finish_date,job_id) VALUES (25,'2018-02-02',NULL,14);


INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (1,'Onur','Aygün','+905318559999','1999-07-11','Erkek','Samsun',1);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (2,'Sami','Tuğal','+905399959999','1999-08-10','Erkek','Rize',4);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (3,'Doğa','Bilgin','+905319669999','2000-07-11','Kadın','İzmir',5);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (4,'Burak','Peksen','+90532833333','1999-08-11','Erkek','İzmir',9);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (5,'Ozan','Coskun','+905355559999','1999-09-11','Erkek','İzmir',10);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (6,'Anıl','Özsoy','+9053431259999','1999-01-03','Erkek','İzmir',11);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (7,'Andres','Calderon','+905318457997','1999-07-11','Erkek','İzmir',12);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (8,'Mert','Aydın','+905318559999','1997-07-11','Erkek','İzmir',13);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (9,'Yağmur','Durukan','+905318879999','1999-07-11','Kadın','İzmir',14);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (10,'Zeynep','Duru','+905352879999','1999-07-11','Kadın','İzmir',15);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (11,'Ege','Yazıcı','+905318556999','1999-12-11','Erkek','Ankara',16);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (12,'Ali Erdem','Şafak','+905318599999','1999-08-11','Erkek','Bursa',17);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (13,'Berfin','Erdogan','+905318559999','1999-07-11','Kadın','Gebze',18);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (14,'Meyra','Sahin','+905318559999','1999-07-11','Kadın','Ordu',19);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (15,'Ulaş','Şentürk','+905418559999','1999-06-11','Erkek','Ankara',20);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (16,'Rıza Cenk','Erdur','+905418559999','1974-06-11','Erkek','İzmir',22);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (17,'Murat Osman','Ünalır','+905418559899','1975-06-11','Erkek','İzmir',23);

INSERT INTO PROFILE (profile_id,Fname,Lname,phone,birthday,sex,address,Umember_id)
VALUES (18,'Necdet','Budak','+905418559899','1975-06-11','Erkek','İzmir',25);


INSERT INTO ORG_PROFILE (org_id,org_name,org_phone,founder,sector,website,no_of_employee,found_date,Omember_id)
VALUES (1,'Arcelik','02122553212','onur aygun','Beyaz Esya','www.arcelik.com','5000','1970-02-02',2);

INSERT INTO ORG_PROFILE (org_id,org_name,org_phone,founder,sector,website,no_of_employee,found_date,Omember_id)
VALUES (2,'Turk Telekom','02122231212','sami tugal','Telekomünikasyon','www.turktelekom.com','10000','1950-10-21',3);

INSERT INTO ORG_PROFILE (org_id,org_name,org_phone,founder,sector,website,no_of_employee,found_date,Omember_id)
VALUES (3,'Turkiye Finans','02124753892','onur aygun','Beyaz Esya','www.arcelik.com','5000','1970-02-02',6);

INSERT INTO ORG_PROFILE (org_id,org_name,org_phone,founder,sector,website,no_of_employee,found_date,Omember_id)
VALUES (4,'Cicek Sepeti','02129953912','onur aygun','Beyaz Esya','www.arcelik.com','5000','1970-02-02',8);

INSERT INTO ORG_PROFILE (org_id,org_name,org_phone,founder,sector,website,no_of_employee,found_date,Omember_id)
VALUES (5,'Ege Bilgisayar','02129953882','Murat Osman Ünalır','Eğitim','www.egebilmuh.com','30','1970-02-02',21);

INSERT INTO ORG_PROFILE (org_id,org_name,org_phone,founder,sector,website,no_of_employee,found_date,Omember_id)
VALUES (6,'Ege Üniversitesi','02129953882','Necdet Budak','Eğitim','www.egeuniversitesi.com','1000','1970-02-02',24);

INSERT INTO ORG_LOCATIONS (org_id, Olocation) VALUES (1,'Istanbul');
INSERT INTO ORG_LOCATIONS (org_id, Olocation) VALUES (2,'Ankara');
INSERT INTO ORG_LOCATIONS (org_id, Olocation) VALUES (3,'Istanbul');
INSERT INTO ORG_LOCATIONS (org_id, Olocation) VALUES (4,'Izmir');
INSERT INTO ORG_LOCATIONS (org_id, Olocation) VALUES (5,'Izmir');
INSERT INTO ORG_LOCATIONS (org_id, Olocation) VALUES (6,'Izmir');

INSERT INTO STUDENT (member_id,student_no) VALUES (15,'123450');
INSERT INTO STUDENT (member_id,student_no) VALUES (16,'123451');
INSERT INTO STUDENT (member_id,student_no) VALUES (17,'123452');
INSERT INTO STUDENT (member_id,student_no) VALUES (18,'123453');
INSERT INTO STUDENT (member_id,student_no) VALUES (19,'123454');
INSERT INTO STUDENT (member_id,student_no) VALUES (20,'123455');

INSERT INTO INSTRUCTOR (member_id,instr_name,title) VALUES (22,'Rıza Cenk Erdur','Doç');
INSERT INTO INSTRUCTOR (member_id,instr_name,title) VALUES (23,'Murat Osman Ünalır','Prof');
INSERT INTO INSTRUCTOR (member_id,instr_name,title) VALUES (25,'Necdet Budak','Prof');

INSERT INTO UNIVERSITY (member_id,uni_name) VALUES (24,'Ege Üniversitesi');

INSERT INTO DEPARTMENT (dept_id,dept_name,Cstart_date,Umember_id) VALUES (1,'Ege Bilgisayar Mühendisliği','2021-09-23',23);

INSERT INTO COMPANY(member_id) VALUES (2);
INSERT INTO COMPANY(member_id) VALUES (3);
INSERT INTO COMPANY(member_id) VALUES (6);
INSERT INTO COMPANY(member_id) VALUES (8);

INSERT INTO COURSE (course_id,Cname,instr,Cdept_id) VALUES (1,'Nesneye Yönelik Programlama','Rıza Cenk Erdur',1);
INSERT INTO COURSE (course_id,Cname,instr,Cdept_id) VALUES (2,'Database Management','Murat Osman Ünalır',1);

INSERT INTO OFFEREDCOURSE(course_id,dept_id) VALUES (1,1);
INSERT INTO OFFEREDCOURSE(course_id,dept_id) VALUES (2,1);

INSERT INTO TEACHCOURSE (course_id,member_id) VALUES (1,22);
INSERT INTO TEACHCOURSE (course_id,member_id) VALUES (2,23);

INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (1,15);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (2,15);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (1,16);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (2,16);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (1,17);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (2,17);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (1,18);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (2,18);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (1,19);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (2,19);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (1,20);
INSERT INTO ENROLLCOURSE(course_id,member_id) VALUES (2,20);

INSERT INTO PROJECT (project_id,project_name,course_id) VALUES (1,'Design Patterns Project',1);
INSERT INTO PROJECT (project_id,project_name,course_id) VALUES (2,'LinkedInMoodle Project',2);

INSERT INTO UPLOADPROJECT (project_id,member_id) VALUES (1,22);
INSERT INTO UPLOADPROJECT (project_id,member_id) VALUES (2,23);

INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (1,15);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (1,16);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (1,17);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (1,18);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (1,19);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (1,20);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (2,15);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (2,16);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (2,17);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (2,18);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (2,19);
INSERT INTO DELIVERPROJECT (project_id,member_id) VALUES (2,20);

INSERT INTO DGROUP (group_id,Gname,no_of_members,Umember_id) VALUES (1,'Lazy Programmers',233,1);
INSERT INTO DGROUP (group_id,Gname,no_of_members,Umember_id) VALUES (2,'Strong Programmers',573,4);

INSERT INTO GROUPMANAGER(group_id,member_id) VALUES (1,1);
INSERT INTO GROUPMANAGER(group_id,member_id) VALUES (2,4);

INSERT INTO VIEWGROUP(group_id,member_id) VALUES (1,15);
INSERT INTO VIEWGROUP(group_id,member_id) VALUES (2,15);

INSERT INTO JOINGROUP(group_id,member_id) VALUES(1,9);
INSERT INTO JOINGROUP(group_id,member_id) VALUES(2,13);

INSERT INTO POST (post_id,member_id) VALUES(1,15);
INSERT INTO POST (post_id,member_id) VALUES(2,16);
INSERT INTO POST (post_id,member_id) VALUES(3,17);
INSERT INTO POST (post_id,member_id) VALUES(4,18);
INSERT INTO POST (post_id,member_id) VALUES(5,19);
INSERT INTO POST (post_id,member_id) VALUES(6,20);
INSERT INTO POST (post_id,member_id) VALUES(7,5);
INSERT INTO POST (post_id,member_id) VALUES(8,12);
INSERT INTO POST (post_id,member_id) VALUES(9,24);
INSERT INTO POST (post_id,member_id) VALUES(10,1);
INSERT INTO POST (post_id,member_id) VALUES(11,15);
INSERT INTO POST (post_id,member_id) VALUES(12,16);
INSERT INTO POST (post_id,member_id) VALUES(13,17);
INSERT INTO POST (post_id,member_id) VALUES(14,18);
INSERT INTO POST (post_id,member_id) VALUES(15,19);
INSERT INTO POST (post_id,member_id) VALUES(16,20);
INSERT INTO POST (post_id,member_id) VALUES(17,5);
INSERT INTO POST (post_id,member_id) VALUES(18,5);


INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (1,1,'123450','AA',90,15);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (2,1,'123451','BA',80,16);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (3,1,'123452','BB',70,17);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (4,1,'123453','CC',60,18);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (5,1,'123454','BB',70,19);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (6,1,'123455','CC',60,20);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (11,2,'123450','AA',90,15);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (12,2,'123451','BA',80,16);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (13,2,'123452','BB',70,17);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (14,2,'123453','CC',60,18);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (15,2,'123454','BB',70,19);
INSERT INTO GRADE (post_id,project_id,student_no,letter_grade,grade_point,member_id) VALUES (16,2,'123455','CC',60,20);

INSERT INTO VIDEO (post_id,thumbnail,member_id) VALUES (7,'video1',5);
INSERT INTO PHOTO (post_id,tag,member_id) VALUES (17,NULL,5);
INSERT INTO TEXT (post_id,text,member_id) VALUES (18,'Yeni projeme şuradan göz atabilrsiniz. ',5);
INSERT INTO PHOTO (post_id,tag,member_id) VALUES (8,NULL,12);
INSERT INTO EVENT (post_id,event_type,event_name,event_date,member_id) VALUES (9,'Yüz Yüze','Programcılar Buluşuyor','2022-03-02',24);
INSERT INTO TEXT (post_id,text,member_id) VALUES (10,'Tüm bağlantılarımın dikkatine iş arayışım..',1);

INSERT INTO JOB_ADV(member_id,Jorg_name,no_of_appliers,Jorg_location,last_apply_date) VALUES (8,'Software Developer',49,'İzmir','2022-03-02');
INSERT INTO JOB_ADV(member_id,Jorg_name,no_of_appliers,Jorg_location,last_apply_date) VALUES (6,'Software Developer',49,'İzmir','2022-03-02');
INSERT INTO JOB_ADV(member_id,Jorg_name,no_of_appliers,Jorg_location,last_apply_date) VALUES (2,'Software Developer',49,'İzmir','2022-03-02');
INSERT INTO JOB_ADV(member_id,Jorg_name,no_of_appliers,Jorg_location,last_apply_date) VALUES (6,'Data Engineer',102, 'İzmir','2022-04-03');
INSERT INTO JOB_ADV(member_id,Jorg_name,no_of_appliers,Jorg_location,last_apply_date) VALUES (24,'Araştırma Görevlisi',12,'İzmir','2022-02-03');

INSERT INTO VIEWJOB(member_id,Jorg_name) VALUES (1,'Çiçek Sepeti İş');
INSERT INTO VIEWJOB(member_id,Jorg_name) VALUES (2,'Türkiye Finans İş');

INSERT INTO VIEWPROFILE(member_id,Umember_id) VALUES (1,4);

INSERT INTO APPLYJOB(member_id,Jorg_name) VALUES (17,'Çicek Sepeti İş');
INSERT INTO APPLYJOB(member_id,Jorg_name) VALUES (18,'Türkiye Finans İş');

INSERT INTO CHATMEM(member_id,CDate,chat_text,UMember_id) VALUES (1,'2022-01-29','Selam!',20);
INSERT INTO CONNECTMEM(member_id,UMember_id) VALUES (1,20);

INSERT INTO LIKEPOST(member_id,post_id,Ldate) VALUES (1,1,'2022-01-29');
INSERT INTO SHAREPOST(member_id,post_id,Sdate) VALUES (16,2,'2022-01-29');
INSERT INTO COMMENTPOST(member_id,post_id,Ltext,Ldate) VALUES (16,2,'Notum çok iyi','2022-01-29');
