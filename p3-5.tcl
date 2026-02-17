puts \n




# p3-5_success.tcl
# 1. 중첩 구조 생성 (Project -> Layer -> Property)
dict set chip_info Intel4 M1 min_width 0.03
dict set chip_info Intel4 M1 spacing   0.03
dict set chip_info Intel4 M2 min_width 0.04

# 2. 값 가져오기
set m1_width [dict get $chip_info Intel4 M1 min_width]
puts "M1 Width: $m1_width" ;# 0.03

# 3. 전체 데이터 확인 ($를 붙여서 통째로 출력 가능!)
puts "Full Data: $chip_info"




puts \n




# p3-5_failure.tcl
set my_dict {color red size big}

# 대참사: dict get은 '값'을 원하는데 변수 이름을 준 경우
#puts [dict get my_dict color] 
# 에러 발생: "can't read "my_dict": no such variable" (파서가 my_dict를 변수로 보려 함)

# 올바른 방법
puts [dict get $my_dict color]



puts \n




puts [dict get $chip_info Intel4]
puts [dict get $chip_info Intel4 M1]
puts [dict get $chip_info Intel4 M1 min_width]




puts \n




dict set std_cells AND2 area 1.2
dict set std_cells AND2 delay 0.5
dict set std_cells OR2 area 1.5 
dict set std_cells OR2 delay 0.6

set and2_area [dict get $std_cells AND2 area]
puts "AND2 Area: $and2_area"
puts "All Cells: [dict keys $std_cells]"




puts \n




# 쓰기: 'stats'라는 변수(상자)에 중첩해서 넣기
dict set stats 2026 M1 100
dict set stats 2026 M2 150

# 읽기: '$stats'라는 내용물에서 2026년 M1 값을 꺼내기
set val [dict get $stats 2026 M1] ;# 결과: 100

if {[dict exists $stats 2025 M1]} {
    puts "Data exists"
} elseif {1} {
    puts "No data for 2025" ;# 2025년 데이터는 넣은 적 없으므로 이쪽 실행
}

set years [dict keys $stats] ;# 결과: {2026}
set layers [dict keys $stats 2026] ;# 결과: {M1 M2}

dict for {year data} $stats {
    puts "Year: $year"
    dict for {layer value} $data {
        puts "  $layer -> $value"
    }
}




puts \n










puts \n

