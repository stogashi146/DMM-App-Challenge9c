class AddCountToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :count, :integer
  end
end
