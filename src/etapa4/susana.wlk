/*
 * Traer, e importar, los objetos de la etapa 4.
 */
import masAves.*
import pepita.*
import comidas.*

object susana {  
	var pupiloActual
	method tuPupiloEs(ave) {pupiloActual=ave }
	method entrenar() {
		pupiloActual.comer(alpiste,100)
		pupiloActual.volar(20)
		}
	method pupiloActual(){return pupiloActual}
} 