This little piece of code can be used with NodeMCU to find hidden SSIDs on air by listening to probe requests which send by already connected devices in the wifi network.

https://nodemcu.readthedocs.io/en/master/en/modules/wifi_monitor/ 
As described in above documentation, wifi.monitor.start() need to be passed [filter parameters,] as the first
parameter. 13, 0x80 are the filter values for listen beacon frames as mentioned in the example. 
13bytes is the default value to skip first 12bytes in raw packets which is the radio header and they have passed 0x80 as the next value.  
https://supportforums.cisco.com/t5/wireless-mobility-documents/802-11-frames-a-starter-guide-to-learn-wireless-sniffer-traces/ta-p/3110019
This page contains WireShark filter values, which are identicators of frames. But when we filtering frames with
NodeMCU, need to pass 'Frame Control Field' value to filter parameters. To know that hex value we can simply reverse the digit part of wireshark filter values (0x04 --> 0x40) or can use WireShark to see it. 
It can be found under IEEE 802.11 <frame subtype>/Frame Control Field.
aircrack-ng + WireShark + inbuilt Intel WLAN chipset is capable of receiving raw packets on Kali Linux.
Hence Nodemcu is small, can power up using a mobile, has inbuilt wifi adapter, we can do more interesting stuff with it.
