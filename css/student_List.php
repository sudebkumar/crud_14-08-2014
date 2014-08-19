<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="S.M. Shahed Ruhi">
    <link rel="icon" href="image/link_Logo.jpg">


    <title>GORZON SOLUTIONS PVT. LTD</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>



    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">GORZON SOLUTIONS PVT. LTD</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.php">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
        
    <img class="img-responsive" alt="Responsive image" src="image/banner.jpg" />

    <br>
    <br>
    <br>        
                       <!--panel-->
    <div class="panel panel-primary">
    <!-- Default panel contents -->
      <div class="panel-heading"><h4>LIST OF STUDENTS WITH COURSES</h4></div>
        <div class="panel-body">
          <?php

mysql_connect('localhost','root','');

mysql_select_db('ftfl');

$qury = mysql_query("SELECT students.id,students.name,courses.title 
                    from courses
                    INNER JOIN map_students_courses
                    ON map_students_courses.course_id = courses.id
                    INNER JOIN students 
                    ON map_students_courses.student_id = students.id
                    Order by students.id");

echo "<table class='table table-condensed'>";
  echo "<thead>";
        echo "<tr>";
                echo "<th>ID</th>";
                echo "<th>Student Name</th>";
                echo "<th>Courses Assigned</th>";
                echo "<th>Action</th>";
              echo "</tr>";
  echo "</thead>";
while ($data = mysql_fetch_object($qury)) {
  echo "<tr>";
  echo "<td>".$data->id."</td>";
  echo "<td>".$data->name."</td>";
  echo "<td>".$data->title."</td>";
  echo "<div class='btn-group btn-group-justified'>";
  echo "<td><a href='edit_Student.php?student_Id=".$data->id."' class='btn btn-primary' role='button'>EDIT</a></td>";
  echo "<td><a href='delete_Student.php?student_Id=".$data->id."' class='btn btn-primary' role='button'>DELETE</a></td>";
  echo "<td><a href='assign_Course.php?student_Id=".$data->id."' class='btn btn-primary' role='button'>ASSIGN COURSE</a></td>";
  echo "</div>";
  //echo "<td><a href='view.php?id=".$data->id."'>View</a></td>";
  //echo "<td><a href='edit.php?id=".$data->id."'>Edit</a></td>";
  //echo "<td><a href='delete.php?id=".$data->id."'>Delete</a></td>";
  echo "</tr>";
}
echo "</table>";



?>


        
        </div>
    </div>
    <!--end of panel-->
         



    

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.js"></script>
  

</body>
<br>
<br>
<br>
<br>
</html>