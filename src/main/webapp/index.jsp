<%-- 
    Document   : index
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Restaurant menu</h1>
        <div class="btns-container">
            <h2 class="title-menu">Select a menu</h2>
            <form method="GET" action="SvMenu">
                <button name="button" value="paisa" class="btn" type="submit">Tipicos Paisas</button>
                <button name="button" value="colombiano" class="btn" type="submit">Típicos Colombianos</button>    
            </form>
           
        </div>
    </body>
</html>
