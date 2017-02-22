class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.text :title
      t.text :question
      t.text :option1, null: false
      t.text :option2, null: false
      t.timestamps null: false
    end
  end
end
