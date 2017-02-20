class PostPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      if !user
        scope.where(visibility: Post.visibility.public)
      else
        scope.all
      end
    end
  end

  def create?
    can_change?
  end

  def show?
    user.present? || record.visibility.public?
  end

  def destroy?
    can_change?
  end

  def can_change?
    record.user.id == user.id
  end

end