# frozen_string_literal: true

module Api
  module V1
    CoisaType = GraphQL::ObjectType.define do
      name 'Entry'
      field :amount do
        type types.Float
        resolve -> (obj, args, ctx) { binding.pry }
      end
    end

    Coisa = GraphQL::Schema.define do
      query CoisaType
    end

    class EntriesController < ApplicationController

      def index
        Rails.logger.info Coisa.execute(request.headers['X-query']).to_json
        render json: { entry: Coisa.execute(request.headers['X-query']) }
      end
    end
  end
end
