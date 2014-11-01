class AddToCategoryTable < ActiveRecord::Migration
  def change
  	change_table :categories do |t|
  		t.string :name
  		t.string :description
  	end
  end
end
