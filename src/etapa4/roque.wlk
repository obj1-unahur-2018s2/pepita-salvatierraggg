import masAves.*
import pepita.*
import comidas.*


object roque {
	var pupiloActual
	method tuPupiloEs(ave) {pupiloActual=ave } // implementar
	method entrenar() {
		pupiloActual.volar(10)
		pupiloActual.comer(alpiste,300)
		pupiloActual.volar(5)
		pupiloActual.haceLoQueQuieras() 
	}  // implementar
	method pupiloActual(){return pupiloActual}
}