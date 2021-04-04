class AuthenticationMailer < ApplicationMailer
  def email_confirmation
    @user = params[:user]
    subject = "Confirmação de e-mail"

    mail(subject: subject, to: @user.email)
  end

  def request_password_recover
    @user = params[:user]
    subject = "Solicitação de recuperação de senha"

    mail(subject: subject, to: @user.email)
  end

  def password_recovered
    @user = params[:user]
    subject = "Senha recuperada"

    mail(subject: subject, to: @user.email)
  end
end
