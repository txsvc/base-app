# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/high_voltage/all/high_voltage.rbi
#
# high_voltage-3.1.2

module HighVoltage
  extend HighVoltage::Configuration
end
module HighVoltage::Configuration
  def configure; end
  def content_path; end
  def content_path=(arg0); end
  def full_path; end
  def home_page; end
  def home_page=(arg0); end
  def layout; end
  def layout=(arg0); end
  def page_ids; end
  def parent_engine; end
  def parent_engine=(arg0); end
  def route_drawer; end
  def route_drawer=(arg0); end
  def routes; end
  def routes=(arg0); end
  def self.extended(base); end
  def set_default_configuration; end
end
module HighVoltage::Constraints
end
class HighVoltage::Constraints::RootRoute
  def clean_page_path(request_path); end
  def content_path; end
  def initialize; end
  def lookup_context; end
  def matches?(request); end
end
class HighVoltage::Page
  def available_handlers; end
  def content_path; end
  def directory?; end
  def exists?; end
  def file_in_content_path?; end
  def file_path; end
  def handled?; end
  def handler_extension; end
  def id; end
  def initialize(content_path, file_path); end
  def partial?; end
  def valid?; end
end
class HighVoltage::PageCollector
  def content_path; end
  def initialize(content_path); end
  def page_ids; end
  def pages; end
end
class HighVoltage::PageFinder
  def clean_content_pathname; end
  def content_path; end
  def find; end
  def initialize(page_id); end
  def page_id; end
end
class HighVoltage::InvalidPageIdError < StandardError
end
module HighVoltage::RouteDrawers
end
class HighVoltage::RouteDrawers::Default
  def self.match_attributes; end
end
class HighVoltage::RouteDrawers::Root
  def self.match_attributes; end
end
class HighVoltage::Engine < Rails::Engine
end
module HighVoltage::StaticPage
  def current_page; end
  def invalid_page; end
  def page_finder; end
  def page_finder_factory; end
  def show; end
  extend ActiveSupport::Concern
end
class HighVoltage::PagesController < ApplicationController
  def _layout(lookup_context, formats); end
  def _layout_from_proc(_); end
  def self._helpers; end
  def self._layout; end
  def self._layout_conditions; end
  def self._routes; end
  def self._wrapper_options; end
  def self.helpers_path; end
  def self.middleware_stack; end
  def self.rescue_handlers; end
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_80
  include HighVoltage::StaticPage
end
module Anonymous_Module_80
  def _generate_paths_by_default; end
  def _routes; end
  def self._routes; end
  def self.full_url_for(options); end
  def self.optimize_routes_generation?; end
  def self.polymorphic_path(record_or_hash_or_array, options = nil); end
  def self.polymorphic_url(record_or_hash_or_array, options = nil); end
  def self.route_for(name, *args); end
  def self.url_for(options); end
  def self.url_options; end
  extend ActiveSupport::Concern
  extend Anonymous_Module_23
  extend Anonymous_Module_24
  include ActionDispatch::Routing::UrlFor
  include Anonymous_Module_23
  include Anonymous_Module_24
end
