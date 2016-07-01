class EntriesController < ApplicationController

	def new
		@entry = Entry.new
	end

	def create
		@entry = Entry.new(entry_params)

		if @entry
			if @entry.ans2 === nil
				@entry.ans2 = "Did not select option 2"
			end	
			@entry.save
		else
			print "not saved"
		end

		redirect_to new_entry_path
	end

	private

	def entry_params
		params.require(:entry).permit(:fname, :lname, :email, :ans1, :ans2)
	end
end
