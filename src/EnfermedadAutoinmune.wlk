class EnfermedadAutoinmune{
	var nombre
	var celulasAmenazadas
	var diasAtacandoPorPersona = new Dictionary()
	
	constructor(unNombre,unasCelulas){
		nombre = unNombre
		celulasAmenazadas = unasCelulas
	}
	
	method celulasAmenazadas() = celulasAmenazadas
	
	method atacar(unaPersona){
		unaPersona.destruirCelulas(celulasAmenazadas)
		diasAtacandoPorPersona.put(unaPersona,self.cuantosDiasAtacoA(unaPersona) + 1)
	}
	
	method cuantosDiasAtacoA(unaPersona){
		return diasAtacandoPorPersona.getOrElse(unaPersona, {0})
	}
	
	method esAgresiva(unaPersona){
		return self.cuantosDiasAtacoA(unaPersona)>30
	}
}