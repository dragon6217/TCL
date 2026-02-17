puts \n


# p2-2.tcl

# 1. for 루프: 1부터 5까지 출력
for {set i 1} {$i <= 5} {incr i} {
    puts "Current step: $i"
}


puts \n


# 2. while 루프: 리스트 요소를 하나씩 제거하며 처리
set stack {cell_A cell_B cell_C}
while {[llength $stack] > 0} {
    set item [lindex $stack end]
    set stack [lrange $stack 0 end-1]
    puts "Processing $item..."
}


puts \n


for {set i 1} {$i <= 5} {incr i} {
    puts "2 ^ $i = [expr 2 ** $i]"
}


puts \n


set queue {cell_A cell_B cell_C}

while {[llength $queue] > 0} {
    # 1. 맨 앞(0번 인덱스)을 가져옵니다.
    set item [lindex $queue 0]
    
    # 2. 1번 인덱스부터 끝(end)까지 잘라서 다시 저장합니다.
    # (0번이 자연스럽게 탈락합니다.)
    set queue [lrange $queue 1 end]
    
    puts "Processing $item... (Remaining: $queue)"
}


puts \n


set i 0
while $i<5 {
    puts "Current step: $i"
    incr i
}


puts \n