
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
	var total
	method soloQueso(){queso=true salsa=false total=20}
	method soloSalsa(){queso=false salsa=true total=20}
	method conAmbos(){queso=true salsa=true total=20}
	method conNada(){queso=false salsa=false total=20}
	method energiaPorGramo() { 
		if (queso){total+=7} 
		if (salsa){total+=5}
		return total
		
	}
}
