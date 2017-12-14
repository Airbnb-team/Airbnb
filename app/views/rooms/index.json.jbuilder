json.array! @explanatories do |explanatory|
  json.id explanatory.id
  json.title explanatory.title
  json.overview explanatory.overview
  json.room_id explanatory.room_id
  json.user_id explanatory.user_id
end
