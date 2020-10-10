# typed: strict
# frozen_string_literal: true
# Be sure to restart your server when you modify this file.

# see https://stackoverflow.com/questions/12252286/how-to-change-the-default-rails-error-div-field-with-errors
# and https://stackoverflow.com/questions/5267998/rails-3-field-with-errors-wrapper-changes-the-page-appearance-how-to-avoid-t

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
	class_attr_index = html_tag.index 'class="'

	if class_attr_index
		html_tag.insert class_attr_index+7, 'error '
	else
		html_tag.insert html_tag.index('>'), "class=error"
	end
end