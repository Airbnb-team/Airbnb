(function() {
  $(document).on('turbolinks:load', function() {
    return $("#autolocation").geocomplete({
      map: ".display-map",
      types: ["geocode", "establishment"],
      location: [35.710067, 139.8085117]
    });
  });

}).call(this);
