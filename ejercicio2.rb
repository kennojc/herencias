module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end

        def aterrizar
         'Estoy cansado de volar, voy a aterrizar'
        end 
    end

    module Nadador
      
        def nadar
          'Estoy nadando!'
        end
      
        def sumergir
         'glu glub glub glu'
         end 
    end

    module Caminante
        def caminar
         'Puedo caminar!'
        end 
    end
  end
  
  module Alimentacion
    module Herbivoro
        def comer
          'Puedo comer plantas!'
        end 
    end
    
    module Carnivoro
          def comer
          'Puedo comer carne!'
         end 
    end
end


class Animal
    attr_accessor :nombre
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion
end

class Insecto < Animal
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end


class Pinguino < Ave
    include Habilidades::Nadador
    include Habilidades::Caminante
end

class Paloma < Ave
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades
    include Alimentacion::Herbivoro
end

class Perro < Mamifero
    include Habilidades::Nadador
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end


class Mosca < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Mariposa < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Abeja < Insecto
    include Habilidades::Volador
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end
