<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<%@ page import="votre.package.Film" %>
<%@ page import="votre.package.FilmDAO" %>

<%
    // Récupérer la liste des films depuis la base de données ou une source de données
    List<Film> films = FilmDAO.getFilms(); // Assurez-vous d'adapter cela à votre modèle de données

    // Filtrer les films dont l'année est antérieure à 2000
    List<Film> filmsAvant2000 = new ArrayList<>();
    for (Film film : films) {
        if (film.getAnnee() < 2000) {
            filmsAvant2000.add(film);
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Films dont l'année est antérieure à 2000</title>
</head>
<body>
    <h1>Films dont l'année est antérieure à 2000</h1>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Titre</th>
            <th>Année</th>
        </tr>
        <% for (Film film : filmsAvant2000) { %>
            <tr>
                <td><%= film.getId() %></td>
                <td><%= film.getTitre() %></td>
                <td><%= film.getAnnee() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
