; here, here : https://www.codewars.com/kata/580878d5d27b84b64c000b51

sumTriangularNumbers: ; int sumTriangularNumbers(int n)
                      ; input:  edi = n
                      ; output: eax
      mov     edx, edi
      xor     eax, eax
      test    edx, edx
      jle     .selesai
      lea     eax, [edx + 1]
      mov     ecx, 6
      imul    eax, edx
      add     edx, 2
      imul    eax, edx
      cdq
      idiv    ecx
  .selesai:
      ret
