SELECT Cname, COUNT(E.member_id)
FROM ENROLLCOURSE AS E
JOIN COURSE AS C ON E.course_id = C.course_id;

SELECT org_name, org_phone , sector , website , no_of_employee , found_date
FROM ORG_PROFILE
ORDER BY no_of_employee ASC;

SELECT Jorg_name , no_of_appliers, COUNT(*)
FROM JOB_ADV
GROUP BY Jorg_name
HAVING no_of_appliers > 11;

SELECT FName, LName , Gname , no_of_members
FROM DGROUP
JOIN PROFILE ON PROFILE.Umember_id = DGROUP.Umember_id;

SELECT org_name, sector
FROM ORG_PROFILE
LEFT JOIN JOB ON JOB.member_id = ORG_PROFILE.Omember_id
WHERE no_of_employee > 1000;

SELECT member_id,letter_grade, grade_point, project_name
FROM GRADE AS G, PROJECT AS P
WHERE G.project_id = p.project_id AND grade_point > 70 AND project_name = 
('LinkedInMoodle Project')
ORDER BY grade_point DESC;

SELECT dept_name, Cname, instr
FROM DEPARTMENT, COURSE
WHERE dept_id = Cdept_id;

SELECT PR.Fname , PR.Lname ,T.text 
FROM POST AS P, TEXT AS T, PROFILE AS PR
WHERE P.post_İd = T.post_id AND P.member_id = PR.Umember_id;

SELECT S.student_no
FROM STUDENT AS S,POST AS P,GRADE AS G
WHERE S.student_no = G.student_no AND G.post_id = P.post_id 
AND G.letter_grade < 'CC';

SELECT member_type, FName, LName
FROM LIKEPOST AS L, MEMBER AS M, PROFILE AS P
WHERE L.member_id = M.member_id AND L.member_id = P.Umember_id;

SELECT org_name,sector,website
FROM ORG_PROFILE AS OP,ORGANISATION AS O
WHERE OP.Omember_id = O.member_id 
AND Omember_id IN (SELECT member_id
				  FROM JOB_ADV
				  WHERE Jorg_name = 'Software Developer');
                  
SELECT DISTINCT M.mail , P.project_id, P.project_name, C.Cname, C.instr
FROM DELIVERPROJECT AS D , PROJECT AS P , MEMBER AS M, COURSE AS C
WHERE D.project_id = P.project_id AND D.member_id = M.member_id 
AND C.course_id = P.course_id;

SELECT S.student_no , PR.Fname , PR.Lname , PRJ.project_name , G.letter_grade
FROM STUDENT AS S,POST AS P,GRADE AS G , PROFILE PR , PROJECT AS PRJ
WHERE S.student_no = G.student_no AND G.post_id = P.post_id 
AND G.letter_grade < 'CC' AND PR.Umember_id = S.member_id
AND PRJ.project_id = G.project_id;

SELECT member_id,mail,member_type
FROM MEMBER AS M
WHERE member_id IN ( SELECT member_id
					 FROM POST AS P
					 WHERE M.member_id = P.member_id)
					 ORDER BY member_id ASC;
 
SELECT CName, project_name, COUNT(G.student_no), AVG(grade_point)
FROM GRADE AS G, PROJECT AS P, COURSE AS C
WHERE G.project_id = P.project_id AND C.course_id = P.course_id
GROUP BY G.project_id;


