def get_first_name_of_season_winner(data, season)
  first_name = ""
  data.each do |season_hash, array|
    if season_hash == season
      array.each do |key, value|
        if key["status"] == "Winner"
          first_name = key["name"].split[0]
        end
      end
  end
end
  first_name
end



def get_contestant_name(data, occupation)
  job_holder = ""
  data.each do |season_hash, array|
    array.each do |key, value|
      if key["occupation"] == occupation
        job_holder = key["name"]
      end
    end
  end
  job_holder
end



def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_hash, array|
    array.each do |key, value|
      if key["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  data.each do |season_hash, array|
    array.each do |key, value|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end



  # {
  # season => [{name, age, homehown, occupation, status }, {}, {} … {}],
  # season => [{}, {}, {} … {}],
  # }





def get_average_age_for_season(data, season)
  ages_sum = 0
  counter = 0

  data.each do |season_hash, array|
    if season_hash == season
      array.each do |key, value|
          ages_sum += key["age"].to_f
          counter += 1
      end
    end
  end

  avg = (ages_sum / counter)
  return avg.round

end
