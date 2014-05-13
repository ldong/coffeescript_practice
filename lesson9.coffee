emails = ['a@a.com', 'jax@ajax', 'some.one@a.com', 'name', 'what@areyou.talking.about']

# Regular expressions
emailRegex = ///
  ([\w\.+-]+) # unique name
  @         # at sign
  (\w+)     # domain
  (\.\w+[\w\.]*) # tld
///

for email in emails
  match = email.match emailRegex
  if match?
    console.log email
  else
    console.log email + ' is not an email'
