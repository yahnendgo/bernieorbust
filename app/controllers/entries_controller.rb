class EntriesController < ApplicationController

	include EntriesHelper

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

	def index
		@entries = Entry.all
		@bern_or_jill = Entry.where(ans1: "Vote Green if it's Bernie or Jill")
		@lib = Entry.where(ans1: "Vote Libertarian")
		@stay_home = Entry.where(ans1: "Stay Home")
		@write = Entry.where(ans1: "Write in Bernie")
		@bern_only = Entry.where(ans1: "Vote Green only if it's Bernie")
		@bern_lib = Entry.where(ans2: "Vote Libertarian")
		@bern_home = Entry.where(ans2: "Stay Home")
		@bern_write = Entry.where(ans2: "Write in Bernie")
	end

	private

	def entry_params
		params.require(:entry).permit(:fname, :lname, :state, :email, :ans1, :ans2)
	end
end
