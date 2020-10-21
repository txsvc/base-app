# typed: strict
# frozen_string_literal: true

module ApplicationHelper
  APP_NAME = 'BASEAPP'

  def formatted_title(title = nil)
    return APP_NAME if title.nil?

    "#{APP_NAME} - #{title}"
  end
end
