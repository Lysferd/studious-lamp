class SchedulingMailer < ApplicationMailer
  default from: "fabio@moritzalmeida.eng.br"

  def schedule_email
    @schedule = params[:schedule]
    user = User.first
    @email = user.email # change to "security staff email"
    mail to: @email, subject: 'Agendamento de Visitas Genetec'
  end

  def approval_email
    @schedule = params[:schedule]
    @email = @schedule.host.email
    mail to: @email, subject: 'Agendamento de Visita Aprovado'
  end

  def approval_email_for_visitor
    @schedule = params[:schedule]
    @emails = @schedule.visitors.map(&:email).join ?,
    mail to: @emails, subject: 'Agendamento de Visita Aprovado'
  end

  def approval_email_for_reception
    @schedule = params[:schedule]
    user = User.first
    @email = user.email # Change this later to the reception email
    mail to: @email, subject: 'Agendamento de Visita Aprovado'
  end
end
