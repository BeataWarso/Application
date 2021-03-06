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

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">

			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value="/adminPanel/szkolenia" /> ">Lista szkoleń</a></li>

					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value="/adminPanel/uzytkownicy" /> ">Lista
							uzytkowników</a></li>

					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value="/adminPanel/reservation" /> ">Lista
							rezerwacji</a></li>


				</ul>
			</div>
		</div>
	</nav>


	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h1 class="text-uppercase">
						<strong>Rezerwacje</strong>
					</h1>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5">dodaj/edytuj/usuń</p>
					<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Przejdź
						do listy szkoleń </a>
				</div>
			</div>
		</div>
	</header>



	<section id="about">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Lista aktualnych rezerwacji</h2>
					<hr class="primary">
				</div>
			</div>
		</div>

		<div class="container-fluid">

			<table class="table table-striped table-hover table-bordered">

				<thead>
					<tr>

						<th>Imię</th>
						<th>Nazwisko</th>
						<th>Nazwa Firmy</th>
						<th>Adres</th>
						<th>Nip</th>
						<th>Liczba osób</th>
						<th>Uczestnicy</th>
						<th>Cena:</th>
						<th>Tytuł:</th>
						<th>Akcje:</th>

					</tr>
				</thead>
				<c:forEach items="${reservation}" var="reservation">
					<tr>

						<td>${reservation.name}</td>
						<td>${reservation.surname}</td>
						<td>${reservation.nameOfFirm}</td>
						<td>${reservation.address}</td>
						<td>${reservation.nip}</td>
						<td>${reservation.howMany}</td>
						<td>${reservation.participants}</td>
						<td>${reservation.price}</td>
						<td>${reservation.trainingTitle}</td>
						<td><a
							href="<c:url value="/adminPanel/reservation/${reservation.id}/edytujRezerwacje" />"
							class="btn btn-success btn-xs">Edytuj rezerwację</a> <a
							href="<c:url value="/adminPanel/reservation/${reservation.id}/usunRezerwacje" />"
							class="btn btn-success btn-xs">Usun rezerwacje</a></td>

					</tr>

				</c:forEach>
			</table>

			<a href="<c:url value="/adminPanel/reservation/dodajRezerwacje" />"
				class="btn btn-success">Dodaj rezerwacje</a>
		</div>




	</section>