# p4-8_detective.tcl

set target "analyze_design"

# 1. info procs로 함수가 있는지 리스트를 가져와서 길이를 잼
if {[llength [info procs $target]] == 0} {
    puts "\[수사관\] $target 함수를 찾을 수 없습니다. 새로 정의합니다..."
    
    # 2. 즉석에서 함수 정의!
    proc analyze_design {} {
        puts "\[Default\] 기본 분석 로직을 실행합니다."
    }
} else {
    puts "\[수사관\] 함수 발견! 소스 코드를 출력합니다."
    # 3. info body로 내용물 확인
    puts "------------------------"
    puts [info body $target]
    puts "------------------------"
}

# 실행 확인
analyze_design