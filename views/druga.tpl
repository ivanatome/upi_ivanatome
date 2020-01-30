<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Bottle web project template">
    <meta name="author" content="datamate">
    
    <title>My UPI Project</title>
    <link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/custom.css">
    <script type="text/javascript" src="/static/jquery.js"></script>
	<script type="text/javascript" src="/static/custom.js"></script>
    <script type="text/javascript" src="/static/bootstrap.min.js"></script> 
    <style>

        body {
          font-family: Arial, Helvetica, sans-serif;
          background-color: black;
        }
        
        * {
          box-sizing: border-box;
        }
        
        /* Add padding to containers */
        .container {
          padding: 16px;
          background-color: white;
        }
        
        /* Full-width input fields */
        input[type=text], input[type=password] {
          width: 100%;
          padding: 15px;
          margin: 5px 0 22px 0;
          display: inline-block;
          border: none;
          background: #f1f1f1;
        }
        
        input[type=text]:focus, input[type=password]:focus {
          background-color: #ddd;
          outline: none;
        }
        
        /* Overwrite default styles of hr */
        hr {
          border: 1px solid #f1f1f1;
          margin-bottom: 25px;
        }
        
        /* Set a style for the submit button */
        .registerbtn {
          background-color: #4CAF50;
          color: white;
          padding: 16px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
          opacity: 0.9;
        }
        
        .registerbtn:hover {
          opacity: 1;
        }
        
        /* Add a blue text color to links */
        a {
          color: dodgerblue;
        }
        
        /* Set a grey background color and center the text of the "sign in" section */
        .signin {
          background-color: #f1f1f1;
          text-align: center;
        }
        
        </style>
</head>
<body>
    <form action="/druga" method="POST" >
        <div class="container">
          <h1>Register</h1>
          <p>Please fill in this form to create an account.</p>
          <hr>
          
            <label for="email" id="email"><b>Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" required>
        
      
           <label for="psw" id="password"><b>Password</b></label>
           <input type="password" placeholder="Enter Password" name="psw" required>
      
            <label for="psw-repeat" id="rpassword"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" required>

            <label for="First-name" id="First-name"><b>First Name</b></label>
            <input type="text" placeholder="First-name" name="firstname" >

            <label for="Last-name" id="Last-name"><b>Last Name</b></label>
            <input type="text" placeholder="Last-name" name="lastname" >

            <label for="Country" id="Country"><b>Country</b></label>
            <input type="text" placeholder="Country" name="country" >
            
            <label for="date-of-birth" id="date-of-birth"><b>Date of birth</b></label>
            <input type="text" placeholder="date-of-birth" name="dob" >

            <label for="year-of-birth" id="year-of-birth"><b>Year of birth</b></label>
            <input type="text" placeholder="year-of-birth" name="yob" >

            <label for="Place of residence" id="Place of residence"><b>Place of residence</b></label>
            <input type="text" placeholder="Place of residence" name="por" >

            <label for="Birth place" id="Birth place"><b>Birth place</b></label>
            <input type="text" placeholder="Birth place" name="bp" >

            <label for="Like" id="Like"><b>Like</b></label>
            <input type="text" placeholder="Like" name="l" >

            <label for="Dislike" id="Dislike"><b>Dislike</b></label>
            <input type="text" placeholder="Dislike" name="dl" >

            <label for="Hobi" id="Hobi"><b>Hobi</b></label>
            <input type="text" placeholder="Hobi" name="h" >

            <label for="UserName" id="UserName"><b>UserName</b></label>
            <input type="text" placeholder="UserName" name="username" >

            <label for="Education" id="Education"><b>Education</b></label>
            <input type="text" placeholder="Education" name="e" >

            


            <hr>
          
          
          
          <input type="submit" name="regist" value="register" class="registerbtn">
      
          
        </div>
        
        <div class="container signin">
          <p>Already have an account? <button class="registerbtn" onclick="parent.location='/treca'" >Log in</button>.</p>
          <button class="registerbtn" onClick="parent.location='/'">natrag</button>
        </div>
      </form>

     
     
      
  
 
</body>
</html>