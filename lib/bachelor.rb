require 'pry'

def get_first_name_of_season_winner(data, season)
	data[season].each do |contestant_hash|
		if contestant_hash["status"] == "Winner"
			return contestant_hash["name"].split[0]
		end
	end
end

def get_contestant_name(data, occupation)
	data.each do |season, contestants_array|
		contestants_array.each do |contestant_hash|
			if contestant_hash["occupation"] == occupation
				return contestant_hash["name"]
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
	count = 0

	data.each do |season, contestants_array|
		contestants_array.each do |contestant_hash|
			if contestant_hash["hometown"] == hometown
				count += 1
			end
		end
	end

	count
end

def get_occupation(data, hometown)
	data.each do |season, contestants_array|
		contestants_array.each do |contestant_hash|
			if contestant_hash["hometown"] == hometown
				return contestant_hash["occupation"]
			end
		end
	end
end

def get_average_age_for_season(data, season)
	age_total = 0.0
	num_of_contestants = 0

	data[season].each do |contestant_hash|
		age_total += contestant_hash["age"].to_f
		num_of_contestants += 1
	end

	average_age = (age_total / num_of_contestants).round
end
