class ShortsController < ApplicationController

	def show
		@short = Short.find(params[:id].to_i(36))

		respond_to do |format|
			#redirect directly to the url stored as long in the database
			format.html { redirect_to @short.long}
		end
	end

	def new
		@short = Short.new

		respond_to do |format|
			format.html # new.html.erb
		end
	end

	def create
		@short = Short.new(params[:short])

		respond_to do |format|
			if @short.save

				format.html { render action: "show" }

			else

				format.html { render action: "new" }
			end
		end
	end
end
