
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

//opcion1
//object canelones {
//	var queso
//	var salsa
//	var total
//	method soloQueso(){queso=true salsa=false total=20}
//	method soloSalsa(){queso=false salsa=true total=20}
//	method conAmbos(){queso=true salsa=true total=20}
//	method conNada(){queso=false salsa=false total=20}
//	method energiaPorGramo() { 
//		if (queso){total+=7} 
//		if (salsa){total+=5}
//		return total
//		
//	}
//}


//opcion2
//object canelones {
//	
//	var total
//	
//	method soloQueso(){total=27}
//	method soloSalsa(){total=25}
//	method conAmbos(){total=32}
//	method conNada(){total=20}
//	method energiaPorGramo() { 
//		return total
//		
//	}
//}



//opcion3
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

