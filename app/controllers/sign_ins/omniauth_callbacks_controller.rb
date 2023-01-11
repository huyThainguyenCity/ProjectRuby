
class SignIns::OmniauthCallbacksController < Devise::OmniauthCallbacksController

    def google_oauth2
        puts request.env["omniauth.auth"]
      @sign_in = Sign_in.from_omniauth(request.env["omniauth.auth"])

      if @sign_in.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
        sign_in_and_redirect @sign_in, :event => :authentication
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to new_sign_in_registration_url
      end
  end
end
