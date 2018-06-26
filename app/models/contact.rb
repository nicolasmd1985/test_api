class Contact < ActiveRecord::Base
  validates :mail, presence: true, uniqueness: true
  has_one :extra
end
