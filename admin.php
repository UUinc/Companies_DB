<!Doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css" />
        <title>Companies DB - tutorial</title>
    </head>
    <body>
        <div class="container">
            <div>
                <h1>Admin</h1>
                <form action="#" method="post">
                    <table class="email_form">
                        <tr>
                            <td>Username:</td>
                            <td><input id="username" type="text" name="username" placeholder="root"/></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input id="password" type="password" name="password" placeholder="****"/></td>
                        </tr>
                    </table>
                    <div class="container">
                        <div>
                            <input type="submit" name="login_btn" value="login" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <?php require_once 'connect.php'; ?>
        <?php
            if($_SERVER['REQUEST_METHOD'] == "POST" and isset($_POST['login_btn']))
            {
                $user = GetUser();
                $password = GetPassword();

                //test if login info is correct 
                $sql = "SELECT count(*) FROM login WHERE user = '".$user."' And password = '".$password."'";
                $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                while($row = mysqli_fetch_array($result))
                {
                    if($row['count(*)'] == 1)
                    {
                        echo "successfull";
                    }
                }
            }
            function GetUser()
            {
                if(isset($_POST['login_btn']))
                {
                    $user = $_POST['username']; 
                    return $user;         
                }
                return 0;
            }
            function GetPassword()
            {
                if(isset($_POST['login_btn']))
                {
                    $password = $_POST['password']; 
                    return $password;               
                }
                return 0;
            }
        ?>
    </body>
</html>