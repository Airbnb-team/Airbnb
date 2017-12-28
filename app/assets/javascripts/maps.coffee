$(document).on 'turbolinks:load', ->
    $("#autolocation").geocomplete {
      map: ".display-map"

      types: ["geocode", "establishment"]  
      location: [35.710067, 139.8085117]
    }
