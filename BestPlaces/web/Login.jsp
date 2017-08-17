<%-- 
    Document   : Login
    Created on : 16/08/2017, 21:24:22
    Author     : Jozimar & Rômulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6-dist\css\main.css">
        <link rel="stylesheet" href="bootstrap-4.0.0-alpha.6-dist\css\bootstrap.min.css">
        <title>Login</title>
    </head>
    <body>
        
          <div class="container" id="divLog">

             <div class="row" id="divImg">
                 <div class=" col-md-12 text-center">
                     <img src="Imagens\logo.png" class="img-responsive" alt="Logo">
                 </div>
            </div>
              
            <div class="form-group">
                <input type="email" class="form-control" placeholder="Email" aria-describedby="basic-addon1">
            </div>
              
            <div class="form-group"> 
                <input type="password" class="form-control" placeholder="Senha" aria-describedby="basic-addon1">
            </div>
            
            <div class="btn-group-justified" id="divBtLogin">
                <button type="button" name="button" class="btn btn-danger btn-xs btn-block">Login</button>
            </div>

          </div>
    
          <script src="bootstrap-4.0.0-alpha.6-dist\js\jquery-3.2.1.min.js"></script>
          <script src="bootstrap-4.0.0-alpha.6-dist\js\bootstrap.min.js"></script>
    
    </body>
</html>