class AddColumnToDoinits < ActiveRecord::Migration[6.0]
  def change
    add_column :doinits, :completed, :boolean
  end
end
