class UserMailer < ApplicationMailer
  def welcome_email
    # @user = params[:user]
    mail(to: "stogashi146@gmail.com", subject: "メールのタイトルがここに入ります", body: "ようこそ")
  end
end
