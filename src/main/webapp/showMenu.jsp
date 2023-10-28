<%-- 
    Document   : index
--%>

<%@page import="java.util.List"%>
<%@page import="com.camimigue.model.Menus"%>
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
        <section class="menu-section">
            <%  List<Menus> lstMenu = (List) request.getSession().getAttribute("lstMenu");
                if (lstMenu != null) {
                    for (Menus menu : lstMenu) {

            %>
            <div class="card">
                <img class="card-img-top" src= "<%= menu.getUrlImage() %>" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title"><%= menu.getName() %></h5>
                    <p class="card-text"><%= menu.getDescription() %></p>
                </div>
            </div>
            <%                            }
                        };%>


        </section>
    </body>
</html>
