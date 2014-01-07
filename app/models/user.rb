class User < ActiveRecord::Base
	extend Enumerize
  has_many :accounts
  has_many :orders
  has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable,
         :rememberable, :trackable, :lockable, :timeoutable

  enumerize :role, in: [:admin, :client]
  delegate :admin?, :client?, to: :role
end
