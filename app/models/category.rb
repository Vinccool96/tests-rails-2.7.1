# == Schema Information
#
# Table name: categories
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ancestor_id :bigint
#
# Indexes
#
#  index_categories_on_ancestor_id  (ancestor_id)
#
# Foreign Keys
#
#  fk_rails_...  (ancestor_id => categories.id)
#
class Category < ApplicationRecord
  belongs_to :ancestor, optional: true

  # @return [ActiveRecord::Relation<Category>]
  def children
    Category.where(ancestor_id: id)
  end
end
