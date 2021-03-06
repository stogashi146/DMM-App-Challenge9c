class ApplicationController < ActionController::Base
  # authorize_resource authorize_resource :class => false

  # rescue_from CanCan::AccessDenied do |exception|
  #   redirect_to root_path
  # end

	before_action :configure_permitted_parameters, if: :devise_controller?
	before_action :search_for

  def search_for
    @q = Book.includes(:user).ransack(params[:q])
    @books = @q.result(distinct: true)
  end


  def after_sign_in_path_for(resource)
    current_user
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
