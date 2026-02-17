set target_cell Gate_A
puts "The variable name is \$target_cell
The command result is \[ready]"

puts ""
puts ""

set status "DONE"
if {$status == "DONE"} {
    puts "The process is finished.\n\
    Please check the log file."
}

puts "\na"

puts [join {
    "The process is finished."
    "Please check the log file."
} \n]



puts \n 



set final_log ""
append final_log "Start Optimization\n"
append final_log "Error: Congestion detected"

puts $final_log
puts -nonewline "a"
puts ""