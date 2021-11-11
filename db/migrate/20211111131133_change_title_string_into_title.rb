class ChangeTitleStringIntoTitle < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :title_string, :title
  end
end
