module DoinitsHelper
	def assign_doinit_creator(doinit, creator)
		doinit.user = creator
		doinit
	  end
end
