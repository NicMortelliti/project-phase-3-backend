class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Teams route
  get '/teams' do
    teams = Team.all
    teams.to_json
  end

  # Team id route
  get '/teams/:id' do
    team = Team.find(params[:id])
    team.to_json
  end
end
