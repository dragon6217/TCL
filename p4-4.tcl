puts \n




# p4-4_success.tcl
proc create_var_in_caller {name value} {
    # 호출자(1단계 위)의 방에서 "set 이름 값"을 실행하라!
    uplevel 1 [list set $name $value]
    uplevel 1 "list set $name $value"
}

proc test {} {
    create_var_in_caller new_data "Hello from uplevel"
    # 내 방(test)에 없던 변수 new_data가 생겨남
    puts $new_data
}

test




#2. [list set $name $value] 의 미스터리
#이 부분은 **"명령어를 조립해서 위층으로 보낸다"**고 생각하면 쉽습니다.

#$name을 쓰는 이유: * 호출할 때 create_var_in_caller new_data "Hello"라고 했죠?

#그럼 함수 안에서 name 변수에는 "new_data"라는 문자열이 들어있습니다.

#$name이라고 써야 그 내용물인 "new_data"가 튀어나옵니다.

#list를 쓰는 이유: * $value에 공백이 있을 때("Hello World") 안전하게 묶어주기 위해서입니다.

#만약 uplevel 1 "set $name $value"라고 하면 위층은 set new_data Hello World라는 명령어를 받게 되고, 인자가 너무 많다며 에러를 냅니다.

#[list set $name $value]라고 하면 set new_data {Hello World}라는 **완벽한 형태의 리스트(명령어)**를 만들어줍니다.



puts \n




# p4-4_failure.tcl
set a "Global_A"

proc bad_uplevel {var_name} {
    set a "Local_A"
    # 중괄호 없이 넘기면 $a가 이 방(Local)의 값으로 먼저 치환되어 버림!
    uplevel 1 "puts $a" 
    uplevel 1 {puts $a} 
}

bad_uplevel a
# 결과: "Local_A" 출력 (원래 의도는 호출자의 "Global_A"를 찍는 것인데 실패)




puts \n




proc time_it {script} {
    # 1. uplevel을 써서 script 실행
    # 2. 결과 리턴
    uplevel 1 $script
    #return $x
}

set x 0
# 호출자의 변수 x를 수정하는 코드를 넘김
time_it { incr x 10 }
puts "X is now: $x" ;# 10이 출력되어야 함




puts \n




proc time_it {script} {
    set start [clock microseconds] 
    
    ;# 1. uplevel이 실행한 결과를 변수에 담음
    set result [uplevel 1 $script]

    set end [clock microseconds]

    puts "Elapsed: [expr {$end - $start}] us"

    # 2. 그 결과를 그대로 퉤 뱉어줌
    return $result
}

set x 0 

# 10을 더하고, 그 결과인 10이 리턴되어 x_val에 저장됨
set x_val [time_it { incr x 10 }]

puts "X is now: $x"     ;# 10
puts "Return was: $x_val" ;# 10



puts \n



proc time_it {script} {
    # 위층으로 올라가서 script를 실행하고 그 결과값을 가져옴
    set result [uplevel 1 $script]
    return $result
}

set x 5
# 10을 더하고, 그 결과인 10이 리턴되어 x_val에 저장됨
set x_val [time_it { incr x 10 }]

puts "X is now: $x"     ;# 10
puts "Return was: $x_val" ;# 10





puts \n









puts \n

