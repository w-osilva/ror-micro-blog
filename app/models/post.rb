class Post < ApplicationRecord
  belongs_to :user

  extend Enumerize
  enumerize :visibility, in: { public: 0, private: 1 }, predicates: true, scope: true

  default_scope { order(created_at: :desc) }
end
