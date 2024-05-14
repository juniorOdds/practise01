class CreateFriendlists < ActiveRecord::Migration[7.1]
  def change
    create_table :friendlists do |t|
      t.string :name

      t.timestamps
    end
  end
end
