import Turbinas.*

object atomica {
	var property cantidadVarillas = 10
	
	method produccionEnergetica(){
		return 100000 * cantidadVarillas
	}
	
	method contamina(){
		return cantidadVarillas > 20
	}
}

object carbon {
	var property capacidad = 20000000
	
	method produccionEnergetica(riquezaSuelo){
		return 500000 + capacidad * riquezaSuelo
	}
	
	method contamina(){
		return true
	}
}

object eolica {
	var turbinas = #{turbina1}
	
	method produccionEnergetica(velocidadViento){
		return turbinas.sum({turbina => turbina.produccion(velocidadViento)})
	}
	
	method contamina(){
		return false
	}
}
