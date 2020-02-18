require "active_record"

class Todo < ActiveRecord::Base
  def due_today?
    due_date == Date.today
  end

  def to_displayable_string
    display_status = completed ? "[X]" : "[ ]"
    display_date = due_today? ? nil : due_date
    "#{id}. #{display_status} #{todo_text} #{display_date}"
  end

  def self.to_displayable_string
    all.map { |todo| todo.to_displayable_string }
  end

  def self.show_list
    puts "My Todo-list\n\n"

    puts "Overdue\n"
    puts Todo.where("due_date < ? ", Date.today).to_displayable_string
    puts "\n\n"

    puts "Due Today\n"
    puts Todo.where(due_date: Date.today).to_displayable_string
    puts "\n\n"

    puts "Due Later\n"
    puts Todo.where("due_date > ? ", Date.today).to_displayable_string
    puts "\n\n"
  end

  def self.mark_as_complete!(todo_id)
    todo = Todo.find(todo_id)
    todo.completed = true
    todo.save
    return todo
  end

  def self.add_task(h)
    todo = Todo.new(todo_text: h[:todo_text], due_date: Date.today + h[:due_in_days])
    todo.save
    return todo
  end
end
