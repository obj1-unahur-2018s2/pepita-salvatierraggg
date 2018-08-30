import masAves.*
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) {energia += cosa.energiaPorGramo() * gramos }
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { return energia<50 }  // implementar
	method estaFeliz() { return energia>=500 and energia<=1000 }  // implementar
	
	method cuantoQuiereVolar() { 
		var cuanto = self.energia() / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	
	
	method salirAComer() {
		self.volar(5)
		self.comer(alpiste,80)
		self.volar(5)
		
				// "self" es una referencia al objeto que recibe el mensaje
		// ... completar este metodo con las otra acciones sobre self
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste,20)
			return energia}
			 
		else{
			if (self.estaFeliz()){
				self.volar(5)
				return energia}
				
		    else{ 
		      	 return "pepita no hace nada"}  
		      }
		    }
//esto no es del trabajo		  
	method reset(){
	  	self.volar(energia-10)
	  	return energia
	  	}
	
}
////////////////////////////////////////////////////////////////////////////////////////

object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramoga() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
}

// despues, agregar mijo y canelones

object mijo {
	var mojado
	method mojarse(){mojado=true}
	method secarse(){mojado=false}
	method energiaPorGramo() { 
		if (mojado){return 15} else {return 20}
		
	}
}


object canelones {
	var queso
	var salsa
	
	const base=20
	const conSalsa=5
    const conQueso=7
	method ponerQueso(){queso=true}
	method sacarQueso(){queso=false}
	method ponerSalsa(){salsa=true }
	method sacarSalsa(){salsa=false}
	method energiaPorGramo() { 
		return base 
	+(if (queso){conQueso}else{0})
    +(if(salsa){conSalsa}else{0})
		  
		}
	}
///////////////////////////////////////////////////////////////////////////////////////////



object roque {
	var pupiloActual
	method tuPupiloEs(ave) {pupiloActual=ave } // implementar
	method entrenar() {
		pupiloActual.volar(10)
		pupiloActual.comer(alpiste,300)
		pupiloActual.volar(5)
		pupiloActual.haceLoQueQuieras() 
	}  // implementar
}