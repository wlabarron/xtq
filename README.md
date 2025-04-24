# XTQ: X32 to QLab
This tool lets you map any X32 button press or action to a QLab command. To keep the name trendy, you can pronounce it "ext-cue", like "next cue".

XTQ works by forwarding the OSC status messages which X32 fires whenever you change anything on the console to QLab's OSC receive port. You can then map any of these status changes to a QLab function in your workspace settings.

This is a bash one-liner with a bit of dressing, put together in a neat file.

Download `XTQ.command` and double-click to run (or run it from the Terminal). It needs to run on the same Mac as QLab, and that Mac needs to be on the same network as your X32's remote control interface (if you can connect to the desk in X32-Edit from your QLab Mac, it's set up correctly).

It is very basic, almost not worth writing as a script file, and performs no form of error checking or recovery, so test your buttons each time you run the script.

This work is inspired by [UStAEnts/x32-reflector](https://github.com/ustaents/x32-reflector) and [X32 Commander](https://github.com/pmaillot/X32-Behringer), and was written with the help of [Patrick-Gilles Maillot's X32 OSC reference](https://sites.google.com/site/patrickmaillot/x32). 