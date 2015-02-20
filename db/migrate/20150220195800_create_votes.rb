class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :constituent_id
      t.integer :bill_id
      t.boolean :response

      t.timestamps null: false
    end
  end
end
