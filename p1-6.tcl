# p1-6.tcl 에 작성하세요.
set name "Lewin"

# 1. 치환 차단 (문자 그대로 출력)
puts {Hello $name, [clock seconds]} 
# 결과: Hello $name, [clock seconds]

# 2. 공백 포함 그룹화 (치환 없는 단순 문장)
puts {This is a simple string with no substitutions}



puts ""


set a 1
set b 2
puts {The command syntax is: set var_name [expr $a + $b]}

puts ""
puts "The command syntax is: [set var_name [expr $a + $b]]"
puts $var_name