# typed: false
module Error
  module ErrorHandler
    def self.included(clazz)
      clazz.class_eval do
        rescue_from ActiveRecord::RecordNotFound do |_e|
          respond_to_error(:record_not_found, 500, 'record not found')
        end

        rescue_from AppError do |e|
          respond_to_error(e.error, e.status, e.message)
        end
      end
    end

    private

    def respond_to_error(_error, _status, _message)
      # render plain: '404 Not Found', status: :not_found, content_type: 'text/plain'
      err = "+++ ERR: #{_error}, #{_status}, #{_message} +++"
      render plain: err, status: _status, content_type: 'text/plain'
    end
  end
end
