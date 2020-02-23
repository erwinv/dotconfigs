function loopback_audio
    set --local options (fish_opt --short=t --long=toggle --required-val)
    argparse $options -- $argv

    if test $_flag_toggle = "on"
        pacmd load-module module-loopback latency_msec=1
        pacmd load-module module-remap-sink sink_name=mono master=alsa_output.pci-0000_00_1f.3.analog-stereo channels=2 channel_map=mono,mono
    end
    if test $_flag_toggle = "off"
        pacmd unload-module module-remap-sink
        pacmd unload-module module-loopback
    end
end