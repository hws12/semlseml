class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :type
      t.string :name
      t.integer :degree
      t.string :research_topic
      t.string :job
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
