class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.integer :user_id
      t.boolean :favorite, default: false

      t.timestamps
    end
  end
end
