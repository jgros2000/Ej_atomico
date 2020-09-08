import Centrales.*

object springfield {
	
	const property velViento = 10
	const property riquezaSuelo = 0.9
	var property energiaMinima = 20000000
	var property centrales = #{atomica,carbon,eolica}
	
	method produccionCentral(){
		const central = centrales.anyOne()
		return central.produccionEnergetica(self)
	}
	
	method centralesContaminantes(){
		return centrales.filter({central => central.contamina()})
	}
	
	method cumplioNecesidadEnergetica(){
		return self.energiaProducida(centrales) > energiaMinima
	}
	
	method energiaProducida(unasCentrales){
		return unasCentrales.sum({central => central.produccionEnergetica(self)})
	}
	
	method estaAlHorno(){
		return self.todasContaminan() || self.mayoriaContaminante()
	}
	
	method todasContaminan(){
		return centrales.all({central => central.contamina()})
	}
	
	method mayoriaContaminante(){
		var centralesContaminantes = centrales.filter({central => central.contamina()})
		return self.energiaProducida(centralesContaminantes) > (energiaMinima/2)
	}
	
	method centralMasProductiva(){
		return centrales.max({central =>central.produccionEnergetica(self)})
	}
	
}

object albuquerque{
	
	var property caudalRio = 150
	var centrales = #{hidroelectrica}

	method centralMasProductiva(){
		return centrales.max({central =>central.produccionEnergetica(self)})
	}
}