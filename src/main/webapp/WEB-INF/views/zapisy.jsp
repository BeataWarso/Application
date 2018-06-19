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




<title>Zapisz</title>

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
				<p>Wróć do strony głównej</p>
			</a>



			<hr>
		</div>
	</div>
</div>

<section id="services">
	<div class="container">
		<div class="col-lg-8 col-lg-offset-2 text-center">
			<h1 class="section-heading">Formularz zgłoszenia</h1>
			<p>Uzupełnij poniższe pola aby zapisać się na szkolenie</p>
			<hr class="primary">
		</div>
	</div>
	<div class="container col-md-6 col-md-offset-3">
		<fieldset class="border p-2">
			<legend>Formularz zgłoszenia</legend>


			<form:form method="post" modelAttribute="reserve">


				<div>Tytuł szkolenia: ${training.title}</div>
				<div>Prelegent: ${training.presenter}</div>
				<div>Data ${training.date}</div>
				<div>Miejsce ${training.place}</div>
				<div>Cena ${training.price}</div>

				<form:hidden path="trainingTitle" value="${training.title}" />

				<br>
				<div class="form-group">
					<label for="name">Imię</label>
					<form:errors path="name" cssStyle="color: red;" />
					<form:input path="name" id="name" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label for="surname">Nazwisko</label>
					<form:errors path="surname" cssStyle="color: red;" />
					<form:input path="surname" id="surname" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label for="nameOfFirm">Nazwa firmy</label>
					<form:errors path="nameOfFirm" cssStyle="color: red;" />
					<form:input path="nameOfFirm" id="nameOfFirm"
						cssClass="form-control" />
				</div>


				<div class="form-group">
					<label for="address">Adres:</label>
					<form:errors path="address" cssStyle="color: red;" />
					<form:input path="address" id="address" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label for="nip">NIP:</label>
					<form:errors path="nip" cssStyle="color: red;" />
					<form:input path="nip" id="nip" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label for="howMany">Liczba osób</label>
					<form:errors path="howMany" cssStyle="color: red;" />
					<form:input path="howMany" id="howMany" cssClass="form-control" />
				</div>

				<div class="form-group">
					<label for="participants">Imiona i nazwiska uczestników</label>
					<form:errors path="participants" cssStyle="color: red;" />
					<form:input path="participants" id="participants"
						cssClass="form-control" />
				</div>







				<br>
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<input type="submit" value="Zapisz się" class="btn btn-success" />
					<a href="<c:url value="/" />" class="btn btn-primary">Anuluj</a>
				</div>




			</form:form>

		</fieldset>



	</div>
</section>
<%@ include file="/WEB-INF/views/templates/footer.jsp"%>