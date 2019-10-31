class Song < ActiveRecord::Base
    extend Slug::ClassMethods
    include Slug::InstanceMethods

    has_many :song_genres 
    has_many :genres, through: :song_genres
    belongs_to :artist

end 