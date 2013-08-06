class Users::RegistrationsController < Devise::RegistrationsController

  def create
    session["#{resource_name}_return_to"] = root_url
    super
  end

end