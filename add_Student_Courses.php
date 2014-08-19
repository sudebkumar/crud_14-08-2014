<?php
$student_Name = $_POST['student_Name'];
mysql_connect('localhost','root','');
mysql_select_db('ftfl');
mysql_query("insert into students (name) values ('$student_Name')");

$result = mysql_query("select id from students where name = '$student_Name' ");
$student_Id = mysql_fetch_array($result);
$input_Student_Id = $student_Id['id'];

foreach($_POST['course_Title'] as $course_Title)
{

    $result = mysql_query("select id from courses where title = '$course_Title' ");
    $course_Id = mysql_fetch_array($result);
    $input_Course_Id = $course_Id['id'];
    $query = "insert into map_students_courses (student_id,course_id) values ('$input_Student_Id','$input_Course_Id')";
    $result = mysql_query($query);
}

if($result)
{
    header('location: view_All_Students.php');
    //echo "Data inserted, thank you<br/>";
}
else
{
    echo "Error<br/>";
}
?>
