# Author: Berk Saltuk Yılmaz
# Ruby Subprograms!

# Design issues to be addressed:
    # Subprogram overloading
    # Return values
    # Nested subprogram definitions
    # Scope of local variables
    # Parameter passing methods
    # Keyword and default parameters
    # Closures

# I swear I will not print hel...
puts "Hello world!";
# GOD! I COULD NOT RESIST!

puts "------------------- PROBLEM 1: SUBPROGRAM OVERLOADING! -------------------";
## Let's start with "Subprogram overlading"...
# Ruby does not support subprogram overloading since it has dynamic typing
# for example there is no such definitions in Ruby: foo(int a) or foo(string a)
# hence it is not possible to overload a subprogram by changing the types of arguments
# Moreover, it is not also possible to have two methods foo(a) and foo(a, b) which confuses
# the Ruby, and it allows unique names for functions

def berk(a)
    puts a
end

def berk(a, b)
    puts a+b
end
berk(5,3)
# berk(5) # Error!

puts "------------------- PROBLEM 2: RETURN VALUES! -------------------";
# First of all...
# In ruby if we do not specify return value with "return" statement, it automatically returns the last line of code!
def foo()
    str = "I want to return this!"

    str
    "HAHA"
end

puts foo()

# To stop this behavior we should add return
def foo2()
    str = "I want to return this!"

    return str
    "HAHA"
end

puts foo2()

# It is possible to return any data type in Ruby: string, numbers, arrays, hashes, symbols...
def foo3(b, s, y)
    return b*s*y, "berk", 1999, [3,4,5], {"berk"=>"I cry myself to sleep", "burcu"=>"Hi!"}, :bsy  # As well as returning only 1 value as in foo2, it is possible to return multiple values
end

puts foo3(2,3,4) # It prints aaaaall values returned from this function
# It is also possible to access elements one by one!
puts "Element in index 1: #{foo3(2, 3, 4)[1]}" 
puts foo3(2,3,4)[3][2]
puts "#{foo3(2,3,4)[4]['berk']}"

def dummy()
    return
end
puts dummy() # This prints literally nothing :(
yummy = dummy()
puts yummy.inspect # Type of yummy is nil...

# You made it to the end of this section!

def fact(a)
    if(a == 1)
        return 1
    end

    return a*fact(a-1)
end

puts fact(6) # Classic example of recursion!

puts "------------------- PROBLEM 3: NESTED SUBPROGRAM DEFINITIONS! -------------------";

# Subprograms can be nested in Ruby!
# Let's create some subprograms

def bilkent
    def kills
        def me
            puts "In me!"
        end
        puts "In kills!"
        me()
        
    end
    def hello
        def there1
            puts "In there1"
            me()
        end
        def there2
            puts "In there2"
        end
        puts "In hello"
        there1()
        there2()
        kills()
    end
    puts "In bilkent!"
    # me() # When me is called before kills, it gives an error since it is not in call stack
    kills()
    hello()
    me()
    there2()
end

puts "In main!"
bilkent()


puts "------------------- PROBLEM 4: SCOPE OF LOCAL VARIABLES! -------------------";

jax = "WOOF!" # If the variable starts with [a-zA-Z] or _ it becomes a local var
puts jax

tiny = "mini woof!"
def bark()
    jax = "MEOW!" # This variable is local to the subprogram!

    puts jax
    # puts tiny since tiny is local variable in main program, it is not visible
    
end
bark()
puts jax

def luigi()
    mainCharacter = "I am Luigi!"
    def itsAMeMario()
        # puts mainCharacter  # Error!
        mainCharacter = "It's-a me Mario"
        def princessPeach()
            mainCharacter = "Your princess is in another castle!"
            puts mainCharacter
        end
        puts mainCharacter
        princessPeach()
        puts mainCharacter
    end
    puts mainCharacter
    itsAMeMario()
    puts mainCharacter
end

luigi()

def funko(pop)
    pop = 13
    puts pop
end

pop = 17
puts pop
funko(pop)
puts pop

# There are also blocks in Ruby with do ... end
jax = "WOOF!"
puts jax
1.times do |jax|
    jax = "MEOW!" # This is local to this block
    puts jax
end
puts jax

puts "------------------- PROBLEM 5: PARAMETER PASSING METHODS!-------------------";

# According to our textbook, Ruby has pass-by-assignment
# we can say each variable is a reference to objects that we put in them
# when we say a = 33, this means a is a reference to the memory block 
# that holds 33, we can represent this as a -> [33]

# for example when both values are not changeable (in other words immutable)
# when they are passed in functions, the objects that is referenced by variables
# will not change at all. It can be said that if the referenced object is mutable
# Ruby changes the value of referenced object.

# But in the example below both referenced objects are immutable
# So x references another object after the assignment operator and the value in main does not change
def adder(x, y)
    puts "in adder: id of x #{x.object_id}, id of y #{y.object_id}"
    x = x + y
    puts "in adder: id of x #{x.object_id}, id of y #{y.object_id}" # address of x changes 
end

a = 33
b = 44

puts "before subprogram: id of a #{a.object_id}, id of b #{b.object_id}"
adder(a, b)
puts "#{a}, #{b}" # 33, 44
puts "after subprogram: id of a #{a.object_id}, id of b #{b.object_id}"


# In this example objects referenced are mutable hence the values in main
# are changed and a and b are referencing same objects
def stringAdder(a, b)
   puts "in stringAdder: id of a #{a.object_id}, id of b #{b.object_id}"
   b << a
   puts "in stringAdder: id of a #{a.object_id}, id of b #{b.object_id}"
end

c = "bond"
d = "james"

puts "before subprogram: id of c #{c.object_id}, id of d #{d.object_id}"
stringAdder(c, d) #bond, jamesbond
puts "#{c}, #{d}"
puts "after subprogram: id of c #{c.object_id}, id of d #{d.object_id}"

puts "------------------- PROBLEM 6: KEYWORD AND DEFAULT PARAMETERS! -------------------";

def blackCoffee( coffeeBeans:, milk:"no milk", flavour:"no flavour")
    puts "This coffee has beans: #{coffeeBeans}, milk: #{milk}, flavour: #{flavour}"
end

def blackCoffee2( coffeeBeans, milk:"no milk", flavour:"no flavour")
    puts "This coffee has beans: #{coffeeBeans}, milk: #{milk}, flavour: #{flavour}"
end

blackCoffee(coffeeBeans:"arabica") # Default values!
blackCoffee(coffeeBeans:"guatemala", milk:"soy milk", flavour:"hazelnut") # We can overwrite the default values
blackCoffee(milk:"cow milk", coffeeBeans:"ethiopia") # keyword arguments!

def blackCoffee2( coffeeBeans, milk:"no milk", flavour:"no flavour")
    puts "This coffee has beans: #{coffeeBeans}, milk: #{milk}, flavour: #{flavour}"
end
blackCoffee2("guatemala", flavour:"hazelnut", milk:"soy milk",) 
blackCoffee2("instant coffee")

def beverage(drinkType, *bases, **flavours)
puts "Drink type is: #{drinkType}"
    puts "Bases are: #{bases}"
    puts "Flavours are: #{flavours}"
end
     #drinkType,|    bases[],  |   flavours{key->value}
beverage("tea", "milk", "water", "flavour1"=>"hazelnut") # first one is drinkType, other values are converted in an array until the key-value pair


puts "------------------- PROBLEM 7: CLOSURES! -------------------";

# There are 3 types of closure in Ruby
# These are Lambdas, blocks and procs

favShows = ["Dexter", "BrBa", "The Office"]
# It is possible to create block closures with both {} and do...end 
favShows.each { |show| 
puts show
} # In this code segment block is passed as a function for each element of array

# A subprogram can execute a passed subprogram with yield keyword in Ruby
def geralt
    puts "Hey Roach, come here!"
    yield
end

geralt { puts "NEIGH!!!!!" }

# There is something call procs in Ruby
whatDoesTheFoxSay = Proc.new { |str| "#{str}"}

puts whatDoesTheFoxSay.call("Ring-ding-ding-ding-dingeringeding!")
puts whatDoesTheFoxSay.call("Wa-pa-pa-pa-pa-pa-pow!")
puts whatDoesTheFoxSay.call("Hatee-hatee-hatee-ho!")
puts whatDoesTheFoxSay.call("Joff-tchoff-tchoffo-tchoffo-tchoff!")

# Lambda in Ruby is like the callback function in JS
# A subprogram can be stored in a variable to be called later

favDogBreeds = -> (*breeds) {puts "My fav dog breeds are #{breeds}"}

favDogBreeds.call("Labrador", "Husky", "Pinscher", "Italian Greyhound")