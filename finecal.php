

<!DOCTYPE html>
	<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/title.css">
		<link rel="stylesheet" type="text/css" href="../css/register.css">
	</head>
	<body>
		<div style="border: none;
	padding: 5px 14px;
	text-align: center;
	font-size: 25px;
	color: white;
	background-color: #2251dd;">Fine</div>
		<div class="addMemberForm">
			<form action="" method="POST" enctype="multipart/form-data" class="addform">

				<!--div class="inputs">
					<input type="text" name="memberId" required autofocus placeholder="ID" value=<?php// if(!empty($lastRow)){ echo $lastRow; }?> readonly>
				</div-->

				<div class="inputs">
					<input type="text" name="name" required autofocus placeholder="UserName" pattern="[A-Za-z]{3,}" title="First name must contain atleast 3 letters.">
				</div>

				<div class="inputs">
					<input type="text" name="fine" required autofocus placeholder="fine" pattern="[0-9]{1,}" title="Last name must contain atleast 1 letters.">
				</div>

				<!--div class="inputs">
					<input type="text" name="username" required autofocus placeholder="Username" pattern="[A-Za-z0-9/]{6,}" title="Username must be greater than 5 characters.">
				</div>

				<div class="inputs">
					<input type="password" name="pwd" required autofocus placeholder="Password">
				</div>

				<div class="inputs">
					<div class="addMemberFormList">
						<select name="position" required autofocus>
							<option value="">Select</option>
							<option value="Student">Student</option>
							<option value="Faculty">Faculty</option>
						</select>
					</div>
				</div>

				<div class="inputs">
					<input type="text" name="mobile" required autofocus placeholder="Mobile" pattern="[0-9]{10}">
				</div>

				<div class="inputs">
					<input type="email" name="email" required autofocus placeholder="Email" title="example.example1@gmail.com">
				</div-->

				<!--div class="inputs">
					<label>Upload Photo : </label><input type="file" name="fnm" value="Upload Photo">
				</div-->
				<br><br><br><br>

				<input type="submit" name="addMemberBtn" value="Add Member">
			</form>
			<?php
	$serverName = "localhost";
	$userName = "root";
	$password = "";
	$databaseName = "libsystem";

	//mysql_connect($serverName, $userName, $password) or die(mysql_error());
	//mysql_select_db($databaseName) or die(mysql_error());
	$con = mysqli_connect($serverName, $userName, $password, $databaseName);
	// Check connection
	if(isset($_POST['submit']))
		{
$a=$_POST['name'];
$b=$_POST['fine'];

$query=mysql_query("INSERT into `register`(`name`,`fine`)VALUES('$a','$b','$c')");
if($query)
{
	echo ("<script language='javascript'>
window.alert('success')
    window.location.href='login.php'</script>");
}
else
	{
		echo ("<script language='javascript'/>
 window.alert('failed')</script>");
}
}
	?>
		</div><br><br><br><br><br><br><br><br><br><b><br>
	</body>
</html>