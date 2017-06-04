class Query < ApplicationRecord
  belongs_to :user
  has_many :stars

  def star_by!(user)
    stars.create!(user: user)
  end

  def unstar_by!(user)
    star = stars.find_by!(user: user)
    star.destroy!
  end

  def starred_by?(user)
    stars.exists?(user: user)
  end
end
