class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :content_partial

  def content_partial
    @content_partial || "layouts/basic_layout"
  end

end
