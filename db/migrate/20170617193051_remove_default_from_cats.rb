class RemoveDefaultFromCats < ActiveRecord::Migration[5.0]
  def change
    remove_column :cats, :is_default?, :boolean
  end
end
