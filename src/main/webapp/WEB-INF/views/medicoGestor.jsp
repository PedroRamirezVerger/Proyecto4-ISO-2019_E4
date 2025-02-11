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

<title>Medico</title>

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
		<a class="navbar-brand" href="/gestor">THE GOOD HEALTH</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExampleDefault"
			aria-controls="navbarsExampleDefault" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExampleDefault">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Citas
						pacientes<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="dropdown01"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cuenta</a>
					<div class="dropdown-menu" aria-labelledby="dropdown01">
						<a class="dropdown-item" href="#">Mi Perfil</a> <a
							class="dropdown-item" data-toggle="modal"
							data-target="#informacion">Informaci�n</a> <a
							class="dropdown-item" href="/">Cerrar sesi�n</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<main role="main" class="container">
		<div class="span">
			<div></div>
			<div class="hero-unit">
				<br></br> </br> </br>
				<div class="row">
					<div class="col-md-8">

						<div class="card">
							<div class="card-body">
								<h4>Citas de pacientes</h4>
								<p>Bienvenido/a a la p�gina de "Citas de pacientes" en la
									que aparecen todas las citas que el m�dico seleccionado tiene
									programadas ordenadas por d�as.</p>
								<div class="modal fade" id="informacion" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLongTitle"
									aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLongTitle">Informaci�n</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												En esta vista usted puede:
												<h5></h5>
												<h5>Volver a gestor</h5>
												A trav�s de este bot�n usted puede volver a su vista de
												gestor.
												<h5></h5>
												<h5>Modificar cita</h5>
												A trav�s de este bot�n usted podr� modificar una de las
												pr�ximas citas del m�dico.
												<h5></h5>
												<h5>Eliminar cita</h5>
												A trav�s de este bot�n usted podr� eliminar una de las
												pr�ximas citas del m�dico.
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<p>
									Para volver a la p�gina principal de Gestor pulse el bot�n <a
										href="gestor" class="btn btn-primary btn-large" type="submit">Gestor</a>
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
						<h2>Lista de Citas</h2>
					</div>
					<table id="Table" class="table table-bordered">
						<thead>
							<tr class="table-primary">
								<td align="center" scope="col"><b>Hora</b></td>
								<td align="center" scope="col"><b>Fecha</b></td>
								<td align="center" scope="col"><b>Nombre paciente</b></td>
								<td align="center" scope="col"><b>DNI paciente</b></td>
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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script type="text/javascript">
		jQuery(document).ready(function($) {
    		enviardni();
			/*
			 * Control para que no acceda a travis de la url a alguna p�gina que no sea el home
			 * Hay que ponerlo en todos los jsp que se hagan pr�ximamente
			 */
			var referrer = document.referrer;
			if (referrer != 'http://localhost:8080/'
					&& referrer != 'https://sgc-e4.herokuapp.com/'
						&& referrer != 'http://sgc-e4.herokuapp.com/'
							&& referrer != 'sgc-e4.herokuapp.com/'
					&& referrer != 'http://localhost:8080/gestor'
					&& referrer != 'https://sgc-e4.herokuapp.com/gestor'
						&& referrer != 'http://sgc-e4.herokuapp.com/gestor'
							&& referrer != 'sgc-e4.herokuapp.com/gestor'
					&& referrer != 'http://localhost:8080/formularioModificar'
					&& referrer != 'https://sgc-e4.herokuapp.com/formularioModificar'
						&& referrer != 'http://sgc-e4.herokuapp.com/formularioModificar'
							&& referrer != 'sgc-e4.herokuapp.com/formularioModificar'
					&& referrer != 'http://localhost:8080/medicoGestor'
					&& referrer != 'https://sgc-e4.herokuapp.com/medicoGestor'
						&& referrer != 'http://sgc-e4.herokuapp.com/medicoGestor'
							&& referrer != 'sgc-e4.herokuapp.com/medicoGestor'){
				var forma = document.forms[0];
				forma.action = "/error";
				forma.submit();
			}
			//     		getParametersURL();

			ponerNombreApellidos();
			
		});
		
		function enviardni(){
			var jsoUser = JSON.parse(sessionStorage.MedicoEdit);
			var data = {
					DNI : jsoUser.Medico[0].DNI,
					tipo : "getCitas"
				};
				var url = "/medicoGestor";
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
			        success : CitasMedicoOK,
			        error : CitasMedicoError
				});
		}
		
		function CitasMedicoOK(respuesta) {
			console.log(respuesta);
			var jsoCitas = JSON.parse(respuesta);
			console.log(jsoCitas);
			
			if(jsoCitas.length==0) $('#noHayCitas').html("El especialista no tiene citas para atender");
			else{
				for (i = 0; i < jsoCitas.length; i++){
					 $("#Table").append('<tr>' + 
					 	'<td align="center" style="dislay: none;">' + '<label id=\'label0'+i+'\'>'+ jsoCitas[i].hora +'</label>' + '</td>'+
					 	'<td align="center" style="dislay: none;">' + '<label id=\'label1'+i+'\'>'+ jsoCitas[i].dia +'</label>' + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].nombreApe + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].DNIPaciente + '</td>'+
					 	'<td align="center" style="dislay: none;">' + '<button id=\'medicoModificar'+i+'\' class=\'btn btn-primary \' onClick="funcionModificar(this)">'+ '<img src="https://image.flaticon.com/icons/png/512/23/23187.png" class="img-fluid rounded" width="25" height="25">'+'Modificar'+'</button> ' + '</td>'+ 
					 	'<td align="center" style="dislay: none;">' + '<button id=\'medicoEliminar'+i+'\' class=\'btn btn-primary \' onClick="funcionEliminar(this)">'+'<img src="https://image.flaticon.com/icons/png/512/39/39220.png" class="img-fluid rounded" width="25" height="25">'+'Eliminar</button>' + '</td>'+'</tr>');
				}
			}
		}
		
		function funcionEliminar(boton) {
			var hora = boton.parentNode.parentNode.children[0].firstElementChild.innerHTML;
			var fecha = boton.parentNode.parentNode.children[1].firstElementChild.innerHTML;
			var dniPaciente = boton.parentNode.parentNode.children[3].innerHTML;
			var jsoMedi = JSON.parse(sessionStorage.MedicoEdit);
			var dniMedico = jsoMedi.Medico[0].DNI;

			swal({
				  title: "�Quiere eliminar esta cita?",
				  text: "Si pulsa el bot�n OK dejar� de tener asignada la cita",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				  buttons: ["Cancelar", "OK"]
				})
				.then((willDelete) => {
				  if (willDelete) {
					enviarCitaEliminar(hora, fecha, dniPaciente, dniMedico);
				    swal("Cita eliminada correctamente", {
				      icon: "success",
				    }).then(function() {
						window.location.href = "/medicoGestor";
					});
				  } else {
				    swal("La cita NO se ha eliminado", {
				    	icon: "info"});
				}
			});
			
			
		}
		
		function enviarCitaEliminar(hora, fecha, dniPaciente, dniMedico){
			var data = {
					DNIMedico : dniMedico,
					DNIPaciente : dniPaciente,
					hora : hora,
					fecha : fecha,
					tipo : "eliminarCita"
				};
				var url = "/medicoGestor";
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
			        success : EliminarOK,
			        error : EliminarError
				});
		}
		
		function EliminarOK(respuesta) {
			console.log(respuesta);
		}
		
		function EliminarError(e){
			console.log(e);
		}
		
		function CitasMedicoError(respuesta) {
			console.log(respuesta);	
		}
		
		function funcionModificar(boton) {
			var hora = boton.parentNode.parentNode.children[0].firstElementChild.innerHTML;
			var fecha = boton.parentNode.parentNode.children[1].firstElementChild.innerHTML;
			var dniPaciente = boton.parentNode.parentNode.children[3].innerHTML;
			var jsoMedi = JSON.parse(sessionStorage.MedicoEdit);
			var dniMedico = jsoMedi.Medico[0].DNI;
			
			var jsoModif={
					"citaModificar":[
						{"dniPaciente":dniPaciente,"dia":fecha,"hora":hora,"dniMedico":dniMedico,"especialidad":" "}
					]
			};
			sessionStorage.modificar=JSON.stringify(jsoModif);
			location.href="/formularioModificar";
		}
				
		function ponerNombreApellidos() {
			var jsoUser = JSON.parse(sessionStorage.usuario);
			console.log(jsoUser.resultado.usuario.nombre);
			$('#nombreApellidos').html(
					jsoUser.resultado.usuario.nombre + " "
							+ jsoUser.resultado.usuario.apellidos);
		}

	</script>
</body>
</html>