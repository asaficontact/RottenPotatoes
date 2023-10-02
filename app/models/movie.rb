class Movie < ActiveRecord::Base

  def self.all_ratings
    result = []
    extract = Movie.select(:rating).distinct
    extract.each do |m|
      result << m.rating
    end
    return result
  end

  def self.with_ratings(ratings)
    if ratings == nil or ratings.length == 0:
      return Movie.all
    else
      return Movie.where(rating: ratings)
    end
  end

end
