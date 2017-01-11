##Animal is-an object look at the credit
class Animal
  def initialize(isCute)
    @isCute = isCute
  end

  def pet()
    if isCute
      puts "I like being petted"
    else
      puts "Don't touch me!"
    end
  end

  attr_accessor :isCute
end

#Dog inherits from animal. Dog is-an animal
class Dog < Animal
  def initialize(name, isCute)
    super(isCute)
    ##class dog has a name attribute
    @name = name

  end
end

#Cat is an Animal. Inherits from Animal
class Cat < Animal
  def initialize(name, isCute)
    super(isCute)
    ##has an name attribute
    @name = name
  end

  def rub(person)
    person.exclaim("yay")
  end
end

#person is an object
class Person
  def initialize(name)
    ##people also have name attributes
    @name = name
    @pet = nil
  end

  def exclaim(statement)
    puts "#{statement}!!!!!!!!!!!!!"
  end

  attr_accessor :pet
end


#Employee inherits from person. Is-a type of person
class Employee < Person
  def initialize(salary, name, likesJob)
    #call the super class constructo
    super(name)
    #it also has na salary attribute
    @salary = salary
    @likesJob = likesJob
  end

  def doILikeMyJob
    return @likesJob
  end

end

#Class fish inherits from the root object superclass
class Fish
end

#Salmon is a fish
class Salmon < Fish
end

#Halbit is a fish as well
class Halibut < Fish
end

#rover is an instance of the dog class
rover = Dog.new("rover", true)

#fluffy is an instance of the CAt class
fluffy = Cat.new("fluffy", true)

#mary is an instance f the person class
mary = Person.new("Mary")
#now we'll assign her pet to be fluffy
mary.pet = fluffy

#frank is an employee, so he's also a person
frank = Employee.new(120000, "Frank", false)
#since he's a person, he has a pet
frank.pet = rover

#flipper is an instance of the Fish class
flipper = Fish.new()

#crouse is an isntance of the salmon class
crouse = Salmon.new()

#harry is an instqance of the Halibut class
harry = Halibut.new()

rover.pet
fluffy.rub(frank)

if frank.doILikeMyJob
  frank.exclaim("I love my job")
else
  frank.exclaim("I hate my job")
end
