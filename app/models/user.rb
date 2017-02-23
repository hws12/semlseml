class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum user_type: { "pro" => 0, "dr" => 1, "graduate" =>2, "undergraduate" =>3 }
  enum status: { "student" => 0, "alumni" => 1}
end
