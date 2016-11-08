#!/usr/bin/expect -f
set timeout 50
set IPaddress [lindex $argv 0]
set USER [lindex $argv 1]
set PASSWORD [lindex $argv 2]
set SSID [lindex $argv 3]
set PSK [lindex $argv 4]


spawn ssh $USER@$IPaddress
expect {
"(yes/no)" {send "yes\r"}
"password:" {send "$PASSWORD\r"}
}

expect ":~#"

send "uci show wireless.radio0.disabled\r"

expect ":~#"

foreach line [split $expect_out(buffer) "\n"] {
if {[string match "wireless.radio0.disabled='0'/r/n" $line]} {
send "uci show wireless.@wifi-iface[0].ssid\r"
}
}

expect ":~#"
#send "uci set wireless.@wifi-iface[0].ssid='$SSID'\r"
#send "uci set wireless.@wifi-iface[0].key='$PSK'\r"
#send "/etc/init.d/network restart\r"

#send "uci show wireless\r"
#send "exit\r"
interact
