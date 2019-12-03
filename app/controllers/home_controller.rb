class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :create, :show ]

  # POST /create
  def create
    @host = Host::new host_params
    @visitor = Visitor::new visitor_params
    @schedule = Schedule::new @host, @visitor

    respond_to do |format|
      if @host.save and @visitor.save and @schedule.save
        #ScheduleMailer.with(schedule: @schedule).schedule_email.deliver_now
        format.html { redirect_to @schedule }
      else
        format.html { render action: 'scheduler' }
      end
    end
  end
end
