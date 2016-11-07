#!/usr/bin/expect -f

spawn ssh root@192.168.1.1

expect "password: "

send "ad10bxcv3\r"

expect "# "

send "ps w\r"

expect "# "

send "exit\r"


