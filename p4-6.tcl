puts \n





# main.tcl (실행 파일)
# 1. 라이브러리 로드
if {![info exists ::LIB_LOADED]} {
    set script_dir [file dirname [file normalize [info script]]]
    puts $script_dir
    source "$script_dir/p4-6_common_lib.tcl" ;# 어디서 실행해도 안전함

    set ::LIB_LOADED 1
}


# 2. 로드된 함수 사용
puts "Current Tool: [get_tool_version]"





puts \n









puts \n









puts \n









puts \n

