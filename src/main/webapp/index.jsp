<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rerportes Java</title>
         <link rel='stylesheet' href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>
        <script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
        <script type="text/javascript" src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/pdfjs/build/pdf.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/pdfobject.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/lib/js/test.js"></script>
      <style>
            /*
            PDFObject appends the classname "pdfobject-container" to the target element.
            This enables you to style the element differently depending on whether the embed was successful.
            In this example, a successful embed will result in a large box.
            A failed embed will not have dimensions specified, so you don't see an oddly large empty box.
            */
            .pdfobject-container {
                    width: 100%;
                    height: 600px;
                    margin: 2em 0;
            }
            .pdfobject { border: solid 1px #666; }
        </style>
    </head>
    <body>  
        <div class="jumbotron">
            <div class="container">
                <center>
                    <h1>Reportes de todas las visitas de unidades organizativas</h1>
                </center>
                <div class="row">
                    <div class="col-md-6">
                        <div class="span3 well">
                            <center>
                                <a href="#" id="testBton" data-ctxt="${pageContext.request.contextPath}" data-repo="RepoVisi" data-prms="otro=otro&etc">
                                    <img src="http://www.zamzar.com/images/filetypes/pdf.png"
                                         name="pdf" width="140" height="140" class="img-circle"></a>
                                <h3>Mostrar el reporte</h3>                
                            </center>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="span3 well">
                            <center>
                                <a href="#" id="testBtonParams" data-ctxt="${pageContext.request.contextPath}" data-repo="RepoVisiPara" data-prms="filtro=uno">
                                    <img src="http://www.zamzar.com/images/filetypes/pdf.png"
                                         name="pdf" width="140" height="140" class="img-circle"></a>
                                <h3>Mostrar el reporte con parametros</h3>                
                            </center>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
                                    
        <div class="jumbotron">
            <div class="container">
                <center>
                    <h1>Reportes de visitas por persona</h1>
                </center>
                <div class="row">
                    <div class="col-md-6">
                        <div class="span3 well">
                            <center>
                                <a href="#" id="testBton2" data-ctxt="${pageContext.request.contextPath}" data-repo="RepoVisiPers" data-prms="otro=otro&etc">
                                    <img src="http://www.zamzar.com/images/filetypes/pdf.png"
                                         name="pdf" width="140" height="140" class="img-circle"></a>
                                <h3>Mostrar el reporte</h3>                
                            </center>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="span3 well">
                            <center>
                                <a href="#" id="testBton2Params" data-ctxt="${pageContext.request.contextPath}" data-repo="RepoVisiPersPara" data-prms="filtro=Jose">
                                    <img src="http://www.zamzar.com/images/filetypes/pdf.png"
                                         name="pdf" width="140" height="140" class="img-circle"></a>
                                <h3>Mostrar el reporte con parametros</h3>                
                            </center>
                        </div>
                    </div>
                </div>  
            </div>
        </div>                            
                                    
        <div class="jumbotron">
            <div class="container">
                <center>
                    <h1>Reportes de visitas por rango de fechas</h1>
                </center>
                <div class="row">
                    <div class="col-md-6">
                        <div class="span3 well">
                            <center>
                                <a href="#" id="testBton3" data-ctxt="${pageContext.request.contextPath}" data-repo="RepoVisiFech" data-prms="otro=otro&etc">
                                    <img src="http://www.zamzar.com/images/filetypes/pdf.png"
                                         name="pdf" width="140" height="140" class="img-circle"></a>
                                <h3>Mostrar el reporte</h3>                
                            </center>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="span3 well">
                            <center>
                                <a href="#" id="testBton3Params" data-ctxt="${pageContext.request.contextPath}" data-repo="RepoVisiFechPara" data-prms="filtro=1998-08-09&filtro2=2009-01-12" >
                                    <img src="http://www.zamzar.com/images/filetypes/pdf.png"
                                         name="pdf" width="140" height="140" class="img-circle"></a>
                                <h3>Mostrar el reporte con parametros</h3>                
                            </center>
                        </div>
                    </div>
                </div>  
            </div>
        </div>                                                        
        <!-- Modal -->
        <div class="modal fade" id="ModaRepo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title" id="myModalLabel">Aca se muestra el reporte</h4>
                    </div>
                    <div class="modal-body">
                        <div id="pdf"></div>
                    </div>
                    <div class="modal-footer">
                        <center>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Salir</button>
                        </center>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
