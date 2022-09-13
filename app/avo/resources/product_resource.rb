# frozen_string_literal: true

class ProductResource < Avo::BaseResource
  self.title = :id

  field :id, as: :id, link_to_resource: true
  field :name, as: :text
end

