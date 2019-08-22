<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>
		Liste des parametres renseignés:
		<c:forEach var="parameters" items="${ paramValues }">
			<ul>
				<li><c:out value="${ parameters.key }" /> :</li>
				<c:forEach var="value" items="${ parameters.value }">
	
					<c:out value="${ value }" />
				</c:forEach>
			</ul>
		</c:forEach>
	</p>

	<p>
		Nom:
		<c:out value="${param.nom }" />
	</p>

	<p>
		Prenom:
		<c:out value="${param.prenom }" />
	</p>

	<p>
		<c:choose>
			<c:when test="${ !empty paramValues.pays || !empty param.autre }">
				Liste des pays visités:
				<ul>
					<c:forEach items="${paramValues.pays}" var="location">
						<li><c:out value="${location}" /></li>
					</c:forEach>
					<c:forTokens items="${param.autre }" var="location" delims=",">
						<li><c:out value="${location}" /></li>
					</c:forTokens>

				</ul>
			</c:when>

			<c:otherwise>
				Vous n'avez visité aucun pays
			</c:otherwise>
		</c:choose>
	</p>





</body>
</html>