puts \n



# p3-3_success.tcl
set errors {M3 M1 M2 M1 M3 M10}

set idx [lsearch -exact -all $errors "M3"]
puts "M3 is at index: $idx"

# 1. 정렬과 동시에 중복 제거 (-unique)
set unique_errors [lsort -unique -dictionary $errors]
puts "Unique errors: $unique_errors" ;# M1 M2 M3 M10

# 2. 특정 에러의 위치 확인
set idx [lsearch -exact $unique_errors "M3"]
puts "M3 is at index: $idx"
# set idx [lsearch -exact -inline $unique_errors "M3"]





puts \n




# p3-3_failure.tcl
# list_A와 list_B에 각각 10만 개의 데이터가 있다고 가정
set list_A {1 2 3 4 5 6 7 8 9 10 11}
set list_B {10 9 8 7 6 5 4 3 2 1}

foreach item $list_A {
    # 루프(10만 번) 안에서 선형 탐색(10만 번) 수행
    if {[lsearch -exact $list_B $item] == -1} {
        # ... 처리 로직 ...
        puts "cannot found $item in list_B"
    }
}




puts \n



set list {M3 M2 TOP_METAL M4 M5 M1}
proc compare_layers {a b} {
    # 여기에 복잡한 비교 로직 작성
    return [string compare $a $b]
}
set sorted [lsort -command compare_layers $list]
puts "Sorted layers: $sorted"



puts \n




set violations {VIA10 VIA1 VIA2 VIA1 VIA10 VIA3}
set sorted_viol [lsort -unique -dictionary $violations]

puts "Sorted: $sorted_viol"

set val "VIA2"

puts "$val Index: [lsearch -exact $sorted_viol $val]"



puts \n

