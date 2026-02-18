puts \n




# p4-8_success.tcl
proc calculate_area {width height} {
    puts [info level [expr {[info level]-1}]]
    puts [info level 0]
    puts [info level 1]
    #puts [info level -1]
    return [expr {$width * $height}]
}

set debug_flag 1

# 1. 변수 존재 확인
if {[info exists debug_flag]} { puts "Debug is ON" }

# 2. 함수 목록 확인 (calc로 시작하는 함수들)
puts "Found procs: [info procs calc*]"

# 3. [강력추천] 함수의 소스 코드 역추적
# 툴 안에서 누군가 정의한 함수의 내용이 궁금할 때 직빵입니다.
puts "Body of calculate_area:\n[info body calculate_area]"


puts "[calculate_area 10 20]"




puts \n




# p4-8_failure.tcl
# puts [info body set]
# 에러 발생: "set" isn't a procedure




puts \n




# p4-8_detective.tcl
proc check_and_fix {} {
    set target "analyze_design"
    if {[llength [info procs $target]] == 0} {
        puts "1차: 정의 안 됨. 새로 만듭니다."
        proc analyze_design {} { puts "I am here!" }
    } else {
        puts "2차: 정의 되어 있음!"
        puts "Body: [info body $target]"
    }
}

check_and_fix ;# 1차 실행 효과
analyze_design
puts ""
check_and_fix ;# 2차 실행 효과
analyze_design




puts \n









puts \n

