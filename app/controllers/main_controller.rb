class MainController < ApplicationController
before_filter :required_login, :only => [:admin]

end
