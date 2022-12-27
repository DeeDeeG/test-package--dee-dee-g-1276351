TestPackageDeeDeeG1276351View = require './test-package--dee-dee-g-1276351-view'
{CompositeDisposable} = require 'atom'

module.exports = TestPackageDeeDeeG1276351 =
  testPackageDeeDeeG1276351View: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @testPackageDeeDeeG1276351View = new TestPackageDeeDeeG1276351View(state.testPackageDeeDeeG1276351ViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @testPackageDeeDeeG1276351View.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'test-package--dee-dee-g-1276351:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @testPackageDeeDeeG1276351View.destroy()

  serialize: ->
    testPackageDeeDeeG1276351ViewState: @testPackageDeeDeeG1276351View.serialize()

  toggle: ->
    console.log 'TestPackageDeeDeeG1276351 was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
