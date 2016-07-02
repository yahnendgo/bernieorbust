module EntriesHelper
	def fullname(b)
		"#{b.fname}" + " " + "#{b.lname}"
	end

	def entry_list(b)
		"#{fullname(b)}" + " , " + "#{b.state}" + " , " + "#{b.email}"
	end

end
