module Types
  class QueryType < Types::BaseObject
    field :category, resolver: Resolvers::CategoryResolver
    field :categories, resolver: Resolvers::CategoriesResolver
  end
end
