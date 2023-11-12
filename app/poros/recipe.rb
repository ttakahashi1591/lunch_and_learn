class Recipe
  attr_reader :id,
              :title,
              :url,
              :country,
              :image
  
  def initialize(attributes)
    @id = nil
    @title = attributes[:recipe][:label]
    @url = attributes[:recipe][:url]
    @country = nil
    @image = attributes[:recipe][:image]
  end
end