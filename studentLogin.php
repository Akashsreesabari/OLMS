<?php 

?>

<html>
	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="../css/inputs.css">
		<link rel="stylesheet" type="text/css" href="../css/form.css">
		<link rel="stylesheet" type="text/css" href="../css/title.css">
	</head>
	<body>
		<div style="border: none;
	padding: 5px 14px;
	text-align: center;
	font-size: 25px;
	color: white;
	background-color: #2251dd;">Student Login</div>
		<div class="loginContainer">
			<form class="loginForm">
				<div class="formInput">
					<input type="text" name="username" required autofocus placeholder="Username" >
				</div>
				<div class="formInput">
					<input type="password" name="pwd" required autofocus placeholder="password" >
				</div>
					<input type="submit" name="studentLoginBtn" value="Log In" class="btnLogin">
					<br >
					<a class="forgetPwd" href="home.php?activity=forgetpwd&r=user" style="color: black;">Forget Password?</a>
			</form>

			
	    </div><br><br><br><br><br><br><br><br>
	</body>
</html>
