# jQuery in coffeescript

$ ->
  menu = $ '#menu'
  dropdown = $ '#dropdown'

  dropdown.hide()

  menu.on 'mouseover', (e) -> dropdown.stop.show 200

  menu.on 'mouseover', (e) -> dropdown.stop.hide 200


# coffee -c --watch *.coffee
# coffee -c --watch -o js src/*.coffee
