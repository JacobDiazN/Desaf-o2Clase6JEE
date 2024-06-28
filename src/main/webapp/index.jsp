<%@page import="java.util.List"%>
<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
// Librerias Requeridas
HabitacionBusiness habitacionb = new HabitacionBusiness();

// listado de Habitaciones
List<Habitacion> listaHabitacion = habitacionb.getHabitacion();
%>

<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>
	<%@include file="assets/html/header.jsp"%>

	<form method="post" action="procesa.jsp">

		<!-- Section-->
		<section class="py-5">
			<div class="container px-4 px-lg-5 mt-5">

				<div class="row justify-content-center">
					<h1>
						Habitaciones Disponibles (<%=listaHabitacion.size()%>)
					</h1>
					<hr/ >
				</div>

				<div
					class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

					<%
					for (int x = 0; x < listaHabitacion.size(); x++) {
					%>

					<div class="col mb-5">
						<div class="card h-100">
							<img class="card-img-top"
								src="<%=listaHabitacion.get(x).getImagen()%>"
								alt="<%=listaHabitacion.get(x).getNombre()%>" />
							<div class="card-body p-4">
								<div class="text-center">
									<h5 class="fw-bolder"><%=listaHabitacion.get(x).getNombre()%></h5>
									<p><%=listaHabitacion.get(x).getDescripcion()%></p>
									CL$
									<%=listaHabitacion.get(x).getPrecio()%>
								</div>
							</div>
							<input type="radio" id="html" name="idhabitacion"
								value="<%=listaHabitacion.get(x).getId()%>" checked>  
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<a class="btn btn-outline-dark mt-auto"
										href="detalle.jsp?idhabitacion=<%=listaHabitacion.get(x).getId()%>">Ver
										Detalle Habitación</a>
								</div>
							</div>
						</div>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</section>
		<div class="container px-4 px-lg-5 mt-5">
				<div class="row justify-content-center text-center">
					<h1>
						Información de Reserva Habitación
					</h1>
					<br><br>
				</div>
				<hr>
			</div>
			<br><br>
		<section class="container w-75" >			
			<form method="post" action="procesa.jsp">
				<div class="form-group pb-2">
					<label for="nombre">Nombre</label> <input type="text"
						class="form-control" id="nombre" name="nombre" required>
				</div>
				<div class="form-group pb-2">
					<label for="apellido">Apellido</label> <input type="text"
						class="form-control" id="apellido" name="apellido" required>
				</div>
				<div class="form-group pb-2">
					<label for="email">Email</label> <input type="email"
						class="form-control" id="email" name="email" required>
				</div>
				<div class="form-group pb-2">
					<label for="medio_pago">Medio de Pago</label> <select
						id="medio_pago" name="medio_pago" class="form-select" required>
						<option value="">Seleccione...</option>
						<option value="Tarjeta de Credito">Tarjeta de Crédito</option>
						<option value="Tarjeta de Debito">Tarjeta de Débito</option>
						<option value="Transferencia Bancaria">Transferencia Bancaria</option>
						<option value="Contado">Contado</option>
					</select>
				</div>
				<div class="form-group ">
					<label for="inputState" class="form-label">Cantidad de Dias</label>
					<select id="cantidad" name="cantidad" class="form-select">
						<%
						for (int x = 0; x < 50; x++) {
						%>
						<option value="<%=x + 1%>"><%=x + 1%> Dia(s)
						</option>
						<%
						}
						%>
					</select>
				</div>
				<div class="form-group pb-2">
					<label for="fecha_entrada">Fecha de Entrada</label> <input
						type="date" class="form-control" id="fecha_entrada"
						name="fecha_entrada" required>
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Enviar
					Solicitud de Reserva</button>
			</form>
		</section>


		<br /> <br />

	</form>

	<%@include file="assets/html/footer.jsp"%>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous">
		
	</script>

</body>
</html>