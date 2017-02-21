class User < ApplicationRecord
  enum type: { "pro" => 0, "dr" => 1, "graduate" =>2, "undergraduate" =>3 }
  enum status: { "student" => 0, "alumni" => 1}
end
