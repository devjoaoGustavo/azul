# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Entry, type: :model do
  describe 'attributes' do
    it { is_expected.to have_db_column(:entry_date).of_type(:datetime) }
    it { is_expected.to have_db_column(:amount).of_type(:decimal) }
    it { is_expected.to have_db_column(:title).of_type(:string) }
    it { is_expected.to have_db_column(:id).of_type(:integer) }
  end
end
