puts \n




# p3-6_success.tcl
set a 10
set b 3

# 1. 정수 나눗셈 방지를 위해 double() 사용
set result [expr {double($a) / $b}]
puts "Result: $result" ;# 3.3333333333333335

# 2. 복잡한 수식과 함수 사용
set area [expr {pow(1.2, 2) * 3.14159}]
puts "Area: $area"

# 3. 모든 연산자 확인
set result [expr {1 + 2 * 3 - 4 / 5 % 6}]
puts "Result: $result"



puts \n




# p3-6_failure.tcl
set passed_cells 1
set total_cells 2

# 대참사: 정수끼리 나누면 결과도 정수(소수점 버림)가 됨
set ratio [expr {$passed_cells / $total_cells}]
puts "Ratio: $ratio" ;# 결과: 0 (0.5가 아님!)




puts \n




set prev 1.2
set curr 1.5
set value [expr {($curr - $prev) / $prev * 100.0}]
set formatted_value [format "%.1f" $value]
puts $formatted_value
puts "Increase Rate: [expr {ceil($value)}] %"



puts \n









puts \n

