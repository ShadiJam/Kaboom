class CreatePlacesApis < ActiveRecord::Migration[5.0]
  def change
    create_table :places_apis do |t|

      t.timestamps
    end
  end
end
