import nenes.*

class Barrio {
	const nenes = []
	
	method nenesConMasCaramelos() {
		return nenes.sortedBy { nene1, nene2 => nene1.bolsa() > nene2.bolsa() }.take(3)
	}
	
	method nenesConMasDe10Caramelos() {
		return nenes.filter { nene => nene.bolsa() > 10 }
	}
	
	method elementosDeNenesConMasDe10Caramelos() {
		self.nenesConMasDe10Caramelos().map { nene => nene.elementosQueTienePuesto() }.asSet()
	}
}