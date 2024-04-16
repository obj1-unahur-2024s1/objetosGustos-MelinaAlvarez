import personas.*


object rojo{
	method esColorFuerte() = true
}

object verde{
	method esColorFuerte() = true
}

object celeste{
	method esColorFuerte() = false
}

object pardo{
	method esColorFuerte() = false
}

object naranja{
	method esColorFuerte() = true
}


object cobre{
	method esMaterialQueBrilla() = true
}

object vidrio{
	method esMaterialQueBrilla() = true
}

object lino{
	method esMaterialQueBrilla() = false
}

object madera{
	method esMaterialQueBrilla() = false
}

object cuero{
	method esMaterialQueBrilla() = false
}



object remera{
	method color() = rojo
	method material() = lino
	method peso() = 800
}

object pelota{
	method color() = pardo
	method material() = cuero
	method peso() = 1300
}

object biblioteca{
	method color() = verde
	method material() = madera
	method peso() = 8000
}

object muneco{
	var peso = 0
	
	method color() = celeste
	method material() = vidrio
	
	method cambiarPeso(nuevo){
		peso = nuevo
	}
	
	method peso() = peso
}

object placa{
	var color = rojo
	var peso = 0
	
	method material() = cobre
	
	method cambiarColor(nuevo){
		color = nuevo
	}
	
	method color() = color
	
	method cambiarPeso(nuevo){
		peso = nuevo
	}
	
	method peso() = peso
}

object arito{
	 method color() = celeste
	 method material() = cobre
	 method peso() = 180
}

object banquito{
	var color = naranja
	
	method cambiarColor(nuevo){
		color = nuevo
	}
	
	method color() = color
	method material() = madera
	method peso() = 1700
}

object cajita{
	var objetoDeCajita = remera
	
	method cambiarObjetoDeCajita(nuevo){
		objetoDeCajita = nuevo
	}
	
	method color() = rojo
	method material() =  cobre
	method peso() = 400 + objetoDeCajita.peso()	
}

