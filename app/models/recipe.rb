class Recipe
  include HTTParty

  # get vars from the environment, or use defaults
  key_value = ENV['FOOD2FORK_KEY'] || '8f6ded91dd06c4e1ee83895a6d18a3fc'
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
  base_uri "http://#{hostport}/api"

  default_params key: key_value

  def self.for(term)
    get("/search", query: { q: term }, format: :json)['recipes']

  end

end


#  base_uri 'http://food2fork.com/api'
  #base_uri 'https://www.food2fork.com/api'
  # default_params key: '8f6ded91dd06c4e1ee83895a6d18a3fc'

  # default_params fields: "photoUrl,description", q: "search"
