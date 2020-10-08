# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

# disable normal rake test tasks

def remove_task(task)
	Rake.application.instance_variable_get('@tasks').delete(task)
end

tasks = ['test', 'test:db', 'test:system']
tasks.each { |t| remove_task(t) }