class CreateDoinits < ActiveRecord::Migration[6.0]
  def change
    create_table :doinits do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.integer :importance

      t.timestamps
    end
  end
end
