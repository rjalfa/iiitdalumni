class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
  	def configure_permitted_parameters
   	 devise_parameter_sanitizer.for(:sign_up) << :username << :posts << :dp_url << :blog_url << :ld_url << :rollno << :phone << :name << :YOJ << :YOL << :alumni << :pursued << :description << :current_designation << :company_or_institution
   	 devise_parameter_sanitizer.for(:account_update) << :username << :posts <<:dp_url << :blog_url << :ld_url << :rollno << :phone << :name << :YOJ << :YOL << :alumni << :pursued << :description << :current_designation << :company_or_institution
  	end
end
