class EdamamService < ApplicationService 
  def conn
    Faraday.new(url: 'https://api.edamam.com') do |faraday|

    end
  end

  def get_url(url)
    conn.get(url)
  end

  def country_names
    json_parse(conn.get_url('all?fields=name'))[:common]
  end
end