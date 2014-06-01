class Position < ActiveRecord::Base

  belongs_to :user
  belongs_to :org

  validates :org_id, presence: true
  validates :user_id, presence: true
end
