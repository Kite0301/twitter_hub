class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.datetime :date

      t.timestamps null: false
    end
  end
end
