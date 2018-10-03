import universidades.*

// pueden trabajar en entre rios, santa fe y corrientes
//cobran 3000 por hora
class ProfesionalAsociado {
	var universidad
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
	
	method provinciasDondePuedeTrabajar() { 
		return #{"Entre Ríos", "Corrientes", "Santa Fe"}
	}
	
	method honorariosPorHora() { 
		return 3000
	}
}


// trabajan donde esta la universidad
//los honorarios son recomendados por la universidad
class ProfesionalVinculado {
	var universidad
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
	method provinciasDondePuedeTrabajar(){
		return  universidad.dondeEsta()
		
	}
	method honorariosPorHora(){
		return universidad.honorariosRecomendados()
	}
}


// se indica donde pueden trabajar y los honorarios por hora
class ProfesionalLibre {
	var universidad
	var property provinciasDondePuedeTrabajar
	var property honorariosPorHora
	
	method universidad() { 
		return universidad
	}
	method universidad(univ) { 
		universidad = univ
	}
}
