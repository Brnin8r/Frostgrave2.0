class School < ActiveRecord::Base
  has_many :aligneds
  has_many :neutrals
  has_one :opposeds

end
