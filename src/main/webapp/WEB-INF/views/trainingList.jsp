<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista szkoleń</title>
</head>
<body>
	<table>
		<thead>
			<tr>

				<th>Tytuł szkolenia</th>
				<th>Prelegent</th>
				<th>Data</th>
				<th>Miejsce</th>
				<th>Cena</th>
				<th>Program</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${trainings}" var="training">

				<tr>
					<td>${training.title}</td>
					<td>${training.presenter}</td>
					<td>${training.date}</td>
					<td>${training.place}</td>
					<td>${training.price}</td>
					<td>${training.details}</td>

					<td><a
						href="<c:url value="/viewTrainings/${training.id}/zapisy" />"
						class="btn btn-success btn-xs">Zapisz się na szkolenie</a></td>

				</tr>



			</c:forEach>

		</tbody>




	</table>


</body>
</html>