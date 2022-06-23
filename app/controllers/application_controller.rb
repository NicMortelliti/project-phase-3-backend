class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
 
  ##################################
  ### Teams
  ### No modification to this table
  ##################################
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

  ##################################
  ### Users
  ### No modification to this table
  ################################## 
  # Users route
  get '/users' do
    users = User.all
    users.to_json
  end

  # User id route
  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  ##################################
  ### Projects
  ### No modification to this table
  ##################################
  # Projects route
  get '/projects' do
    projects = Project.all
    projects.to_json
  end

  # Project id route
  get '/projects/:id' do
    project = Project.find(params[:id])
    project.to_json
  end

  ##################################
  ### Tasks
  ### Following changes made to this table:
  ###   - Add new task (CREATE)
  ###   - Get list of tasks (READ)
  ###   - Update description (UPDATE)
  ###   - Update due date (UPDATE)
  ###   - Update user assigned (UPDATE)
  ###   - Update project assigned (UPDATE)
  ###   - Update story points (UPDATE)
  ###   - Delete task (DELETE)
  ##################################
  # Tasks route
  get '/tasks' do
    tasks = Task.all
    tasks.to_json
  end

  # Task id route
  get '/tasks/:id' do
    task = Task.find(params[:id])
    task.to_json
  end
end
