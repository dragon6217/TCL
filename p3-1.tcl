puts \n




# p3-1_success.tcl
set log_line "2026-02-16 | ERROR | M3_Width_Violation | 0.12um"

# 1. '|'를 기준으로 잘라서 리스트 생성
set data [split $log_line "|"]


# 2. 개수 확인
puts "Total fields: [llength $data]" ;# 4

# 3. 특정 필드 추출 (공백 제거는 나중에 배울 string trim 활용)
set status [lindex $data 1]
set error_type [lindex $data end-1]

puts "Status: $status, Error: $error_type"




puts \n




puts $log_line
puts "Data: $data"
foreach item $data {
    puts "Item: $item"
}




puts \n




# p3-1_failure.tcl
set nested_list {{M1 0.14} {M2 0.28} {M3 0.42}}

# M2의 두께(0.28)만 가져오고 싶은데...
set val [lindex $nested_list 1 1]

puts "Result: $val" 
# 결과: {M2 0.28} -> 리스트가 통째로 나옴! 0.28만 나온 게 아님.
# 해결: [lindex $nested_list 1 1] 처럼 다중 인덱스를 써야 함.




puts \n




set layers {M1 M2 M3 M4 M5 TOP_METAL}

puts "Total Layers: [llength $layers]"
puts "Last Layer: [lindex $layers end]"




puts \n

