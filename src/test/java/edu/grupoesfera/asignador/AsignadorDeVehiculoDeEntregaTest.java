package edu.grupoesfera.asignador;

import org.junit.Test;
import edu.grupoesfera.modelo.*;
import static org.assertj.core.api.Assertions.*;
import java.util.LinkedList;
import java.util.List;

import org.junit.Test;

public class AsignadorDeVehiculoDeEntregaTest {

	@Test
	public void EntregarMenosDeCincoPaquetesDeberianEntregarseEnBicicleta() {
     List<String> paquetes = new LinkedList<>();
     paquetes.add("libro");
     paquetes.add("libro");
     paquetes.add("libro");
     
     AsignadorDeVehiculo asignador = new AsignadorDeVehiculo();
     Envio envio = asignador.Asignar(paquetes);
     assertThat(envio.getVehiculo()).isEqualTo("BICICLETA");
	}
	
	@Test
	public void EntregarDeCincoADiezPaquetesDeberianEntregarseEnMoto() {
	     List<String> paquetes = new LinkedList<>();
	     for (int i = 0; i < 10; i++) {
			paquetes.add("libro");			
		}
	     
	     AsignadorDeVehiculo asignador = new AsignadorDeVehiculo();
	     Envio envio = asignador.Asignar(paquetes);
	     assertThat(envio.getVehiculo()).isEqualTo("MOTO");
	     
		}
	
	@Test
	public void EntregarDeDiezATreintaPaquetesDeberianEntregarseEnMoto() {
	     List<String> paquetes = new LinkedList<>();
	     for (int i = 0; i < 30; i++) {
			paquetes.add("libro");			
		}
	     
	     AsignadorDeVehiculo asignador = new AsignadorDeVehiculo();
	     Envio envio = asignador.Asignar(paquetes);
	     assertThat(envio.getVehiculo()).isEqualTo("AUTO");
	     
		}

}