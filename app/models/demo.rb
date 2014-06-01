class Demo < ActiveRecord::Base

  has_many :bids

  belongs_to :contractor, class_name: "User"
  belongs_to :client, class_name: "User"
end
