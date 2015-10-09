class CreateResponses < ActiveRecord::Migration
  def change
  	create_table :responses do |t|
  	  t.string :body
  	  t.references :respondable, polymorphic: true, index: true
  	end
  	add_index :responses, :respondable_id
  end
end
