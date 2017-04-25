class LoginController < ApplicationController

	def new
   		
		puts "\n\n"
		puts "Hello, It's me..."
		puts "\n\n"
 		#puts "The user is: "+params[:Senha]		
	end

	def testtest

		puts "\n\n"
		puts "Hello, It's me..."		
		puts "The user is: "+params[:Usuario]
		puts "\n\n"

		redirect_to :controller => 'github', :action => "create_project", :id => params[:Senha]

	end

end
