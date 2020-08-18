class CitizenshipPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def destroy?
    record.user == user
  end
end
