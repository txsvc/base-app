# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/google-cloud-error_reporting/all/google-cloud-error_reporting.rbi
#
# google-cloud-error_reporting-0.40.0

module Google
end
module Google::Cloud
  def error_reporting(scope: nil, timeout: nil); end
  def self.error_reporting(project_id = nil, credentials = nil, scope: nil, timeout: nil); end
end
module Google::Cloud::ErrorReporting
  def self.configure; end
  def self.default_credentials(scope: nil); end
  def self.default_reporter(&block); end
  def self.new(project_id: nil, credentials: nil, scope: nil, timeout: nil, endpoint: nil, project: nil, keyfile: nil); end
  def self.report(exception, service_name: nil, service_version: nil); end
  def self.resolve_credentials(credentials, scope); end
  def self.resolve_project_id(project_id, credentials); end
end
class Google::Cloud::ErrorReporting::AsyncErrorReporterError < Google::Cloud::Error
  def error_event; end
  def initialize(message, error_event = nil); end
end
class Google::Cloud::ErrorReporting::ErrorReporterError < Google::Cloud::Error
  def error_event; end
  def initialize(message, error_event = nil); end
end
class Google::Cloud::ErrorReporting::AsyncErrorReporter
  def default_error_callbacks; end
  def error!(error); end
  def error_reporting; end
  def initialize(error_reporting, max_queue: nil, threads: nil); end
  def max_queue; end
  def on_error(&block); end
  def report(error_event); end
  def report_sync(error_event); end
  def started?; end
  def stop!(timeout = nil); end
  def stop; end
  def stopped?; end
  def thread_pool; end
  def threads; end
  def wait!(timeout = nil); end
end
class Google::Cloud::ErrorReporting::Service
  def credentials; end
  def credentials=(arg0); end
  def error_reporting; end
  def host; end
  def host=(arg0); end
  def initialize(project, credentials, timeout: nil, host: nil); end
  def mocked_error_reporting; end
  def mocked_error_reporting=(arg0); end
  def project; end
  def project=(arg0); end
  def project_path; end
  def report(error_event); end
  def timeout; end
  def timeout=(arg0); end
end
class Google::Cloud::ErrorReporting::Credentials < Google::Cloud::ErrorReporting::V1beta1::ReportErrorsService::Credentials
end
class Google::Cloud::ErrorReporting::ErrorEvent
  def error_context_grpc; end
  def event_time; end
  def event_time=(arg0); end
  def event_time_grpc; end
  def file_path; end
  def file_path=(arg0); end
  def function_name; end
  def function_name=(arg0); end
  def http_method; end
  def http_method=(arg0); end
  def http_referrer; end
  def http_referrer=(arg0); end
  def http_remote_ip; end
  def http_remote_ip=(arg0); end
  def http_request_grpc; end
  def http_status; end
  def http_status=(arg0); end
  def http_url; end
  def http_url=(arg0); end
  def http_user_agent; end
  def http_user_agent=(arg0); end
  def line_number; end
  def line_number=(arg0); end
  def message; end
  def message=(arg0); end
  def self.extract_error_context(error_event, error_context_grpc); end
  def self.extract_http_request(error_event, http_request_grpc); end
  def self.extract_service_context(error_event, service_context_grpc); end
  def self.extract_source_location(error_event, source_location_grpc); end
  def self.extract_timestamp(timestamp_grpc); end
  def self.from_exception(exception); end
  def self.from_grpc(grpc); end
  def service_context_grpc; end
  def service_name; end
  def service_name=(arg0); end
  def service_version; end
  def service_version=(arg0); end
  def source_location_grpc; end
  def to_grpc; end
  def user; end
  def user=(arg0); end
end
class Google::Cloud::ErrorReporting::Project
  def error_event(message = nil, service_name: nil, service_version: nil, event_time: nil, user: nil, file_path: nil, line_number: nil, function_name: nil); end
  def initialize(service); end
  def project; end
  def project_id; end
  def report(*args, &block); end
  def report_exception(exception, service_name: nil, service_version: nil); end
  def self.default_project; end
  def self.default_project_id; end
  def self.default_service_name; end
  def self.default_service_version; end
  def service; end
  def service=(arg0); end
end
class Google::Cloud::ErrorReporting::Middleware
  def call(env); end
  def configuration; end
  def error_event_from_exception(env, exception); end
  def error_reporting; end
  def http_status(exception); end
  def init_default_config; end
  def initialize(app, error_reporting: nil, **kwargs); end
  def load_config(**kwargs); end
  def report_exception(env, exception); end
end
module Google::Devtools
end
class Google::Cloud::ErrorReporting::Railtie < Rails::Railtie
  def self.consolidate_rails_config(config); end
  def self.init_default_config; end
  def self.init_middleware(app); end
  def self.merge_rails_config(rails_config); end
  def self.valid_credentials?(project_id, credentials); end
end
