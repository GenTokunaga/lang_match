class Students::BaseController < ApplicationController
  layout 'student'
  before_action :authenticate_student!
end
