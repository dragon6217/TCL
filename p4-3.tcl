puts \n



# p4-3_success.tcl
proc increment_target {var_name} {
    # 1. 호출자의 방에 있는 $var_name을 내 방의 'local_var'라는 별명과 연결
    upvar 1 $var_name local_var

    global my_data
    puts $my_data
    
    # 2. 내 방의 별명을 수정하면 호출자의 원본이 바뀜
    incr local_var 5
    puts $my_data
}

set my_data 10
# 주의: 값이 아니라 '이름(my_data)'을 넘겨야 함
increment_target my_data 

puts "My Data: $my_data" ;# 결과: 15





puts \n




proc double_it {var} {
    upvar 1 $var local
    # set local [expr {$local * 2}]
    incr local $local
}



set ori 50
puts "Original $ori"
double_it ori
puts "After Double: $ori"




puts \n









puts \n









puts \n

