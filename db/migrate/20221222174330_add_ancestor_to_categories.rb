class AddAncestorToCategories < ActiveRecord::Migration[6.1]
  def change
    change_table :categories do |t|
      t.references :ancestor, index: true, foreign_key: { to_table: :categories }
    end
  end
end
