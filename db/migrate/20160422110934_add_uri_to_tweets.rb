class AddUriToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :uri, :string
  end
end
