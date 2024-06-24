select 
st.student_id, 
st.student_name, 
su.subject_name, 
COUNT(exam.subject_name) as attended_exams
from Students st
join Subjects su
left join Examinations exam
on 
st.student_id = exam.student_id 
AND 
su.subject_name = exam.subject_name
group by 
st.student_id, su.subject_name
order by 
student_id, subject_name;