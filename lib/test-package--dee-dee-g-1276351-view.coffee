module.exports =
class TestPackageDeeDeeG1276351View
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('test-package--dee-dee-g-1276351')

    # Create message element
    message = document.createElement('div')
    message.textContent = "The TestPackageDeeDeeG1276351 package is Alive! It's ALIVE!"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @element.remove()

  getElement: ->
    @element
