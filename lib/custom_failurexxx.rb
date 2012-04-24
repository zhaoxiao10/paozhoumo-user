class CustomFailure < Devise::FailureApp
  def store_location!
    debugger
    session["#{scope}_return_to"] = attempted_path if request.get? && !http_auth?
  end
end
