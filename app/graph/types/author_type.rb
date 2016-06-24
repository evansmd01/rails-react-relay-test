# app/graph/types/author_type.rb
AuthorType = GraphQL::ObjectType.define do
  name "Author"
  description "Author of Blogs"
  field :name, types.String
end