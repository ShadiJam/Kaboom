class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :country
      t.string :city
      t.string :name
      t.boolean :not_interested
      t.string :url

      t.timestamps
    end
  end
end
