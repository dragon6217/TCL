puts \n



if {[info exists ::UTIL_LIB_LOADED]} return ;# 이미 로드됐으면 실행 중단(빠져나감)
set ::UTIL_LIB_LOADED 1

namespace eval ::Util {
    proc get_time {} {
        return [clock format [clock seconds]]
    }
}
puts "Successfully loaded: [info script]"







puts \n









puts \n









puts \n









puts \n

