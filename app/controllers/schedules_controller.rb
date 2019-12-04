class SchedulesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create, :show ]
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @schedules = Schedule.all
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
    @schedule.host = Host.new
    @schedule.visitors.build
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new schedule_params

    respond_to do |format|
      if @schedule.save
        SchedulingMailer.with(schedule: @schedule).schedule_email.deliver_now
        format.html { redirect_to @schedule, notice: 'Agendamento criado com sucesso.' }
        format.json { render :show, status: :created, location: @schedule }
      else
        format.html { render :new }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    respond_to do |format|
      if @schedule.update(schedule_params)
        format.html { redirect_to @schedule, notice: 'Agendamento atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @schedule }
      else
        format.html { render :edit }
        format.json { render json: @schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    respond_to do |format|
      format.html { redirect_to schedules_url, notice: 'Agendamento apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  # POST /schedules/approve/1
  def approve
    puts params
    schedule = Schedule.find params[:id]

    respond_to do |format|
      if schedule.update( approved: true )
        SchedulingMailer.with(schedule: @schedule).approval_email.deliver_now
        format.html { redirect_to schedule }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).
        permit(:datetime,
               host_attributes: [ :name, :credential, :email ],
               visitors_attributes: [ :name, :credential, :email ])
    end

end
