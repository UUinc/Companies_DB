<!Doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css" />
        <title>Companies DB - Admin</title>
    </head>
    <body>
        <?php require_once 'connect.php'; ?>
        <?php 
            session_start();
            if(!$_SESSION['auth'])
            {
                header('location:login.php');
            }
        ?>
        <div class="container">
            <div>
                <h1>Admin</h1>
                <form action="#" method="post">
                    <table class="email_form">
                        <tr>
                            <td>company name:</td>
                            <td><input id="company_name" type="text" name="company_name" placeholder="uu soft"/></td>
                        </tr>
                        <tr>
                            <td>industry:</td>
                            <td>
                                <select id="industry" name="industry">
                                    <?php
                                        //get the name of the industries
                                        $sql = "SELECT * FROM industry ORDER by industry_name";
                                        $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                                        while($row = mysqli_fetch_array($result))
                                        {
                                            echo "<option value=\"".$row['industry_id']."\">".$row['industry_name']."</option>";
                                        }
                                    ?>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>city:</td>
                            <td>
                                <select id="city" name="city">
                                    <?php
                                        //get the name of the cities
                                        $sql = "SELECT * FROM city ORDER by city_name";
                                        $result = mysqli_query($link, $sql) or die(mysqli_error($link));
                                        
                                        while($row = mysqli_fetch_array($result))
                                        {
                                            echo "<option value=\"".$row['city_id']."\">".$row['city_name']."</option>";
                                        }
                                    ?>
                                </select> 
                            </td>
                        </tr>
                        <tr>
                            <td>email:</td>
                            <td><input id="email" type="email" name="email" placeholder="abc@example.com"/></td>
                        </tr>
                        <tr>
                            <td>address:</td>
                            <td><input id="address" type="text" name="company_name" placeholder="117, bd. Hassan II"/></td>
                        </tr>
                        <tr>
                            <td>telephone:</td>
                            <td><input id="telephone" type="tel" name="email" placeholder="+212-666-666-666"/></td>
                        </tr>
                        <tr>
                            <td>website:</td>
                            <td><input id="website" type="url" name="company_name" placeholder="https://uusoft.itch.io/"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input class="button" type="submit" name="save_btn" value="save"/></td>
                            <td><a class="button" href="logout.php">logout</a></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>