class ReviewPolicy < ApplicationPolicy
  def new?
    true
  end

  def create?
    record.place.user != user && (record.place.reviews.select { |review| review.user == user } == [])
  end

  def destroy?
    record.user == user
  end
end
