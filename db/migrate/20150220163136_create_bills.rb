class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :name
      t.boolean :status
      t.integer :staff_id
      t.boolean :real_vote

      t.timestamps null: false
    end
  end
end
