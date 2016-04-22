class AddUriToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :uri, :integer
  end
end
