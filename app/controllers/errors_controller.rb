
class ErrorsController < ActionController::Base
	
	def not_found
		# FIXME: log this in production ...
		redirect_to '/'
	end
  
	def internal_server_error
		# FIXME: log this in production ...
		redirect_to '/'
	end
  end