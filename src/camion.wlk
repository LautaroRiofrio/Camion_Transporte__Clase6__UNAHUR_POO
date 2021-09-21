import cosas.*

object camion {
	const property cosas = []
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	
	method descargar(unaCosa){
		cosas.remove(unaCosa)
	}
	
	method todoPesoPar(){
		return cosas.all( { cosa => cosa.peso()%2 ==0} )
	}
	
	method hayAlgunoQuePesa(peso){
		return cosas.any( { cosa => cosa.peso() == peso } )
	}
	
	method elDeNivel(nivel){
		if ( cosas.any( {cosa => cosa.nivelPeligrosidad() == nivel } ) ){		
			return cosas.find( {cosa => cosa.nivelPeligrosidad() == nivel })
		} else {
			return []
		}
	}
	
	method pesoTotal(){
		return 1000 + cosas.sum( { cosa => cosa.peso() } )
	}
	
	method excedidoDePeso(){
		return cosas.sum( { cosa => cosa.peso() } ) > 2500
	}
	
	method objetosQueSuperanPeligrosidad(nivel){
		return cosas.filter( { cosa => cosa.nivelPeligrosidad() > nivel }  )
	}
	
	method objetosMasPeligrososQue(cosa){
		return cosas.filter( { cosaCargada => cosaCargada.nivelPeligrosidad() > cosa.nivelPeligrosidad() } )
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return self.excedidoDePeso() && cosas.any( { cosa => cosa.nivelPeligrosidad() > nivelMaximoPeligrosidad} )
	}
	
	
	
	
	method tieneAlgoQuePesaEntre(min,max){
		return cosas.any( {cosa => cosa.peso().between(min,max)} )
	}
	
	method cosaMasPesada(){
		return cosas.max( {cosa => cosa.peso()} )
	}
	
	method pesos(){
		return cosas.map( { cosa => cosa.peso() } )
	}
	
	
	
	
	
}
