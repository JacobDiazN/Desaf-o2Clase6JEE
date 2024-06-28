package cl.praxis.model;

import java.util.ArrayList;
import java.util.List;

import cl.praxis.model.*;

public class HabitacionBusiness {
	public List<Habitacion> getHabitacion() {

		// Inicializacion de lista de habitaciones
		ArrayList<Habitacion> habitacion = new ArrayList<Habitacion>();

		// Info Habitación 1
		Habitacion habitacion1 = new Habitacion();
		habitacion1.setId(1);
		habitacion1.setNombre("Departamento Familiar");
		habitacion1.setDescripcion("Muy Grande");
		habitacion1.setImagen("https://i.ibb.co/xDJ0P6x/Habitacion1.png");
		habitacion1.setPrecio(100000);
		habitacion1.setHabitaciones(5);
		habitacion1.setMetraje(220);
				

		// Info Habitación 2
		Habitacion habitacion2 = new Habitacion();
		habitacion2.setId(2);
		habitacion2.setNombre("Parque Central");
		habitacion2.setDescripcion("Grande");
		habitacion2.setImagen("https://i.ibb.co/phH5sX3/Habitacion2.png");
		habitacion2.setPrecio(90000);
		habitacion2.setHabitaciones(4);
		habitacion2.setMetraje(80);
		
		// Info Habitación 3
		Habitacion habitacion3 = new Habitacion();
		habitacion3.setId(3);
		habitacion3.setNombre("Loft Estilo Industrial");
		habitacion3.setDescripcion("Mediano");
		habitacion3.setImagen("https://i.ibb.co/7Cdnn6H/Habitacion3.webp");
		habitacion3.setPrecio(80000);
		habitacion3.setHabitaciones(3);
		habitacion3.setMetraje(50);
		
		// Info Habitación 4
		Habitacion habitacion4 = new Habitacion();
		habitacion4.setId(4);
		habitacion4.setNombre("Suite Vista al Mar");
		habitacion4.setDescripcion("Mediano");
		habitacion4.setImagen("https://i.ibb.co/yVz7Tzv/Habitacion4.webp");
		habitacion4.setPrecio(70000);
		habitacion4.setHabitaciones(2);
		habitacion4.setMetraje(35);
		
		// Info Habitación 5
		Habitacion habitacion5 = new Habitacion();
		habitacion5.setId(5);
		habitacion5.setNombre("Jardín Urbano");
		habitacion5.setDescripcion("Mediano");
		habitacion5.setImagen("https://i.ibb.co/s5QXJjr/Habitacion5.png");
		habitacion5.setPrecio(60000);
		habitacion5.setHabitaciones(2);
		habitacion5.setMetraje(40);
				

		// Info Habitación 6
		Habitacion habitacion6 = new Habitacion();
		habitacion6.setId(6);
		habitacion6.setNombre("Ático Lujo Centro");
		habitacion6.setDescripcion("Pequeño");
		habitacion6.setImagen("https://i.ibb.co/QHmsSCY/Habitacion6.png");
		habitacion6.setPrecio(50000);
		habitacion6.setHabitaciones(1);
		habitacion6.setMetraje(30);
		
		// Info Habitación 7
		Habitacion habitacion7 = new Habitacion();
		habitacion7.setId(7);
		habitacion7.setNombre("Estudio Minimalista");
		habitacion7.setDescripcion("Pequeño");
		habitacion7.setImagen("https://i.ibb.co/1KqdHc8/Habitacion7.png");
		habitacion7.setPrecio(40000);
		habitacion7.setHabitaciones(1);
		habitacion7.setMetraje(25);
		
		// Info Habitación 8
		Habitacion habitacion8 = new Habitacion();
		habitacion8.setId(8);
		habitacion8.setNombre("Estudio Del parque");
		habitacion8.setDescripcion("Pequeño");
		habitacion8.setImagen("https://i.ibb.co/ZdsBfX2/Habitacion8.png");
		habitacion8.setPrecio(30000);
		habitacion8.setHabitaciones(1);
		habitacion8.setMetraje(20);
		
		
		// Agrega Habitacion a lista
		habitacion.add(habitacion1);
		habitacion.add(habitacion2);
		habitacion.add(habitacion3);
		habitacion.add(habitacion4);
		habitacion.add(habitacion5);
		habitacion.add(habitacion6);
		habitacion.add(habitacion7);
		habitacion.add(habitacion8);

		// Retorno de lista de eventos
		return habitacion;
	}

	
	public Habitacion getHabitacionbyID(Habitacion habitacion) {

		List<Habitacion> listaHabitacion = getHabitacion();

		for (int x = 0; x < listaHabitacion.size(); x++) {

			if (listaHabitacion.get(x).getId() == habitacion.getId()) {
				habitacion = listaHabitacion.get(x);
			}
		}

		// Retorno de Evento
		return habitacion;
	}

	
	public int calculaValorReserva(int valorDia, int cantidadDias) {
		int valor = valorDia * cantidadDias;
		return valor;
	}
}
