# single comment

###
Block Comment
###

two = 0

### function in JS
function greet (name) {
  console.log('Hello' + name + '!')
}

greet = function (name) {
}
###
# in coffee

greet = (name) -> console.log "Name: #{name}"

greet 'Lin'

# no parameters are passed
greet = (name) ->
  name = name || 'Friend'
  console.log "Hello #{name}"

# will not work
# greet
# will work
greet()

greet = (name) ->
  name = name || 'Something to return'
  "Hello #{name}"    # default will return the last line of code

console.log greet()


greet = (name= 'Lin') ->
  "Hello #{name}"    # default will return the last line of code

console.log greet()

# coffee splat
test = (x, y, z...) ->
  console.log x
  console.log y
  console.log z

test2 = (x, y..., z) ->
  console.log x
  console.log y
  console.log z

test3 = (x..., y, z) ->
  console.log x
  console.log y
  console.log z

test [1,2,3]

# coffee splat
test [1,2,3]...

# anonymous function
do () ->
  console.log 'Hello'


do (message= ' World') ->
  console.log "Hello #{message}"


# random number between min and max
rand = (max= 10, min = 0) -> Math.floor(Math.random() * (max - min + 1)) + min

console.log rand()
console.log rand 100
console.log rand 60, 50

