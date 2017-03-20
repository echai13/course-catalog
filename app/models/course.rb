class Course < ApplicationRecord
  has_many :subjects

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end


end
