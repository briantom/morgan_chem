class CourseSchedulesController < ApplicationController
	def index
		@schedules = Schedule.all.order('date DESC')
	end
end
