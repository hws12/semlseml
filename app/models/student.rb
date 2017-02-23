class Student < ApplicationRecord
  enum s_type: { "dr" => 0, "edba" => 1, "emba" =>2, "graduate" =>3, "graduate" =>4, "under_graduate" =>4 }
  enum status: { "student" => 0, "alumni" => 1}
end
