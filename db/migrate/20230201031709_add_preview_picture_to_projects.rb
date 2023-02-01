class AddPreviewPictureToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :preview_picture, :string
  end
end
