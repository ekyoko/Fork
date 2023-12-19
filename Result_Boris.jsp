<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Traitement des données POST en JSP</title>
</head>
<body>

<%
    // Récupération de la valeur POST
    String nomUtilisateur = request.getParameter("saisie");

    // Vérification si la valeur est présente
    if (nomUtilisateur != null && !nomUtilisateur.isEmpty()) {
        out.println("<p>Valeur Utilisateur : " + nomUtilisateur + "</p>");
    } else {
        out.println("<p>Aucun nom d'utilisateur reçu.</p>");
    }
%>

</body>
</html>
