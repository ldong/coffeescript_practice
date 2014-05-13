# control structure

name = 'Lin'
if name is 'Lin'
  console.log "Hi, Lin"
else if name is 'John'
  console.log "Hi, John"
else if name is 'Paul' then console.log "Hi, Paul" # use then for one line
else
  console.log 'Hi, Stranger'

console.log name if name is 'Lin' # modifier

machine =
  running: no
  turnOn: -> this.running = yes
  turnOff: -> this.running = no

# unless
if not machine.running
  machine.turnOn()

unless machine.running
  machine.turnOn()

machine.turnOn() if not machine.running
machine.turnOn() unless machine.running

console.log machine.running

person =
  name: 'Lin'
  job: 'engineer'

giveWork = (person) ->
  switch person.job
    when 'programmer'
      console.log 'Do program'
    when 'designer' then console.log 'What? '
    when 'engineer'
      console.log 'Thats a cool job you got'
    else
      console.log 'IDK your job?'

giveWork person

person1 =
  name: 'Lin'
  relationship: 'Friend'

person2 =
  name: 'Shen'
  relationship: 'Brother'

greet = (person) ->
  msg = if person.relationship is 'Friend'
    'Hi, we are friends'
  else if person.relationship is 'Brother'
    'Hi, brother!'
  else
    'Hi, stranger'
  console.log msg

greet person1
greet person2

# coffeescript doesnt have result = condition ? true : false
# but have this v = if condition then truthy else falsey

greet = (person) ->
  msg = switch person.relationship
    when 'Friend' then 'Hi, we are friends'
    when 'Brother' then 'Hi, brother!'  else 'Hi, stranger'
  console.log msg


greet person1
greet person2

relationship = if person1.relationship is 'Brother' then 'Brother' else 'not bro'
console.log relationship
