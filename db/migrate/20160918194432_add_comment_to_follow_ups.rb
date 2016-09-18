class AddCommentToFollowUps < ActiveRecord::Migration[5.0]
  def change
    add_column :follow_ups, :comment, :string
  end
end
