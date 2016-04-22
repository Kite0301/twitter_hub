class ChangeUriToTweet < ActiveRecord::Migration
  def up
    change_column :Tweets, :uri, :integer
  end

  #変更前の型
  def down
    change_column :Tweets, :uri, :string
  end
end
