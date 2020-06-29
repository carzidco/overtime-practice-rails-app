require "administrate/base_dashboard"

class PostDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo.with_options(searchable: false),
    id: Field::Number.with_options(searchable: false),
    date: Field::Date.with_options(searchable: false),
    rational: Field::Text.with_options(searchable: true),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    status: Field::Text.with_options(searchable: true)
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
  user
  status
  date
  rational
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
  user
  status
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
