require "./other123"

class Parent
  def implicit()
    puts "Parent implicit()"
  end

  def override()
    puts "Parent override"
  end

  def altered()
    puts "Parent altered"
  end
end

class Child < Parent
  def override()
    puts "Child override"
  end

  def altered()
    puts "Child altered"
    super() #this is cool- apparently we can ccall the parent function with the same name from within the child function
    puts "Child altered"
  end
end

class Other
  def override()
    puts "Other override"
  end

  def altered()
    puts "Other altered"
  end

  def implicit()
    puts "Other implicit"
  end
end

class ChildNI
  def initialize
    @other = Other.new
  end

  def implicit
    @other.implicit
  end

  def override
    puts "ChildNI override"
  end

  def altered
    puts "ChildNI altered"
    @other.altered
    puts "ChildNI altered"
  end
end

class ChildM
  include Other123

  def override
    puts "ChildM override"
  end

  def altered
    puts "ChildM altered"
    Other123.altered()

    puts "ChildM altered"
  end

end
parent = Parent.new
child = Child.new
child.implicit
child.override
child.altered
puts "\n\n"

childni = ChildNI.new
childni.implicit
childni.override
childni.altered
puts "\n\n"

childm = ChildM.new
childm.altered
