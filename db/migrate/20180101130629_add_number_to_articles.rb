class AddNumberToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :number, :integer
  end
end
