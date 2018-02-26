class MessageMailer < ApplicationMailer


  def contact_me(message)
    @body     = message.body

    mail to: "tyjoo21@gmail.com", from: message.email
  end
end
