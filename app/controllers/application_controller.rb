class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  ### All Data                      
  get '/' do
    task = Task.all
    task.to_json(
      include: [:project, :user]
    )
  end
  
  ### Users                         
  # Users route
  get '/users' do
    users = User.all
    users.to_json
  end

  ### Projects                      
  # Projects route
  get '/projects' do
    projects = Project.all
    projects.to_json
  end

  # Add project
  post '/projects' do
    project = Project.create(
      name: params[:name]
    )
    project.to_json( )
  end

  ### Tasks
  # Add task
  post '/tasks' do
    task = Task.create(
      description: params[:description], 
      due_date: params[:due_date],
      story_points: params[:story_points],
      state: params[:state],
      project_id: params[:project_id],
      user_id: params[:user_id]
    )
    task.to_json(
      include: [:project, :user]
    )
  end

  # Task update
  patch '/tasks/:id' do
    task = Task.find(params[:id])
    task.update(
      description: params[:description],
      due_date: params[:due_date],
      story_points: params[:story_points],
      state: params[:state],
      project_id: params[:project_id],
      user_id: params[:user_id]
    )
    task.to_json(
      include: [:project, :user]
    )
  end

  # Task delete
  delete '/tasks/:id' do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

end
