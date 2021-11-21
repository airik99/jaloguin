import nenes.*

class AdultoComun {
	const niniosQueIntentaronAsustarlo = []
	
	method esAsustadoPor(unNene) {
		return self.tolerancia() < unNene.capacidadDeSusto()
	}
	
	method tolerancia() {
		return 10 * niniosQueIntentaronAsustarlo.filter { nene => nene.susCaramelosSonMasDe(15) }.size()
	}
	
	method entregarCaramelos() {
		return self.tolerancia() / 2
	}
}

class Abuelo {
	const unAdulto
	
	method esAsustadoPor(unNene) {
		return true
	}
	
	method entregarCaramelos() {
		return unAdulto.entregarCaramelos() / 2
	}
}

class AdultoNecio {
	method esAsustadoPor(unNene) {
		return false
	}
}