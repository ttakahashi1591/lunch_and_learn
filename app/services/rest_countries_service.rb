class RestCountriesService < ApplicationService
  def conn
    Faraday.new(url: 'https://restcountries.com/')
  end

  def get_url(url)
    conn.get(url)
  end

  def country_names
    json_parse(conn.get_url('all?fields=name'))[:common]
  end
end
