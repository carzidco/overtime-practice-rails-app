require "administrate/base_dashboard"

class PostDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    date: Field::Date,
    rational: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
  user
  id
  date
  rational
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
  user
  id
  date
  rational
  created_at
  updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
  user
  date
  rational
  ].freeze

  COLLECTION_FILTERS = {}.freeze

end
