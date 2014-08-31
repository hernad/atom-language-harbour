{View} = require 'atom'

module.exports =
class LanguageHarbourView extends View
  @content: ->
    @div class: 'language-harbour overlay from-top', =>
      @div "The LanguageHarbour package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "language-harbour:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "LanguageHarbourView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
