class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string      :name         ,nill: false
      t.string      :address      ,nill: false
      t.integer     :phone_number ,nill: false
      t.integer     :price
      t.text        :body
      t.timestamps
    end
  end
end
