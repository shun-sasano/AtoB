class AddCurriculumIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :curriculum_id, :integer
  end
end
