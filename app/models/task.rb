class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true 
  validates :memo, presence: true, length:{ minimum: 10, maximum: 30 }
  enum status: { draft: 0, published: 1, archieved: 2 }
end
