<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registration_page</title>
 <style media="screen">
    @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');

*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	list-style: none;
	font-family: 'Montserrat', sans-serif;
}

body{
  background: linear-gradient(
     105deg,
     #88beee ,
     #0a2e73
 );
}

.wrapper{
	min-height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
}

.registration_form{
	background: white;
	padding: 25px;
	border-radius: 5px;
	width: 400px;
}

.registration_form .title{
	text-align: center;
	font-size: 25px;
	text-transform: uppercase;
	color: white;
  background:rgb(13, 98, 215);
	letter-spacing: 2px;
	font-weight: 700;
  margin-top: -25px;
  margin-left:-25px;
  margin-right:-25px;
}

.form_wrap{
	margin-top: 35px;
}

.form_wrap .input_wrap{
	margin-bottom: 15px;
}

.form_wrap .input_wrap:last-child{
	margin-bottom: 0;
}

.form_wrap .input_wrap label{
	display: block;
	margin-bottom: 3px;
	color: #1a1a1f;
}

.form_wrap .input_grp{
	display: flex;
	justify-content: space-between;
}

.form_wrap .input_grp  input[type="text"]{
	width: 165px;
}

.form_wrap  input[type="text"]{
	width: 100%;
	border-radius: 3px;
	border: 1.3px solid #9597a6;
	padding: 10px;
	outline: none;
}
.form_wrap  input[type="email"]{
	width: 100%;
	border-radius: 3px;
	border: 1.3px solid #9597a6;
	padding: 10px;
	outline: none;
}
.form_wrap  input[type="tel"]{
	width: 100%;
	border-radius: 3px;
	border: 1.3px solid #9597a6;
	padding: 10px;
	outline: none;
}
.form_wrap  input[type="number"]{
	width: 100%;
	border-radius: 3px;
	border: 1.3px solid #9597a6;
	padding: 10px;
	outline: none;
}

.form_wrap  input[type="text"]:focus{
	border-color: #063abd;
}

.form_wrap  input[type="number"]:focus{
	border-color: #063abd;
}
.form_wrap  input[type="email"]:focus{
	border-color: #063abd;
}
.form_wrap  input[type="tel"]:focus{
	border-color: #063abd;
}
.form_wrap ul{
 border:1px solid rgb(115, 185, 235);
  width:70%;
  background: rgb(206, 238, 242);
  margin-left: 15%;
	padding: 8px 10px;
	border-radius: 20px;
	display: flex;
	justify-content: center;
}

.form_wrap ul li:first-child{
	margin-right: 15px;
}

.form_wrap ul .radio_wrap{
	position: relative;
	margin-bottom: 0;
}

.form_wrap ul .radio_wrap .input_radio{
	position: absolute;
	top: 0;
	right: 0;
	opacity: 0;
}

.form_wrap ul .radio_wrap span{
	display: inline-block;
	font-size: 17px;
	padding: 3px 15px;
	border-radius: 15px;
	color: #101749;
}

.form_wrap .input_radio:checked ~ span{
	background: #105ce2;
  color:white;
}

.form_wrap .submit_btn{
	width: 100%;
	background: #0d6ad7;
	padding: 10px;
	border: 0;
  color:white;
  font-size:17px;
	border-radius: 3px;
	text-transform: uppercase;
	letter-spacing: 2px;
	cursor: pointer;
}

.form_wrap .submit_btn:hover{
	background: #051c94;
}
  </style>
  <script type = "text/javascript">  
function validateForm() {
  var x = document.forms["form1"]["name"].value;
  if (x == "" || x == null) {
    alert("Name must be filled out");
    return false;
  }
}
</script>
</head>
<body>
 <div class="wrapper">
  	<div class="registration_form">
  		<div class="title">
  			Registration Form
  		</div>

  		<form name="form1" action="new_reg"  onsubmit="return validateForm()" method="post" >
  			<div class="form_wrap">
  				<div class="input_wrap">
  					<div class="input_wrap">
  						<label for="name">Name</label>
  						<input type="text" id="name" name="name" required>
  					</div>
  					
  				</div>
  				<div class="input_wrap">
  					<label for="email">Email Address</label>
  					<input type="email" id="email" name="email" pattern=".+@gmail\yahoo\.com" size="30" required>
  				</div>

  				<div class="input_wrap">
  					<label for="address">Address</label>
  					<input type="text" id="address">
  				</div>
  				
  				<div class="input_wrap">
  					<label for="mobile_no">Contact No.</label>
  					<input type="tel" id="mobile_no">
  				</div>
  				
  				<div class="input_wrap">
  					<label for="deposit">Deposit Amount</label>
  					<span class="deposit">
  					<input type="number" min="5000" placeholder="&#8377;" id="deposit" required>
  					</span>
  					
  				</div>
  				
  			
          <div class="input_wrap">
  					<label>Gender</label>
  					<ul>
  						<li>
  							<label class="radio_wrap">
  								<input type="radio" name="gender" value="male" class="input_radio" checked>
  								<span>Male</span>
  							</label>
  						</li>
  						<li>
  							<label class="radio_wrap">
  								<input type="radio" name="gender" value="female" class="input_radio">
  								<span>Female</span>
  							</label>
  						</li>
  					</ul>
  				</div>



  				<div class="input_wrap">
  					<input type="submit" value="Register Now" class="submit_btn">
  				</div>



  			</div>





  		</form>
  	</div>
  </div>

</body>
</html>