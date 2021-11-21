import adultos.*
import legiones.*
import estados.*

class Nene {
	const property elementosQueTienePuesto = []
	var property actitud
	var property bolsa = 0
	var estado = sano
	
	method capacidadDeSusto() {
		return elementosQueTienePuesto.sum { elemento => elemento.susto() } * actitud
	}
	
	method susCaramelosSonMasDe(unaCantidad) {
		return bolsa > unaCantidad
	}
	
	method asustarA(unAdulto) {
		if(unAdulto.esAsustadoPor(self)) {
			self.agregarCaramelos(unAdulto.entregarCaramelos())
		} else {
			throw new Exception (message = "El niño no pudo asustar al adulto")
		}
	}
	
	method agregarCaramelos(unaCantidad) {
		bolsa += unaCantidad
	}
	
	method crearLegion(unosNenes) {
		const nuevaLegion = new LegionDelTerror (miembros = nuevaLegion.agregarMiembros(unosNenes))
	} // en este caso es posible agregar una legion completa, ya que el proceso es el mismo, en los miembros se
	  // incluira la legion completa y se podrá accedera a sus miembros
	  
	method comerCaramelos(unaCantidad) {
		if(self.estaEnCama()) {
			throw new Exception (message = "No puede comer caramelos porque esta en cama")
		}
		
		if(bolsa >= unaCantidad) {
			bolsa -= unaCantidad
			if(unaCantidad > 10) {
				self.verificarEstado()
			}
		} else {
			throw new Exception (message = "No puede comer esa cantidad de caramelos porque tiene insuficientes")
		}
	}
	
	method estaSano() {
		return estado == sano
	}
	
	method verificarEstado() {
		if(self.estaSano()) {
			estado = empachado
		} else {
			estado = enCama
		}
		estado.desencadenarEfectoPara(self)
	}
	
	method disminuirActitudALaMitad() {
		actitud /= 2
	}
	
	method disminuirActitudACero() {
		actitud = 0
	}
	
	method estaEnCama() {
		return estado == enCama
	}
}

class Maquillaje {
	var property susto = 3
}

class DisfrazTerrorifico {
	const property susto = 5
}

class DisfrazTierno {
	const property susto = 2 
}

