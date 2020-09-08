import Turbinas.*

object atomica {
	var property cantidadVarillas = 10
	
	method produccionEnergetica(ciudad){
		return 100000 * cantidadVarillas
	}
	
	method contamina(){
		return cantidadVarillas > 20
	}
}

object carbon {
	var property capacidad = 20000000
	
	method produccionEnergetica(ciudad){
		return 500000 + capacidad * (ciudad.riquezaSuelo())
	}
	
	method contamina(){
		return true
	}
}

object eolica {
	var turbinas = #{turbina1}
	
	method produccionEnergetica(ciudad){
		return turbinas.sum({turbina => turbina.produccion(ciudad.velViento())})
	}
	
	method contamina(){
		return false
	}
}

object hidroelectrica {
	
	method produccionEnergetica(ciudad){
		return 2000000 * ciudad.caudalRio()
	}

}