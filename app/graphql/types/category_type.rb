module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :ancestor, Types::CategoryType, null: true, description: "The category's ancestor"
    field :children, Types::CategoryType.connection_type, null: false, description: "The categories that have this one as an ancestor"
  end
end
