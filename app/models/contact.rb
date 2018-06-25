class Contact < ActiveRecord::Base
  validates :mail, presence: true
end
