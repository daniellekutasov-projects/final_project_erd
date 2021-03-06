class User < ApplicationRecord
  # Direct associations

  has_many   :preferences,
             :class_name => "Category",
             :dependent => :destroy

  # Indirect associations

  has_many   :trips,
             :through => :preferences,
             :source => :trip

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
