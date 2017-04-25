class LoginController < ApplicationController

	def new
 		@client = Octokit::Client.new(:login => params[:Usuario], :password => params[:Senha])
	end

end
