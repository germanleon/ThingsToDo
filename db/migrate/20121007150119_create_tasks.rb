class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :date
      t.integer :status
      t.references :user

      t.timestamps
    end
    add_index :tasks, :user_id
  end
end
