class Like < ApplicationRecord
  belongs_to :forum
  belongs_to :user

  validates_uniqueness_of :forum_id, scope: :user_id

end
