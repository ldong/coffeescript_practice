###
prototype

function Dog(name) {
  this.name = name;
}

Dog.prototype.growl = function(){
  console.log('*growl*');
}

r = new Dog('Rusty');
r.growl();
###

# Dog = (name) ->
  ## this.name = name
  # @name = name

Dog = (@name) ->

# Dog.prototype.growl
Dog::growl = ->
  console.log '*growl*'

d = new Dog('Rusty')
console.log d.name
d.growl()

# constructor
BorderCollie = (@name, @tricks) ->
# polymorphism
BorderCollie extends Dog

BorderCollie::perform =(trick) ->
  if trick in @tricks
    console.log "#{@name} is #{trick}"
  else
    console.log '*whine*'
rusty = new BorderCollie 'Rusty', ['playing dead', 'catch a frisbee', 'rolling over']
rusty.perform 'playing dead'
rusty.growl()
