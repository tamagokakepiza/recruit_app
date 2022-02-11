class CreateCorporates < ActiveRecord::Migration[6.0]
  def change
    create_table :corporates do |t|
      t.string     :name,              null: false
      t.string     :industry
      t.string     :capital
      t.string     :earning
      t.string     :employee
      t.string     :place
      t.string     :average_income
      t.string     :average_age
      t.text       :business_content
      t.text       :human_resource
      t.text       :strength
      t.text       :weakness
      t.text       :selection_method
      t.text       :others
      t.timestamps
    end
  end
end