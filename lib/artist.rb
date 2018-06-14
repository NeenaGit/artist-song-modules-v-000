require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  extend Findable

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  extend Memorable


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  include Paramable

end
