class RenameTypeColumnInShips < ActiveRecord::Migration[7.1]
  def change
    rename_column :ships, :type, :category
  end
end
