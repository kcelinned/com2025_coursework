class EventTasksController < ApplicationController
  before_action :set_event, only: [:new, :create]
  before_action :set_event_task, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /event_tasks
  # GET /event_tasks.json
  def index
    @event_tasks = EventTask.user_event_tasks(current_user)
  end

  # GET /event_tasks/1
  # GET /event_tasks/1.json
  def show
  end

  # GET /event_tasks/new
  def new
    @event_task = @event.event_tasks.new
  end

  # GET /event_tasks/1/edit
  def edit
  end

  # POST /event_tasks
  # POST /event_tasks.json
  def create
    @event_task = @event.event_tasks.new(event_task_params)

    respond_to do |format|
      if @event_task.save
        format.html { redirect_to @event_task, notice: 'Event task was successfully created.' }
        format.json { render :show, status: :created, location: @event_task }
      else
        format.html { render :new }
        format.json { render json: @event_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_tasks/1
  # PATCH/PUT /event_tasks/1.json
  def update
    respond_to do |format|
      if @event_task.update(event_task_params)
        format.html { redirect_to @event_task, notice: 'Event task was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_task }
      else
        format.html { render :edit }
        format.json { render json: @event_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_tasks/1
  # DELETE /event_tasks/1.json
  def destroy
    @event_task.destroy
    respond_to do |format|
      format.html { redirect_to event_tasks_url, notice: 'Event task was successfully destroyed.' }
      format.js {flash[:notice] = 'Task was successfully destroyed'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_task
      @event_task = EventTask.find(params[:id])
    end

    def set_event
      @event = Event.find_by(id: params[:event_id]) || Event.find(event_task_params[:event_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_task_params
      params.require(:event_task).permit(:event_id, :title, :completed)
    end


end
