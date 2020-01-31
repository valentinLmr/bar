class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    create?
  end

  def create?
    true
  end

  def show?
    true
  end

  def destroy?
    record.user == user
  end

  def suppression?
    record.user == user
  end

  def dashboard?
    true
  end
end
