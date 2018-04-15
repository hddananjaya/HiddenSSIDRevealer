wifi.monitor.channel(6)
print ("started")
wifi.monitor.start(13, 0x40, function(pkt)

    print (pkt.ie_ssid)
    
end)
