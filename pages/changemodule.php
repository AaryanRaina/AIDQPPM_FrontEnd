<?php 
    include('check.php');
?>
<!--Body Starts Here-->
        <div class="main">
            <div class="content">
                <div class="welcome">
                    <?php 
                        if(isset($_SESSION['login']))
                        {
                            echo $_SESSION['login'];
                            unset($_SESSION['login']);
                        }
                        //Setting Time Limit Here
                        if(!isset($_SESSION['start_time']))
                        {
                            //$_SESSION['start_time']=
                        }
                        $input = 'some-place';
                        $sid=$_SESSION['sid'];
                        $username=$_SESSION['student'];
                        $tbl_name_qns='tbl_student';
                        $where_qns="student_id='$sid'";
                        $query_qns=$obj->select_data($tbl_name_qns,$where_qns);
                        $res_qns=$obj->execute_query($conn,$query_qns);
                        if($res_qns==true)
                        {
                            $row_qns=$obj->fetch_data($res_qns);
                            $moduleno=$row_qns['faculty'];
                        }
                    ?>
                    Hello <span class="heavy"><?php echo $_SESSION['student']?></span>.<br />
                    
                    <div class="success">
                        <p style="text-align: left;">
                            Here you can change your module you are currently on: <?php echo $moduleno; ?><br />
                        </p>
                    </div>

                    <!-- Extra-button -->
                    <!-- <button class="btn1">CLICK</button> 
                    <button class="btn2">wow you really clicked</button>  -->
                    <!-- /Extra-button -->

                    <?php
                    $input = 'some-place';
                    $sid=$_SESSION['sid'];
                    $username=$_SESSION['student'];
                    $tbl_name_qns='tbl_student';
                    $where_qns="student_id='$sid'";
                    $query_qns=$obj->select_data($tbl_name_qns,$where_qns);
                    $res_qns=$obj->execute_query($conn,$query_qns);
                    if($res_qns==true)
                    {
                        $row_qns=$obj->fetch_data($res_qns);
                        $moduleno=$row_qns['faculty'];
                    }
                    if ($moduleno == "30102") {
                        $input = "https://docs.google.com/document/d/1TzWAld_P-i2p4elRW1RvcFawdwO7NgwHQC22SOfiAeg/edit";
                      } elseif ($moduleno == "30101") {
                        $input = "https://docs.google.com/document/d/1ZvICcYmFJed1fua40vzVzxhuF5M6NeSJE2oCcNKsBpg/edit";
                      } elseif ($moduleno == "303") {
                        $input = "https://docs.google.com/document/d/1wanpqAMzUxX6HowyYqjoKqWgdGd5t-RhKrVLZ0ILAR4/edit";
                      }
                    
                    ?>
                    
                    <!-- 
                        // $conn = new mysqli('localhost', 'root', '', 'quizapp') 
                        // or die ('Cannot connect to db');

                        //     $result = $conn->query("select faculty_name from tbl_faculty");

                        //     echo "<html>";
                        //     echo "<body>";
                        //     echo "<select name='module'>";

                        //     while ($row = $result->fetch_assoc()) {

                        //                 unset($id, $name);
                        //                 $id = $row['faculty_name'];
                        //                 $name = $row['faculty_name']; 
                        //                 echo '<option value="'.$id.'">'.$name.'</option>';

                        // }
                        //     echo $id;
                        //     echo "</select>";
                        //     echo "</body>";
                        //     echo "</html>";
                    ?>  -->
                    <form action="" method="post">
                    Change your current module to :
                    <select id="module" name="module">
                        <?php
                        $conn = new mysqli('localhost', 'root', '', 'quizapp') 
                        or die ('Cannot connect to db');
                        $result = $conn->query("select faculty_name from tbl_faculty");
                        while ($row = $result->fetch_assoc()) {

                            unset($id, $name);
                            $id = $row['faculty_name'];
                            $name = $row['faculty_name']; 
                            echo '<option value="'.$id.'">'.$name.'</option>';
                        }
                        ?>
                    </select>
                    <input type="submit" class="btn-go" value="Change Module">
                    <a href="<?php echo SITEURL; ?>index.php?page=logout">
                        <button type="button" class="btn-exit">&nbsp; Quit &nbsp;</button>
                    </a>
                    </form>
                    <?php
                    if (isset($_POST['module']) && $_POST['module']!=$moduleno){
                        $fmodule = $_POST['module'];
                        $conn->query("UPDATE tbl_student SET faculty = '$fmodule' WHERE student_id = '$sid'");
                        $message='Module Changed';
                        echo '<script type="text/javascript">window.alert("'.$message.'");</script>';
                    }
                    ?>
                    
                </div>
            </div>
        </div>
        <!--Body Ends Here-->
        <!-- <script type="text/javascript">
            document.querySelector('.btn2').style.display = 'none'; 
            document.querySelector('.btn1').addEventListener('click', showBtn); 
            
            function showBtn(e) { 
            document.querySelector('.btn2').style.display = 'inherit'; 
            e.preventDefault(); 
            } 
        </script> -->