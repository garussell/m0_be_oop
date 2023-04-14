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


# To be totally honest, I workd on this after study hall until around 8pm.  I will try to tweak this in the morning, however I ran out of time this evening.
# Everyting work, however I am still figuring out how to increase the age by 1, 101 times without having to call the celebrate_birthday method 101 times.
# In addition, when I manually set the age to 101, it does change to old = true, but then adult goes back to false.  I just feel like I'm missing something.
# I'm going to submit it and revisit this.
class Hobbit
    def initialize(name, dispo)
        @name = name
        @dispo = dispo
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
    end

    def celebrate_birthday
        @age += 1
        if @age >= 33 && @age < 101
            @is_adult = true
        elsif @age >= 101
            @is_old = true
        end
    end

    def correct_name
        if @name == "Frodo"
            @has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("Bilbo", "grumpy")
hobbit1.celebrate_birthday
hobbit1.correct_name
p hobbit1
hobbit2 = Hobbit.new("Frodo", "heartfelt")
hobbit2.celebrate_birthday
hobbit2.correct_name
p hobbit2