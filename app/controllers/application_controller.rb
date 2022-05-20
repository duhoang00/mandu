class ApplicationController < ActionController::API
  def default_url_options
    if Rails.env.production?
      { :host => "https://mandu-app.herokuapp.com" }
    else
      {}
    end
  end
end
