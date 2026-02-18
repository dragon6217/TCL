puts \n



# p4-7_success.tcl
set huge_log_data [set var {
    This is a long text
    This is a long text
}]

# 데이터 처리 로직...
puts "Total lines: [llength $huge_log_data]"

# [핵심] 처리가 끝났다면 즉시 삭제
unset huge_log_data

# 이후 메모리는 OS로 반환되거나 Tcl 메모리 풀로 돌아감





puts \n




# p4-7_failure.tcl
set a 10
unset a

# 이미 없는 변수를 또 지우려 함
#unset a 
# 에러 발생: can't unset "a": no such variable


if {[info exists a]} { unset a }



puts \n



proc safe_clear {var} {
    # 1. upvar를 먼저 해서 '통로'를 뚫어야 합니다.
    upvar 1 $var local_val
    
    # 2. [info exists $var]라고 하면 내 방(Local)에 $var라는 '값'을 이름으로 가진 변수가 있는지 찾습니다.
    # 3. [info exists local_val]이라고 해야 '연결된 놈'이 진짜 있는지 확인합니다.
    if {[info exists local_val]} {
        unset local_val
        puts "Cleaned: $var"
    } else {
        puts "Already empty: $var"
    }
}

proc print_temp_data {var} {
    upvar 1 $var local_val
    if {[info exists local_val]} {
        puts "temp_data exists: $local_val"
    } else {
        puts "temp_data does not exist"
        puts "[info level]"
    }
}   

set temp_data "Some junk"
print_temp_data temp_data
safe_clear temp_data  ;# Cleaned: temp_data 출력
safe_clear temp_data  ;# Already empty 출력 (에러 나면 실패!)
print_temp_data temp_data


puts \n




foreach v [info vars my_*] {
    unset $v
}

puts [info body safe_clear]




puts \n

