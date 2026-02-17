puts \n




# p3-4_success.tcl
# 1. 데이터 등록
set min_width(M1) 0.14
set min_width(M2) 0.28
set min_width(M3) 0.42

# 2. O(1) 속도로 즉시 검색 (lsearch처럼 루프 안 돌아도 됨)
set target "M2"
if {[info exists min_width($target)]} {
    puts "The min_width of $target is $min_width($target) um"
} else {
    puts "[info exists min_width($target)]"
}




puts \n




# p3-4_failure.tcl
set my_arr(A) 1
set my_arr(B) 2

# 대참사: 배열을 통째로 다른 변수에 복사하려고 시도
#set copy_arr $my_arr 
# 결과: "can't read "my_arr": variable is array" 에러 발생!




puts \n



set errors {M1 M2 M1 M3 M1 M2}
foreach err $errors {
    if {[info exists count($err)]} {
        incr count($err)
    } else {
        set count($err) 1
    }
}

foreach name [lsort -dictionary [array names count]] {
    puts "$name: $count($name)"
}





puts \n









puts \n

