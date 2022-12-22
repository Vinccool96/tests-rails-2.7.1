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
require 'rails_helper'

RSpec.describe Category, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
