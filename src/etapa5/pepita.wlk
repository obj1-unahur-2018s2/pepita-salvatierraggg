import comidas.*

/*
 * Agregar
 * - los objetos que representan a los posibles destinos
 * - la capacidad de Pepita de visitar un destino, modificando su energía.
 */
 
object pepita {
	var energia
	
	method energia() { return energia }
	method comer(cosa, gramos) { energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	
	
	method iniciar(lugar){
		energia+=lugar.revitalizar
		}
	
	method visitar(destino){
		energia+=destino.revitalizar
		}
	
	
	
}

object patagonia{
	method revitalizar(){return 30}
}

object sierrasCordobesas(){
	method revitalizar(){return 70}
}


object marDelPlata {
	
	var climaBajo
	method tempBaja(){climaBajo=true}
	method tempAlta(){climaBajo=false}
	method revitalizar(){
		if (climaBajo){return 80}
		else{return -20)}
	}		
}


object noroeste{
	
	
	method revitalizar(){}
}
