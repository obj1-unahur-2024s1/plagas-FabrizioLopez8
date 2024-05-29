class Barrio {
	const elementos = []
	
	method agregarElementos(listaElementos) {
		elementos.addAll(listaElementos)
	}
	
	method eliminarElemento(elemento) {
		elementos.remove(elemento)
	}
	
	method cantidadBuenos() = elementos.count({e=>e.esBueno()})
	method cantidadNoBuenos() = elementos.count({e=>!e.esBueno()})
	method esCopado() = self.cantidadBuenos() > self.cantidadNoBuenos()
}
