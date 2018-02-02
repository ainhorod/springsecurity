<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Spring 4 Security Example</title>
</head>
<body>
	<h3>Inicio de sesi�n: correcto.</h3>
	<h2>Esta es tu informaci�n de usuario.</h2>
	<br>
	<table>
		<tr>
			<td>Nombre</td>
			<td><c:out value="${user.fullName}" /></td>
		</tr>
		<tr>
			<td>Rol</td>
			<td><c:out value="${user.role}" /></td>
		</tr>
		<tr>
			<td>Pa�s</td>
			<td><c:out value="${user.country}" /></td>
		</tr>
	</table>

	<p>�Deseas acceder a la secci�n de noticias?
	<p>
		Haz click <a href="noticias">aqu�</a>.
	<form action="<%=request.getContextPath()%>/appLogout" method="POST">
		<input type="submit" value="Logout" /> <input type="hidden"
			name="${_csrf.parameterName}" value="${_csrf.token}" />
	</form>


</body>
</html>
