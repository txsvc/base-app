
module Error
	module ErrorHandler
		def self.included(clazz)
			clazz.class_eval do
				rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
				#rescue_from ActionView::MissingTemplate with: :internal_server_error
				#rescue_from ActionController::MissingExactTemplate with: :internal_server_error
			end
	  	end
  
	private

		def internal_server_error(_e)
			err = error_response(:internal_server_error, 500, _e.to_s)
			render json: err, status: 500
		end

		def record_not_found(_e)
			err = error_response(:record_not_found, 500, _e.to_s)
			render json: err, status: 500
		end

		def json_error_responder(_error, _status, _message)
			err = error_response(_error, _status, _message)
			render json: err, status: _status
		end

		def error_response(_error, _status, _message)
			{
			  status: _status,
			  error: _error,
			  message: _message
			}.as_json
		end
	end
end