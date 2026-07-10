<%-- 
    Document   : id_number_outcome
    Created on : 12 May 2026, 10:25:06 PM
    Author     : TSHOVELO MOLTAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ID Verification Outcome Page</title>
    </head>
    <body>
        <h1>ID Verification Outcome</h1>
        <p>
            ID Number     : <%= request.getAttribute("id_Number") %> , This Your ID Is Valid.<br> 
            Gender        : <%= request.getAttribute("gender") %><br> 
            South African : <%= request.getAttribute("resident")  %><br> 
            Date of Birth : <%= request.getAttribute("dob")  %>
        </p>
    </body>
</html>
