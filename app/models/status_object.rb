# typed: strict
# frozen_string_literal: true

require 'json'

# StatusObject is used to return data (e.g. from calling a service) and its return status, e.g. seccess or error
class StatusObject
  attr_reader :data, :error

  def initialize(data, error=nil)
    @data = data
    @error = error
  end

  def success?
    return false unless @error.nil?

    true
  end
end

# ErrorObject encapsulates the error reply format used in the txsvc/service module
class ErrorObject
  attr_reader :status, :msg

  # status = the HTTP status code, error contains stringified error messages.
  # See txsvc/service/pkg/svc/endpoints.go
  def initialize(status, error)
    @status = status
    h = JSON.parse error
    @msg = h['msg']
  end

  def to_s
    "status=#{@status}, msg=#{@msg}"
  end
end
