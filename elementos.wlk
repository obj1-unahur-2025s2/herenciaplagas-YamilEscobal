class Hogar {
    const property nivelDeMugre
    const property confort

    method esBueno() = nivelDeMugre <= confort/2
}

class Huerta {
    const property capacidadDeProduccion
    method esBueno() = capacidadDeProduccion > nivelFijo.nivelMinimo()
}

object nivelFijo {
  var property nivelMinimo = 0 
}

class Mascota {
    const property nivelDeSalud
    method esBueno() = nivelDeSalud>250 
}

class Barrios {
    const property elementos = #{}

    method agregarElemento(unElemento){
        elementos.add(unElemento)
    }
    method quitarElemento(unElemento){
        elementos.remove(unElemento)
    } 
    method escopado(){
        elementos.count({unElemento => unElemento.esBueno()})>elementos.size()/2
    } 
}

