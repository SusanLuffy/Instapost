class AddPhotoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :photo, :string
    add_column :posts, :description, :text
    add_column :posts, :user_id, :integer
  end
end
