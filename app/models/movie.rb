class Movie < ActiveRecord::Base

  def self.all_ratings
    Movie.select(:rating).distinct
  end

end
