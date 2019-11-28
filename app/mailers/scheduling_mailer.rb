class SchedulingMailer < ApplicationMailer
  default from: 'fabio@moritzalmeida.eng.br'

  def schedule_email
    @schedule = params[:schedule]
    @email = 'phabio_almeida@hotmail.com' # change to "security staff email"
    mail to: @email, subject: 'Genetec Visitor Scheduler'
  end
end
