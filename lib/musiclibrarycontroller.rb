class MusicLibraryController

  def initialize(path = './db/mp3s')
    importer = MusicImporter.new(path)
    importer.import
  end

  def call
    loop do
    input = gets.chomp
    case input
    when "exit"
      break
    when "list songs"
      list_songs
    when "list artists"
      list_artists
    when "list genres"
      list_genres
    when "play song"
      play_song(gets.chomp.to_i)
    when "list artist"
      list_songs_from_artist(gets.chomp)
    when "list genre"
      list_songs_from_genre(gets.chomp)
    end
  end
end


end
