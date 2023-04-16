class HomeController < ApplicationController

	def dashboard
		OurWorker.perform_in(50, "hard")
	end
end
