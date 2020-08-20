class PlacePolicy < ApplicationPolicy
  def show?
    return true
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

  def quizz?
    true
  end
end
