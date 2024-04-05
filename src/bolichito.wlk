import objetos.*
import personas.*

object bolichito{
	
	method esBrillante() = mostrador.objetoMostrador().material().esMaterialQueBrilla()
						   and vidriera.objetoVidriera().material().esMaterialQueBrilla()
	
	method esMonocromatico() = vidriera.objetoVidriera().color() == mostrador.objetoMostrador().color()
	
	method estaDesequilibrado() = mostrador.objetoMostrador().peso() > vidriera.objetoVidriera().peso()

	method tieneAlgoDeColor(color) = mostrador.objetoMostrador().color() == color
	                                 or vidriera.objetoVidriera().color() == color
	   
	method puedeMejorar() = self.estaDesequilibrado() or self.esMonocromatico()                             
	
	method puedeOfrecerAlgoA(persona) = persona.leGusta(mostrador.objetoMostrador()) 
										or persona.leGusta(vidriera.objetoVidriera())
}
	                             