class AddPhotoToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :photo, :string
  end
end
