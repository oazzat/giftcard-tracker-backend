class AddPrevUserIdToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :prev_user, :integer
  end
end
