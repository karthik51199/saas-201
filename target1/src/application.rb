# require './department' # Include other files in the same directory

# Your application
class Application
  # attr_accessor :departments

  deptments = {
    "EEE" => {
      "A" => []
      "B" => []
      "C" => []}

    "MECH" => {
      "A" => []
      "B" => []
      "C" => []}

    "CSE" => {
      "A" => []
      "B" => []
      "C" => []}

    "CIVIL" => {
      "A" => []
      "B" => []
      "C" => []}

    }

  def initialize
    # self.departments = ['EEE', 'MECH', 'CSE', 'CIVIL'].each { |dept| Department.new dept }
  end

  def enroll(student_name, student_department)
    # This is a sample implementation. you can write your own code
    # department = departments.detect { |dept| dept == student_department }
    # department.enroll student_name

    department = departments.select { |dept| dept == student_department }
    if dept["A"].size + dept
    section = department.select { |sec|  }

    "You have been enrolled to #{student_department}" \
    "\nYou have been allotted section C" \
    "\nYour roll number is EEEC01"
  end

  def change_dept(student_name, student_department)
    ## write some logic to frame the string below
    "You have been enrolled to #{student_department}" \
    "\nYou have been allotted section B" \
    "\nYour roll number is MECB01"
  end

  def change_section(student_name, section)
    ## write some logic to frame the string below
    "You have been allotted section #{section}" \
    "\nYour roll number is MECB01"
  end

  def department_view(student_dept)
    ## write some logic to frame the string below
    "List of students:" \
    "\nTom - MECB01"
  end

  def section_view(student_dept, section)
    ## write some logic to frame the string below
    "List of students:" \
    "\nTom - MECB01"
  end

  def student_details(student_name)
    ## write some logic to frame the string below
    "Tom - MECH - Section B - MECB01"
  end
end
