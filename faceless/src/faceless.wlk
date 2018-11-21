
object faceless {
	var publicaciones= #{}
	var usuarios= #{}
	
	method usuarios()= usuarios
	
	method recibirPublicacion(publicacion){
		publicaciones.add(publicacion)
	}
	
	method nuevoUsuario(usuario){
		usuarios.add(usuario)
	}
	method bajaDeUsuario(usuario){
		usuarios.remove(usuario)
	}
	
	method publicacionesUsuario(usuario)=
			publicaciones.filter{publicacion => publicacion.usuario() == usuario }
	
	method usuario1MasAmistosoQueUsuario2(usuario1,usuario2)= usuario1.esMasAmistosoQue(usuario2)
}
