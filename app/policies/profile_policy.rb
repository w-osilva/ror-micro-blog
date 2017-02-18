class ProfilePolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      if !user
        scope.where(visibility: Profile.visibility.public)
      else
        scope.all
      end
    end
  end

  def show?
    user.present? || record.visibility.public?
  end

  def edit?
    can_change?
  end

  def update?
    can_change?
  end

  def can_change?
    record.id == user.profile.id
  end

  def can_follow?
    user.present? and user.id != record.user.id
  end
end