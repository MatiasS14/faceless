import usuario.*
class Permiso {
	
	method puedeVerPublicacion(usuario)
	
}

class PermisoPublico inherits Permiso{
	override method puedeVerPublicacion(usuario)= true
}

class PermisoSoloAmigos inherits Permiso{
	const publicacion
	override method puedeVerPublicacion(usuario)= usuario.esAmigoDe(publicacion.usuario())
}

class PermisoListaBlanca inherits Permiso{
	const usuarios
	override method puedeVerPublicacion(usuario)= usuarios.contains(usuario)
}

class PermisoListaNegra inherits Permiso{
	const listaNegra
	override method puedeVerPublicacion(usuario)= not listaNegra.contains(usuario)
}