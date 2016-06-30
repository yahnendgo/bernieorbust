class EntriesController < ApplicationController

	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.new(entry_params)

		if @entry.save
			# render thank you div/ redirect to root path
		end
	end

	private

	def entry_params
		params.require(:entry).permit(:fname, :lname, :state, :email, :ans1, :ans2)
	end
end
