class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

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
  ###  TODO - Update description (UPDATE)
  ###  TODO - Update due date (UPDATE)
  ###  TODO - Update user assigned (UPDATE)
  ###  TODO - Update project assigned (UPDATE)
  ###  TODO - Update story points (UPDATE)
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
    task.to_json(
      include: { user: { only: [:first_name, :last_name]}}
    )

  end

  # Add task
  post '/tasks' do
    task = Task.create(
      description: params[:description], # Client will require this field
      due_date: params[:due_date], # Client can send 0 indicating no due date assigned
      story_points: params[:story_points], # Client can send 0
      project_id: params[:project_id], # Client will require this field
      user_id: params[:user_id] # Client can send a 0 indicating unassigned
    )
    task.to_json
  end

  # Task delete
  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

end
