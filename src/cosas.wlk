object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }

}





object bumblebee {
	var transformadoEnAuto = true
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}







object paqueteDeLadrillos{
	var property cantidadDeLadrillos = 0
	method peso() = return cantidadDeLadrillos * 2
	method nivelPeligrosidad() = return 2
}






object arenaAGranel{
	var property peso = 0
	method nivelPeligrosidad() = return 1
}






object bateriaAntiaerea{
	var property cargada = false
	method peso(){
		if(cargada){
			return 300
		} else {
			return 200
		}
	}
	method nivelPeligrosidad(){
		if (cargada){
			return 100
		} else {
			return 0
		}
	}
}






object contenedorPortuario{
	var cosas = []
	method cargar(cosa){
		cosas.add(cosa)
	}
	method descargar(cosa){
		cosas.remove(cosa)
	}
	method peso(){
		if (cosas.size() > 0){
			return cosas.sum( { cosa => cosa.peso() } ) + 100
		} else {
			return 100
		}
	}
	method nivelPeligrosidad(){
		if(cosas.size() > 0){
			return cosas.max( {cosa => cosa.nivelPeligrosidad()} ).nivelPeligrosidad()
		} else {
			return 0
		}
	}
}






object residuosRadioactivos{
	var property peso = 0
	method nivelPeligrosidad() = return 200
}






object embalajeDeSeguridad{
	var property envuelve
	method peso(){
		return envuelve.peso()
	}
	method nivelPeligrosidad(){
		return envuelve.nivelPeligrosidad()/2
	}
}





