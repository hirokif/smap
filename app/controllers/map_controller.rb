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
        "url" => '/assets/markers/marker' + place.title + '.png',
        "width" => 32,
        "height" => 37
      })
      marker.json({title: place.title })
    end
  end
end
