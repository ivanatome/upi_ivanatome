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
        .botun{
          background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
        }
        
        
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
.botun{
    background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
.navbar-brand{
  color: black;
}

      </style>
   
    
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
          <a class="navbar-brand" href="#"><strong>My-Profile</strong></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active">
                <a class="nav-link" href="#"> <button class="botun" onclick="parent.location='/naslovnica'"  >Naslovnica</button>
                  <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">  <button class="botun" onclick="parent.location='mojipostovi'"  >My-Posts</button> </a>
            
             
            </ul>
          </div>
        </div>
      </nav>
      <div class="container">
      
      <label for=""> <strong>IME:</strong>  {{data[0]}}</label><br>
      <label for=""><strong> PREZIME: </strong> {{data[1]}}</label><br>
      <label for=""> <strong>E-MAIL:</strong>  {{data[2]}}</label><br>
      <label for=""> <strong>USERNAME:</strong>  {{data[3]}}</label><br>
      <label for=""> <strong>DATUM ROĐENJA:</strong>  {{data[4]}}</label><br>
      <label for=""> <strong>GODINA ROĐENJA: </strong> {{data[5]}}</label><br>
      <label for="">  <strong>STO VOLI: </strong> {{data[6]}}</label><br>

      <label for=""><strong> STO NE VOLI:</strong>  {{data[7]}}</label><br>

      <label for=""> <strong>HOBI: </strong> {{data[8]}}</label><br>

      <label for="">  <strong>EDUKACIJA: </strong> {{data[9]}}</label><br>

      <label for=""><strong>MJESTO STANOVANJA: </strong>  {{data[10]}}</label><br>
      <label for=""><strong>MJESTO ROĐENJA: </strong>  {{data[11]}}</label><br>
    </div>




      
      <div class="container">
        <form action="/mojProfil" method="POST">
          
          <div class="row">
            <div class="col-25">
              <label for="subject">Your post</label>
            </div>
            <div class="col-75">
              <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
            </div>
          </div>
          <div class="row">
            <input type="submit" name="submit" value="Submit">
            
          </div>
        </form>
        
      </div>

      


    

	
    
  
 

 
  
  
  

</body>
</html>