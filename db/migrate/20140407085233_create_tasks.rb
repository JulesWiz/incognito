class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.boolean :completed
      t.string :name
      t.references :event, index: true

      t.timestamps
    end
  end
end
