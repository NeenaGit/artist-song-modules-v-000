require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  extend Findable

  def artist=(artist)
    @artist = artist
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  include Paramable


  def self.all
    @@songs
  end
end
