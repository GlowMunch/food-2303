class Food
  attr_reader :code,
               :description,
               :brand,
               :ingredients

  def initialize(data)
    @code = data[:code]

end