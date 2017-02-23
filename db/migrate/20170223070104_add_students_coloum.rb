class AddStudentsColoum < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :graduated_num, :integer
  end
end
