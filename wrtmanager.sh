#!/usr/bin/expect -f

stty --echo
send_user -- "Please enter the password for the root: "
expect_user -re "(.*)\n"
send_user "\n"
stty echo
set pass $expect_out(1,string)

spawn ssh root@192.168.1.1

expect "password: "

send -- "$pass\r"

expect "# "

send "ps w\r"

expect "# "

send "exit\r"


interact
