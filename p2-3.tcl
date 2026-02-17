puts \n


# p2-3.tcl

# 1. 한 번에 두 개씩 꺼내기 (Key-Value 쌍 처리)
set pin_data {VDD 1.1 VSS 0.0 CLK 0.9}
foreach {name volt} $pin_data {
    puts "Pin: $name, Voltage: $volt V"
}

# 2. 두 개의 리스트를 동시에 병렬 순회
set cells {INST_A INST_B INST_C}
set types {BUFF INV AND}
foreach c $cells t $types {
    puts "Cell $c is a $t type."
}


puts \n


set data {A 1 B 2 C} ;# C의 짝궁이 없음
foreach {key val} $data {
    puts "Key: $key, Val: $val"
}
# 결과: Key: C, Val: (빈 문자열)


puts \n


set cells {INST_A INST_B INST_C INST_D}
set types {BUFF INV AND}
foreach c $cells t $types {
    puts "Cell $c is a $t type."
}


puts \n


set layers {M1 M2 M3}
set widths {0.14 0.28 0.42}

foreach l $layers w $widths {
    puts "Layer $l has a min_width of $w um"
}

puts \n


set design_rules {{M1 0.14} {M2 0.28} {M3 0.42}}

foreach rule $design_rules {
    lassign $rule l w
    puts "Layer $l has a min_width of $w um"
}


puts \n
