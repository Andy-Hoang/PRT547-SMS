<?php
require_once('dbcon.php');
$uid = $_SESSION['uid'];
$query = "SELECT * FROM `teacher` WHERE `id`='$uid'";
$run = mysqli_query($con,$query);
$data = mysqli_fetch_assoc($run);
$name = $data['name'];
$email = $data['email']; 
$image = $data['image'];
?>

<ul class="sidenav collapsible sidenav-fixed" id="slide-out">
  
  <li>
    <div class="user-view">
      <div class="background">
        <img src="../images/bg1.jpg" class="responsive-img" alt="">
      </div>
      <a href="#" class="">
        <img src="../img/<?php
          if (isset($image) && !empty($image)){
            echo $image;
          }
          else{
            echo "teacher.png";
          }
        ?>" alt="" class="responsive-img circle">
      </a>
      <span class="name"><?php echo $name; ?></span>
      <span class="email"><?php echo $email; ?></span>
    </div>
  </li>

  <li><a href="dashboard.php"><i class="material-icons">dashboard</i>Dashboard</a></li>
  
  <li>
    <div class="collapsible-header">
      <i class="collapsible-header material-icons">person</i> <span style="margin-left:25px;">Students</span>  <i class="material-icons right prefix " style="margin-right:0; margin-left:80px;">arrow_drop_down</i>
    </div>
    <div class="collapsible-body">
      <ul>
        <li>
          <a href="addstudent.php"><i class="material-icons">person_add</i>Add Student</a>
          <a href="#"><i class="material-icons">edit</i>Edit Student</a>
          <a href="#"><i class="material-icons">delete</i>Delete Student</a>
          <a href="allstudents.php"><i class="material-icons">groups</i>All Student</a>
        </li>
      </ul>
    </div>
  </li>

  <li>
    <div class="collapsible-header">
      <i class=" collapsible-header material-icons">person</i> <span style="margin-left:25px;">Teacher</span>  <i class="material-icons right prefix" style="margin-right:0; margin-left:80px;">arrow_drop_down</i>
    </div>
    <div class="collapsible-body">
      <ul>
        <li>
          <a href="addteacher.php"><i class="material-icons">group_add</i>Add Teacher</a>
          <a href="#"><i class="material-icons">edit</i>Edit Teacher</a>
          <a href="#"><i class="material-icons">delete</i>Delete Teachers</a>
          <a href="teachers.php"><i class="material-icons">groups</i>All Teachers</a>
        </li>
      </ul>
    </div>
  </li>

  <li>
    <div class="collapsible-header">
      <i class="collapsible-header material-icons">library_books</i> <span style="margin-left:25px;">Course</span>  <i class="material-icons right prefix" style="margin-right:0; margin-left:91px;">arrow_drop_down</i>
    </div>
    <div class="collapsible-body">
      <ul>
        <li>
          <a href="addcourse.php"><i class="material-icons">library_books</i>Add Course</a>
          <a href="course.php"><i class="material-icons">library_books</i>All Course</a>
        </li>
      </ul>
    </div>
  </li>
        
  <div class="divider"></div>

  <li><a href="../include/logout.php"><i class="material-icons">logout</i>Logout</a></li>
  <li><a href="about.php"><i class="material-icons">info</i>About Us</a></li>
  <li><a href="contact.php"><i class="material-icons">call</i>Contact Us</a></li>

</ul>
