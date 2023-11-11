class RecipesService < ApplicationService 
  def conn
    Faraday.new(url: 'https://localhost3000/')
  end

  def get_url(url)
    conn.get(url)
  end

  def country_names
    json_parse(conn.get_url('api/v1/recipes'))
  end
end