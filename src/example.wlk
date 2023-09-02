//empleados

object galvan {
    var property sueldo = 150000
    var totalDinero = 0
    var totalDeuda = 0
    
    method cobrarSuledo() {
   	 totalDinero += 0.max(sueldo - totalDeuda)
   	 totalDeuda = 0.max(totalDeuda - sueldo)
    }
    
    method gastar(cuanto) {
   	 totalDeuda += 0.max(cuanto - totalDinero)
   	 totalDinero = 0.max(totalDinero - cuanto)
    }
    
    method totalDeuda() {
   	 return totalDeuda
    }
    
    method totalDinero() {
   	 return totalDinero
    }
    
    
}

object baigorria {
    var cantidadDeEmpanadasVendidas = 1000
    var totalCobrado = 0
    const precioPorEmpanada = 150
    
    method totalCobrado() {
   	 return totalCobrado
    }
    
    method venderEmpanadas() {
   	 cantidadDeEmpanadasVendidas += 1
    }
    
    method sueldoActual() {
   	 return cantidadDeEmpanadasVendidas * precioPorEmpanada
    }
    
    method cobrarSueldo() {
   	 totalCobrado = totalCobrado + self.sueldoActual()
    }
}

object gimenez {
    var fondeDeSueldos = 3000000
    
    method dinero()  {
   	 return fondeDeSueldos
    }
    
    method pagarA(empleado) {
   	 fondeDeSueldos -= empleado.sueldoActual()
   	 empleado.cobrarSueldo()
    }
}
