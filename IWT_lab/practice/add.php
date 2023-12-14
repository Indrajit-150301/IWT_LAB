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
        if(isset($_POST['submit'])){
            include('dbconnect.php');
            $name = $_POST['name'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            $query = "INSERT INTO `practice` (`name`,`email`,`password`) VALUES('$name','$email','$password')";
            if(mysqli_query($conn,$query)){
                echo "Data Inserted Successfully";
            }else{
                echo "Not Inserted";
            }
            
        }
    
    ?>
    <h1>Add Form</h1>
    <form action="" method="post">
        <input type="text" name="name" placeholder="Enter Name" required>
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <input type="submit" name="submit" value="Save">
    </form>
</body>
</html>