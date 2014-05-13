# operators

# is ===
# isnt ===
# not !
# and &&
# or ||
# ? ?=
# ||=
# min <= x <= max chain comparison

name = 'Lin'
age = 23
if name is 'Lin'
  console.log 'Hi'

if name is 'Lin' and age is 23
  console.log "Hi #{name}, you are #{age}"

# coffeescript existential operator
if name?
  console.log 'Hi'

person =
  name: 'Lin'
  age: 23

console.log person?.name
console.log person2?.name # return undefined

name = false
name ||= 'Dong'
console.log name  # will return Dong, since name is falsy

name = false
name ?= 'Dong'
console.log name  # will return false

x= 20
if 10 <= x <= 30
  console.log "#{x} is in between 10 and 30"
