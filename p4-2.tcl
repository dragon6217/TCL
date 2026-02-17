puts \n



# p4-2_success.tcl
set design_name "TOP_CHIP" ;# Global 변수

proc update_design {new_name} {
    # 1. 'design_name'이라는 통로를 뚫음
    global design_name 
    
    puts "Old Design: $design_name"
    # 2. 통로를 통해 거실에 있는 값을 직접 수정
    set design_name $new_name
}

update_design "NEW_BLOCK"
puts "Current Design: $design_name" ;# NEW_BLOCK으로 바뀜





puts \n




# p4-2_failure.tcl
set status "IDLE"

proc start_job {} {
    # global status 가 없음!
    set status "RUNNING" ;# 이건 내 방(Local)에 새로 만든 동명의 변수임
    puts "Inside: $status" ;# RUNNING 출력
}

start_job
puts "Outside: $status" ;# 여전히 IDLE 출력 (대참사: 상태 업데이트 안 됨)




puts \n




set usage_count 0 ;# 거실에 있는 변수

proc add_usage {args} {
    global usage_count 
    incr usage_count 10
}

proc check_limit {} {
    global usage_count
    if {$usage_count > 50} {
        return "CRITICAL"
    } else {
        return "OK"
    }
}

add_usage
puts "Usage: $usage_count -> [check_limit]" ;# 10 -> OK

for {set i 0} {$i < 5} {incr i} { add_usage _ }
puts "Usage: $usage_count -> [check_limit]" ;# 60 -> CRITICAL


puts \n









puts \n

