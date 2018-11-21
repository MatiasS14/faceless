class Archivo {
	
	method kbQuePesaElArchivo()
	
}

class Foto inherits Archivo{
	const alto
	const ancho
	const factorDeCompresion
	
	override method kbQuePesaElArchivo() = alto * ancho * factorDeCompresion
}

class Texto inherits Archivo{
	const cantidadDeCaracteres
	
	override method kbQuePesaElArchivo() = cantidadDeCaracteres 
}

class Video inherits Archivo{
	const segundosQueDura
	
	override method kbQuePesaElArchivo() = segundosQueDura 
	
}

class VideoAltaCalidad inherits Video {
	
	override method  kbQuePesaElArchivo()= super()* 3
	
}