class ApplicationController < ActionController::Base

  include PostsHelper
  before_action :authenticate_user!

end
