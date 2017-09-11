class EnfermedadInfecciosa{
	var nombre
	var celulasAmenazadas
	
	constructor(unNombre,unasCelulas){
		nombre = unNombre
		celulasAmenazadas = unasCelulas
	}
	
	method celulasAmenazadas() = celulasAmenazadas
	
	method atacar(unaPersona){
		unaPersona.aumentarTemperatura(celulasAmenazadas/1000)
	}
	
	method reproducirse(){
		celulasAmenazadas*=2
	}
	
	method esAgresiva(unaPersona){
		return celulasAmenazadas>unaPersona.cantidadDeCelulas()*0.1
	}
}