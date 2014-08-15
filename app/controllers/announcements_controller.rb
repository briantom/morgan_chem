class AnnouncementsController < ApplicationController
	layout "admin"
	http_basic_authenticate_with name: "mmorgan", password: "crazyKat"

	def index
		@announcements = Announcement.all.order('date DESC')
	end

	def new
		@announcement = Announcement.new
	end

	def show
		@announcement = Announcement.find(params[:id])
	end

	def edit
		@announcement = Announcement.find(params[:id])
	end

	def update
		@announcement = Announcement.find(params[:id])

		if @announcement.update(announcement_params)
			redirect_to @announcement
		else
			render 'edit'
		end
	end

	def create
		@announcement = Announcement.new(announcement_params)

		if @announcement.save
			redirect_to @announcement
		else
			render 'new'
		end
	end

	def destroy
		@announcement = Announcement.find(params[:id])
		@announcement.destroy

		redirect_to announcements_path
	end

	private
		def announcement_params
			params.require(:announcement).permit(:title, :date, :category, :content)
		end
end
