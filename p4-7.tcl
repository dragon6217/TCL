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









puts \n









puts \n

