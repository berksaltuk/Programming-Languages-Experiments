# Author: Berk Saltuk Yılmaz
# Loops in Python

# There is no C type loop in Python :(
# However, we can use range function for this purpose
# Like range( init, end, incr/decr step)
for i in range(0, 4, 1): # NOT LOGICALLY CONTROLLED, JUST ADDED FOR DEMONSTRATION PURPOSES :)
    print("LLOOOOPP " + str(i))

###############################################################################
##!!NOT!! logically controlled but you can try them also if you want
# It is also possible to iterate through a list, dictionary or tuple
# # Tuple is the same, just replace [] with ()
# favShows = ['Bojack', 'BrBa', 'SoA', 'The Office', 'Dexter']
# for show in favShows:
#     print(show)
# # Iterating a dictionary!
# favShows2 = {1: "Bojack", 2: "The Office", 3: "Dexter", 4: "BrBa", 5: "SoA"}
# for show in favShows2:
#     print("Show #" + str(show) + " is " + favShows2[show])
# # in Python it is also possible to else to a for or while loop
##!!NOT!! logically controlled but you can try them also if you want
################################################################################

name = "JAX"
for spell in name: # NOT LOGICALLY CONTROLLED ADDED FOR DEMONSTRATION OF USAGE OF ELSE WITH LOOPS
    print(spell)
else:
    print("Woof!") # This is executed after for is completed

# While loops!
noOfAssignment = 0
while( noOfAssignment < 4):
    print("There are " + str(noOfAssignment) + " assignment(s) left")
    noOfAssignment = noOfAssignment + 1    

#Infinite loop!
# noOfAssignment = 0
# while(True):
#     print("There are " + str(noOfAssignment) + " assignment(s) left")
#     noOfAssignment = noOfAssignment + 1

# There is no exact do while in Python but it can be somehow simulated
i = 1
while True:
    print(str(i) + " brain cells left...")
    i = i - 1
    if( i < 0):
        break # Yeah, there is break statement in Python

# There is no such thing as until loop in Python...

# Loop controls!

for i in range(5):
    for j in range(2):
        if i == 1:
            print("No, I warned this lad i about being 1! I will break it!")
            break
    print("i is " + str(i) +", j is " + str(j))

i = 0
while i < 6:
    i = i + 1
    if i % 2 == 0:
        print("I hate even numbers!")
        continue
    print(i)

# There are no labels in Python :(