class User < ActiveRecord::Base
has_many :appointments
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

#  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_name

  validates :name, presence: true , length: { maximum: 35,
    tokenizer: lambda { |str| str.split(/\s+/) },
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }
  validates :zip, presence: true ,length: { maximum: 5 }
  validates :password, presence: true , length: { in: 6..20 }
  validates :practice, presence: true ,:numericality => { :greater_than => 0, :less_than_or_equal_to => 100 }
end
