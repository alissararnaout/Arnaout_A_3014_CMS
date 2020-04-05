<?php 
    require_once '../load.php';
    confirm_logged_in();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sportcheck - Dashboard</title>

    <h1><a href="../index.php">SportCheck</a></h1>
    <h2>Hi, <?php echo $_SESSION['user_name'];?></h2>
    
    <h3>User Panel</h3>
    <a href="admin_createuser.php">Create User</a><br>
    <a href="admin_edituser.php">Edit User</a><br>
    <a href="admin_deleteuser.php">Delete User</a><br>

    <h3>Product Panel</h3>
    <a href="admin_addproduct.php">Add Product</a><br>
    <a href="admin_editproduct.php">Edit Product</a><br>
    <a href="admin_deleteproduct.php">Delete Product</a><br><br>

    <a href="admin_logout.php">Sign Out</a><br>

</head>
<body>
    
</body>
</html>