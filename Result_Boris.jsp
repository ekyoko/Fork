<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Traitement des données POST en JSP</title>
</head>
<body>

<%
    // Récupération de la valeur POST
    String SaisieUser = request.getParameter("saisie");
    //Conversion en int
    int annee;
    annee = Integer.parseInt(SaisieUser);
    out.println("<p>Valeur Utilisateur : " + annee + "</p>");

%>

</body>
</html>
