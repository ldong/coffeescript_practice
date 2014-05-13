courseTopic = 'CoffeeScript'

# this.courseTopic = courseTopic # make it to global, export for node

root = (exports ? window)
root.courseTopic = courseTopic

console.log courseTopic
# console.log this.courseTopic
# console.log window.courseTopic


classroom =
  students: ['Alice', 'Bob', 'Charle']
  print: ->
    getName = (i) => # fat arrow
    # getName = (i) -> # will fail
      this.students[i]

    for s, i in this.students
      console.log getName i

classroom.print()
