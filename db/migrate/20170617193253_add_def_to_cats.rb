class AddDefToCats < ActiveRecord::Migration[5.0]
  def change
    add_column :cats, :default, :boolean
  end
end
