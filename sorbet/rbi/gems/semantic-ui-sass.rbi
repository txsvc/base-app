# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/semantic-ui-sass/all/semantic-ui-sass.rbi
#
# semantic-ui-sass-2.4.2.0

module Semantic
end
module Semantic::Ui
end
module Semantic::Ui::Sass
  def self.assets_path; end
  def self.configure_sass; end
  def self.fonts_path; end
  def self.gem_path; end
  def self.images_path; end
  def self.javascripts_path; end
  def self.load!; end
  def self.stylesheets_path; end
  def self.templates_path; end
end
module Semantic::Ui::Sass::BreadCrumbs
  def self.included(base); end
  def semantic_breadcrumb(name, url = nil, options = nil); end
  def translate_semantic_breadcrumb(name, class_name); end
end
module Semantic::Ui::Sass::BreadCrumbs::ClassMethods
  def semantic_breadcrumb(name, url, options = nil); end
end
module Semantic::Ui::Sass::Rails
end
class Semantic::Ui::Sass::Rails::Engine < Rails::Engine
end
class Semantic::Ui::Sass::FrameworkNotFound < StandardError
end
module SemanticBreadcrumbsHelper
  def semantic_breadcrumbs(divider = nil, &block); end
end
module SemanticFlashHelper
  def flash_container(type, message); end
  def semantic_flash; end
end
module SemanticIconHelper
  def semantic_icon(*names); end
end
