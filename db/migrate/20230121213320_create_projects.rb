class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.boolean :is_woodworking
      t.boolean :is_web

      t.timestamps
    end
  end
end
