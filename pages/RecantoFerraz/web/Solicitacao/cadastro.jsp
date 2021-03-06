

<!DOCTYPE html>
<html>
    <head>
        <title>Recanto Ferraz - Calendário de eventos</title>
        <!-- Meta tags -->
        <meta charset='utf-8'>

        <link href="../css/calendario/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/calendario/css/fontawesome.all.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/calendario/css/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/calendario/css/estilo.css" rel="stylesheet" type="text/css"/>

        <script src="../css/calendario/js/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="../css/calendario/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../css/calendario/js/moment.min.js" type="text/javascript"></script>
        <script src="../css/calendario/js/fullcalendar.min.js" type="text/javascript"></script>
        <script src="../css/calendario/js/jquery.mask.min.js" type="text/javascript"></script>
         <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/additional-methods.min.js" type="text/javascript"></script>
        <script src="../js/localization/messages_pt_BR.js" type="text/javascript"></script>
        
        <script type="text/javascript">
            $(document).ready(function () {
                  $("#telefone").mask("(00) 00000-0000");
                $("#formaCadastro").validate({
                    rules: {
                        nome: {
                            required: true,
                        },
                        titulo: {
                            required: true,
                        },
                        email: {
                            required: true,
                        },
                        telefone: {
                            required: true,
                        }
                    }     
                });
            });
        </script>
        
        <script>
    $(document).ready(function () {
            $('#calendar').fullCalendar({
            themeSystem: 'bootstrap4',
                    header: {
                    left: 'prev,next today',
                            center: 'title',
                            right: 'month,agendaWeek,agendaDay,'
                    },
                    defaultDate: Date(),
                    navLinks: true,
                    editable: true,
                    eventLimit: true,
                    selectable: true,
                    selectHelper: true,
                    selectOverlap: false,
                    select: function (start, end) {
                    $('#cadastrar #start').val(moment(start).format('DD/MM/YYYY HH:mm')).mask('00/00/0000');
                    $('#cadastrar #end').val(moment(end).format('DD/MM/YYYY HH:mm')).mask('00/00/0000');
                    $('#cadastrar').modal('show');
                    },
                    events: [
           
               {
                    start: '2019/12/12 01:00',
                            end: '2019/12/13 02:11',
                            overlap: false,
                            rendering: 'background',
                            color: '#ff9f89'
                    },
            
                
        
                 ]
            });
            });
        </script>


    </head>
    <body>
        <div class="container-fluid " id="interface">

            <!--cabeçalho-->
            <header >

                <div class="row">
                    <!--Titulo--> 
                    <!--Titulo--> 
                    <div class="col-sm-12">
                        <img src="../fotos/logo.png" alt="" class="img-fluid d-block mx-auto py-2"/>
                    </div>
                    <!--Menu-->
                    <nav class="navbar navbar-expand-lg col-12 navbar-light" id="menu">
                        <!--                    <div class="container">-->
                        <a class="navbar-brand d-block d-md-none text-white" href="#">Menu</a>
                        <button class="navbar-toggler text-white" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item active">
                                    <a class="nav-link text-white" href="../index.html">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="../sobre.html">Sobre</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="../servicos.html">Serviços</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="../portifolio.html">Portifólio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link text-white" href="../contato.html">Contato</a>
                                </li>

                            </ul>
                        </div>
                        <!--                    </div>-->
                    </nav>
                </div>
            </header>

           
            <div class="container">
                <div id='calendar'></div>
            </div>
            <div class="modal fade" id="cadastrar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" data-backdrop="static" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title text-center">Cadastrar evento</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form name="formaCadastro" id="formaCadastro" method="post" action="inserir.jsp" id="formCalendario">
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Titulo</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="titulo" id="titulo" placeholder="Nome do evento" >
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Nome</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="nome" id="nome" placeholder="Nome" class="form-control"  /> 
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">E-mail</label>
                                    <div class="col-sm-10">
                                        <input type="email" name="email" id="email" placeholder="Email"class="form-control" />
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Telefone</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="telefone" id="telefone" placeholder="(00)0000-0000" class="form-control"  />
                                    </div>
                                </div>



                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Pacote:</label>
                                    <div class="col-sm-10">
                                        <select name="pacote" class="form-control" id="pacote">
                                            <option value="0">Escolha um pacote</option>
                                          



                                        </select>
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Início:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="start" id="start">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label">Término:</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="end" id="end">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-10">
                                        <input type="submit" name="enviar" value="Salvar" class="btn btn-lg btn-dark btn-block text-uppercase" style="background-color: #406028;" />
                                        <input type="hidden" name="idAlterado" class="btn btn-dark btn-lg d-block mx-auto" style="background-color: #406028;"  value="codigo" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!--Rodapé-->
            <footer class="row py-5 ">

                <div class="col-md-4 col-12">
                    <p class="text-center"> Endereço</p>
                    <p class="text-center">Alameda Seis de Janeiro, 470 - Pedro Leme - Roseira</p>
                    <ul class="list-social p-0 m-0">
                        <li class="social-item"><a href="https://www.facebook.com/Ferraz.recanto/?ref=br_rs" target="_blank"><i class="fab fa-facebook-square"></i></a></li>
                        <li class="social-item"><a href="https://www.instagram.com/recanto_ferraz/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                    </ul>

                </div>

                <div class="text-center col-md-4 col-12">
                    <ul class="list-contato">
                        <li><i class="fas fa-envelope"></i> Email</li>
                        <li><i class="fas fa-envelope"></i> contato@recantoferraz.com.br</li>

                    </ul>
                </div>
                <div class="col-md-4 col-12">
                    <ul class="list-contato text-center">
                        <li><i class="fas fa-envelope"></i> Telefone</li>
                        <li><i class="fas fa-phone"></i> (12) 3646-1389</li>
                        <li><i class="fab fa-whatsapp"></i> (12) 99619-6003 </li>
                    </ul>
                </div>
            </footer>
        </div>
    </body>

</html>