LanguageMqlView = require './language-mql-view'

module.exports =
  languageMqlView: null

  activate: (state) ->
    @languageMqlView = new LanguageMqlView(state.languageMqlViewState)

  deactivate: ->
    @languageMqlView.destroy()

  serialize: ->
    languageMqlViewState: @languageMqlView.serialize()
