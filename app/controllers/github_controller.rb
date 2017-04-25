class GithubController < ApplicationController
  before_action :set_github

  def initialize
    @client
  end

  def set_github
    @client = Octokit::Client.new(:login => 'guilhermeddf', :password => 'a07021991')
  end

  def index
    @juaquim = Octokit::Client.new(:login => params[:Usuario], :password => params[:Senha])

    @repositories = @client.repositories

  end  
  
  def create_project
  end

  def submit_create_project
    @client.create_repository(params[:Nome], options = {"description": params[:Descricao],
                    "homepage": "https://github.com",
                    "private": false,
                    "has_issues": false,
                    "has_projects": false,
                    "has_wiki": false}) 
  end

  def delete_project
  end

  def submit_delete_project
    @client.delete_repository('guilhermeddf/'+params[:Repositorios])
  end

  def invite_project
  end

  def submit_invite_project
    @client.invite_user_to_repository('guilhermeddf/'+params[:Repositorios], params[:Usuario])
  end

  def list_project_repository
   	@convites = @client.repository_invitations('guilhermeddf/Octokit')
  end

  def list_invitations_user
   	@userconvites = @client.user_repository_invitations()
  end

  def verify_project
  end

  def submit_verify_project
    @teste = @client.repository?('guilhermeddf/'+params[:Repositorio])
    respond_to do |format|
      if @teste
        format.html { redirect_to verify_project_path, notice: 'O Repositorio Existe' }
 
      else
        format.html { redirect_to verify_project_path, notice: 'O Repositorio não Existe' }
      end
    end
  end

end


