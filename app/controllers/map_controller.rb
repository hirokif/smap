class MapController < ApplicationController
  def index
    @places = Place.all
    @hash = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
      #marker.infowindow place.description
      marker.infowindow place.title
      #marker.json({title: place.title})
      marker.picture({
      # "url" => '/assets/markers/marker' + place.title + '.png',
        "url" => 'http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=' + place.title + '|add8e6|000000',
        "width" => 32,
        "height" => 37
      })
      marker.json({title: place.title })
    end
  end
end
