<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Bottle web project template">
    <meta name="author" content="datamate">
    <link rel="icon" type='image/x-icon' 
             
  
    <!-- <link rel="stylesheet" type="text/css" href="/static/bootstrap.min.css"> -->
    <link rel="stylesheet" type="text/css" href="/static/custom.css">
    <script type="text/javascript" src="/static/jquery.js"></script>
	<script type="text/javascript" src="/static/custom.js"></script>
    <!-- <script type="text/javascript" src="/static/bootstrap.min.js"></script>  -->
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
    <style>
        body {font-family: Arial, Helvetica, sans-serif; }
        form {border: 3px solid #f1f1f1;}
        
        input[type=text], input[type=password] {
          width: 100%;
          padding: 12px 20px;
          margin: 8px 0;
          display: inline-block;
          border: 1px solid #ccc;
          box-sizing: border-box;
        }
        
        button {
          background-color: #4CAF50;
          color: white;
          padding: 14px 20px;
          margin: 8px 0;
          border: none;
          cursor: pointer;
          width: 100%;
        }
        
        button:hover {
          opacity: 0.8;
        }
        
       
        
        .imgcontainer {
          text-align: center;
          margin: 24px 0 12px 0;
        }
        
        img.avatar {
          width: 40%;
          border-radius: 20%;
        }
        
        .container {
          padding: 16px;
        }
        
        span.psw {
          float: right;
          padding-top: 16px;
        }
        
        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
          span.psw {
             display: block;
             float: none;
          }
          .cancelbtn {
             width: 100%;
          }
        }
        </style>
</head>
<body>
    <h2>Login Form</h2>

<form action="/treca" method="POST">
  <div class="imgcontainer">
    <img src="/static/dajga.jpg" class="Avatar" width="100" height="80"/>
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
        
    <input type="submit" name="login" value="login" class="loginbtn">
    <button onClick="parent.location='/'">natrag</button>
   
  </div>

 
</form>
        
</body>
</html>