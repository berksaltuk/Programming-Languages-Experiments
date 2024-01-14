#Author: Berk Saltuk Yılmaz
#Scope Play in Python3

x = "Mr. Worldwide";

def localCeleb1():
    global x # In python to change the global value, we must declare variable as global
    x = "Mr. Localcelebrity" # it creates local variable otherwise unlike Perl
    print("In localCeleb1 x is : " + x)

print("Before calling localCeleb1 x is : " + x)
localCeleb1()
print("After calling localCeleb1 x is : " + x)

print ("-"*50)

y = "Mr. Worldwide"

def localCeleb2():
    y = "Mr. Localcelebrity"
    print("in localCeleb2 is y : " + y)

print("Before calling localCeleb2, y is : " + y)
localCeleb2()
print("After calling localCeleb2, y is : " + y)

print ("-"*50)

a = "global a"
b = "" # I have added these two lines unlike perl because
c = "" # python does not print empty strings for undefined values
def foo():
    a = "foo a"
    b = "foo b"
    c = "I am c"

    def boo():
        # b = "I am b!" this will not have an effect like it did in Perl
        nonlocal b
        b = "I am b!" # This changes the value of b in its static parent
        loo()
    
    def loo():
        print("In loo, a : " + a + ", b : " + b + ", c : " + c)
    boo()
    loo()

print("In main before foo , a : " + a + ", b : " + b + ", c : " + c)
foo()
print("In main after foo, a : " + a + ", b : " + b + ", c : " + c)

print ("-"*50)

#
# Python does not support block scoping but we may use 
# a function to simulate block scoping
#
username = "berksaltuk"

def block():
    username = "bsy"
    print("Username is " + username)
block()

print("Username is " + username)

print ("-"*50)

loopVar = "I feel normal"

print(loopVar)
print()

for i in range(5):
    loopVar = "I feel like doing the same thing again and again"
    # for loop does not create the effect of block scoping
    print(loopVar)

print()
print(loopVar) 
print(i) # Unlike Perl variable i is reachable outside

print ("-"*50)

print("Python also does not have package scoping unlike Perl.")