<%@page import="java.time.LocalDate"%>
<%@page import="cl.praxis.model.Habitacion"%>
<%@page import="cl.praxis.model.HabitacionBusiness"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
// Recepcion valores desde request
int idHabitacion = Integer.parseInt(request.getParameter("idhabitacion"));
String nombre = (String) request.getParameter("nombre");
String apellido = (String) request.getParameter("apellido");
String email = (String) request.getParameter("email");
String medioPago = (String) request.getParameter("medio_pago");
int cantidadDias = Integer.parseInt(request.getParameter("cantidad"));
LocalDate fecha_entrada = LocalDate.parse(request.getParameter("fecha_entrada"));

// Librerias requeridas
HabitacionBusiness habitacionb = new HabitacionBusiness();

// incializa Objeto Evento
Habitacion habitacion = new Habitacion();
habitacion.setId(idHabitacion);

// Busca y recoge informacion de evento seleccionado
habitacion = habitacionb.getHabitacionbyID(habitacion);

// Obtiene el valor a pagar por la cantidad de dias seleccionados y el precio de la reserva
int valorPagar = habitacionb.calculaValorReserva(habitacion.getPrecio(), cantidadDias);
%>
<!DOCTYPE html>
<html lang="es">
<%@include file="assets/html/head.jsp"%>
<body>

	<%@include file="assets/html/header.jsp"%>
	<br>
	<div class="container px-4 px-lg-5 mt-5">
		<div class="row justify-content-center text-center">
			<h1>
				Detalle Solictud De Reserva: <strong><%=habitacion.getNombre()%></strong>
			</h1>
		</div>
	</div>
	<div class="container py-2">
	<br>
	<hr>
	</div>
	
	<form method="post" action="procesa.jsp">
		<section class="container py-2">
			<div class="container px-4 px-lg-5 mt-5">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Item</th>
							<th scope="col">Valor</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">1</th>
							<td>Nombre</td>
							<td><%=nombre%></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Apellido</td>
							<td><%=apellido%></td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td>Email</td>
							<td><%=email%></td>
						</tr>

						<tr>
							<th scope="row">4</th>
							<td>Medio de Pago</td>
							<td><%=medioPago%></td>
						</tr>

						<tr>
							<th scope="row">5</th>
							<td>Cantidad Dias</td>
							<td><%=cantidadDias%></td>
						</tr>

						<tr>
							<th scope="row">6</th>
							<td>Fecha Ingreso</td>
							<td><%=fecha_entrada%></td>
						</tr>

						<tr>
							<th scope="row">7</th>
							<td>Valor a Pagar</td>
							<td><strong>CL$ <%=valorPagar%></strong></td>
						</tr>

					</tbody>
				</table>

			</div>
			<br />
			<hr>
		</section>

		<br /> <br />

	</form>


	<%@include file="assets/html/footer.jsp"%>

</body>