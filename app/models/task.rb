class Task < ApplicationRecord
  enum status: {draft: 0, published: 1, archieved: 2}
end
