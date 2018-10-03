import profesionales.*
import universidades.*

//recibe un conjunto de profesionales

class EmpresaDeServicios {
	var property profesionales
	var property honorarioReferencia
	method profesionalesCaros(){
	 return profesionales.filter{profesional=>profesional.honorariosPorHora()>honorarioReferencia}
		
	}
	method universidadesFormadoras(){
		return profesionales.map{profesional=>profesional.universidad()}.asSet()
	}
	method profesionalBarato(){
		return profesionales.min{profesional=>profesional.honorariosPorHora()}
	}
	method provinciaCubierta(prov){
		return profesionales.any{profesional=>profesional.provinciasDondePuedeTrabajar().contains(prov)}
	}
	method cantProfesionalesEstudiaronEn(univ){
		return profesionales.count{profesional=>profesional.universidad().contains(univ)}
	}
		
}
