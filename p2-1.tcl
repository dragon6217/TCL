puts \n

# p2-1.tcl
set cell_name "BUF_X16_HVT"

# switch -glob 을 이용한 패턴 분류
switch -glob $cell_name {
    "BUF*" {
        puts "Type: Buffer"
    }
    "INV*" {
        puts "Type: Inverter"
    }
    "*_HVT" {
        puts "Threshold: High VT"
    }
    default {
        puts "Type: Unknown"
    }
}


puts \n


switch -glob $cell_name {
    "*"     { puts "Match All!" } 
    "BUF*"  { puts "This will never run" }
}


puts \n


set cell_name BUF*

switch -exact $cell_name {
    "*"     { puts "Match All!" } 
    "BUF*"  { puts "This will never run" }
}


puts \n


# VDD_CORE, GND_NET, DATA_IN, CLK_IN, RESET_IN
set pin_name VDD_CORE 
switch -glob $pin_name {
    "VDD*" -
    "VCC*" {
        # VDD* 또는 VCC* 에 매칭되면 이 블록이 실행됩니다.
        puts "Power Pin"
    }
    "GND*" -
    "VSS*" {
        puts "Ground Pin"
    }
    default {
        puts "Signal Pin"
    }
}


puts \n


switch -regexp $pin_name {
    {^(VDD|VCC)} {
        puts "Power Pin"
    }
    {^(GND|VSS)} {
        puts "Ground Pin"
    }
    default {
        puts "Signal Pin"
    }
}


puts \n


puts \n