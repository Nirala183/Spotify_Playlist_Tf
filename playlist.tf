resource "spotify_playlist" "Bangers" {
    name = "OG"
    tracks = ["39LLxExYz6ewLAcYrzQQyP"]
  
}

data "spotify_search_track" "Beyonce" {
    artist = "Beyonce"
  
}

resource "spotify_playlist" "credit_beyonce" {
    name = "My Beyonce Playlist"
    tracks = [data.spotify_search_track.Beyonce.tracks[0].id,
    data.spotify_search_track.Beyonce.tracks[1].id,
    data.spotify_search_track.Beyonce.tracks[2].id]
  
}