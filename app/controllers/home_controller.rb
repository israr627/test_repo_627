class HomeController < ApplicationController

	def dashboard
		OurWorker.perform_in(60, "hard")
	end
end
