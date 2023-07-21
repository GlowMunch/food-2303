class FoodSearchFacade
  def search_food(food)
    service = FoodService.new
    request = service.find_food(food)
    @foods = request[:data].map do |food|
      Food.new(food)
    end
  end
end