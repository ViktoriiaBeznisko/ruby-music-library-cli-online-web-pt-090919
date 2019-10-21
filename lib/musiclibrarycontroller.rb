class MusicLibraryController

  def initialize(path = './db/mp3s')
    importer = MusicImporter.new(path)
    importer.import
  end

  def call
      input = ""
      until input == "exit"
        puts "Please enter action"
        input = gets.chomp
        case input
        when "list songs"
          list_songs
        when "list artists"
          list_artists
        when "list genres"
          list_genres
        when "play song"
          play_song
        when "list artist"
          list_artist
        when "list genre"
          list_genre
        when "exit"
          puts "Goodbye"
        else
          puts "invalid action"
        end
      end
    end


end
