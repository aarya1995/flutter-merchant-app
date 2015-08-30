class Merchant < ActiveRecord::Base
  include Gravtastic
  gravtastic 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates :business_name, :category, :description, :address, :presence => true
end
