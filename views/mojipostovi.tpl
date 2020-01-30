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

      

      .nesto{
        display: flex;
        justify-content: center;
        align-items: center;
        text-align: center;
      }

      .nesto .zapozadinu{
        flex: 0.5;
        width: auto;
        margin: auto;
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
      .nesto .unesi{
        flex: 1;
        width: 30%;
      }
      .nesto .prikazikomentare{
        flex: 1;
        width: 30%;
      }
      

    </style>
    
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#">My-Posts</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#"> <button class="botun" onclick="parent.location='/mojProfil'"  >novi post</button>
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">  <button class="botun" onclick="parent.location='/naslovnica'"  >naslovnica</button> </a>
          </li>
         
         
        </ul>
      </div>
    </div>
  </nav>
  %for dat in data:
 <div style="background-color: lightcoral;" > 
    <label for=""> <strong>sadrzaj objave:</strong>  {{dat[2]}}</label><br>
    <label for=""><strong> vrijeme objavljivanja: </strong> {{dat[3]}}</label><br>
    <label for=""> <strong>broj lajkova:</strong>  {{dat[4]}}</label><br>
    <label for=""> <strong>broj komentara:</strong>  {{dat[5]}}</label><br>
  </div>
    <div class="nesto">
      <form action="/mojipostovi" method="POST" class="zapozadinu" >
        <a href="prikazkomentara{{dat[0]}}"><input type="button" name="prikazikomentare"  value ="prikazi komentare" class="prikazikomentare" x="0px" y="0px" ></a>
      </form>
      <form action="/kom{{dat[0]}}" method="POST" class="zapozadinu" width="140px" >
        <input type="text" name="textkom" method='POST' class="unesi" placeholder="Unesi komentar">
        <input type="submit" class="unesi" name='ime'>
      </form>

      <!--AZURIRANJE-->

      <form action="/azu{{dat[0]}}" method="POST" class="zapozadinu" width="140px" >
        <input type="text" name="textazuriraj" method='POST' class="unesi" placeholder="Azuriraj">
        <input type="submit" class="unesi" name='az_objava'>
      </form>

      <!--AZURIRANJE-->
     
      <a href="like{{dat[0]}}"><button  name="lajk"  value ="lajk" class="lajk"  >Like</button></a> 


      <a href="delete{{dat[0]}}">
        <button class="remove">
          <svg width="20px" height="20px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
            xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 22 22"
            style="enable-background:new 0 0 22 22;" xml:space="preserve">
            <g>
              <g>
                <path class="st0" d="M16.1,3.6h-1.9V3.3c0-1.3-1-2.3-2.3-2.3h-1.7C8.9,1,7.8,2,7.8,3.3v0.2H5.9c-1.3,0-2.3,1-2.3,2.3v1.3
              c0,0.5,0.4,0.9,0.9,1v10.5c0,1.3,1,2.3,2.3,2.3h8.5c1.3,0,2.3-1,2.3-2.3V8.2c0.5-0.1,0.9-0.5,0.9-1V5.9
              C18.4,4.6,17.4,3.6,16.1,3.6z M9.1,3.3c0-0.6,0.5-1.1,1.1-1.1h1.7c0.6,0,1.1,0.5,1.1,1.1v0.2H9.1V3.3z M16.3,18.7
              c0,0.6-0.5,1.1-1.1,1.1H6.7c-0.6,0-1.1-0.5-1.1-1.1V8.2h10.6L16.3,18.7L16.3,18.7z M17.2,7H4.8V5.9c0-0.6,0.5-1.1,1.1-1.1h10.2
              c0.6,0,1.1,0.5,1.1,1.1V7z" />
              </g>
              <g>
                <g>
                  <path class="st0"
                    d="M11,18c-0.4,0-0.6-0.3-0.6-0.6v-6.8c0-0.4,0.3-0.6,0.6-0.6s0.6,0.3,0.6,0.6v6.8C11.6,17.7,11.4,18,11,18z" />
                </g>
                <g>
                  <path class="st0"
                    d="M8,18c-0.4,0-0.6-0.3-0.6-0.6v-6.8C7.4,10.2,7.7,10,8,10c0.4,0,0.6,0.3,0.6,0.6v6.8C8.7,17.7,8.4,18,8,18z" />
                </g>
                <g>
                  <path class="st0" d="M14,18c-0.4,0-0.6-0.3-0.6-0.6v-6.8c0-0.4,0.3-0.6,0.6-0.6c0.4,0,0.6,0.3,0.6,0.6v6.8
                C14.6,17.7,14.3,18,14,18z" />
                </g>
              </g>
            </g>
          </svg>
        </button>
  
      </a>
    </div>
    
    
   

    

   
     
     
   
    
    <br>
    

    %end
    
    

	
    
  
 

 
  
  
  

</body>
</html>