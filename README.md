## Bypass-Battleye
I have finally finished my Battleye research and found out it's really bad and outdated. All you need to do is clean your APCs and avoid the stalk walk, which I will explain in this repo. I will try to keep it as simple as I can. Once you finish reading, you will have a very detailed bypass for Battleye.


### Detection methods
Battleye checks multiple vectors and then sends a report. Based on this report, it decides what action to take against you. It communicates with BEClient and sends the report to the backend, where you may be banned accordingly. About 90% of its detection relies on reporting. People used to hook the report function to bypass it, but that was patched later on. Below, we can see the pseudo-code for the report.
```asm
if ( MmIsAddressValid(v11) )
    {
      v26[0] = *v25;                            // Report
      v26[1] = v25[1];
      v26[2] = v25[2];
      v26[3] = v25[3];
    }
    else
    {
      AllocatePoolWithTagCustom(v26, 0, 0x40ui64);
    }
```
