module ReviewsHelper
  def star_rating(rating)
    '★' * (rating.to_f.round) + '☆' * (5 - rating.to_f.round)
  end
end
