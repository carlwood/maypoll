class CreatePolls < ActiveRecord::Migration[7.2]
  def change
    create_table :polls do |t|
      t.string :question
      t.text :options
      t.integer :type
      t.integer :maxChoices
      t.string :code
      t.string :adminCode

      t.timestamps
    end
  end
end
