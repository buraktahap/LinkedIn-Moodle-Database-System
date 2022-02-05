ALTER TABLE profile 
ADD CONSTRAINT check_profile_sex CHECK (sex in ('erkek','kadın','belirtmiyor'));

ALTER TABLE person
ADD CONSTRAINT date_check CHECK (start_date <= finish_date);

ALTER TABLE grade
ADD CONSTRAINT grade_check CHECK (grade_point>= 0 AND grade_point<=100);

ALTER TABLE job_adv
ADD CONSTRAINT employee_check CHECK (no_of_appliers >= 0);

ALTER TABLE dgroup
ADD CONSTRAINT droup_check CHECK (no_of_members >0);

ALTER TABLE grade
ADD CONSTRAINT grade_check2 CHECK (letter_grade='AA' OR letter_grade='BA' OR letter_grade='BB' 
OR letter_grade='CB' OR letter_grade='CC' OR letter_grade='DC' OR letter_grade='DD' OR letter_grade='FF' );

ALTER TABLE profile
ADD CONSTRAINT age_check CHECK (birthday <= '2008-01-01');

ALTER TABLE member
ADD CONSTRAINT type_check CHECK (member_type='PERSON'OR member_type='ORGANISATION');