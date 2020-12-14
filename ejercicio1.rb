require 'byebug'

class Person
    attr_accessor :first_name, :last_name, :age
    def initialize(first, last, age)
      @first_name = first
      @last_name = last
      @age = age
    end

    def birthday
      @age += 1
    end

    def talk
    end

    def introduce
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
  def talk
    puts "Bienvenidos a la clase de programación con Ruby!"
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
  end 
end

class Parent < Person
  def talk
    puts "Aquí es la reunión de apoderados?"
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}"
  end 
end


byebug
1+1
