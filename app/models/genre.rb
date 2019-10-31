require_relative './concerns/slug_module.rb'

class Genre < ActiveRecord::Base
  include SlugModule::InstanceMethods
  extend SlugModule::ClassMethods
  
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
end