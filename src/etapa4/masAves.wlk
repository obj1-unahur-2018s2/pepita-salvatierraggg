import comidas









object pepon {
	// aca falta un atributo
	var energia=0
	method energia(){return energia}
	method comer(cosa, cuanto) {energia=energia+(cosa.energiaPorGramo()*cuanto/2) }  // implementar
	method volar(kms) {energia=energia-1-(kms/2) }           // implementar
	method haceLoQueQuieras() {self.volar(1)}   // implementar
}

// implementar el objeto entero, salvo haceLoQueQuieras que lo damos hecho
// ayuda: conviene ponerle dos atributos
object pipa {
	/*
	 * cuando le dicen a pipa que haga lo que quiera, no hace nada
	 */
	 var kms=0
	 var gramos=0
	 method volar(km){kms+=km}
	 method comer(cosa,cuanto){gramos+=cuanto}
	 method kmsRecorridos(){return kms}
	 method gramosIngeridos(){return gramos}
	method haceLoQueQuieras() { }   // queda asi
	// pregunta: ¿por qué es necesario agregar este método, sin código
	
	//respuesta: para que entienda la pregunta aunque no aga nada
}
