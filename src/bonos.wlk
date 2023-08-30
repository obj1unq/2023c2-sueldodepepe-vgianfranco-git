object bonoPorcentaje {

	method monto(empleado) {
		return empleado.sueldoNeto() * 10 / 100
	}

}

object bonoMontoFijo {

	method monto(empleado) {
		return 800
	}

}

object bonoPresentismoNormal {

	const bonoFijo = 2000
	const presentismoMinimo = 1

	method descuentoPorFaltas(empleado) {
		return 1000 * empleado.cantidadDeFaltas()
	}

	method monto(empleado) {
		if (empleado.cantidadDeFaltas() > presentismoMinimo) {
			return 0
		} else {
			return bonoFijo - self.descuentoPorFaltas(empleado)
		}
	}

}

object bonoNulo {

	method monto(empleado) {
		return 0
	}

}

object bonoAjuste {

	method monto(empleado) {
		return if (empleado.cantidadDeFaltas() == 0) 100 else 0
	}

}

object bonoDemagogico {
	// TODO
}

