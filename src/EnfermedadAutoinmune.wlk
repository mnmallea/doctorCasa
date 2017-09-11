class EnfermedadAutoinmune{
	var nombre
	var celulasAmenazadas
	var diasAtacando = 0
	
	constructor(unNombre,unasCelulas){
		nombre = unNombre
		celulasAmenazadas = unasCelulas
	}
	
	method celulasAmenazadas() = celulasAmenazadas
	
	method atacar(unaPersona){
		unaPersona.destruirCelulas(celulasAmenazadas)
		diasAtacando+=1
	}
	
	method esAgresiva(unaPersona){
		return diasAtacando>30
	}
}