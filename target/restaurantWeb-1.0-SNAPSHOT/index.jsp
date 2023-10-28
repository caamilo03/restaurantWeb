<%-- 
    Document   : index
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="Styles/style.css" />
    </head>
    <body>
        <div class="header">
            <h1>Restaurant menu</h1>
            <div class="btns-container">
                <h2 class="title-menu">Select a menu</h2>
                <form method="GET" action="SvMenu">
                    <button name="button" value="paisa" class="btn" type="submit">Típicos Paisas</button>
                    <button name="button" value="colombiano" class="btn" type="submit">Típicos Colombianos</button>    
                </form>

            </div>
        </div>
        <section class="menu-section hidden">
            <div class="card">
                <img class="card-img-top" src="https://www.mycolombianrecipes.com/wp-content/uploads/2013/11/Sancocho-trifasico.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card">
                <img class="card-img-top" src="https://www.mycolombianrecipes.com/wp-content/uploads/2013/11/Sancocho-trifasico.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card">
                <img class="card-img-top" src="https://www.mycolombianrecipes.com/wp-content/uploads/2013/11/Sancocho-trifasico.jpg" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>


        </section>
    </body>
</html>
