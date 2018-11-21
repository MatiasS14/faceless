class Publicacion{
	var usuario
	var archivo
	var property permiso	
	const property meGustasAcumulados = #{}
	
	method publicar(){
		usuario.hacerPublicacion(self)
	}
	
	method recibirMeGusta(meGusta){
		meGustasAcumulados.add(meGusta)
	}
	
	method peso()= archivo.kbQuePesaElArchivo()
	
	method cantidadMeGusta()= meGustasAcumulados.size()
	
	method recibioMeGustaDe(usuario)= self.usuariosQueDieronMeGusta().contains(usuario)
	
	method usuariosQueDieronMeGusta()= meGustasAcumulados.map{meGusta=> meGusta.usuario()}
	
}

