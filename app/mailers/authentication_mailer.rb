class AuthenticationMailer < ApplicationMailer
  def email_confirmation
    @user = params[:user]
    subject = "Confirmação de e-mail"

    mail(subject: subject, to: "to@example.org")
  end
end
