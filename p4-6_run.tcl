puts \n


# return






#set script_dir [file dirname [file normalize [info script]]]
#source [file join $script_dir p4-6_util.tcl]

#puts "Time is: [::Util::get_time]"





puts \n




# run.tcl
# 1. 내 라이브러리가 있는 '폴더 경로'를 검색 목록에 추가
lappend auto_path [file dirname [file normalize [info script]]]

# 2. 패키지 이름으로 호출 (파일 이름은 몰라도 됨)
package require LewinLib

# 3. 사용
puts [::Util::get_time]




puts \n









puts \n









puts \n

