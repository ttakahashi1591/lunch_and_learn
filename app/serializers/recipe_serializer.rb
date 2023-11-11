class RecipeSerializer
  include JSONAPI::Serializer

  attributes :title,
             :url,
             :country,
             image

  attribute :id do
    nil
  end

  attribute :type do
    'recipe'
  end
end
