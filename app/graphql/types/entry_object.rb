module Types
  class EntryObject < BaseObject
    field :id,         Integer,                         null: true
    field :amount,     Float,                           null: true
    field :title,      String,                          null: true
    field :entry_date, GraphQL::Types::ISO8601DateTime, null: true
  end
end
