import nenes.*

class LegionDelTerror {
	const miembros = []
	
	method capacidadDeSusto() {
		return miembros.sum { nene => nene.capacidadDeSusto() }
	}
	
	method bolsa() {
		return miembros.sum { nene => nene.bolsa() }
	}
	
	method lider() {
		return miembros.max { nene => nene.capacidadDeSusto() }
	}
	
	method asustarA(unAdulto) {
		if(unAdulto.esAsustadoPor(self)) {
			self.lider().agregarCaramelos(unAdulto.entregarCaramelos())
		} else {
			throw new Exception (message = "La legion no pudo asustar al adulto")
		}
	}
	
	method agregarMiembro(unNene) {
		miembros.add(unNene)
	}
	
	method agregarMiembros(unosNenes) {
		unosNenes.map { nene => self.agregarMiembro(nene) }
	}
}

