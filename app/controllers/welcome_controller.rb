class WelcomeController < ApplicationController
  def index
    render text: "HOSTNAME: #{ENV['HOSTNAME']}"
  end
end
