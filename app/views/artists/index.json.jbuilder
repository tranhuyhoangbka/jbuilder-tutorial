json.artists @artists do |artist|
  json.cache! ['v1', artist], expires_in: 1.minute do
    json.(artist, :id, :name, :label)
    if artist.id == 1
      json.name_with_label name_with_label(artist)
    end
    json.albums artist.albums, partial: "albums/album", as: :album
  end
end