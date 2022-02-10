class CreateCorporates < ActiveRecord::Migration[6.0]
  def change
    create_table :corporates do |t|

      t.timestamps
    end
  end
end
