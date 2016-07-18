class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :author
      t.string :body, null: false
      t.timestamps null: false
    end
  end
end
