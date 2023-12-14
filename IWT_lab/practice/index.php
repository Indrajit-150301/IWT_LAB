<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="main.css"/>
    <title>Practice</title>
</head>
<body>
    <div class="container">
        <a href="add.php" style="" target="_blank" >Add</a>
        <table>
            <thead>
                <tr>
                <th>Sr. No</th>
                <th>Name</th>
                <th>Email</th>
                <th>Action</th>
                </tr>
            </thead>

            <?php 
            include('dbconnect.php');
            $query = "select * from `practice`";
            $result = mysqli_query($conn,$query);

            
            ?>
            <tbody>
                <?php 
                while($row = mysqli_fetch_assoc($result)) {
                ?>
                <tr>
                <td><?php echo $row['id']; ?></td>
                <td><?php echo $row['name']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td>
                    <a href="edit.php?id=<?php echo $row['id'] ?>">Edit</a>
                    <a href="index.php?id=<?php echo $row['id'] ?>" confirm title="Delete">Delete</a>
                </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>

    <?php 
        if(isset($_GET['id'])){
            $id = $_GET['id'];
            include('dbconnect.php');

            $query = "DELETE FROM `practice` WHERE id='$id'";
            mysqli_query($conn,$query);

            header("location:index.php");
        } 
    
    ?>
</body>
</html>