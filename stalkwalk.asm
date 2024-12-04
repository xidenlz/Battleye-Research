int __fastcall stackwalk(__int64 _RCX, unsigned int a2, __int64 a3, char a4)
{
  __int64 v4; // rax
  __int64 v5; // rdi
  __int64 v6; // rsi
  __int64 v7; // r12
  __int64 v8; // r13
  int _EAX; // eax
  char v10; // sp
  __int16 _DI; // di
  char _BL; // bl
  unsigned __int64 _RDI; // rdi
  char _R15; // r15
  __int64 v17; // r15
  __int64 v19; // r12
  HANDLE v20; // rbx
  HANDLE CurrentThreadId; // rax
  unsigned int v22; // esi
  char *Pool; // rax
  __int64 AllocatedPool; // r14
  void *v25; // rbx
  char _CL; // cl
  __int16 _CX; // cx
  NTSTATUS v32; // eax
  unsigned __int64 _RDX; // rdx
  unsigned int v34; // r10d
  int _R11D; // r11d
  int v38; // r11d
  unsigned __int64 _RCX; // rcx
  __int64 v41; // rbx
  __int64 v42; // rcx
  unsigned __int64 v43; // r8
  __int64 *v44; // rax
  __int64 v45; // rcx
  _OWORD *v46; // rax
  _OWORD *v47; // r13
  int v48; // eax
  _BYTE *_RCX; // rcx
  char v50; // fl
  int v51; // ebx
  char _CL; // cl
  unsigned __int64 v53; // rt0
  char _AH; // ah
  __int64 v56; // rax
  int v57; // esi
  __int64 v58; // rdx
  __int64 v60; // rbx
  unsigned int v61; // r14d
  char *v62; // rbx
  int v63; // edx
  __int64 v64; // rax
  bool v65; // zf
  __int64 _RBX; // rbx
  __int16 _AX; // ax
  __int128 v68; // xmm0
  __int128 v70; // xmm1
  __int16 _DI; // di
  __int128 v72; // xmm0
  int v73; // eax
  __int128 v74; // xmm1
  __int64 v75; // rcx
  _WORD *v76; // rdx
  __int64 v77; // r8
  __int16 v78; // ax
  unsigned int v79; // esi
  int v80; // ebx
  __int64 v81; // r8
  unsigned int v82; // r8d
  __int64 v83; // rdx
  int v84; // r9d
  __int64 _RCX; // rcx
  unsigned __int8 _AL; // al
  int v88; // eax
  void *v89; // rcx
  int v90; // r8d
  __int16 v91; // r9
  unsigned __int16 v92; // r11
  __int64 _RCX; // rcx
  __int64 v95; // rax
  __int64 v96; // rcx
  __int16 _R8; // r8
  _BYTE *_RCX; // rcx
  __int64 v99; // rbx
  __int64 _R8; // r8
  unsigned __int64 v101; // rbx
  unsigned __int64 v103; // rdx
  unsigned __int64 _RCX; // rcx
  __int64 v108; // [rsp-20h] [rbp-268h] BYREF
  int v109; // [rsp+10h] [rbp-238h]
  char v110; // [rsp+20h] [rbp-228h]
  int v111; // [rsp+24h] [rbp-224h]
  unsigned int v112; // [rsp+28h] [rbp-220h]
  unsigned int v113; // [rsp+2Ch] [rbp-21Ch]
  int v114; // [rsp+30h] [rbp-218h]
  int v115; // [rsp+34h] [rbp-214h]
  __int64 v116; // [rsp+38h] [rbp-210h]
  __int64 v117; // [rsp+40h] [rbp-208h]
  union _LARGE_INTEGER v118; // [rsp+48h] [rbp-200h] BYREF
  PETHREAD Thread; // [rsp+50h] [rbp-1F8h] BYREF
  struct _STRING v120; // [rsp+58h] [rbp-1F0h] BYREF
  struct _STRING v121; // [rsp+68h] [rbp-1E0h] BYREF
  __int64 v122; // [rsp+78h] [rbp-1D0h]
  __int64 v123; // [rsp+80h] [rbp-1C8h]
  struct _UNICODE_STRING v124; // [rsp+88h] [rbp-1C0h] BYREF
  _QWORD v125[8]; // [rsp+A0h] [rbp-1A8h] BYREF
  char v126; // [rsp+E0h] [rbp-168h] BYREF
  _BYTE v127[2]; // [rsp+F0h] [rbp-158h] BYREF
  __int64 v128; // [rsp+F2h] [rbp-156h]
  __int128 v129; // [rsp+FAh] [rbp-14Eh]
  __int128 v130; // [rsp+10Ah] [rbp-13Eh]
  __int128 v131; // [rsp+11Ah] [rbp-12Eh]
  __int128 v132; // [rsp+12Ah] [rbp-11Eh]
  int v133; // [rsp+13Ah] [rbp-10Eh]
  char v134; // [rsp+13Eh] [rbp-10Ah]
  _BYTE v135[39]; // [rsp+13Fh] [rbp-109h] BYREF
  _BYTE v136[154]; // [rsp+166h] [rbp-E2h] BYREF
  __int64 v137; // [rsp+200h] [rbp-48h]
  __int64 v138; // [rsp+220h] [rbp-28h]
  __int64 v139; // [rsp+228h] [rbp-20h]
  __int64 v140; // [rsp+230h] [rbp-18h]
  __int64 v141; // [rsp+238h] [rbp-10h]

  _EAX = __ROL8__(v4, 152);
  v141 = v6;
  LOWORD(_EAX) = __ROL2__(_EAX, _RCX);
  LOBYTE(_EAX) = v6 & _EAX;
  v140 = v5;
  v139 = v7;
  v138 = v8;
  _DI = v5 | (1 << (v10 & 0xF));
  __asm
  {
    rcl     dil, 2Ch
    rcr     eax, 0AAh
  }
  _BL = _byteswap_ushort(_byteswap_ulong(v7 + 403957282) & ~(1 << (v8 & 0xF)));
  v110 = a4;
  if ( !__SETP__(17, 0) )
    _BL = a3;
  _RDI = a3;
  _R15 = 32;
  v116 = a3;
  __asm { rcl     r15b, cl }
  v17 = _RCX;
  v115 = a2;
  __asm { rcr     bl, 0B0h }
  v123 = _RCX;
  v19 = 10i64 * a2;
  v20 = *(HANDLE *)(_RCX + 80i64 * a2 + 304);
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
          else
          {
            KeWaitForSingleObject(&battleye_report_struct, Executive, 0, 0, 0i64);
            v34 = *(_DWORD *)(AllocatedPool + 0x870);
            LOBYTE(_R11D) = 0;
            __asm { rcl     r11d, cl }
            v114 = 1;
            v38 = 1;
            if ( v34 > 1 )
            {
              while ( 1 )
              {
                if ( _RDI || *(_QWORD *)(AllocatedPool + 8i64 * v38 + 112) >= 0x8000000000000000ui64 )
                {
                  _RCX = *(_QWORD *)(qword_1400171D8 + 24);
                  __asm { rcr     dh, cl }
                  v41 = v38;
                  v117 = v38;
                  _RDX = *(_QWORD *)(AllocatedPool + 8i64 * v38 + 112);
                  if ( _RDX < _RCX || _RDX >= *(unsigned int *)(qword_1400171D8 + 32) + _RCX )
                  {
                    v42 = qword_1400177D8;
                    if ( !qword_1400177D8 )
                      break;
                    do
                    {
                      v43 = *(_QWORD *)(v42 + 0x508);
                      if ( _RDX >= v43 && _RDX < *(unsigned int *)(v42 + 1296) + v43 )
                        break;
                      v42 = *(_QWORD *)(v42 + 0x528);
                    }
                    while ( v42 );
                    if ( !v42 )
                      break;
                  }
                }
                v114 = ++v38;
                if ( v38 >= v34 )
                  goto LABEL_102;
              }
              v44 = qword_140017DD8;
              _RDI = 0i64;
              do
              {
                v45 = *(v44 - 1);
                if ( !v45 || *(_QWORD *)(v17 + 8 * v19 + 304) == v45 && _RDX == *v44 )
                  break;
                ++v22;
                v44 += 2;
              }
              while ( v22 < 0xA );
              if ( (v112 = v22, v22 < 0xA) && !qword_140017DD0[2 * (int)v22] || a4 )
              {
                v46 = ExAllocatePool((POOL_TYPE)512, 0x40ui64);
                v47 = v46;
                if ( v46 )
                {
                  v48 = sub_1402364EB(*(_QWORD *)(AllocatedPool + 8 * v41 + 112), v46, 64i64);
                  if ( v48 >= 0 )
                  {
                    _mm_lfence();
                    LOBYTE(v111) = 0;
                    v51 = 0;
                    LODWORD(v53) = (_DWORD)_RCX;
                    HIDWORD(v53) = (_DWORD)_RCX;
                    _CL = v53 >> 27;
                    v113 = 0;
                    _AH = BYTE1(v48) << _CL;
                    __asm { rcr     ah, cl }
                    v56 = 0i64;
                    LOBYTE(_RCX) = 1;
                    while ( *((_BYTE *)v47 + v56) != 0xE9 )
                    {
                      ++v51;
                      if ( ++v56 >= 60 )
                        goto LABEL_61;
                    }
                    _RDI = (unsigned __int64)ExAllocatePool((POOL_TYPE)512, 0x40ui64);
                    if ( _RDI )
                    {
                      v57 = v111;
                      v58 = v51;
                      __asm { rcr     cl, cl }
                      v60 = *(_QWORD *)(AllocatedPool + 8 * v117 + 112) + *(int *)((char *)v47 + v51 + 1) + 5i64;
                      v61 = v113;
                      v62 = (char *)(v58 + v60);
                      do
                      {
                        if ( !MmIsAddressValid(v62) || (int)sub_1401EB276(v62, _RDI, 64i64) < 0 )
                          break;
                        if ( v61 < 0xA )
                          v125[v61] = v62;
                        v57 = (unsigned __int8)v57;
                        ++v61;
                        v63 = 0;
                        v64 = 0i64;
                        if ( v61 == 5 )
                          v57 = 1;
                        while ( *(_BYTE *)(v64 + _RDI) != 0xE9 )
                        {
                          ++v63;
                          if ( ++v64 >= 60 )
                            goto LABEL_46;
                        }
                        v62 += v63 + *(int *)(v64 + _RDI + 1) + 5;
LABEL_46:
                        ;
                      }
                      while ( v63 != 60 && v61 < 0x64 );
                      v113 = v61;
                      v111 = v57;
                      ExFreePoolWithTag((PVOID)_RDI, 0);
                      AllocatedPool = v122;
                      _RDI = 0i64;
                      v17 = v123;
                      v65 = (_BYTE)v57 == 0;
                      v22 = v112;
                      if ( !v65 )
                        goto LABEL_49;
                    }
LABEL_61:
                    _RBX = v116;
                    if ( v116 != qword_1400177E0
                      || MmIsAddressValid(*(PVOID *)(v17 + 8 * v19 + 288))
                      && ((_RCX = *(_BYTE **)(v17 + 8 * v19 + 288), *_RCX == 0xCC)
                       || *_RCX == 0x90
                       || (v78 = *(_WORD *)_RCX + 7681, LOBYTE(_RCX) = -1, (v78 & 0xBFFF) == 0)) )
                    {
                      LOBYTE(v111) = 1;
                      goto LABEL_51;
                    }
                    v79 = dword_140017DB0;
                    v80 = _RDI;
                    if ( dword_140017DB0 )
                    {
                      _RDI = (unsigned __int64)&unk_140017950;
                      while ( 1 )
                      {
                        v81 = *(unsigned int *)_RDI;
                        __rdtsc();
                        if ( !(unsigned int)sub_140013F50(v47, (char *)&unk_140017930 + 36 * v80, v81) )
                          break;
                        _RDI += 36i64;
                        if ( ++v80 >= v79 )
                        {
                          _RDI = 0i64;
                          goto LABEL_72;
                        }
                      }
                      v22 = v112;
                      LOBYTE(v111) = 1;
                      goto LABEL_50;
                    }
LABEL_72:
                    v82 = _RDI;
                    if ( v115 >= 50 )
                    {
                      v83 = _RDI;
                      _RCX = (_BYTE *)(v17 + 288);
                      v84 = v115;
                      while ( v83 < 20 && v82 < *(_DWORD *)(v17 + 4) )
                      {
                        if ( *((_QWORD *)_RCX - 2) == *(_QWORD *)(v17 + 8 * v19 + 272)
                          && *(_QWORD *)_RCX == *(_QWORD *)(v17 + 8 * v19 + 288) )
                        {
                          LOBYTE(v111) = 1;
                          goto LABEL_82;
                        }
                        ++v82;
                        --v84;
                        ++v83;
                        _RCX += 80;
                        if ( v84 < 50 )
                          break;
                      }
                    }
                    if ( v110 != (_BYTE)_RDI )
                    {
LABEL_82:
                      v22 = v112;
LABEL_49:
                      LOWORD(_RDI) = _RDI - 29048;
LABEL_50:
                      _RBX = v116;
LABEL_51:
                      LOBYTE(_AX) = v114;
                      LOBYTE(_RDI) = ((unsigned __int8)_RDI >> (char)_RCX) ^ 0xBE;
                      v68 = *v47;
                      __asm { rcl     dil, 12h }
                      v127[1] = v114;
                      HIBYTE(_AX) = v50;
                      __asm { rcr     ax, cl }
                      v70 = v47[1];
                      _DI = _RDI & ~(1 << (AllocatedPool & 0xF)) | 2;
                      __asm { rcr     dil, cl }
                      v129 = v68;
                      v127[0] = 14;
                      LOBYTE(_DI) = __ROL1__(_DI & 0xE, (char)_RCX);
                      v72 = v47[2];
                      __asm { rcl     di, 3Ah }
                      v128 = *(_QWORD *)(AllocatedPool + 8 * v117 + 112);
                      v73 = *(_DWORD *)(v17 + 8 * v19 + 304);
                      v130 = v70;
                      LOBYTE(_DI) = (((unsigned __int8)v22 & (unsigned __int8)_DI) - 96) << (char)_RCX;
                      __asm { rcr     dil, 90h }
                      v133 = v73;
                      _RDI = 0i64;
                      v74 = v47[3];
                      v131 = v72;
                      v132 = v74;
                      if ( _RBX )
                      {
                        v75 = -1i64;
                        do
                          ++v75;
                        while ( *(_WORD *)(_RBX + 2 * v75 + 258) );
                        if ( (int)v75 >= 0 )
                        {
                          v76 = (_WORD *)(_RBX + 2 * ((int)v75 + 129i64));
                          while ( 1 )
                          {
                            v77 = (unsigned int)v75;
                            --v76;
                            LODWORD(v75) = v75 - 1;
                            if ( (_DWORD)v75 == -1 || *v76 == 92 || *v76 == 47 )
                              break;
                            if ( (int)v75 < 0 )
                              goto LABEL_88;
                          }
                          _mm_lfence();
                          RtlInitUnicodeString(&v124, (PCWSTR)(_RBX + 2 * (v77 + 129)));
                          *(_DWORD *)&v120.Length = 0x400000;
                          v120.Buffer = v135;
                          if ( RtlUnicodeStringToAnsiString(&v120, &v124, 0) >= 0 )
                            _RDI = v120.Length;
                        }
                      }
                      else
                      {
                        *(_DWORD *)&v121.Length = 0x400000;
                        v121.Buffer = v135;
                        if ( RtlUnicodeStringToAnsiString(&v121, (PCUNICODE_STRING)(v17 + 56), 0) >= 0 )
                          _RDI = v121.Length;
                      }
LABEL_88:
                      v134 = _RDI;
                      if ( _RBX )
                      {
                        _RCX = *(_QWORD *)(_RBX + 1288);
                      }
                      else
                      {
                        LODWORD(_RCX) = 0;
                        _AL = (unsigned __int8)&v126;
                        __asm { rcr     al, cl }
                      }
                      v88 = *(_DWORD *)(v17 + 8 * v19 + 288) - _RCX;
                      v89 = *(void **)(v17 + 8 * v19 + 288);
                      *(_DWORD *)&v135[_RDI] = v88;
                      if ( MmIsAddressValid(v89) )
                        *(_OWORD *)&v135[_RDI + 4] = *(_OWORD *)*(_QWORD *)(v17 + 8 * v19 + 288);
                      else
                        *(_OWORD *)&v135[_RDI + 4] = 0i64;
                      LOBYTE(v90) = v90 - (__CFSHR__(v17, v17) - 119);
                      _RCX = *(_QWORD *)(v17 + 8 * v19 + 272);
                      LOWORD(_RBX) = _RBX ^ 4;
                      __asm { rcr     ebx, cl }
                      v95 = MEMORY[0xFFFFF78000000014] - _RCX;
                      v96 = _RCX - *(_QWORD *)(v17 + 32);
                      *(_QWORD *)&v135[_RDI + 20] = v95;
                      LOWORD(v95) = *(_WORD *)(v17 + 4) - v115 - 1;
                      _R8 = v91 ^ (__ROR4__(v90, v96) - (__CFSHR__(v90, v96) + 8 * (_WORD)v47));
                      *(_QWORD *)&v135[_RDI + 30] = v96;
                      *(_WORD *)&v135[_RDI + 28] = v95;
                      _RCX = v136;
                      __asm { rcl     r8w, 4 }
                      LODWORD(v95) = v113;
                      v99 = v113;
                      v135[_RDI + 38] = v113;
                      _R8 = v92;
                      v101 = 8 * v99;
                      __asm { rcr     r8, cl }
                      if ( (unsigned int)v95 > 0xA )
                        v101 = 80i64;
                      sub_140014080((__m128i *)&v136[_RDI], (unsigned __int64)v125, v101);
                      v103 = _RDI + v101 + 118;
                      if ( !(_BYTE)v111 )
                        goto LABEL_100;
                      if ( v22 >= 0xA )
                        goto LABEL_100;
                      __asm { rcl     di, 11h }
                      _RDI = 0x140000000ui64;
                      if ( qword_140017DD0[2 * (int)v22] )
                      {
LABEL_100:
                        ((void (__fastcall *)(_BYTE *, unsigned __int64, void *, void *))loc_1400F23E8)(
                          v127,
                          v103,
                          &unk_1400177F8,
                          &unk_140017800);
                      }
                      else
                      {
                        sub_1401FB896(v127, v103);
                        qword_140017DD0[2 * (int)v22] = *(_QWORD *)(v17 + 8 * v19 + 304);
                        qword_140017DD8[2 * (int)v22] = *(_QWORD *)(AllocatedPool + 8 * v117 + 112);
                      }
                    }
                  }
                  ExFreePoolWithTag(v47, 0);
                }
              }
            }
LABEL_102:
            KeReleaseMutex(&battleye_report_struct, 0);
          }
        }
        ExFreePoolWithTag((PVOID)AllocatedPool, 0);
      }
LABEL_107:
      LODWORD(CurrentThreadId) = ObfDereferenceObject(Thread);
    }
  }
  _RCX = (unsigned __int64)&v108 ^ v137;
  __asm { rcl     dil, cl }
  return (int)CurrentThreadId;
}
