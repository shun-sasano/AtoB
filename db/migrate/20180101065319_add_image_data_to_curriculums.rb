class AddImageDataToCurriculums < ActiveRecord::Migration[5.1]
  def change
    add_column :curriculums, :image_data, :text
  end
end
