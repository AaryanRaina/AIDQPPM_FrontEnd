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
                    ?>
                    Hello <span class="heavy"><?php echo $_SESSION['student'];echo $_SESSION['sid'];echo $_SESSION['qpid']; ?></span>. Welcome to Test Preparation Portal.<br />
                    
                    <div class="success">
                        <p style="text-align: left;">
                            Here are some of the rules and regulations of this app.<br />
                            1. This test is automated and you won't be able to return to previous question.<br />
                            2. Once you successfully login, you can't log back in.<br />
                            3. After you click on "Take a Test", the timer will start and it can't be paused or stopped.<br />
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

                    <a href="<?php echo SITEURL; ?>index.php?page=question">
                        <button type="button" class="btn2 btn-go">Take a Test</button>
                    </a>
                    <a href="<?php echo $input ?>" target="_blank">
                        <button onclick=" window.open('<?php echo $input ?>','_blank')" type="button" class="btn1 btn-go">Curtain Raiser</button>
                    </a>
                    <a href="<?php echo SITEURL; ?>index.php?page=logout">
                        <button type="button" class="btn-exit">&nbsp; Quit &nbsp;</button>
                    </a>
                </div>
            </div>
        </div>
        <!--Body Ends Here-->
        <script type="text/javascript">
            document.querySelector('.btn2').style.display = 'none'; 
            document.querySelector('.btn1').addEventListener('click', showBtn); 
            
            function showBtn(e) { 
            document.querySelector('.btn2').style.display = 'inherit'; 
            e.preventDefault(); 
            } 
        </script>