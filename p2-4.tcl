puts \n



# p2-4.tcl
set log_data {INFO_01 INFO_02 WARNING_01 FATAL_99 INFO_03}

foreach line $log_data {
    # 1. INFO는 분석할 가치가 없으므로 건너뛰기 (continue)
    if {[string match "INFO*" $line]} {
        continue
    }

    # 2. FATAL을 만나면 인프라 마비 위험이 있으므로 즉시 중단 (break)
    if {[string match "FATAL*" $line]} {
        puts "CRITICAL: Fatal error detected ($line). Stopping analysis."
        break
    }

    puts "Analyzing suspicious line: $line"
}





puts \n




set measurements {12 0 45 -5 23 -10}
foreach m $measurements {
    if {$m == 0} {
        continue
    }

    if {$m < 0} {
        puts "Found negative value: $m. Terminal error."
        break
    }

    puts "Processing: $m"
}




puts \n









puts \n









puts \n

