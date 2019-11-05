<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<link rel="canonical"
	href="https://getbootstrap.com/docs/3.4/examples/signin/">

<title>Citas</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="../../assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="../../assets/js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="starter-template.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="#">THE GOOD HEALTH</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Mis
						citas <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/formularioCitas" tabindex="-1" aria-disabled="true">Pedir
						cita</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown01"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cuenta</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="#">Mi Perfil</a> <a
							class="dropdown-item" href="#">Informaci�n</a> <a
							class="dropdown-item" href="/">Cerrar sesi�n</a>
					</div></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="text" placeholder="Buscar"
					aria-label="Search">
				<button class="btn btn-secondary my-2 my-sm-0" type="submit">Buscar</button>
			</form>
		</div>
	</nav>

	<main role="main" class="container">
		<div class="span">
			<div></div>
			<div class="hero-unit">
				<br></br>
				</br>
				</br>
				<div class="row">
					<div class="col-md-8">

						<div class="card">
							<div class="card-body">
								<h4>Mis Citas</h4>
								<p>
									Bienvenido/a a la p�gina de "Mis citas" en la que aparecen
									todas las citas que tiene programadas. Si desea modificar(<img
										src="https://image.flaticon.com/icons/png/512/23/23187.png"
										class="img-fluid rounded" width="25" height="25">) o
									anular(<img
										src="https://image.flaticon.com/icons/png/512/39/39220.png"
										class="img-fluid rounded" width="25" height="25">) una
									cita, pulse el bot�n de la acci�n que quiera realizar y que se
									encuentra a la derecha de la cita con la que quiera
									interactuar.
								</p>
								<p>
									Si desea solicitar una cita pulse el siguiente bot�n <a
										href="/formularioCitas" class="btn btn-primary btn-large"
										type="submit">Pedir cita</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-3">
						<div class="card">
							<div class="card-body">
								<form action="getParametersURL"></form>
								<div class="text-center">
									<label id="nombreApellidos"></label>
								</div>

							</div>
						</div>
					</div>
				</div>
				<br></br>
			</div>
			<div class="row d-flex justify-content-center">
				<div class="container">
				<div align='center'>
 					<h2>Pr�ximas Citas</h2>
				</div>
						<table id="Table" class="table">
							<thead>
    							<tr>
      								<td align="center" scope="col"><b>Hora</b></td>
								    <td align="center" scope="col"><b>Fecha</b></td>
								    <td align="center" scope="col"><b>Especialidad</b></td>
								    <td align="center" scope="col"><b>M�dico</b></td>
								    <td align="center" scope="col"><b>Centro</b></td>
    							</tr>
 							 </thead>
						</table>
						<div align='center'>
							<label id="noHayCitas"></label>
						</div>
					</div>
				</div>
				<br>
			</div>
			</br>
	</main>
	<!-- /.container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<script type="text/javascript">
		jQuery(document).ready(function($) {
    		enviardni();
							/*
							 * Control para que no acceda a trav�s de la url a alguna p�gina que no sea el home
							 * Hay que ponerlo en todos los jsp que se hagan pr�ximamente
							 */
							var referrer = document.referrer;
							if (referrer != 'http://localhost:8080/'
									&& referrer != 'https://the-good-health.herokuapp.com/'
									&& referrer != 'http://localhost:8080/registro'
									&& referrer != 'https://the-good-health.herokuapp.com/registro'
									&& referrer != 'http://localhost:8080/formularioCitas'
									&& referrer != 'https://the-good-health.herokuapp.com/formularioCitas') {
								var forma = document.forms[0];
								forma.action = "/error";
								forma.submit();
							}
							//     		getParametersURL();

							ponerNombreApellidos();
						});
		function enviardni(){
			var jsoUser = JSON.parse(sessionStorage.usuario);
			var data = {
					DNI : jsoUser.resultado.usuario.dni
				};
				var url = "/citas";
				var type = "POST";
				var success;
				var xhrFields;
				var headers = {
					'Content-Type' : 'application/json'
				};
				
				data = JSON.stringify(data);
				$.ajax({
					type: type,
					url: url,
					data: data,
			        headers : headers,
			        xhrFields: {
			            withCredentials: true
			        },
			        success : CitasOK,
			        error : CitasError
				});
		}
		function CitasOK(respuesta) {
			console.log(respuesta);
			var jsoCitas = JSON.parse(respuesta);
			console.log(jsoCitas);
			
			if(jsoCitas.length==0) $('#noHayCitas').html("No tienes citas pendientes");
			else{
				for (i = 0; i < jsoCitas.length; i++){
					 
					 $("#Table").append('<tr>' + 
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].hora + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].dia + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].especialidad + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].nombreApe + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].centro + '</td>'+'</tr>');
				}
			}
		}
		function CitasError(respuesta) {
			console.log(respuesta);
			
		}

		function ponerNombreApellidos() {
			var jsoUser = JSON.parse(sessionStorage.usuario);
			console.log(jsoUser.resultado.usuario.nombre);
			$('#nombreApellidos').html(
					jsoUser.resultado.usuario.nombre + " "
							+ jsoUser.resultado.usuario.apellidos);

		}
		//     function getParametersURL() {
		//     	var name="nombre";
		//     	var surname="apellidos";
		//         name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		//         var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		//         results = regex.exec(location.search);
		//         var regex2 = new RegExp("[\\?&]" + surname + "=([^&#]*)"),
		//         results2 = regex2.exec(location.search);
		//         console.log(results);
		//         console.log(decodeURIComponent(results2[1].replace(/\+/g, " ")));
		//         $('#nombreApellidos').html(decodeURIComponent(results[1].replace(/\+/g, " ")) + " " + decodeURIComponent(results2[1].replace(/\+/g, " ")));
		//         return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
		//     }
	</script>
</body>
</html>