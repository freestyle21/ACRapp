'use strict'

filters = angular.module('filters', [])

filters.filter('highlight', ->
      pattern = /ipsum/g;
      text.replace(pattern, '<span style="color:red">ipsum</span>')
)
filters.filter('shorten', ->
    (text, length) -> 
      text.substring(0, length) + "..."
)

meetup =  angular.module('meetup', ['filters']);
  
  
ControllerA = ($rootScope, $scope) ->
    $scope.body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vitae massa eget erat feugiat elementum. Nam iaculis nunc leo, a posuere elit semper at. Phasellus tincidunt, ipsum non tristique scelerisque, lacus nulla blandit dolor, a suscipit nisl mi vitae augue. Nam suscipit accumsan turpis, eu gravida dolor adipiscing in. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur lacus nibh, dapibus a lobortis vel, luctus aliquet augue. Curabitur volutpat sed nisi id dictum. Suspendisse auctor feugiat luctus. Ut interdum tortor ac rutrum semper. Ut dignissim fermentum massa, vitae pulvinar sapien rhoncus ut. Morbi suscipit, est non aliquet facilisis, nulla urna dapibus nulla, ut tristique dui dui at sapien. "
