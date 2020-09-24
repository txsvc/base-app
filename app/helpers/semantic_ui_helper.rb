# typed: false
# frozen_string_literal: true

module SemanticUiHelper
  ALERT_TYPES = %i[error info success warning].freeze

  def dismissable_flash
    output = ''
    flash.each do |type, message|
      next if message.blank?

      type = :success if type.to_sym == :notice
      type = :error   if type.to_sym == :alert
      next unless ALERT_TYPES.include?(type.to_sym)

      output += dismissable_flash_container(type, message)
    end

    raw(output)
  end

  def dismissable_flash_container(type, message)
    tag.div(class: "ui #{type} message") do
      tag.i('', class: 'close icon', id: 'dismissable-message') + message
    end
  end
end
