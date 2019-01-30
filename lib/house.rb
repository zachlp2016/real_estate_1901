class House

  attr_reader :price,
              :address,
              :rooms


  def initialize(price, address)
    @price = price.strip[1..100].to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      if room.category == category
        category
      end
    end
  end

  def area
    @rooms.sum do |room|
      room.area
    end
  end

  def price_per_square_foot
    (price.to_f / area.to_f).round(2)
  end

  def rooms_sorted_by_area
    @rooms.reverse do |room|
      room.area
    end
  end

  def rooms_by_category
    hash = Hash.new(keys, values)
    @rooms.each do |room|
      hash = room.category
    end
    binding.pry
  end
end
