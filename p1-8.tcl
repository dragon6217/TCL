# p1-8.tcl
set a 10

# if {인자1} {인자2} -> if 명령어가 인자1을 직접 평가(eval)함
if {$a > 5} {
    puts "a is greater than 5"
}

if $a>5 {
    puts "a is greater than 5"
}


puts \n


while {$a > 0} {
    puts $a
    set a [expr $a - 1]
}


puts \n


foreach item {apple banana cherry} {
    puts $item
}


puts \n


for {set i 0} {$i < 10} {incr i} {
    puts $i
}


puts \n


set i 0
while {$i<5} {
    puts "Iteration $i"
    incr i
}



