import faceless.*
import publicacion.*

class MeGusta{
	const usuario
	method usuario()= usuario
}


class Usuario {
	const meGusta= new MeGusta( usuario =self )
	var amigos= #{}
	
	method hacerPublicacion(publicacion){
		faceless.recibirPublicacion(publicacion )
	}
	
	method darMeGusta(publicacion){
		publicacion.RecibirMeGusta( meGusta )
	}
	// amigos
		
	method cantidadDeAmigos()= amigos.size()
	
	method esMasAmistosoQue(usuario)= self.cantidadDeAmigos()> usuario.cantidadDeAmigos()
	
	method agregarAmigo(usuario){
		
		amigos.add(usuario)
	}
	
	method eliminarAmigo(usuario){
		
		amigos.remove(usuario)
	}
	// peso de todas las publicaciones
	method publicacionesHechas() = faceless.publicacionesUsuario(self)
	
	
	method pesoDePublicaciones()= 
		  self.publicacionesHechas().sum{ publicacion => publicacion.peso() }
	
	//amigo mas popular
	method amigoMasPopular()= amigos.max{amigo => amigo.meGustasRecibidos()}
			
	method meGustasRecibidos()= 
		self.publicacionesHechas().sum{publicacion => publicacion.cantidadMeGusta() }
		
	method esAmigoDe(usuario)= amigos.contains(usuario)
		
	method puedeVerPublicacion(publicacion)= publicacion.permiso().puedeVerPublicacion(self)
	
	//mejores amigos
	method mejoresAmigos()=	amigos.filter{amigo => amigo.veTodasLasPublicaciones(self) }
	
	method veTodasLasPublicaciondes(usuario)= 
		self.publicacionesHechas().all{publicacion => usuario.puedeVerPublicacion(publicacion)}
	//stalker
	method stalkeaA(usuario) = usuario.cantidadDeMeGustasRecibidosDe(self) > self.meGustasRecibidos()* 0.9
	
	method cantidadDeMeGustasRecibidosDe(usuario)= self.meGustasRecibidosDe(usuario).size()
	
	method meGustasRecibidosDe(usuario)= 
			self.publicacionesHechas().filter{publicacion => usuario.dioMegustaA(publicacion) }
	
	method dioMeGustaA(publicacion)= publicacion.recibioMeGustaDe(self)
}
