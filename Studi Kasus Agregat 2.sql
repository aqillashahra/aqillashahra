CREATE DATABASE student;
SELECT * FROM students_performance; -- check table import 

-- Berapa jumlah record pada dataset tersebut?
SELECT COUNT(*) FROM students_performance;

-- Buatlah query untuk menunjukkan:
-- a. perbandingan rata-rata nilai reading laki-laki dan perempuan!
SELECT gender, AVG(writing_score) AS rerata_writing_score FROM students_performance GROUP BY gender;

-- nilai math tertinggi dan terendah dari masing-masing tingkatan pendidikan orangtua (parental level of education)
SELECT parental_level_of_education, MAX(math_score) AS math_tertinggi, MIN(math_score) AS math_terendah FROM students_performance 
GROUP BY parental_level_of_education ORDER BY parental_level_of_education;

-- Berapa nilai rata-rata dari math, reading dan writing 
-- orang bergender perempuan yang pernah / sudah menyelesaikan kursus persiapan ujian (test_preparation_course)?
SELECT gender, test_preparation_course, AVG(math_score), AVG(reading_score), AVG(writing_score) FROM students_performance 
WHERE test_preparation_course = "completed" AND gender = "female";

-- Berapa nilai rata-rata writing orang yang memiliki orangtua yang tingkat pendidikannya adalah 
-- high school /some high school? (digabung, tidak terpisah)
SELECT parental_level_of_education, AVG(writing_score) FROM students_performance 
WHERE parental_level_of_education LIKE "%high school%" GROUP BY parental_level_of_education;

-- Berapa nilai rata-rata math, reading, writing orang yang memiliki gender perempuan 
-- diikuti dengan keterangan race/ethnic dan test preparation course ?
SELECT gender, race_or_ethnicity, test_preparation_course, AVG(math_score), AVG(reading_score), AVG(writing_score) FROM students_performance 
WHERE gender = "female" GROUP BY gender, race_or_ethnicity, test_preparation_course ORDER BY race_or_ethnicity;

-- Berapa nilai rata-rata math yang lebih dari 70, reading, writing orang yang memiliki gender perempuan 
-- diikuti dengan keterangan race/ethnic dan test preparation course ?
SELECT gender, race_or_ethnicity, test_preparation_course, AVG(math_score) AS avg_math_score, AVG(reading_score) AS avg_reading_score, AVG(writing_score) AS avg_writing_score 
FROM students_performance GROUP BY gender, race_or_ethnicity, test_preparation_course HAVING avg_math_score > 70 ORDER BY gender, race_or_ethnicity, test_preparation_course;