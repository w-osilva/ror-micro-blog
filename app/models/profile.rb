class Profile < ApplicationRecord

  extend Enumerize
  enumerize :visibility, in: { public: 0, private: 1 }, predicates: true, scope: true

end
