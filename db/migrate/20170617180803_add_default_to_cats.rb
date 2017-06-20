class AddDefaultToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :is_default?, :boolean, default: false
  end
end
