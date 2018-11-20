class PaperMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.paper_mailer.status_notification.subject
  #
  def status_notification(paper_user, paper)
    @paper_email = paper_user.email
    @paper = paper

    mail(to: @paper_email, subject: 'Cambio de estado')
  end
end
