employee_performance(EmployeeName, GoodOrBad) :-
    get_employee_details(EmployeeName, WorkingHours, TasksCompleted, ErrorsMade),
    is_good_performance(WorkingHours, TasksCompleted, ErrorsMade),
    GoodOrBad = "Good".

employee_performance(EmployeeName, GoodOrBad) :-
    get_employee_details(EmployeeName, WorkingHours, TasksCompleted, ErrorsMade),
    not(is_good_performance(WorkingHours, TasksCompleted, ErrorsMade)),
    GoodOrBad = "Bad".

is_good_performance(WorkingHours, TasksCompleted, ErrorsMade) :-
    WorkingHours >= 40,
    TasksCompleted >= 80,
    ErrorsMade =< 5.

get_employee_details(EmployeeName, WorkingHours, TasksCompleted, ErrorsMade) :-
    write("Enter the employee's name: "),
    read(EmployeeName),
    write("Enter the employee's working hours: "),
    read(WorkingHours),
    write("Enter The Number Of Tasks Completed By The Employee: "),
    read(TasksCompleted),
    write("Enter The Number Of Errors Made By The Employee: "),
    read(ErrorsMade).
