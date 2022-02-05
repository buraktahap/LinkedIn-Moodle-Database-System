CREATE TABLE IF NOT EXISTS MEMBER (
    member_id INT PRIMARY KEY NOT NULL,
    mail VARCHAR(100) NOT NULL UNIQUE,
    Mpassword VARCHAR(100) NOT NULL,
    member_type VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS ORGANISATION (
    member_id INT PRIMARY KEY NOT NULL,
    start_date DATE NULL,
    Umember_id INT NULL,
    FOREIGN KEY (Umember_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS JOB (
    member_id INT NOT NULL,
    job_id INT UNIQUE,
    PRIMARY KEY (member_id , job_id),
    FOREIGN KEY (member_id)
        REFERENCES ORGANISATION (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS PERSON (
    member_id INT PRIMARY KEY NOT NULL,
    start_date DATE NULL,
    finish_date DATE NULL,
    job_id INT
);

CREATE TABLE IF NOT EXISTS COMPANY (
    member_id INT PRIMARY KEY,
    FOREIGN KEY (member_id)
        REFERENCES ORGANISATION (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS UNIVERSITY (
    member_id INT PRIMARY KEY,
    uni_name VARCHAR(45) UNIQUE,
    FOREIGN KEY (member_id)
        REFERENCES ORGANISATION (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS DEPARTMENT (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(45),
    Cstart_date DATE NULL,
    Umember_id INT,
    FOREIGN KEY (Umember_id)
        REFERENCES PERSON (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS STUDENT (
    member_id INT PRIMARY KEY,
    student_no INT UNIQUE
);

CREATE TABLE IF NOT EXISTS INSTRUCTOR (
    member_id INT PRIMARY KEY,
    instr_name VARCHAR(45),
    title VARCHAR(45) NULL
);

CREATE TABLE IF NOT EXISTS ORG_PROFILE (
    org_id INT PRIMARY KEY NOT NULL,
    org_name VARCHAR(45),
    org_phone VARCHAR(45),
    founder VARCHAR(45),
    sector VARCHAR(45),
    website VARCHAR(100),
    no_of_employee INT,
    found_date DATE,
    Omember_id INT,
    FOREIGN KEY (Omember_id)
        REFERENCES ORGANISATION (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS COURSE (
    course_id INT PRIMARY KEY,
    Cname VARCHAR(45),
    instr VARCHAR(45),
    Cdept_id INT,
    FOREIGN KEY (Cdept_id)
        REFERENCES DEPARTMENT (dept_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS PROJECT (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(45),
    course_id INT,
    FOREIGN KEY (course_id)
        REFERENCES COURSE (course_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS PROFILE (
    profile_id INT PRIMARY KEY NOT NULL,
    Fname VARCHAR(45),
    Lname VARCHAR(45),
    phone VARCHAR(45),
    birthday DATE,
    sex CHAR(10),
    address VARCHAR(45),
    Umember_id INT,
    FOREIGN KEY (Umember_id)
        REFERENCES PERSON (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS POST (
    post_id INT PRIMARY KEY,
    member_id INT,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS GRADE (
    post_id INT,
    project_id INT,
    student_no VARCHAR(45),
    letter_grade CHAR(10),
    grade_point INT,
    member_id INT,
    PRIMARY KEY (post_id , project_id , student_no),
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (project_id)
        REFERENCES PROJECT (project_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS VIDEO (
    post_id INT PRIMARY KEY,
    thumbnail VARCHAR(45),
    member_id INT,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS PHOTO (
    post_id INT PRIMARY KEY,
    tag VARCHAR(45),
    member_id INT,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS EVENT (
    post_id INT PRIMARY KEY,
    event_type VARCHAR(45),
    event_date DATE,
    event_name VARCHAR(45),
    member_id INT,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS TEXT (
    post_id INT PRIMARY KEY,
    text VARCHAR(45),
    member_id INT,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS DGROUP (
    group_id INT PRIMARY KEY,
    Gname VARCHAR(45),
    no_of_members INT,
    Umember_id INT,
    FOREIGN KEY (Umember_id)
        REFERENCES PERSON (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS ADMINSDEPT (
    dept_id INT,
    member_id INT,
    PRIMARY KEY (dept_id , member_id),
    FOREIGN KEY (dept_id)
        REFERENCES DEPARTMENT (dept_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES UNIVERSITY (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS TEACHCOURSE (
    course_id INT,
    member_id INT,
    PRIMARY KEY (course_id , member_id),
    FOREIGN KEY (course_id)
        REFERENCES COURSE (course_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES INSTRUCTOR (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS ENROLLCOURSE (
    course_id INT,
    member_id INT,
    PRIMARY KEY (course_id , member_id),
    FOREIGN KEY (course_id)
        REFERENCES COURSE (course_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES STUDENT (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS UPLOADPROJECT (
    project_id INT,
    member_id INT,
    PRIMARY KEY (project_id , member_id),
    FOREIGN KEY (project_id)
        REFERENCES PROJECT (project_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES INSTRUCTOR (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS DELIVERPROJECT (
    project_id INT,
    member_id INT,
    PRIMARY KEY (project_id , member_id),
    FOREIGN KEY (project_id)
        REFERENCES PROJECT (project_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES STUDENT (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS GROUPMANAGER (
    group_id INT,
    member_id INT,
    PRIMARY KEY (group_id , member_id),
    FOREIGN KEY (group_id)
        REFERENCES DGROUP (group_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES PERSON (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS VIEWGROUP (
    group_id INT,
    member_id INT,
    PRIMARY KEY (group_id , member_id),
    FOREIGN KEY (group_id)
        REFERENCES DGROUP (group_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES PERSON (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS JOINGROUP (
    group_id INT,
    member_id INT,
    PRIMARY KEY (group_id , member_id),
    FOREIGN KEY (group_id)
        REFERENCES DGROUP (group_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES PERSON (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS VIEWPROFILE (
    member_id INT,
    Umember_id INT,
    PRIMARY KEY (member_id , Umember_id),
    FOREIGN KEY (Umember_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS JOB_ADV (
    member_id INT,
    Jorg_name VARCHAR(45),
    no_of_appliers INT,
    Jorg_location VARCHAR(45),
    last_apply_date DATE,
    PRIMARY KEY (member_id , Jorg_name),
    FOREIGN KEY (member_id)
        REFERENCES ORGANISATION (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS VIEWJOB (
    member_id INT,
    Jorg_name VARCHAR(45),
    PRIMARY KEY (member_id , Jorg_name),
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS APPLYJOB (
    member_id INT,
    Jorg_name VARCHAR(45),
    PRIMARY KEY (member_id , Jorg_name),
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS CHATMEM (
    member_id INT,
    CDate DATE,
    chat_text VARCHAR(45),
    UMember_id INT,
    PRIMARY KEY (member_id , UMember_id),
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS CONNECTMEM (
    member_id INT,
    UMember_id INT,
    PRIMARY KEY (member_id , UMember_id),
    FOREIGN KEY (member_id)
        REFERENCES PERSON (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS LIKEPOST (
    member_id INT,
    post_id INT,
    PRIMARY KEY (member_id , post_id),
    Ldate DATE,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS SHAREPOST (
    member_id INT,
    post_id INT,
    PRIMARY KEY (member_id , post_id),
    Sdate DATE,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS COMMENTPOST (
    member_id INT,
    post_id INT,
    PRIMARY KEY (member_id , post_id),
    Ltext VARCHAR(45),
    Ldate DATE,
    FOREIGN KEY (member_id)
        REFERENCES MEMBER (member_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (post_id)
        REFERENCES POST (post_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS ORG_LOCATIONS (
    org_id INT,
    Olocation VARCHAR(45),
    PRIMARY KEY (org_id , Olocation),
    FOREIGN KEY (org_id)
        REFERENCES ORG_PROFILE (org_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS OFFEREDCOURSE (
    course_id INT,
    dept_id INT,
    PRIMARY KEY (course_id , dept_id),
    FOREIGN KEY (course_id)
        REFERENCES COURSE (course_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (dept_id)
        REFERENCES DEPARTMENT (dept_id)
        ON DELETE CASCADE ON UPDATE CASCADE
);