require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |categories|
    if categories["status"].downcase == "winner"
    return categories["name"].split.first
   # binding.pry
    end
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season, people|
    people.each do |person|
    #binding.pry
      if person["occupation"] == occupation
        return person["name"] 
      end
    end
  end 
end

def count_contestants_by_hometown(data, hometown)
  hometowns = []
  data.each do |seasons, people|
    people.each do |person|
      if person["hometown"] == hometown
        hometowns << hometown
      end
    end
  end
  return hometowns.count 
end

def get_occupation(data, hometown)
  data.each do |season, people|
    people.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
  # code here
end

def get_average_age_for_season(data, season)
  counter = 0
  num_of_people = 0
  data[season].each do |person|
    age = person["age"].to_i
    num_of_people +=1 
    counter += age
  end
  return (counter/num_of_people.to_f).round(0)
  # code here
end

