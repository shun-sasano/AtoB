class AddDescriptionToCurriculums < ActiveRecord::Migration[5.1]
  def change
    add_column :curriculums, :description, :text
  end
end
