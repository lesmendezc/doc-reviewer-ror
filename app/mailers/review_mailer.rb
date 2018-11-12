class ReviewMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.review_mailer.review_notification.subject
  #
  def review_notification(current_user, paper_assignment, paper)
    @current_user = current_user
    @paper = paper
    @tutor_email = User.find(paper_assignment.tutor_id).email
    @relator_email = User.find(paper_assignment.relator_id).email
    @director_email = User.find(paper_assignment.director_id).email

    mail(to: [@tutor_email, @relator_email, @director_email], subject: 'Nueva Revisión')
  end
end
