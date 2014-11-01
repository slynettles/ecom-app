class CreateCategories < ActiveRecord::Migration
  def change
	create_table :categories do |t|
		t.string :name
		t.text :description
		t.integer :category_id
		#you can add more stuff as per your requirements
		t.timestamps
	end
  end
end
