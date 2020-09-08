import Turbinas.*

object atomica {
	var cantidadVarillas = 10
	
	method produccionEnergetica(){
		return 100000 * cantidadVarillas
	}
}

object carbon {
	var capacidad = 20
	
	method produccionEnergetica(riquezaSuelo){
		return 500000 + capacidad * riquezaSuelo
	}
}

object eolica {
	var turbinas = #{turbina1}
	
	method produccionEnergetica(velocidadViento){
		return turbinas.sum({turbina => turbina.produccion(velocidadViento)})
	}
}
