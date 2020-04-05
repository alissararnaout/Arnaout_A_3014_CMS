<?php 
    require_once '../load.php';
    confirm_logged_in();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>

    <h2>Welcome! <?php echo $_SESSION['user_name'];?></h2>
    
    <a href="admin_createuser.php">Create User</a>
    <a href="admin_edituser.php">Edit User</a>
    <a href="admin_deleteuser.php">Delete User</a>

    <a href="admin_addproduct.php">Add Product</a>
    <a href="admin_editproduct.php">Edit Product</a>
    <a href="admin_editproduct.php">Delete Product</a>

    <a href="admin_logout.php">Sign Out</a>

</head>
<body>
    
</body>
</html>