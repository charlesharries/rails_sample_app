class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "Hey this thing deployed correctly. Good job champ."
  end
end
