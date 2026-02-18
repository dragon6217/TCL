puts \n



# p4-9_success.tcl
set a 10
set b 0

# 에러가 날 것 같은 부분을 중괄호로 묶어 catch에게 전달
if {[catch {expr {$a / $b}} msg]} {
    puts "\[ERROR ALERT\] 에러가 발생했지만 죽지 않았습니다!"
    puts "사유: $msg"
} else {
    puts "결과값은 $msg 입니다."
}





puts \n




# p4-9_failure.tcl
catch { set file_id [open "p4-9_non_existent.txt" r] }
# 파일이 안 열렸는데 status 체크 없이 그냥 읽으려 함
gets $file_id line 
# 에러: can't read "file_id": no such variable (여기서 결국 죽음)

puts "Read: $line"




puts \n




# 수정된 패턴
set status [catch { open "p4-9_non_existent.txt" r } file_id]

if {$status == 0} {
    # 성공(0)했을 때만 읽기 시작!
    gets $file_id line
    puts "Read: $line"
    close $file_id
} else {
    # 실패(1)하면 file_id 변수에는 에러 메시지가 들어있음
    puts "빨대 꽂기 실패! 사유: $file_id"
}




puts \n




proc safe_read {filename} {
    # 1. catch로 open을 감싸세요. (결과는 status에, 파일 핸들은 f에 저장)
    set status [catch {open $filename r} f]
    
    # 2. 만약 status가 0(성공)이라면?
    if {$status == 0} {
        gets $f line
        puts "내용: $line"
        close $f
    } else {
        # 3. 실패했다면 에러 메시지 출력
        puts "파일을 열 수 없습니다: $f"
    }
}

# 테스트
safe_read "no_such_file.txt"
puts "I am still alive!"




puts \n








puts \n
