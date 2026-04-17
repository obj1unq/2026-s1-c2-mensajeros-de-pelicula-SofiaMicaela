object paquete {
	var pago = false

	method estaPago() {
	  return pago
	}
	method pagarPaquete(){
		pago = true 
	}
}
object brooklyn {
  
  method puedePasar(persona) {
	return persona.peso() <= 1000
  }
}
object matrix {
  method puedePasar(persona) {
	return persona.puedeLlamar()
  }
}
object jean {
	method peso() {
	  return 65
	}
	method puedeLlamar() {
	  return true
	}
	method puedeEntregar(paquete, destino) {
		return paquete.estaPago() && destino.puedePasar(self)
}
}
object neo {
  var tieneCredito = false

  method peso() {
	return 0
  }
  method puedeLlamar() {
	return tieneCredito
  }
  method cargarCredito() {
	tieneCredito = true
  }
  method puedeEntregar(paquete, destino) {
	return paquete.estaPago() && destino.puedePasar(self)
  }

}
object sara {
  var pesoPropio = 0
  var vehiculo = null

  method peso() {
	return pesoPropio + vehiculo.peso()
  }
  method puedeLlamar() {
	return false
  }
  method pesoPropio(_pesoPropio) {
	pesoPropio = _pesoPropio
  }
  method vehiculo(_vehiculo){
	vehiculo = _vehiculo
  }
  method puedeEntregar(paquete, destino) {
  	return paquete.estaPago() && destino.puedePasar(self)
  }
}
object moto {
  method peso(){
	return 100
  }
}
object camion {
	var acoplados = 0

	method peso() {
	  return 500 + ( 500 * acoplados)
	}
	method acoplados(_acoplados){
		acoplados = _acoplados
	}

}

