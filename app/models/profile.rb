class Profile < ApplicationRecord

  extend Enumerize
  enumerize :visibility, in: { public: 0, private: 1 }, predicates: true, scope: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def picture=(picture = "/assets/theme/img/avatar.jpg")
    self[:picture] = picture
  end

  def picture
    self[:picture].present? ? self[:picture] : "/assets/theme/img/avatar.jpg"
  end
end
