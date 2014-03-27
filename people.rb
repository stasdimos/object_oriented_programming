class Person 
  attr_accessor :name
  def initialize (name)
    @name = name
    puts "Hi my name is #{@name}"  
  end
end

class Student < Person
  def learn 
    puts "I Get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object!"
  end
end

chris = Instructor.new ("Chris")
cristina = Student.new ("Cristina")

chris.teach
cristina.learn

# Becasue Chris is in the Instructor class, the learn instance 
# will not work, and vice versa. 
# They only know whats in their sub-class
# A man must have a code. 