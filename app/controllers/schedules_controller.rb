class SchedulesController < ApplicationController
	layout "admin"
	http_basic_authenticate_with name: "mmorgan", password: "crazyKat"

	def index
		@schedules = Schedule.all.order('date DESC')
	end
	def new
		@schedule = Schedule.new
	end

	def show
		@schedule = Schedule.find(params[:id])
	end

	def edit
		@schedule = Schedule.find(params[:id])
	end

	def update
		@schedule = Schedule.find(params[:id])

		if @schedule.update(schedule_params)
			redirect_to @schedule
		else
			render 'edit'
		end
	end

	def create
		@schedule = Schedule.new(schedule_params)

		if @schedule.save
			redirect_to @schedule
		else
			render 'new'
		end
	end

	def destroy
		@schedule = Schedule.find(params[:id])
		@schedule.destroy

		redirect_to schedules_path
	end

	private
		def schedule_params
			params.require(:schedule).permit(:title, :date, :category, :content)
		end
end
