<%-- 
    Document   : Ejercicio1
    Created on : 4/08/2018, 07:15:33 PM
    Author     : Usuario
--%>

<%
    //capturar información del formulario
    String sn1= request.getParameter("n1");
    String sn2= request.getParameter("n2");
    String sn3= request.getParameter("n3");
    
    int mayor=0;
    int n1=0;
    int n2=0;
    int n3=0;
    
    try{
    n1=Integer.parseInt(sn1);
    n2=Integer.parseInt(sn2);
    n3=Integer.parseInt(sn3);
    
    if(n1>=n2 && n1>=n3) mayor=n1;
    if(n2>=n1 && n2>=n3) mayor=n2;
    if(n3>=n2 && n3>=n1) mayor=n3;
    out.print("el numero mayor es "+mayor);
    }catch( Exception e){
        
    };
    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Buscar Numero Mayor</h1>
        
        <form method="POST" action="">
            <p>Numero 1:<input type="text" name="n1"></p>
            <p>Numero 2:<input type="text" name="n2"></p>
            <p>Numero 3:<input type="text" name="n3"></p>
            <p><input type="submit" name="" value="Buscar Mayor"></p>
        </form>
        
        <a href="index.html">Volver</a>
    </body>
</html>
