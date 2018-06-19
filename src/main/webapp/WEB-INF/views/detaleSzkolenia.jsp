<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pl">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">




<title>Szkolenia dla branży ubezpieczeniowej</title>

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
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">Szkolenie</h2>
				<p>Program i opis</p>
				<hr class="primary">
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-5">

				<img src="#" style="width: 100%; height: 600px;" />
			</div>
			<div class="col-md-5">

				<h3>Tytuł szkolenia:${training.title}</h3>
				<p>Opis:${training.details}</p>
				<p>Prowadzący:${training.presenterDetails}</p>


				<a
					href="<c:url value="/userPanel/detaleSzkolenia/${training.id}/zapisz" />"
					class="btn btn-success btn-xs">Zapisz się na szkolenie</a>
			</div>



		</div>

	</div>


</section>
<%@ include file="/WEB-INF/views/templates/footer.jsp"%>