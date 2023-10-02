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
    if ratings == nil or ratings.length == 0
      return Movie.all
    else
      ratings = ratings.keys.map(&:upcase)
      return Movie.where(rating: ratings.keys)
    end
  end

end
