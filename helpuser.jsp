<?php
session_start();
if(isset($_SESSION['for']))
{
include 'connection.php';
$for=$_SESSION['for'];
$s=mysql_query("select * from register where username='$for'");   $row=mysql_fetch_array($s);
$sec=$row["secq"];
$secc=$row["seca"];
?>
<?php include 'header.php';?>
</div>
		</div>
	</div>
    
    
<div class="latest-albums">
		<div class="container">
			<h3 class="agileits_w3layouts_head"><span>Hello <?php echo"$for";?>, Give correct Answer of security question to verify identity.</span></h3>
			<div class="wthree_latest_albums_grids gallery">
				<div class="wthree_mail_grid_right">
					<form action="helpuser.php" method="post">
						<input type="text" name="secq" value="<?php echo"$sec";?>" required="">
                        <input type="text" name="seca" placeholder="Your Answer" required="">
						<input type="submit" value="Final Step" name="submit1" >
					</form>
				</div>
                </div>
				</div>
				<div class="clearfix"> </div>
			</div>
            
                <?php
if(isset($_POST['submit1']))
{
    
if($secc==$_POST['seca'])
{
    echo "<script type='text/javascript'>alert('User verified :D');
window.location='resetpass.php';
</script>";
}
    else
    {echo"<script>alert('Wrong Answer')</script>";}
}
}
else
{
    header('Location: http://localhost/web6/index.php');
}     
?>

<?php include 'footer.php'; ?>