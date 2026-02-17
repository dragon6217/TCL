puts \n




# p4.5_success.tcl

proc check {} {
    puts "global cHeCk"
}

# 1. ANA 네임스페이스 선언
namespace eval ::ANA {
    variable vdda 1.8  ;# namespace 전용 변수
    proc check {} {
        variable vdda
        puts "ANA VDDA is $vdda"
    }
}

# 2. DIG 네임스페이스 선언
namespace eval ::DIG {
    variable vdda 0.8
    proc check {} {
        variable vdda
        puts "DIG VDDA is $vdda"
    }
}

# 호출할 때는 전체 경로(Full Path)를 사용
::check
::ANA::check ;# ANA VDDA is 1.8
::DIG::check ;# DIG VDDA is 0.8




puts \n




namespace eval ::Setup {
    variable margin 0.1
    proc show {} {
        variable margin
        puts "[namespace current] Margin: $margin"
    }
}
namespace eval ::Hold {
    variable margin 0.05
    proc show {} {
        variable margin
        puts "[namespace current] Margin: $margin"
    }
}

::Setup::show
::Hold::show




puts \n









puts \n




# 공통 모듈 (Core)
namespace eval ::CORE {
    variable post_hooks {}

    proc run_core {} {
        variable post_hooks
        # ... 공통 로직 ...
        foreach hook $post_hooks {
            if {[llength [info commands $hook]]} { $hook }
        }
    }
}

namespace eval ::USER_A {
    proc my_fix {} {
        puts "[namespace current]::my_fix"
    }
}

# 사용자 모듈 (각자의 파일에서)
lappend ::CORE::post_hooks "::USER_A::my_fix"
::CORE::run_core




puts \n




# [Library 영역]
proc good_smart_run {script} {
    puts "\[LOG\] 명령어를 실행합니다..."
    
    #eval $script
    set result [uplevel 1 $script]
    
    puts "\[LOG\] 실행 완료. 결과값: $result"
    return $result
}

# [User 영역]
set my_count 10
good_smart_run { incr my_count } 

puts "최종 my_count: $my_count" ;# 결과: 11 (정상적으로 수정됨!)




puts \n











puts \n





# [Library: 성능 측정 도구]
proc measure_time {description script} {
    set start [clock microseconds]
    
    # catch를 사용해 script 실행 중 에러가 나도 로그를 남길 수 있게 함
    # uplevel 덕분에 script 내부의 변수들은 사용자 환경을 그대로 따름
    set code [catch {uplevel 1 $script} result]
    
    set end [clock microseconds]
    set duration [expr {($end - $start) / 1000.0}]
    
    puts "\[TIMER\] $description: ${duration}ms"
    
    if {$code == 0} {
        return $result ;# 정상 종료 시 결과 반환
    } else {
        return -code $code $result ;# 에러 발생 시 에러 상태까지 그대로 전달
    }
}

# [User: 대규모 데이터 처리]
set data_list {1 2 3 4 5}
measure_time "리스트 역전 작업" {
    set data_list [lreverse $data_list]
    # 여기서 발생한 모든 변화는 User Scope의 data_list에 즉시 반영됨
}






puts \n
