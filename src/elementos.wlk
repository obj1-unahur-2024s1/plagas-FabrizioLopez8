import plagas.*

object nivelProduccion {
	var property nivelDeProduccion = 1000
	
}

class Hogar {
	var nivelDeMugre
	var comfort
	
	method nivelDeMugre() = nivelDeMugre
	method esBueno() = comfort * 0.5 >= nivelDeMugre
	method recibeAtaque(unaPlaga) {nivelDeMugre += unaPlaga.nivelDeDano() 
	}
}

class Huerta {
	var produccion
	
	method produccion() = produccion
	method esBueno() = produccion > nivelProduccion.nivelDeProduccion()
	method recibeAtaque(unaPlaga) {
		produccion = 0.max(produccion -= unaPlaga.nivelDeDano()*0.1 -
		if(unaPlaga.transmiteEnfermedades()) 10 else 0)
	}
}

class Mascota {
	var salud 
	
	method salud() = salud
	method esBueno() = salud > 250
	method recibeAtaque(unaPlaga) {
		salud = if(unaPlaga.transmiteEnfermedades()) salud = 0.max(salud - unaPlaga.nivelDeDano()) else salud
	}
}