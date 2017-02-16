class ProfilePolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      if user.guest?
        scope.where(visibility: Profile.visibility.public)
      else
        scope.all
      end
    end
  end

  def show?
    record.visibility.public? || record.id == user.profile.id
  end

  def edit?
    record.id == user.profile.id
  end

  def update?
    record.id == user.profile.id
  end
end