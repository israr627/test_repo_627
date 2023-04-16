require "sidekiq"


class OurWorker
	include Sidekiq::Worker
	sidekiq_options retry: 0
	def perform(complexity)
		case complexity
		when "super_hard"
			puts "Charging a credit card..."
			raise "whoops stuff got bad"

			# sleep 20
			puts "Really took quite a bit of effort"
		when "hard"
			sleep 10
			puts "That was a bit of work"
		else
			while true
				puts "Boom Boom"
				sleep 1	
			end
			puts "that was not a alot of work"
		end
	end
end