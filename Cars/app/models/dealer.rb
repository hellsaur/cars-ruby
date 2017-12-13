class Dealer < ApplicationRecord
  has_many :makes, dependent: :delete_all
  
end
