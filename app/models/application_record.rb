class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :message, 
    presence: true, 
    length: { maximum: 140 }
end
