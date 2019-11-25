class AddEventToComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :event, foreign_key: true
    add_reference :comments, :user, foreign_key: true
    add_column :comments, :content, :string
  end
end
