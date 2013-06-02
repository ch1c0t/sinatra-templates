mod = {}
mod.PartialCtrl = [
  '$scope'

  (s) ->
    s.current  = 'first'
    s.partials = <[ first second ]>
]

angular.module(\App.controllers, []).controller mod
angular.module \App, <[ App.controllers ]>
