class Book < ApplicationRecord
  validates :isbn, :title, :author, :status, presence: true

  def to_s
    "#{title} - #{author}"
  end
end
