<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <title>Recanto Ferraz |Entrar</title>
        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- CSS -->
        <link href="css/estilo.css" rel="stylesheet"/>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" crossorigin="anonymous">
        <!-- JavaScript -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container-fluid " id="interface">
          
                
             
                <!--Titulo--> 
                <div class="col-sm-12">
                    <img src="fotos/logo.png" alt="" class="img-fluid d-block mx-auto py-2"/>
                </div>
               
              
           
    <div class="container">
        
    <div class="row">
        
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
          
        <div class="card card-signin my-5">
            
          <div class="card-body">
              
            <h5 class="card-title text-center corVerde py-2">Entrar</h5>
             <%
        String erro = request.getParameter("erro");
        if (erro != null){
            if (erro.equals("USUARIO_NAO_EXISTE")){
                %>
               Acesso Restrito
                <%
            }
        }   
        %>
            <form name="formLogin" method="post" action="logar.jsp">
            <div class="form-group ">
            <label>Login</label>
            <input type="text" name="login" class="form-control "/>
            </div>
            <div class="form-group" >
            <label>Senha</label>
            <input type="password" name="senha" class="form-control " />
            </div>
                
                <div class="text-center">
                 <a href="index.html" class="btn btn-secondary btn-lg text-uppercase" role="button" aria-pressed="true">voltar</a>
                 <input type="submit" name="entrar" value="Entrar" class="btn btn-lg btn-dark  text-uppercase" style="background-color: #406028;" />
                </div>
                
        </form>
            
          </div>
            
        </div>
          
      </div>
        
    </div>
        
  </div>
        </div>
       
        
   
    </body>
</html>
