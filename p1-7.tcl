set cmd "puts"
set target "World"

# 1. eval: 문자열을 조립해서 실행
eval "$cmd {Hello $target}" 
# 결과: Hello World (파서가 "puts {Hello World}"로 재해석함)

# 2. subst: 템플릿 완성하기
set template {The value is $val}
set val 100
puts [subst $template]
# 결과: The value is 100


puts \n


set logic_gate {puts "Testing: \" [expr $a * $b]"}
set a 5
set b 10

puts $logic_gate
puts [subst $logic_gate]
eval $logic_gate


puts \n


puts [puts {a = 5}]
puts {puts {a = 5}}
puts "puts {a = 5}"
puts "puts [puts a]"



puts \n


set code {puts "Value is $price"}
set price { [exit] }

puts $code
eval $code

set price " [exit] "

puts \n