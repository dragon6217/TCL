puts \n




# p3-2_success.tcl
set violations {}

foreach v {V1 V2 V3} {
    # lappend는 기존 리스트의 끝에 'In-place'로 데이터를 붙입니다.
    lappend violations $v
}

# 특정 위치 수정
lset violations 1 "V2_FIXED"

puts "Result: $violations" ;# V1 V2_FIXED V3




puts \n




set metals {}
foreach m {M1 M2 M3} {
    lappend metals $m
}

lset metals 1 "VIA12"
puts "Final Metals: $metals"

# 1. linsert: 결과를 변수에 다시 할당해야 함
set metals [linsert $metals 1 "VIA11"]
puts "After linsert: $metals" ;# M1 VIA11 VIA12 M3

# 2. lreplace: 1번부터 2번 인덱스까지를 "VIA_FIX"로 교체
set metals [lreplace $metals 1 2 "VIA_FIX"]
puts "After lreplace: $metals" ;# M1 VIA_FIX M3



puts \n



set layers {M1 M2 M3}

set layers [lreplace $layers 1 1]
puts "Final layers: $layers"

set layers {M1 M2 M3}

set layers [lreplace $layers 1 1 ""]
puts "Final layers: $layers"

set layers {M1 M2 M3}

set layers [lreplace $layers 1 1 {}]
puts "Final layers: $layers"



puts \n


set layers {M1 M2 M3}

set layers [lreplace $layers 1 1 ZZ YY]
puts "Final layers: $layers"


puts \n



set layers {M1 M2 M3}

set layers [lreplace $layers 0 2 A1 A2]
puts "Final layers: $layers"




puts \n

