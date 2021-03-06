# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored (player_name)
  points_scored = nil
  game_hash.each do |home_away_hash, team_information_hash|
  player_stats_array = team_information_hash[:players]
    player_stats_array.each do |player_stats|
      if player_stats[:player_name] == player_name
        points_scored = player_stats[:points]
 # binding.pry
      end
    end
  end
  points_scored
end

def shoe_size (player_name)
  shoe = nil
  game_hash.each do |home_away_hash, team_information_hash|
    player_stats_array = team_information_hash[:players]
      player_stats_array.each do |player_stats|
        if player_stats[:player_name] == player_name
          shoe = player_stats[:shoe]
    #binding.pry
        end   
    end
  end
  shoe
end

def team_colors (team_name)
  colors = []
  game_hash.each do |home_away_hash, team_information_hash|
    if team_information_hash[:team_name] == team_name
      colors = team_information_hash[:colors].flatten
    end
  end
  colors
end

# Build a method, team_names, that operates on the game Hash to return an Array of the team names.
def team_names
  names = []
  game_hash.each do |home_away_hash, team_information_hash|
  names << team_information_hash[:team_name]
  end
  names
end

# Build a method, player_numbers, that takes in an argument of a team name and returns an Array of the jersey numbers for that team.

def player_numbers(team_name)
  jersey_numbers = []
  game_hash.each do  |home_away_hash, team_information_hash|
    if team_information_hash[:team_name] == team_name
      team_information_hash[:players].each do |players|
        players.each do |number_key, integer_value|
          if number_key == :number
            jersey_numbers << integer_value
          #binding.pry
          end
        end
      end
    end
  end
  jersey_numbers
end

#Build a method, player_stats, that takes in an argument of a player's name and returns a hash of that player's stats

def player_stats (player_name)
  stats_hash = {}
  game_hash.each do |home_away_hash, team_information_hash|
    team_information_hash[:players].each do |stats|
      if stats[:player_name] == player_name
        stats_hash = stats
     # binding.pry
      end
    end
  end
  stats_hash
end

# Build a method, big_shoe_rebounds, that will return the number of rebounds associated with the player that has the largest shoe size. Break this one down into steps:

# First, find the player with the largest shoe size
# Then, return that player's number of rebounds
# Remember to think about return values here.

def big_shoe_rebounds
  largest_shoe = 0
  rebounds = 0
  game_hash.each do |home_away_hash, team_information_hash|
    team_information_hash[:players].each do |stats|
      if stats[:shoe] > largest_shoe
        largest_shoe = stats[:shoe]
        rebounds = stats[:rebounds]
      end  
    end  
  end
  rebounds
end