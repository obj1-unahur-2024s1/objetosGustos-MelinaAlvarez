import objetos.*
import personas.*

object bolichito{
	var objetoMostrador 
	var objetoVidriera
	
	method ponerEnMostrador(nuevoObjeto){objetoMostrador = nuevoObjeto} 
	method ponerEnVidriera(nuevoObjeto){objetoVidriera = nuevoObjeto} 	
	
	
	method esBrillante() = objetoMostrador.material().esMaterialQueBrilla()
						   and objetoVidriera.material().esMaterialQueBrilla()
	
	method esMonocromatico() = objetoVidriera.color() == objetoMostrador.color()
	
	method estaDesequilibrado() = objetoMostrador.peso() > objetoVidriera.peso()

	method tieneAlgoDeColor(color) = objetoMostrador.color() == color
	                                 or objetoVidriera.color() == color
	   
	method puedeMejorar() = self.estaDesequilibrado() or self.esMonocromatico()                             
	
	method puedeOfrecerAlgoA(persona) = persona.leGusta(objetoMostrador) 
										or persona.leGusta(objetoVidriera)
}
	                             