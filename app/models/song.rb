require_relative './concerns/slug_module.rb'

class Song < ActiveRecord::Base
  include SlugModule::InstanceMethods
  extend SlugModule::ClassMethods
  
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
end