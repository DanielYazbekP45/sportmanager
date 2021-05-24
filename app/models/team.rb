class Team < ApplicationRecord
  belongs_to :sport
  has_many :players
end
