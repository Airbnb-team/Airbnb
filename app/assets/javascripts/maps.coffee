$(document).on 'turbolinks:load', ->
    $("#autolocation").geocomplete {        # 手順5 で指定したテキストボックスでオートコンプリートが動くように設定
      map: ".display-map"                   # 手順6 で用意した要素と紐付け
      # details: ".contents-wrapper"                      # オートコンプリートの結果を入れる親要素を指定
      # detailsAttribute: "data-geo"         # 手順7 で使用した属性の指定
      types: ["geocode", "establishment"]  # Google から返ってくるオートコンプリート候補の種類の指定
      location: [35.710067, 139.8085117]   
    }
