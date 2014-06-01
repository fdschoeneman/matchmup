class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable_

  # associations
  has_many :addresses, as: :addressable
  has_many :bids, foreign_key: :bidder_id
  has_many :demos
  has_many :jobs, class_name: "Demo"
  has_many :orgs, through: :positions
  has_many :positions

  # validations
end

