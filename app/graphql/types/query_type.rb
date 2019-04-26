module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :entries, [EntryObject], null: false do
      argument :id, [Integer], required: false
      argument :title, String, required: false
      argument :entry_date, GraphQL::Types::ISO8601DateTime, required: false
    end

    def entries(params = {})
      entry_date = params.delete(:entry_date)&.to_datetime
      title      = params.delete(:title)
      id         = params.delete(:id)

      query = table[:id].gt(0)
      query = table[:entry_date].between(entry_date.at_beginning_of_day..entry_date.at_end_of_day) if entry_date.present?
      query = query.and(table[:title].matches_regexp(title, false)) if title.present?
      query = query.and(table[:id].in(id)) if id.present?

      Entry.where(query)
    end

    def table
      @table ||= Entry.arel_table
    end
  end
end
