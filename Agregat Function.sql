CREATE DATABASE student;
SELECT * FROM students_performance; -- check table import 

--  Ada grup race/ethnicity apa saja pada dataset tersebut?
SELECT DISTINCT race_or_ethnicity FROM students_performance ORDER BY race_or_ethnicity; 

-- Orang dengan grup apa yang memiliki nilai math sama dengan 0?
SELECT race_or_ethnicity, math_score FROM students_performance WHERE math_score = 0;

-- Berapa nilai writing terkecil orang yang memiliki 
-- orangtua dengan tingkat pendidikan associate's degree?
SELECT * FROM students_performance WHERE parental_level_of_education = "associate's degree" ORDER BY writing_score;

-- Jika nilai writing terendah orang di grup A dijumlahkan 
-- dengan nilai writing terendah orang di grup B, maka hasilnya adalah
SELECT * FROM students_performance WHERE race_or_ethnicity IN ('group A', 'group B')
ORDER BY writing_score ASC;
/*Nilai terendah di grup A = 19, di grup B = 15 sehingga 19 + 15 = 34*/

-- Berapa orang yang memiliki nilai math kurang dari 65 
-- namun memiliki nilai writing lebih besar dari 80?
SELECT * FROM students_performance WHERE math_score < 65  AND writing_score > 80; 

-- Jika data di-filter dengan nilai reading lebih dari 10 namun kurang dari 25,
-- tingkat pendidikan orangtua apa saja yang termasuk ke dalam data tersebut?
SELECT reading_score, parental_level_of_education FROM students_performance 
WHERE reading_score <=25 AND reading_score >=10
ORDER BY reading_score;

SELECT * FROM students_performance
WHERE
    parental_level_of_education LIKE '%high%'
    AND race_or_ethnicity NOT IN ('group A', 'group B')
    AND reading_score < 35;
    
    SELECT * FROM students_performance
WHERE
    parental_level_of_education LIKE 'high%'
    AND race_or_ethnicity NOT IN ('group A', 'group B')
    AND reading_score < 35;