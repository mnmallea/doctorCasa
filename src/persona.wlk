class Persona{
	var cantidadDeCelulas
	var temperatura
	var enfermedades
		
	constructor(unaCantidad,unaTemperatura,unasEnfermedades){
		cantidadDeCelulas = unaCantidad
		temperatura = unaTemperatura
		enfermedades = unasEnfermedades
	}
	
	method cantidadDeCelulas() = cantidadDeCelulas
	method temperatura()=temperatura
	
	method contraerEnfermedad(unaEnfermedad){
		enfermedades.add(unaEnfermedad)
	}
	
	method pasarUnDia(){
		enfermedades.forEach({unaEnfermedad => unaEnfermedad.atacar(self)})
	}
	
	method aumentarTemperatura(unaCantidad){
		temperatura = 45.min(temperatura + unaCantidad)
	}
	
	method destruirCelulas(unasCelulas){
		cantidadDeCelulas = 0.max(cantidadDeCelulas - unasCelulas)
	}
	
	method enfermedadesAgresivas(){
		return enfermedades.filter({unaEnfermedad => unaEnfermedad.esAgresiva(self)})
	}
	
	method celulasAmenazadasPorAgresivas(){
		return self.enfermedadesAgresivas().sum({unaEnfermedad => unaEnfermedad.celulasAmenazadas()})
	}
	
	method enfermedadMasAmenazante(){
		return enfermedades.max({unaEnfermedad => unaEnfermedad.celulasAmenazadas()})
	}
	
}