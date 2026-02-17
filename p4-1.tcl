puts \n




# p4-1_success.tcl
# level은 기본값이 "INFO"이며, 나머지는 args로 몽땅 받음
proc log_msg {module {level "INFO"} args} {
    puts "\[$level\] \[$module\] $args"
    puts $args
}

log_msg "PARSER" "ERROR" "File not found" "at line 10"
# 출력: [ERROR] [PARSER] File not found at line 10

log_msg "DECODER" ;# level은 INFO, args는 빈 값
# 출력: [INFO] [DECODER]




puts \n




# p4-1_failure.tcl
proc test_proc {args mandatory_val} { 
    puts $mandatory_val 
}
# 에러 발생: 'args'는 무조건 인자 리스트의 맨 마지막에 있어야 합니다.
# TCL 파서는 args를 만나는 순간 뒤에 오는 모든 걸 먹어치우기 때문입니다.

test_proc "val1" "val2"
# test_proc "val1" "val2" "val3"
# 결과: "argument with default value followed by argument without default value" 혹은 문법 에러




puts \n




proc add_nums {arg1 {arg2 0} args} {
    if {[llength $args] > 0} {
        puts "Ignore extra: $args"
    }
    global i
    incr i
    puts "Result $i: [expr {$arg1 + $arg2}]"
}

add_nums 10
add_nums 10 20
add_nums 10 20 40 50




puts \n










puts \n
