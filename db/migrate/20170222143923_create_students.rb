class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :degree
      t.integer :s_type
      t.string :research_topic
      t.integer :status
      t.string :email

      t.timestamps
    end
  end
end
