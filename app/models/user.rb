class User < ActiveRecord::Base
  rolify

  belongs_to :tier

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :registerable, :confirmable


  attr_accessible :role_ids, :name, :email, :password, 
                  :password_confirmation, :tier_id, 
                  :daily_limit, :as => :admin
  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, 
                  :remember_me
  # attr_accessible :title, :body

  validates_presence_of :name

  before_create :assign_role, :assign_tier, :assign_daily_limit

private
  def assign_role
    self.add_role :user if self.roles.first.nil?
  end

  def assign_tier
    self.tier_id = 2 if self.tier_id.nil?
  end

  def assign_daily_limit
    self.daily_limit = 0 if self.daily_limit.nil?
  end

end
