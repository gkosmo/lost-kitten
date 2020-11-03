class Kitty < ApplicationRecord
  SPECIES = ["cat", "dog", "bird", "reptile"]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }

  def days_since_found
    "#{(Date.today - self.found_on).to_i} days ago"
  end
end
