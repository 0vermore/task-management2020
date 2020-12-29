class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.integer :priority
      t.datetime :due_date
      t.boolean :completed
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
