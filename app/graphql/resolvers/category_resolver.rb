module Resolvers
  class CategoryResolver < Resolvers::BaseResolver
    type Types::CategoryType, null: true
    description "Get a category"

    argument :id, ID, required: true

    def resolve(id: nil)
      Category.find(id)
    end
  end
end
