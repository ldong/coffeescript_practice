name = 'Lin'

# using double quotes allows coffee string interpolation to create a string
# that contains a text representation of a CoffeeScript Variable.
greeting = "Hello, #{name}!"
# output: Hello, Lin!

# greeting = 'Hello, #{name}!'
# output: Hello, #{name}!

multi = "some content
some hello
what?"
# no line breaks


multi = """some content
some hello
what?
"""
# breaks included


range = [0..10]   # inclusive
range = [0...10]  # exclusive

# Object
obj =
    name: 'Lin'
    age: 23

console.log obj

# destructure
name= 'Lin'
age = 23
obj = { name, age }
console.log obj

obj = { name, age, other: {name} }
console.log obj


# Array
[one, two, three] = ['1', '2', '3']
console.log three
