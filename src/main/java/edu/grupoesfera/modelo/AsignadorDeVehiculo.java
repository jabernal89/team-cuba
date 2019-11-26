package edu.grupoesfera.modelo;

import java.util.List;

public class AsignadorDeVehiculo {
      public Envio Asignar(List<String> paquetes) {
		Envio envio = new Envio();
		if(paquetes.size() < 5) {
			envio.setVehiculo("BICICLETA");
		}else if(paquetes.size() <= 10) {
			envio.setVehiculo("MOTO");
		}else if(paquetes.size() <= 30) {
			envio.setVehiculo("AUTO");
		}else {
			
		}
			
    	  return envio;
	}
}
