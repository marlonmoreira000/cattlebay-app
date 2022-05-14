class RemoveProfileIdFromListing < ActiveRecord::Migration[7.0]
  def change
    remove_column :listings, :profile_id, :integer
  end
end
