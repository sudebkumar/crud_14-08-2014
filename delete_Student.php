<?php
$student_Id = $_GET["student_Id"];
mysql_connect('localhost','root','');
mysql_select_db('ftfl');

if(mysql_query("DELETE from students WHERE id=$student_Id"))
{
	if(mysql_query("DELETE from map_students_courses WHERE student_id=$student_Id"))
	{
	header('location: student_List.php?msg=delete');
	}
}

?>
