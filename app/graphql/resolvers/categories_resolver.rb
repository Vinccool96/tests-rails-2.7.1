module Resolvers
  class CategoriesResolver < Resolvers::BaseResolver
    description "Get categories"
    type Types::CategoryType.connection_type, null: true

    argument :id, ID, required: false

    def resolve(id: nil)
      cats = Category.find(id)
      cats = cats.where(ancestor_id: id) unless id.nil?
      cats
    end
  end
end
