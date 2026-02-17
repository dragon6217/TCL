puts \n



# p3-7_success.tcl
set a "100"       ;# 처음엔 문자열 "100"
expr {$a + 1}     ;# 여기서 내부적으로 '정수 100'으로 변환 (캐싱됨)
puts [llength $a] ;# 다시 리스트로 해석하려 함 (리스트 타입으로 변환 시도)





puts \n




set data "1 2 3 4 5" ;# 문자열이자 리스트인 데이터

for {set i 0} {$i < 1000000} {incr i} {
    # 1. 리스트 명령어로 접근 (리스트로 변환)
    set first [lindex $data 0]
    
    # 2. 문자열 명령어로 접근 (리스트 구조 파괴, 문자열로 회귀)
    set len [string length $data]
}




puts \n




set my_list {}  ;# 1. 처음엔 빈 문자열이자 빈 리스트

for {set i 0} {$i < 1000} {incr i} {
    # 2. lappend를 하는 순간!
    # Tcl은 내부 리스트 구조체(internalRep)만 업데이트합니다.
    # 기존 문자열은 이제 '틀린 데이터'가 되었으므로, Tcl은 bytes 필드를 아예 지워버립니다(NULL).
    lappend my_list "item_$i"

    # 3. 만약 여기서 string length를 부른다면?
    set len [string length $my_list] 
    # Tcl은 당황합니다. "어? 문자열(bytes)이 비어있네? 
    # 지금 리스트 구조를 다 뒤져서 다시 'item_0 item_1 ...' 식의 거대한 문자열을 새로 만들어야겠군."
}




puts \n




foreach line $massive_log {
    lappend log_db $line
    # 매번 100만 줄짜리 문자열을 새로 만들어서 길이를 재고 있음 (미친 짓)
    if {[string length $log_db] > 1000000} { break }
}




puts \n




foreach line $massive_log {
    lappend log_db $line
    # 문자열 길이를 재지 말고, 리스트의 개수(llength)를 잽니다.
    # llength는 internalRep(리스트 구조체)에 박힌 숫자만 읽으면 되므로 bytes가 NULL이어도 상관없습니다.
    if {[llength $log_db] > 1000} { break }
}
# 루프가 다 끝나고 나서, 딱 한 번만 문자열로 변환하거나 길이를 잽니다.
puts "Total length: [string length $log_db]"




puts \n









puts \n

