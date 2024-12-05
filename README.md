## Introduction
I have finally finished my Battleye research and found out it's really bad and outdated. All you need to do is clean your APCs and avoid the stalk walk, which I will explain in this repo. I will try to keep it as simple as I can. Once you finish reading, you will have a very detailed bypass for Battleye. there is no bypass provided by me. I won’t share my own methods, but I will provide something better than a bypass, Which is **knowledge**.

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

### Stalk walk
Every process on Windows has threads. The stalk walk goes through each thread in the protected process, enumerates them, and checks the thread context.

Stalk walk from `BEDaisy.sys`
```asm
 v20 = *(HANDLE *)(_RCX + 80i64 * a2 + 304); ; Thread Handle
 CurrentThreadId = PsGetCurrentThreadId();
  if ( v20 != CurrentThreadId )
  {
    LODWORD(CurrentThreadId) = PsLookupThreadByThreadId(v20, &Thread);
    v22 = 0;
    if ( (int)CurrentThreadId >= 0 )
    {
      Pool = (char *)ExAllocatePool((POOL_TYPE)512, 0x878ui64);
      v122 = (__int64)Pool;
      AllocatedPool = (__int64)Pool;
      if ( Pool )
      {
        v25 = Pool + 88;
        KeInitializeEvent((PRKEVENT)(Pool + 88), NotificationEvent, 0);
        ++_CL;
        __asm { rcr     ch, cl }
        LOBYTE(v109) = 0;
        KeInitializeApc(AllocatedPool, Thread, 0i64, j_update_stack, 0i64, 0i64, v109, 0i64);
        __asm { rcr     ch, 14h }
        if ( (unsigned __int8)KeInsertQueueApc(AllocatedPool, AllocatedPool, 0i64, 2i64) )
        {
          HIBYTE(_CX) = __ROL1__(HIBYTE(_CX), _CX);
          v118.QuadPart = -1000000i64;
          __asm { rcl     ch, cl }
          v32 = KeWaitForSingleObject(v25, Executive, 0, 0, &v118);
          if ( v32 )
          {
            if ( v32 != 0x102
              || !(unsigned __int8)sub_1401E3342(AllocatedPool) && KeWaitForSingleObject(v25, Executive, 0, 0, &v118) )
            {
              goto LABEL_107;
            }
          }
```

### Now how to avoid stalk walking?
Just hide your thread! I won’t spoon-feed anyone.


### APC 
There are three major detections that Battleye relies on: Stalk Walk, APC, and Report. You need to give these the highest priority in your bypass. If you avoid all of them, you are almost undetected.
Anyways, APC (Asynchronous Procedure Call) acts as a safeguard for the threads. Let’s imagine it’s logging actions. When you inject your module, your module/injector will leave traces in the APC, so you need to clean them. Example:
```C
PVOID TwAllocateVirtualMem(HANDLE pid,ULONGLONG size, DWORD Protect)
{
	PEPROCESS Process = NULL;
	NTSTATUS status = PsLookupProcessByProcessId((HANDLE)pid, &Process);
	if (Process == NULL)
	{
		// .. 
	}
	PVOID ImageBase = NULL;
	KAPC_STATE APC;
	
	// .. 
	KeStackAttachProcess(Process,&APC);
	KeUnstackDetachProcess(&APC);
	return ImageBase;
}
```

### Worth to mention
This is true Battleye is not as good compared to modern anti-cheats like EAC, for example, which does a much better job. However, Battleye is not an anti-cheat to underestimate. It can detect overlays, function hooking, and unlike EAC, which has a public SDK, Battleye adds itself to the game. The game can also communicate with BEDaisy.sys, which provides more adjustable detections for game developers.

But in my opinion, EAC is much better and harder to bypass since they are testing TPM banning on Rust. I hope this repo provides a good overview of the situation. You can also check out my EAC research if you're interested.

This is just research I’ve done to gain knowledge, and now I’m sharing it with you guys. I’ve provided the stalk walk function, BEDaisy.sys dump and devirtualized. so happy reversing, y'all.
