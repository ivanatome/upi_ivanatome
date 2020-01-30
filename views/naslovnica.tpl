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
      .modal {
      display: none; /* Hidden by default */
      position: fixed; /* Stay in place */
      z-index: 8888; /* Sit on top */
      left: 0;
      top: 0;
      width: 100%; /* Full width */
      height: 100%; /* Full height */
      overflow: auto; /* Enable scroll if needed */
      background-color: rgb(0,0,0); /* Fallback color */
      background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
      }
      /* Modal Content/Box */
      .modal-content {
      background-color: #fefefe;
      margin: 10vh auto; /* 15% from the top and centered */
      padding: 20px;
      border: 1px solid #888;
      width: 60%; /* Could be more or less, depending on screen size */
      }
      @media (min-width: 1366px) {
      .modal-content {
      background-color: #fefefe;
      margin: 10vh auto; /* 15% from the top and centered */
      padding: 20px;
      border: 1px solid #888;
      width: 30%; /* Could be more or less, depending on screen size */
      }
      }
      h2, p {
      margin: 0 0 20px;
      font-weight: 400;
      color: #666;
      }
      span{
      color: #666;
      display:block;
      padding:0 0 5px;
      }
      form {
      padding: 25px;
      margin: 25px;
      box-shadow: 0 2px 5px #f5f5f5; 
      background: #eee; 
      }
      input, textarea {
      width: calc(100% - 18px);
      padding: 8px;
      margin-bottom: 20px;
      border: 1px solid #1c87c9;
      outline: none;
      }
      .contact-form button {
      width: 100%;
      padding: 10px;
      border: none;
      background: #1c87c9; 
      font-size: 16px;
      font-weight: 400;
      color: #fff;
      }
      button:hover {
      background: #2371a0;
      }    
      /* The Close Button */
      .close {
      color: #aaa;
      float: right;
      font-size: 28px;
      font-weight: bold;
      }
      .close:hover,
      .close:focus {
      color: black;
      text-decoration: none;
      cursor: pointer;
      }
      button.button {
      background:none;
      border-top:none;
      outline: none;
      border-right:none;
      border-left:none;
      border-bottom:#02274a 1px solid;
      padding:0 0 3px 0;
      font-size:16px;
      cursor:pointer;
      }
      button.button:hover {
      border-bottom:#a99567 1px solid;
      color:#a99567;
      }
      
      .zapozadinu{
        background-color: inherit;
        box-shadow: none;
        margin: 0;
        padding: 0;

      }
      .remove{
        width: 150px;
  height: 50px;
  position: absolute;
  top: 0;
  right: 0;
  width: 50px;
  height: 50px;
  float: left;
  background: none;
  border: 0px;
  box-shadow: none;
  outline: none;
  position: relative;
  display: flex;
  justify-content: center;

  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
      }

      .zapozadinu{
        width: 140px;
      }

      .nesto{
        display: flex;
        justify-content: stretch;
      }

      .nesto .zapozadinu{
        flex: 0.5;
      }

      .nesto .comInput{
        flex: 1;
      }

      .nesto .lajk{
        flex: 1;
      }

      .nesto .remove{
        flex: 1;
      }
    </style>
    
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#">Naslovnica</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="dropdown">
        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><STRong>POREDAJ</STRong> 
        <span class="caret"></span></button>
        <ul class="dropdown-menu">
         
          <li><a href="NaslovnicaPoredakKom">broj komentara</a></li>
          <li><a href="NaslovnicaPoredakLajk">broj lajkova</a></li>
        </ul>
      </div>
      
      <!--filtriranje-->
      <form action="/filter" method="POST" width="140px" style="display: inline-block;">
        <input type="text" name="inputfilter" method='POST' class="unesi" placeholder="filtriraj...">
        <input type="submit" class="unesi" name='unosfilter' >
      </form>



      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#"> <button class="botun" onclick="parent.location='/'"  >Home</button>
              <span class="sr-only">(current)</span>
            </a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="#">  <button class="botun" onclick="parent.location='/mojProfil'"  >My-profile</button> </a>
          </li>
         
         
          <li class="nav-item">
            <a class="nav-link" href="#">  <button class="botun" onclick="parent.location='/'"  >Log-out</button> </a>
          </li>
         
         
         
        </ul>
      </div>
    </div>
  </nav>

  %for row in rows:
  <div style="background-color: skyblue;">
  <label for=""><strong>Korisnik: </strong>{{row[0]}}</label>
  <br>
  <label for=""><strong>Objava: </strong>{{row[1]}}</label>
  <br>
  <label for=""><strong>Broj likeova: </strong>{{row[3]}}</label>
  <br>
  <label for=""><strong>Broj komentara: </strong>{{row[4]}}</label>
  <br>
</div>
  <a href="prikazkomentara{{row[2]}}"><input type="button" name="prikazikomentare"  value ="prikazi komentare" class="prikazikomentare" x="0px" y="0px" ></a>
  <a href="likee{{row[2]}}"><button  name="lajk" style="background-color: skyblue;" value ="lajk" class="lajk"  > <strong>Like</strong> </button></a> 
  <form action="/komm{{row[2]}}" method="POST" class="zapozadinu" width="140px" >
    <input type="text" name="textkomm" method='POST' placeholder="Unesi komentar"><a href="komm{{row[2]}}"><input type="submit" style="background-color: springgreen;" name='ime'></a>
    
  </form>
  



  %end

 

	
    
  
 

 
  
  
  

</body>
</html>