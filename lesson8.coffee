class Dog
  constructor: (@name) ->
  growl: -> console.log '*growl*'

dog = new Dog('Rusty')
console.log dog.name
dog.growl()


class BorderCollie extends Dog
  #constructor: (@name, @tricks) ->
  constructor: (name, @tricks=[]) ->
    super name
  perform: (trick) -> console.log if trick in @tricks then "#{@name} is #{trick}" else '*whine*'
  growl: (person) ->
    if person is @master
      console.log '*bark*'
    else
      #super pass all params to parent
      #super() pass no params
      super()

dog2 = new BorderCollie 'Oreo' #, ['playing dead', 'fetching a ball']

console.log dog2.name
dog2.perform 'playing dead'
dog2.perform 'fetching a ball'
dog2.growl()

dog2.master='Lin'
dog2.growl('Jeremy')
dog2.growl('Lin')
