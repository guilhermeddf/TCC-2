class CommitController < ApplicationController
before_action :set_github

  def initialize
    @client
  end

  def set_github
    @client = Octokit::Client.new(:login => 'guilhermeddf', :password => 'a07021991')
  end

  

end
