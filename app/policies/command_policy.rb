class CommandPolicy < ApplicationPolicy
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

    def edit?
    end

    def update?
    end

    def destroy?
    end
end
