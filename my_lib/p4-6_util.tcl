# 1. 이게 핵심입니다! "나는 LewinLib 1.0 버전이다"라고 선언하는 겁니다.
package provide LewinLib 1.0



if {[info exists ::UTIL_LIB_LOADED]} return ;# 이미 로드됐으면 실행 중단(빠져나감)
set ::UTIL_LIB_LOADED 1

namespace eval ::Util {
    proc get_time {} {
        return [clock format [clock seconds]]
    }
}
puts "Successfully loaded: [info script]"
