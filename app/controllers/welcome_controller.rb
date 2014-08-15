class WelcomeController < ApplicationController
  def index
  	@announcements = Announcement.all.order('date DESC')
  end
end
