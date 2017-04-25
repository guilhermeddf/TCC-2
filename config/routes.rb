Rails.application.routes.draw do
  
  #root to: 'github#index'
  root to: 'login#new'
  get "new" => 'login#new'
  
  get "verify_project" => 'github#verify_project'
  post "submit_verify_project" => 'github#submit_verify_project'
  
  get "create_project" => 'github#create_project'
  post "submit_create_project" => 'github#submit_create_project'
  
  get "delete_project" => 'github#delete_project'
  post "submit_delete_project" => 'github#submit_delete_project'

  
  get "invite_project" => 'github#invite_project'
  post "submit_invite_project" => 'github#submit_invite_project'
  
  get "list_project_repository" => 'github#list_project_repository'
  get "list_invitations_user" => 	'github#list_invitations_user'

end
