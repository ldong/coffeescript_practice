# loops

arr = ['a', 'b', 'c', 'd']
obj =
  name: 'a'
  age: 10
  nice: yes

for a, index in arr by 2 # for arrays
# for a, index in arr when index % 2 is 0
  console.log "index: #{index}, value: #{a}"

for a, index in arr when a.indexOf('a') is 0
  console.log "index: #{index}, value: #{a}"

# comprehension
console.log a for a in arr
console.log (a for a in arr)  # output as array

for key, val of obj  # for objects
  console.log "#{key}: #{val}"

Site = (name) ->
  this.name = name

Site.prototype.topic = 'Web Developer'
obj = new Site 'Netutus+'

for key, val of obj
  console.log "#{key}: #{val}"


for own key, val of obj  # for only the properties of this obj rather than its prototype
  console.log "#{key}: #{val}"

i = 0
while arr[i]
  console.log arr[i]
  ++i

i = 0
while not (i is arr.length)
# until
  console.log arr[i]
  ++i

i = 0
until i is arr.length
  console.log arr[i]
  ++i

i = 0
console.log arr[i++] until i is arr.length

i = 0
loop
  console.log arr[i++]
  break unless i < arr.length
