import Centrales.*

object springfield {
	
	const velViento = 10
	const riquezaSuelo = 0.9
	const energiaMinima = 20
	var property centrales = #{atomica,carbon,eolica}
	
	method produccionCentral(){
		const central = centrales.anyOne()
		return central.produccionEnergetica()
	}
	
	method centralesContaminantes(){
		return centrales.filter({central => central.contamina()})
	}
}
