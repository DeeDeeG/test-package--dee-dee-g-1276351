TestPackageDeeDeeG1276351 = require '../lib/test-package--dee-dee-g-1276351'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "TestPackageDeeDeeG1276351", ->
  [workspaceElement, activationPromise] = []

  beforeEach ->
    workspaceElement = atom.views.getView(atom.workspace)
    activationPromise = atom.packages.activatePackage('test-package--dee-dee-g-1276351')

  describe "when the test-package--dee-dee-g-1276351:toggle event is triggered", ->
    it "hides and shows the modal panel", ->
      # Before the activation event the view is not on the DOM, and no panel
      # has been created
      expect(workspaceElement.querySelector('.test-package--dee-dee-g-1276351')).not.toExist()

      # This is an activation event, triggering it will cause the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'test-package--dee-dee-g-1276351:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        expect(workspaceElement.querySelector('.test-package--dee-dee-g-1276351')).toExist()

        testPackageDeeDeeG1276351Element = workspaceElement.querySelector('.test-package--dee-dee-g-1276351')
        expect(testPackageDeeDeeG1276351Element).toExist()

        testPackageDeeDeeG1276351Panel = atom.workspace.panelForItem(testPackageDeeDeeG1276351Element)
        expect(testPackageDeeDeeG1276351Panel.isVisible()).toBe true
        atom.commands.dispatch workspaceElement, 'test-package--dee-dee-g-1276351:toggle'
        expect(testPackageDeeDeeG1276351Panel.isVisible()).toBe false

    it "hides and shows the view", ->
      # This test shows you an integration test testing at the view level.

      # Attaching the workspaceElement to the DOM is required to allow the
      # `toBeVisible()` matchers to work. Anything testing visibility or focus
      # requires that the workspaceElement is on the DOM. Tests that attach the
      # workspaceElement to the DOM are generally slower than those off DOM.
      jasmine.attachToDOM(workspaceElement)

      expect(workspaceElement.querySelector('.test-package--dee-dee-g-1276351')).not.toExist()

      # This is an activation event, triggering it causes the package to be
      # activated.
      atom.commands.dispatch workspaceElement, 'test-package--dee-dee-g-1276351:toggle'

      waitsForPromise ->
        activationPromise

      runs ->
        # Now we can test for view visibility
        testPackageDeeDeeG1276351Element = workspaceElement.querySelector('.test-package--dee-dee-g-1276351')
        expect(testPackageDeeDeeG1276351Element).toBeVisible()
        atom.commands.dispatch workspaceElement, 'test-package--dee-dee-g-1276351:toggle'
        expect(testPackageDeeDeeG1276351Element).not.toBeVisible()
