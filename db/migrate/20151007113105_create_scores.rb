class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :value
      t.references :scorable, polymorphic: true, index: true
    end
    add_index :scores, :scorable_id
  end
end
