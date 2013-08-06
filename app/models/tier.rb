class Tier < ActiveRecord::Base

  has_many :users
  # belongs_to :user

  attr_accessible :name, :limit, :as => :admin

end