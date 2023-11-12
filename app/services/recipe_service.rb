class RecipeService < ApplicationService 
  def conn
    Faraday.new(url: 'https://api.edamam.com/') do |faraday|
      faraday.params['app_key'] = Rails.application.credentials.edamam[:key]
      faraday.params['app_id'] = Rails.application.credentials.edamam[:id]
      faraday.params['type'] = "public"
    end
  end

  def get_url(url)
    conn.get(url)
  end

  def recipe_search(country)
    json_parse(get_url("api/recipes/v2?q=#{country}"))
  end
end