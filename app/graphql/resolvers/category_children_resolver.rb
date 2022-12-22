module Resolvers
  class CategoryChildrenResolver < Types::BaseObject
    description "Get a category's children"

    type Types::CategoryType.connection_type, null: true

    def resolve
      object&.children
    end
  end
end
