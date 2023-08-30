import categorias.*
import bonos.*

object pepe {
	var property categoria = gerente
	var property bonoPresentismo = bonoNulo
	var property bonoResultado = bonoNulo
	var property cantidadDeFaltas = 0
	
	
	method sueldoNeto() { 
		return categoria.neto()
	}
	
	
	method sueldo() {
		return self.sueldoNeto()+ bonoPresentismo.monto(self)+bonoResultado.monto(self)
		
		 
	}
	
	
	
}

