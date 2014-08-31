LanguageHarbourView = require './language-harbour-view'

module.exports =
  languageHarbourView: null

  activate: (state) ->
    @languageHarbourView = new LanguageHarbourView(state.languageHarbourViewState)

  deactivate: ->
    @languageHarbourView.destroy()

  serialize: ->
    languageHarbourViewState: @languageHarbourView.serialize()
