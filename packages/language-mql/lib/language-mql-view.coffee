{View} = require 'atom'

module.exports =
class LanguageMqlView extends View
  @content: ->
    @div class: 'language-mql overlay from-top', =>
      @div "The LanguageMql package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "language-mql:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguageMqlView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
