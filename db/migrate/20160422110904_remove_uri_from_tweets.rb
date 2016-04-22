class RemoveUriFromTweets < ActiveRecord::Migration
  def change
    remove_column :tweets, :uri, :integer
  end
end
