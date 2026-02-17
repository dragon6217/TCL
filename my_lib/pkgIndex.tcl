# pkgIndex.tcl
# [해석] "LewinLib 1.0" 패키지가 필요하다면(ifneeded), 
# 현재 디렉토리($dir)의 "p4-6_util.tcl"을 source 해라!
package ifneeded LewinLib 1.0 [list source [file join $dir p4-6_util.tcl]]