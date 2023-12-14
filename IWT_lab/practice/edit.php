<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
  
      <?php 
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            include('dbconnect.php');

            $query = "select * FROM `practice` WHERE id='$id'";
            $result = mysqli_query($conn,$query);
            $row = mysqli_fetch_assoc($result);
           
   
            
        } 
    
    ?>
    <h1>Edit Form</h1>
    <form action="" method="post">
        <input type="text" name="name" value="<?php echo $row['name'];?>" placeholder="Enter Name" required>
        <input type="email" name="email" value="<?php echo $row['email'];?>" placeholder="Enter Email" required>
                <input type="submit" name="submit" value="Update"/>
    </form>

    <?php 
        if(isset($_POST['submit'])){
            include('dbconnect.php');
            $name = $_POST['name'];
            $email = $_POST['email'];
            $id = $_GET['id'];
           

            $query = "UPDATE   `practice` SET `name`='$name',`email`='$email' WHERE id='$id'";
            if(mysqli_query($conn,$query)){
                echo "Data Updated Successfully";
            }else{
                echo "Not Updated";
            }
            
        }
    
    ?>
</body>
</html>