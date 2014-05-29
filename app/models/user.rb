class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable_

  # associations
  has_many :demos
end


# => [:reflections,
#  :reflections?,
#  :reflections=,
#  :aggregate_reflections,
#  :aggregate_reflections?,
#  :aggregate_reflections=,
#  :reflect_on_all_aggregations,
#  :reflect_on_aggregation,
#  :reflect_on_all_associations,
#  :reflect_on_association,
#  :reflect_on_all_autosave_associations]
