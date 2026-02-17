puts \n


# p1-5.tcl 에 작성하세요.
set tool "Innovus"
set stage "Placement"

# 여러 단어와 치환을 하나의 인자로 묶어 출력
puts "The current tool is $tool and we are in $stage stage."

# 명령어 치환([])과 함께 사용
puts "Analysis started at: [clock format [clock seconds]]"


puts \n

set lib_name CORE_LL

puts "Library \"$lib_name\" is loaded at timestamp: [clock format [clock seconds]]"


puts \n


# 에러 예시 1: 따옴표 미종료
puts "Starting the run...
# 결과: missing "

# 에러 예시 2: 중첩 따옴표 (백슬래시 미사용)
puts "
The cell name is "
BUF_X1" in this design"
# 결과: extra characters after close-quote
# 파서는 "The cell name is " 까지만 읽고 뒤의 BUF_X1을 해석하지 못함