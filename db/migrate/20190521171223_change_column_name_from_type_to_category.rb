class ChangeColumnNameFromTypeToCategory < ActiveRecord::Migration[5.2]
  def change
    rename_column :whiskeys, :type, :category
  end
end
