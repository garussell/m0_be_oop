# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

# I wasn't sure how to make the "say" method.  I thought it was an instance method but couldn't figure out how to get that to work in this example without being redundant. 
class Unicorn
    def initialize(name, say)
        @name = name
        @color = "silver"
        @say = say
    end
end

unicorn1 = Unicorn.new("Hazel", "*~* the unicorn can be found at Hogsmeade Square *~*")    
p unicorn1

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

# I wrote this, but wasn't sure what to do with the bat attribute, which is why I added the attr_reader so it could be changed privately.
class Vampire
    attr_reader :name, :pet, :thirsty 

    def initialize(name)
        @name = name
        @pet = "bat"
        @thirsty = true
    end

    def drink
        @thirsty = false
    end
end

vampire1 = Vampire.new("Dracula")
p vampire1
vampire1.drink
p vampire1
        

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

# I spent a lot of time on this one and got help from a peer.  I was trying to do it without addint the food attribute.
# I also went to a study hall and got clarification here.
class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @times_eaten = 0
    end

    def eats
        @times_eaten += 1
        if @times_eaten >= 4
            @is_hungry = false
        end
    end
end

dragon1 = Dragon.new("Drogon", "Daenerys", "Red")
p dragon1
dragon1.eats
p dragon1
dragon1.eats
p dragon1
dragon1.eats
p dragon1
dragon1.eats
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.


# I revised this after I submitted it.  Help from a peer who stayed late at study hall, which I had to leave early :(.
class Hobbit
    def initialize(name, dispo, age = 0)
        @name = name
        @dispo = dispo
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = is_frodo
    end

    def celebrate_birthday
        @age += 1
        if  @age == 33 
          @is_adult = true
        end
        if @age == 101
          @is_old = true
        end
      end
      def is_frodo
          if @name == "Frodo"
              @has_ring = true
          end
      end
  end
  
  p hobbit1
  hobbit1 = Hobbit.new("Frodo", "Happy")
  # Absulutely did not figure this out on my own.
  33.times do
      hobbit1.celebrate_birthday
  end
  
  p hobbit1
  #Ah ha!  This is how you do it without writing 100 lines!
  101.times do
    hobbit1.celebrate_birthday
  end
  
  p hobbit1