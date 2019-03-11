class Task < ApplicationRecord
  enum status: {draft: 0, published: 1, archieved: 2}
  validates :title, uniqueness: true, presence: true
  validates :memo, presence: true, length:{ minimum: 10, maximum: 30 }
end
