<!Doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="style.css" />
        <title>Companies DB</title>
    </head>
    <body>
        <div class="container">
            <div>
                <h1><b>Companies Database</b></h1>
                
                <?php 
                require_once 'connect.php';
                $sql = "SELECT * FROM companies";
                $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                echo "<table>";
                //header of the table
                echo "<tr>
                        <th>Company Name</th>
                        <th>Industry</th>
                        <th>City</th>
                        <th>Email</th>
                        <th>Adress</th>
                        <th>Telephone</th>
                        <th>Website</th>
                      </tr>";
                
                while($row = mysqli_fetch_array($result))
                {
                    //get the name of the industry
                    $sql = "SELECT * FROM industry WHERE industry_id = ".$row['industry_id'];
                    $industry = mysqli_query($link, $sql) or die(mysqli_error($link));
                    $industry = mysqli_fetch_assoc($industry);

                    //get the name of the city
                    $sql = "SELECT * FROM city WHERE city_id = ".$row['city_id'];
                    $city = mysqli_query($link, $sql) or die(mysqli_error($link));
                    $city = mysqli_fetch_assoc($city);

                    echo "<tr>";
                    echo "<td>".$row['company_name']."</td>";
                    echo "<td>".$industry['industry_name']."</td>";
                    echo "<td>".$city['city_name']."</td>";
                    echo "<td>".$row['email']."</td>";
                    echo "<td>".$row['adress']."</td>";
                    echo "<td>".$row['telephone']."</td>";
                    echo "<td>".$row['website']."</td>";
                    echo "</tr>";
                }
                echo "</table>";
                ?>
                
                <br/><br/>

                <div class="container">
                    <div>
                        <h2>Send Email</h2>
                        <textarea name="message" placeholder="message here..." cols="100" rows="20"></textarea>
                    </div>
                </div>
                    <br/>
                <div class="container">
                    <div>
                        <select name="industry">
                            <?php
                                //get the name of the industries
                                $sql = "SELECT * FROM industry";
                                $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                                while($row = mysqli_fetch_array($result))
                                {
                                    echo "<option>".$row['industry_name']."</option>";
                                }
                            ?>
                        </select> 
                        <select name="city">
                            <?php
                                //get the name of the cities
                                $sql = "SELECT * FROM city";
                                $result = mysqli_query($link, $sql) or die(mysqli_error($link));

                                while($row = mysqli_fetch_array($result))
                                {
                                    echo "<option>".$row['city_name']."</option>";
                                }
                            ?>
                        </select> 
                        <button name="send" type="submit">send</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>