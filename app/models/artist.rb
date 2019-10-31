require_relative './concerns/slug_module.rb'

class Artist < ActiveRecord::Base
  include SlugModule::InstanceMethods
  extend SlugModule::ClassMethods

  has_many :songs
  has_many :song_genres, through: :songs
  has_many :genres, through: :song_genres


end