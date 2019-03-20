class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :memo
      t.boolean :is_display, default: true
      t.integer :status, default:0, null: false, limit: 1

      t.timestamps
    end
  end
end
