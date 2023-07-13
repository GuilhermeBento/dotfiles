# check networks
`mcli dev wifi`

# add connection
`nmcli device wifi con "ssid" password "p455w04d"`

# Change Access points
`
$ sudo wpa_cli list_networks
Selected interface 'wlp0s20f3'
network id / ssid / bssid / flags
0   InternodeAC79C7 any [CURRENT]
$ sudo wpa_cli bssid 0 20:B0:01:AC:79:C7
Selected interface 'wlp0s20f3'
OK
$ sudo wpa_cli reassociate
Selected interface 'wlp0s20f3'
OK
$ sudo wpa_cli list_networks
Selected interface 'wlp0s20f3'
network id / ssid / bssid / flags
0   InternodeAC79C7 20:b0:01:ac:79:c7   [CURRENT]
$ nmcli -f in-use,ssid,bssid,signal,rate,bars  dev wifi
IN-USE  SSID                       BSSID              SIGNAL  RATE        BARS 
*       InternodeAC79C7            20:B0:01:AC:79:C7  92      130 Mbit/s  ▂▄▆█ 
        InternodeAC79C7-5G         22:B0:01:AC:79:CF  92      405 Mbit/s  ▂▄▆█ 
        InternodeAC79C7            24:65:11:64:BA:93  72      270 Mbit/s  ▂▄▆_ 
`
