class Movie < ActiveRecord::Base

  def self.all_ratings
    result = []
    extract = Movie.select(:rating).distinct
    extract.each do |m|
      result << m.rating
    end
    return result
  end

  def self.with_ratings(ratings, sort_by)
    if ratings == nil or ratings.empty? 
      if sort_by
        return Movie.order(sort_by)
      end
      return Movie.all
    else
      ratings = ratings.keys.map(&:upcase)
      return Movie.where(rating: ratings) 
    end

    

  end

end
