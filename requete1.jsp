<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<%
    // Récupérer la liste des films depuis la base de données ou une source de données
    List<Film> film = FilmDAO.getFilm(); // Assurez-vous d'adapter cela à votre modèle de données

    // Filtrer les films dont l'année est supérieure à 2000
    List<Film> filmsFiltres = new ArrayList<>();
    for (Film films : film) {
        if (films.getAnnee() > 2000) {
            filmsFiltres.add(film);
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Films dont l'année est supérieure à 2000</title>
</head>
<body>
    <h1>Films dont l'année est supérieure à 2000</h1>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Titre</th>
            <th>Année</th>
        </tr>
        <% for (Film film : filmsFiltres) { %>
            <tr>
                <td><%= film.getId() %></td>
                <td><%= film.getTitre() %></td>
                <td><%= film.getAnnee() %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>
