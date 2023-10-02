class Movie < ActiveRecord::Base

  def self.all_ratings
    Movie.select(:rating).distinct.to_s
  end

end
