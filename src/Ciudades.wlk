object springfield {
	
	const velViento = 10
	const riquezaSuelo = 0.9
	const energiaMinima = 20
	var centrales = #{Atomica,Carbon,Eolica}

	
	method centrales_contaminantes(){
		return centrales.filter(es_contaminante)
	}

	method cumple_energia_minima(){
		var energia_producida = centrales.sum(produccion)
		return energia_producida >= energia_minima
	}
	
	method esta_en_el_horno(){
		return self.todas_contaminan || self.mayoria_contamina
	}
