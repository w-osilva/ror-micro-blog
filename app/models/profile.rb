class Profile < ApplicationRecord

  extend Enumerize
  enumerize :visibility, in: { public: 0, private: 1 }, predicates: true, scope: true

  default_scope { order(created_at: :desc) }

  def full_name
    "#{first_name} #{last_name}"
  end

  def picture=(picture = (Faker::Avatar.image))
    self[:picture] = picture
  end

  def picture
    self[:picture].present? ? self[:picture] : "/assets/theme/img/avatar.jpg"
  end

  def user
    User.where(profile_id: self[:id]).first
  end

end
