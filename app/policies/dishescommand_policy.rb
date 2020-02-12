class DishescommandPolicy < ApplicationPolicy
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

  def destroy?
    (record.command.table.restaurant.user == user) || (record.user == user)
  end

  def edit?
    update?
  end

  def update?
    (record.command.table.restaurant.user == user) || (record.user == user)
  end
end
