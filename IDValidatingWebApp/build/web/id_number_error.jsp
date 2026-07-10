<%-- 
    Document   : id_number_error
    Created on : 12 May 2026, 10:19:50 PM
    Author     : TSHOVELO MOLTAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID Number Error Page</title>
    </head>
    <body>
        <h1>ID Number Error</h1>
        
        <p>
            The ID Number : <% request.getAttribute("id_Number");%> is not valid... <br> 
            Please enter the right ID Number. <a href="add_id.html">Try again</a>
        </p>
        
    </body>
</html>
