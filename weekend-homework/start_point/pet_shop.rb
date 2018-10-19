def pet_shop_name(name)
  return name[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, pets_sold)
  return shop[:admin][:pets_sold] += pets_sold
end

def stock_count(shop)
  numbers_of_pets = 0
  for pets in shop[:pets]
    numbers_of_pets += 1
  end
  return numbers_of_pets
end

def pets_by_breed(shop, type)
  dog_breeds = []
  for pet in shop[:pets]
    dog_breeds << pet if pet[:breed] == type
  end
  return dog_breeds
end

def find_pet_by_name(shop, pet_name)
  pet_details = Hash.new
  for pet in shop[:pets]
    pet_details.merge!(pet) if pet[:name] == pet_name
  end
  pet_details = nil if pet_details.length == 0
  return pet_details
end
