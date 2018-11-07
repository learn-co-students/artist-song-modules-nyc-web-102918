require 'pry'


class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  @@all = []

  # def initialize
  #   self.class.all << self
  # end



  extend Findable

  def self.all
    @@all
  end

  extend Memorable


  def artist=(artist)
    @artist = artist
  end

  include Paramable

end
