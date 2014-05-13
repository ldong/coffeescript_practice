# cakefile

{exec} = require 'child_process'

task 'compile', 'Compile all coffee scripts ', ->
  exec 'coffee -c src/*.coffee'

task 'watch', 'Waches for file changes', ->
  exec 'coffee -c -w src/*.coffee'

# save all the code into cakefile
# run cake compile
