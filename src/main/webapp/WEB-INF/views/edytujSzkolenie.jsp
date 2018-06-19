<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="pl">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">




<title>Panel Administratora</title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />"
	rel="stylesheet">

<link
	href=<c:url value="/resources/vendor/font-awesome/css/font-awesome.min.css"/>
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link
	href="<c:url value="/resources/vendor/magnific-popup/magnific-popup.css" />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/creative.min.css"/>"
	rel="stylesheet">

</head>




<div class="container">
	<div class="row">
		<div class="col-lg-12 text-center">
			<hr>
			<a href="<c:url value="/"/>">
				<p>Wróć do strony głównej
			</a>
			</p>

			<hr>
			<a href="<c:url value="/"/>">
				<p>Zapisz się na szkolenie
			</a>
			</p>
			<hr>
		</div>
	</div>
</div>

<section id="services">
	<div class="container">
		<div class="col-lg-8 col-lg-offset-2 text-center">
			<h1 class="section-heading">Edytuj szkolenie</h1>
			<p>Wprowadź zmiany w poniższych polach</p>
			<hr class="primary">
		</div>
	</div>
	<div class="container col-md-6 col-md-offset-3">
		<fieldset class="border p-2">
			<legend>Edytuj szkolenie</legend>


			<form:form method="post" modelAttribute="training">

				<div class="form-group">
					<label for="title">Tytuł szkolenia:</label>
					<form:errors path="title" cssStyle="color: red;" />
					<form:input path="title" id="title" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label placeholder="np: prof. Kamil Kowalski" for="presenter">Prelegent:</label>
					<form:errors path="presenter" cssStyle="color: red;" />
					<form:input path="presenter" id="presenter" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label placeholder="np: Z wykształcenia ekonomista..etc."
						for="presenterDetails">Notka prelegenta:</label>
					<form:errors path="presenterDetails" cssStyle="color: red;" />
					<form:textarea path="presenterDetails" id="presenterDetails"
						cssClass="form-control" />
				</div>

				<div class="form-group">
					<label placeholder="2019-08-13" for="date">Termin:</label>
					<form:errors path="date" cssStyle="color: red;" />
					<form:input path="date" id="date" cssClass="form-control" />
				</div>




				<div class="form-group">
					<label placeholder="np: Warszawa" for="place">Miejsce:</label>
					<form:errors path="place" cssStyle="color: red;" />
					<form:input path="place" id="place" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label placeholder="np: 1300" for="price">Cena:</label>
					<form:errors path="price" cssStyle="color: red;" />
					<form:input path="price" id="price" cssClass="form-control" />
				</div>

				<div class="form-group">

					<label
						placeholder="np: to szkolenie dotyczy aspektów prawnych..etc."
						for="details">Opis szkolenia</label>
					<form:errors path="details" cssStyle="color: red;" />
					<form:textarea path="details" id="details" cssClass="form-control" />
				</div>


				<br>
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<input type="submit" value="submit" class="btn btn-success" /> <a
						href="<c:url value="/adminPanel/szkolenia" />"
						class="btn btn-primary">Cancel</a>
				</div>




			</form:form>

		</fieldset>



	</div>
</section>
<%@ include file="/WEB-INF/views/templates/footer.jsp"%>