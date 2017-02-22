class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :role
      t.string :period
      t.string :string
      t.string :sponsor

      t.timestamps
    end
  end
end
