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
												<h5>Pedir cita</h5>
												Solicitar una cita, para ello deber� tener un centro m�dico
												asignado.
												<h5></h5>
												<h5>
													Modificar cita(<img
														src="https://image.flaticon.com/icons/png/512/23/23187.png"
														class="img-fluid rounded" width="25" height="25">)
												</h5>
												A trav�s de este bot�n usted podr� modificar una de sus
												pr�ximas citas, el d�a y su hora.
												<h5></h5>
												<h5>
													Eliminar cita(<img
														src="https://image.flaticon.com/icons/png/512/39/39220.png"
														class="img-fluid rounded" width="25" height="25">)
												</h5>
												A trav�s de este bot�n usted podr� eliminar una de sus
												pr�ximas citas.
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary"
													data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<p>
									Si desea pedir una cita pulse el bot�n <a
										href="/formularioCitas" class="btn btn-primary btn-large"
										type="submit">Pedir Cita</a>
								</p>
								<p id="volverMedico">
									Para volver a la interfaz de M�dico pulse el bot�n <a
										href="/medico" class="btn btn-primary btn-large" type="submit">M�dico</a>
								</p>
								<p id="volverGestor">
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
					<table id="Table" class="table">
						<thead>
							<tr class="table-primary">
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
		/*
		 * Control para que no acceda a travis de la url a alguna p�gina que no sea el home
		 * Hay que ponerlo en todos los jsp que se hagan pr�ximamente
		 */
		var referrer = document.referrer;
		if (referrer != 'http://localhost:8080/'
				&& referrer != 'https://sgc-e4.herokuapp.com/'
				&& referrer != 'http://localhost:8080/registro'
				&& referrer != 'https://sgc-e4.herokuapp.com/registro'
					&& referrer != 'http://sgc-e4.herokuapp.com/registro'
						&& referrer != 'sgc-e4.herokuapp.com/registro'
				&& referrer != 'http://localhost:8080/formularioCitas'
				&& referrer != 'https://sgc-e4.herokuapp.com/formularioCitas'
					&& referrer != 'http://sgc-e4.herokuapp.com/formularioCitas'
						&& referrer != 'sgc-e4.herokuapp.com/formularioCitas'
				&& referrer != 'http://localhost:8080/citas'
				&& referrer != 'https://sgc-e4.herokuapp.com/citas'
					&& referrer != 'http://sgc-e4.herokuapp.com/citas'
						&& referrer != 'sgc-e4.herokuapp.com/citas'
				&& referrer != 'http://localhost:8080/medico'
				&& referrer != 'https://sgc-e4.herokuapp.com/medico'
					&& referrer != 'http://sgc-e4.herokuapp.com/medico'
						&& referrer != 'sgc-e4.herokuapp.com/medico'
				&& referrer != 'http://localhost:8080/gestor'
				&& referrer != 'https://sgc-e4.herokuapp.com/gestor'
					&& referrer != 'http://sgc-e4.herokuapp.com/gestor'
						&& referrer != 'sgc-e4.herokuapp.com/gestor'
				&& referrer != 'http://localhost:8080/formularioModificar'
				&& referrer != 'https://sgc-e4.herokuapp.com/formularioModificar'
					&& referrer != 'http://sgc-e4.herokuapp.com/formularioModificar'
						&& referrer != 'sgc-e4.herokuapp.com/formularioModificar'){
			var forma = document.forms[0];
			forma.action = "/error";
			forma.submit();
		}
	});
	
		jQuery(document).ready(function($) {
			
			var jsoUser = JSON.parse(sessionStorage.usuario);
			var tipoUsuario = jsoUser.resultado.tipoUsuario;
			
			if(tipoUsuario != "Medico"){
				$('#volverMedico').hide();
			}
		});
		
		jQuery(document).ready(function($) {
			
			var jsoUser = JSON.parse(sessionStorage.usuario);
			var tipoUsuario = jsoUser.resultado.tipoUsuario;
			
			if(tipoUsuario != "Gestor"){
				$('#volverGestor').hide();
			}
		});

	
		jQuery(document).ready(function($) {
    		enviardni();
			ponerNombreApellidos();
			
		});
		
		function enviardni(){
			var jsoUser = JSON.parse(sessionStorage.usuario);
			var data = {
					DNI : jsoUser.resultado.usuario.dni,
					tipo : "mostrar"
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
					var boton = document.createElement("modificarCita"+i);
					boton.type = "button";
					 $("#Table").append('<tr>' + 
					 	'<td align="center" style="dislay: none;">' + '<label id=\'label0'+i+'\'>'+ jsoCitas[i].hora +'</label>' + '</td>'+
					 	'<td align="center" style="dislay: none;">' + '<label id=\'label1'+i+'\'>'+ jsoCitas[i].dia +'</label>' + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].especialidad + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].nombreApe + '</td>'+
					 	'<td align="center" style="dislay: none;">' + jsoCitas[i].centro + '</td>'+
					 	'<td align="center" style="dislay: none;">' + '<button id=\'botonModificar'+i+'\' class=\'btn btn-primary \' onClick="funcionModificar(this)">'+ '<img src="https://image.flaticon.com/icons/png/512/23/23187.png" class="img-fluid rounded" width="25" height="25">'+'Modificar'+'</button> ' + '</td>'+ 
					 	'<td align="center" style="dislay: none;">' + '<button id=\'botonEliminar'+i+'\' class=\'btn btn-primary \' onClick="funcionEliminar(this)">'+'<img src="https://image.flaticon.com/icons/png/512/39/39220.png" class="img-fluid rounded" width="25" height="25">'+'Eliminar</button>' + '</td>'+'</tr>');
				}
			}
		}
		
		function CitasError(respuesta) {
			console.log(respuesta);	
		}
		
		function funcionModificar(boton){
			//console.log(boton.parentNode.parentNode.children[0].firstElementChild.innerHTML);
			var hora = boton.parentNode.parentNode.children[0].firstElementChild.innerHTML;
			var dia = boton.parentNode.parentNode.children[1].firstElementChild.innerHTML;
			var jsoUser = JSON.parse(sessionStorage.usuario);
			var dniPaciente = jsoUser.resultado.usuario.dni;
			console.log(boton.parentNode.parentNode.children[3].innerHTML);
			for(var i=0; i<jsoUser.resultado.grupoMedico.listaMedicos.length; i++){
				if(boton.parentNode.parentNode.children[3].innerHTML == (jsoUser.resultado.grupoMedico.listaMedicos[i].nombre + " " +jsoUser.resultado.grupoMedico.listaMedicos[i].apellidos)){
						var dniMedico = jsoUser.resultado.grupoMedico.listaMedicos[i].DNI;
						var especialidad = jsoUser.resultado.grupoMedico.listaMedicos[i].especialidad;
				}
			}
			var jsoModif={
					"citaModificar":[
						{"dniPaciente":dniPaciente,"dia":dia,"hora":hora,"dniMedico":dniMedico,"especialidad":especialidad}
					]
			};
			sessionStorage.modificar=JSON.stringify(jsoModif);
			console.log(jsoModif);
			location.href="/formularioModificar";
			
		}
		
		function funcionEliminar(boton){
			//console.log(boton.parentNode.parentNode.children[0].firstElementChild.innerHTML);
			var hora = boton.parentNode.parentNode.children[0].firstElementChild.innerHTML;
			var dia = boton.parentNode.parentNode.children[1].firstElementChild.innerHTML;
			var especialidad = boton.parentNode.parentNode.children[2].innerHTML;
			console.log(especialidad);
			var jsoUser = JSON.parse(sessionStorage.usuario);
			var dni = jsoUser.resultado.usuario.dni;
			var listaMed = jsoUser.resultado.grupoMedico.listaMedicos;
			for(var i=0; i<listaMed.length;i++){
				if(listaMed[i].especialidad == especialidad){
					var dniMedico = listaMed[i].DNI;
				}
			}
			console.log(dniMedico);
			var data = {
					DNI : dni,
					DNIMedico : dniMedico,
					hora : hora,
					dia : dia,
					tipo : "eliminar"
			};
			console.log(data);
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
					enviarEliminarCita(data);
				    swal("Cita eliminada correctamente", {
				      icon: "success",
				    }).then(function() {
						window.location.href = "/citas";
					});
				  } else {
				    swal("La cita NO se ha eliminado", {
				    	icon: "info"});
				}
			});
		}
		
		function enviarEliminarCita(data) {
			var url = "/citas";
			var type = "POST";
			var success;
			var error;
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
		        success : ModifElimOK,
		        error : ModifElimError
			});
		}
		
		function ModifElimOK(){
			console.log("OK");
		}
		
		function ModifElimError(){
			console.log("Error");
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