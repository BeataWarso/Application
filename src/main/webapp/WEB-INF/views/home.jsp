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

<body id="page-top">

	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Szkolenia
				dla branży ubezpieczeniowej</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">Dla kogo</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#services">Oferta</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#portfolio">Rejestracja</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#contact">Kontakt</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="<c:url value="/logg" />">Logowanie</a>
				</ul>
			</div>
		</div>
	</nav>


	<header class="masthead text-center text-white d-flex">
		<div class="container my-auto">
			<div class="row">
				<div class="col-lg-10 mx-auto">
					<h1 class="text-uppercase">
						<strong>Szkolenia dla wymagających</strong>
					</h1>
					<hr>
				</div>
				<div class="col-lg-8 mx-auto">
					<p class="text-faded mb-5">merytorycznie dopracowane</p>
					<a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Dowiedz
						się więcej </a>
				</div>
			</div>
		</div>
	</header>

	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto text-center">
					<h2 class="section-heading text-white">Szkolenia dla
						poszukujących fachowej wiedzy</h2>
					<hr class="light my-4">
					<p class="text-faded mb-4">Skierowane są do szeroko pojętego
						świata ubezpieczeń: Ubezpieczycieli, Brokerów, Multiagentów,
						Agentów, Kancelarii prawnych, Kancelarii odszkodowawczych, Banków
						oraz wszystkich podmiotów zainteresowanych rozwojem i poszerzaniem
						wiedzy w zakresie aspektów ubezpieczeniowych. Dokładamy wszelkich
						starań, aby nasze szkolenia w pełni satysfakcjonowały wysokie
						wymagania dotyczące zastosowania zdobytej wiedzy w praktyce, w
						codziennej pracy.</p>
					<a class="btn btn-light btn-xl js-scroll-trigger" href="#services">Zapoznaj
						się z ofertą</a>
				</div>
			</div>
		</div>
	</section>

	<section id="services">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Aktualna oferta</h2>
					<p>Sprawdź naszą ofertę</p>
					<hr class="primary">
				</div>
			</div>
		</div>

		<div class="container">

			<table class="table table-striped table-hover table-bordered">

				<thead>
					<tr>
						<th>Tytuł szkolenia</th>
						<th>Prelegent</th>
						<th>Data</th>
						<th>Miejsce</th>
						<th>Cena</th>
						<th>Szczegóły</th>

					</tr>
				</thead>
				<c:forEach items="${trainings}" var="training">
					<tr>
						<td>${training.title}</td>
						<td>${training.presenter}</td>
						<td>${training.date}</td>
						<td>${training.place}</td>
						<td>${training.price}zł brutto/osoba</td>
						<td><a href="<c:url value="/viewTrainings/${training.id }"/>">
								<span class="glyphicon glyphicon-info-sign">agenda</span>
						</a></td>
					</tr>
				</c:forEach>
			</table>

		</div>


	</section>


	<section class="no-padding" id="portfolio">



		<aside class="bg-dark text-success">
			<div class="container text-center">
				<div class="container">
					<div class="row">
						<div class="col-lg-11 col-md-10 text-center">
							<div class="service-box mt-5 mx-auto">

								<a href="<c:url value="/rejestracja" />" class="btn btn-success">Zarejestruj
									się</a>
								<p class="text-muted mb-0">Rejestrując się otrzymujesz
									dostęp do niższych cen</p>
							</div>
						</div>


					</div>

				</div>
		</aside>
	</section>

	<%@ include file="/WEB-INF/views/templates/footer.jsp"%>