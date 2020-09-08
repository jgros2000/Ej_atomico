import Ciudades.*

object region {
	var ciudades = #{springfield,albuquerque}
	
	method centralesMasProductivas(){
		return ciudades.map({ciudad => ciudad.centralMasProductiva()})
	}
}
