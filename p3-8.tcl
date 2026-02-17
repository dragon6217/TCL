puts \n



# p3-8_success.tcl
package require struct::queue

# 1. 작업 큐 생성
struct::queue task_q

# 2. 작업 추가
foreach job {Job_A Job_B Job_C} {
    task_q put $job
}

# 3. 작업 처리 (비어있을 때까지)
while {[task_q size] > 0} {
    set current_job [task_q get]
    puts "Executing: $current_job"
}

# 4. 큐 삭제 (메모리 해제)
task_q destroy





puts \n




package require struct::stack

# 1. 스택 생성
struct::stack stack_q

# 2. 데이터 추가
foreach item {Command_1 Command_2 Command_3} {
    stack_q push $item
}

foreach _ {1 2} {
    set current_job [stack_q pop]
    puts "Undo: $current_job"
}


puts \n









puts \n









puts \n

