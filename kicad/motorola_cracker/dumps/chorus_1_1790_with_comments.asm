
; 
; Disassembled by: 
; DASMx object code disassembler 
; (c) Copyright 1996-2003 Conquest Consultants 
; Version 1.40 (Oct 18 2003) 
; 
; File: chorus_1_1790.bin 
; 
; Size: 31232 bytes 
; Checksum: C58F 
; CRC-32: BCD74340 
; 
; Date: Tue Jun 19 17:08:11 2018 
; 
; CPU: Motorola 68HC05 (68HC05 family) 
; 
; 
; 
org $0400 
; 
L0400: 
          rsp                           ; Reset Stack Pointer, SP <- 0x00FF       
          sei                           ; Set Interrupt Mask, I ← 1);           
          bset 6,RAM1_0ba               ; Set Bit 6 at memory RAM1_0ba (Mn <- 1 ) 
          bclr 5,RAM1_0ba               ; Clear bit 5 at RAM1_0ba                 
          brset 7,Miscell,L0423         ; Branch to 0x0423 if Bit POR is set at Miscell (Mn=1)
L0409: 
          jsr L3648                     ; Jump to Subroutine at 0x3648            
          bne L0423                     ; Branch to 0x0423 if Not Equal (Z = 0);  
          lda #$53                      ; Load Accumulator with 0x53, A <- 0x53   
          cmp RAM1_06b                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_06b)
          bne L0423                     ; Branch to 0x0423 if Not Equal (Z = 0);  
          jsr L20A7                     ; Jump to Subroutine at 0x20A7            
          jsr L1FE6                     ; Jump to Subroutine at 0x1FE6            
          clr RAM1_06b                  ; Clear byte at RAM1_06b <- 0x00          
          bclr 3,PortB                  ; Set 3 LOW                               
          bset 3,DDRB                   ; Set 3 as OUTPUT                         
          jmp L0506                     ; Unconditional Jump to 0x0506            
; 
L0423: 
          jsr L1FC3                     ; Jump to Subroutine at 0x1FC3            
; 
          db $CC                        ; data? CC                                
; 
L0427: 
          brset 2,STACK_0f1,L03F7       ; Branch to 0x03F7 if Bit 2 is set at STACK_0f1 (Mn=1)
          ror RAM1_076                  ; Rotate Byte at RAM1_076 Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lda SCDR                      ; Load Accumulator with value of Memory at SCDR, A <- (SCDR)
          jmp L04B0                     ; Unconditional Jump to 0x04B0            
; 
          db $B6, $13                   ; data? B6, 13                            
; 
L0433: 
          lda TCL                       ; Load Accumulator with value of Memory at TCL, A <- (TCL)
          rti                           ; Return from Interrupt                   
; 
          db $0E, $13, $6A, $07         ; data? 0E, 13, j, 07                     
          db $13, $4F, $B6, $1F         ; data? 13, O, B6, 1F                     
          db $AB, $88, $97, $B6         ; data? AB, 88, 97, B6                    
          db $1E, $A9                   ; data? 1E, A9                            
; 
L0444: 
          bclr 1,RAM1_0b7               ; Clear bit 1 at RAM1_0b7                 
          bset 7,RAM1_0b6               ; Set Bit 7 at memory RAM1_0b6 (Mn <- 1 ) 
          bclr 1,RAM1_0bf               ; Clear bit 1 at RAM1_0bf                 
          bclr 7,OCH1                   ; Clear bit 7 at OCH1                     
          asr PortD,x                   ; Arithmetic Shift Right PortD, b7 -> [b7 >>>> b0] -> C
          brset 3,PortD,L0453           ; Branch to 0x0453 if 3 is HIGH           
; 
          db $02, $02                   ; data? 02, 02                            
; 
L0453: 
          bset 4,RAM1_05d               ; Set Bit 4 at memory RAM1_05d (Mn <- 1 ) 
          bclr 1,PortC                  ; Set 1 LOW                               
; 
          db $3D                        ; data? =                                 
; 
L0458: 
          com X0027,x                   ; Complement Byte (One’s Complement), 0xFF - 0x0027
          brset 1,X003A,L04C0           ; Branch to 0x04C0 if Bit 1 is set at 0x003A (Mn=1)
          dec RAM1_068                  ; Decrement Byte at RAM1_068 Byte = Byte - 1
          bne L0463                     ; Branch to 0x0463 if Not Equal (Z = 0);  
          bset 7,RAM1_067               ; Set Bit 7 at memory RAM1_067 (Mn <- 1 ) 
L0463: 
          jsr L3669                     ; Jump to Subroutine at 0x3669            
          lda RAM1_068                  ; Load Accumulator with value of Memory at RAM1_068, A <- (RAM1_068)
; 
          db $A5                        ; data? A5                                
; 
L0469: 
          clr X0026                     ; Clear byte at 0x0026 <- 0x00            
; 
L046B: 
          db $02, $1C                   ; data? 02, 1C                            
; 
L046D: 
          asr RAM1_0a5,x                ; Arithmetic Shift Right RAM1_0a5, b7 -> [b7 >>>> b0] -> C
L046F: 
          brclr 1,X0026,L047C           ; Branch to 0x047C if Bit 1 Clear (Mn = 0)
          bset 4,RAM1_067               ; Set Bit 4 at memory RAM1_067 (Mn <- 1 ) 
          jsr L4B0F                     ; Jump to Subroutine at 0x4B0F            
          jsr L21A2                     ; Jump to Subroutine at 0x21A2            
          lda RAM1_068                  ; Load Accumulator with value of Memory at RAM1_068, A <- (RAM1_068)
L047C: 
          bit #$0F                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x0F)
          bne L048B                     ; Branch to 0x048B if Not Equal (Z = 0);  
          bset 5,RAM1_067               ; Set Bit 5 at memory RAM1_067 (Mn <- 1 ) 
L0482: 
          brset 2,RAM1_05e,L0489        ; Branch to 0x0489 if Bit 2 is set at RAM1_05e (Mn=1)
L0485: 
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          bra L049A                     ; Branch Always (1 = 1)                   
; 
L0489: 
          bclr 2,RAM1_05e               ; Clear bit 2 at RAM1_05e                 
; 
L048B: 
          db $0D                        ; data? 0D                                
; 
L048C: 
          bclr 1,X0022                  ; Clear bit 1 at 0x0022                   
L048E: 
          bset 2,RAM1_05e               ; Set Bit 2 at memory RAM1_05e (Mn <- 1 ) 
          ldx OCL1                      ; Load Index Register with Memory Byte, X <- (OCL1)
          lda OCH1                      ; Load Accumulator with value of Memory at OCH1, A <- (OCH1)
          brclr 0,RAM1_061,L049A        ; Branch to 0x049A if Bit 0 Clear (Mn = 0)
          jsr L0B8C                     ; Jump to Subroutine at 0x0B8C            
L049A: 
          sta OCH1                      ; Store Accumulator in Memory at OCH1     
          stx OCL1                      ; Store Index Register In Memory at OCL1  
          bra L04B0                     ; Branch Always (1 = 1)                   
; 
L04A0: 
          brclr 7,TSR,L04A8             ; Branch to 0x04A8 if Bit ICF1 Clear (Mn = 0)
; 
          db $CD                        ; data? CD                                
; 
L04A4: 
          brn L04E9                     ; Branch Never (1 = 0)                    
          bra L04B0                     ; Branch Always (1 = 1)                   
; 
L04A8: 
          brclr 4,TSR,L04B0             ; Branch to 0x04B0 if Bit ICF2 Clear (Mn = 0)
          jsr L4AF3                     ; Jump to Subroutine at 0x4AF3            
          lda ICL2                      ; Load Accumulator with value of Memory at ICL2, A <- (ICL2)
L04B0: 
          brclr 7,TSR,L04BE             ; Branch to 0x04BE if Bit ICF1 Clear (Mn = 0)
          brset 4,RAM1_05e,L04BE        ; Branch to 0x04BE if Bit 4 is set at RAM1_05e (Mn=1)
L04B6: 
          bset 4,RAM1_05e               ; Set Bit 4 at memory RAM1_05e (Mn <- 1 ) 
          bclr 1,TCR                    ; Clear bit IEDG1 at TCR                  
          bset 3,RAM1_076               ; Set Bit 3 at memory RAM1_076 (Mn <- 1 ) 
          lda ICL1                      ; Load Accumulator with value of Memory at ICL1, A <- (ICL1)
L04BE: 
          brclr 4,TSR,L04C3             ; Branch to 0x04C3 if Bit ICF2 Clear (Mn = 0)
          bset 7,RAM1_096               ; Set Bit 7 at memory RAM1_096 (Mn <- 1 ) 
L04C3: 
          rti                           ; Return from Interrupt                   
; 
L04C4: 
          brclr 7,TSR,L04D2             ; Branch to 0x04D2 if Bit ICF1 Clear (Mn = 0)
          brset 4,RAM1_05e,L04D2        ; Branch to 0x04D2 if Bit 4 is set at RAM1_05e (Mn=1)
          bset 4,RAM1_05e               ; Set Bit 4 at memory RAM1_05e (Mn <- 1 ) 
          bclr 1,TCR                    ; Clear bit IEDG1 at TCR                  
L04CE: 
          bset 3,RAM1_076               ; Set Bit 3 at memory RAM1_076 (Mn <- 1 ) 
          lda ICL1                      ; Load Accumulator with value of Memory at ICL1, A <- (ICL1)
L04D2: 
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
L04D4: 
          lda #$53                      ; Load Accumulator with 0x53, A <- 0x53   
          sta RAM1_06b                  ; Store Accumulator in Memory at RAM1_06b 
L04D8: 
          bset 0,Miscell                ; Set Bit WDOG at memory Miscell (Mn <- 1 )
          stop                          ; Stop Oscillator and Enable IRQ Pin      
          bra L04D4                     ; Branch Always (1 = 1)                   
; 
L04DD: 
          lda #$28                      ; Load Accumulator with 0x28, A <- 0x28   
L04DF: 
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          beq L04E5                     ; Branch to 0x04E5 if Equal Z=1           
L04E2: 
          bil L04DF                     ; Branch to 0x04DF if IRQ Pin Low IRQ=0   
          rti                           ; Return from Interrupt                   
; 
L04E5: 
          brset 7,RAM1_0ba,L04ED        ; Branch to 0x04ED if Bit 7 is set at RAM1_0ba (Mn=1)
          brset 6,RAM1_0b9,L04ED        ; Branch to 0x04ED if Bit 6 is set at RAM1_0b9 (Mn=1)
L04EB: 
          bset 7,RAM1_061               ; Set Bit 7 at memory RAM1_061 (Mn <- 1 ) 
L04ED: 
          bclr 6,RAM1_0ba               ; Clear bit 6 at RAM1_0ba                 
          clr STACK_0d6                 ; Clear byte at STACK_0d6 <- 0x00         
L04F1: 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 4,Miscell                ; Clear bit INTE at Miscell               
          bclr 5,RAM1_0ba               ; Clear bit 5 at RAM1_0ba                 
          bclr 3,RAM1_061               ; Clear bit 3 at RAM1_061                 
          jsr L0725                     ; Jump to Subroutine at 0x0725            
          bset 3,RAM1_061               ; Set Bit 3 at memory RAM1_061 (Mn <- 1 ) 
L04FD: 
          bclr 5,PortB                  ; Set 5 LOW                               
          bclr 5,RAM1_06a               ; Clear bit 5 at RAM1_06a                 
          jsr L2551                     ; Jump to Subroutine at 0x2551            
          bset 5,PortB                  ; Set 5 HIGH                              
L0506: 
          rsp                           ; Reset Stack Pointer, SP <- 0x00FF       
          bclr 2,RAM1_05d               ; Clear bit 2 at RAM1_05d                 
L0509: 
          brset 1,Miscell,L04D4         ; Branch to 0x04D4 if Bit SM is set at Miscell (Mn=1)
          sei                           ; Set Interrupt Mask, I ← 1);           
          jsr L207E                     ; Jump to Subroutine at 0x207E            
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brset 0,RAM1_061,L051E        ; Branch to 0x051E if Bit 0 is set at RAM1_061 (Mn=1)
          bclr 7,RAM1_061               ; Clear bit 7 at RAM1_061                 
          brset 6,RAM1_061,L051B        ; Branch to 0x051B if Bit 6 is set at RAM1_061 (Mn=1)
          bclr 6,RAM1_05f               ; Clear bit 6 at RAM1_05f                 
L051B: 
          jmp L08AD                     ; Unconditional Jump to 0x08AD            
; 
L051E: 
          bil L04ED                     ; Branch to 0x04ED if IRQ Pin Low IRQ=0   
          brclr 3,RAM1_061,L04F1        ; Branch to 0x04F1 if Bit 3 Clear (Mn = 0)
          jsr L3713                     ; Jump to Subroutine at 0x3713            
          bclr 3,STACK_0ce              ; Clear bit 3 at STACK_0ce                
          bclr 6,RAM1_05f               ; Clear bit 6 at RAM1_05f                 
          brset 2,TCR,L052F             ; Branch to 0x052F if Bit OLV2 is set at TCR (Mn=1)
          bclr 3,PortB                  ; Set 3 LOW                               
L052F: 
          bset 2,TCR                    ; Set Bit OLV2 at memory TCR (Mn <- 1 )   
          bset 4,TCR                    ; Set Bit FOLV2 at memory TCR (Mn <- 1 )  
L0533: 
          bset 0,PortB                  ; Set ENA_12V_ANTENE#PB0
                                ;;

                                1)
                                        param1=ENA_12V_WOOFER#PB1 HIGH
          brset 3,RAM1_07f,L0541        ; Branch to 0x0541 if Bit 3 is set at RAM1_07f (Mn=1)
          brset 2,RAM1_07f,L0541        ; Branch to 0x0541 if Bit 2 is set at RAM1_07f (Mn=1)
          brset 7,RAM1_069,L0541        ; Branch to 0x0541 if Bit 7 is set at RAM1_069 (Mn=1)
          jsr L0B7A                     ; Jump to Subroutine at 0x0B7A            
L0541: 
          jsr L1FFF                     ; Jump to Subroutine at 0x1FFF            
; 
          db $CD                        ; data? CD                                
; 
L0545: 
          bclr 7,STACK_0f6              ; Clear bit 7 at STACK_0f6                
          brset 0,RAM1_0a1,L055C        ; Branch to 0x055C if Bit 0 is set at RAM1_0a1 (Mn=1)
          bclr 2,DDRC                   ; Set WR_SP#DDRC2
                                ;;

                                3)
                                        param1=RD_SP#DDRC3 as INPUT
          bclr 3,DDRC                   ; Set 3 as INPUT                          
          jsr L2551                     ; Jump to Subroutine at 0x2551            
L0551: 
          lda PortC                     ; Load Accumulator with value of Memory at PortC, A <- (PortC)
L0553: 
          and #$0C                      ; Logical AND between A and constant 0x0C, A ← (A) && (0x0C)
          bne L0560                     ; Branch to 0x0560 if Not Equal (Z = 0);  
          bclr 5,RAM1_069               ; Clear bit 5 at RAM1_069                 
          brset 3,RAM1_08e,L0566        ; Branch to 0x0566 if Bit 3 is set at RAM1_08e (Mn=1)
L055C: 
          bset 4,RAM1_069               ; Set Bit 4 at memory RAM1_069 (Mn <- 1 ) 
          bra L0568                     ; Branch Always (1 = 1)                   
; 
L0560: 
          bset 5,RAM1_069               ; Set Bit 5 at memory RAM1_069 (Mn <- 1 ) 
          bclr 1,RAM1_081               ; Clear bit 1 at RAM1_081                 
          bclr 3,RAM1_08e               ; Clear bit 3 at RAM1_08e                 
L0566: 
          bclr 4,RAM1_069               ; Clear bit 4 at RAM1_069                 
L0568: 
          bset 2,DDRC                   ; Set WR_SP#DDRC2
                                ;;

                                3)
                                        param1=RD_SP#DDRC3 as OUTPUT
          bset 3,DDRC                   ; Set 3 as OUTPUT                         
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brclr 6,RAM1_0ba,L0573        ; Branch to 0x0573 if Bit 6 Clear (Mn = 0)
L0570: 
          brset 5,RAM1_061,L057D        ; Branch to 0x057D if Bit 5 is set at RAM1_061 (Mn=1)
L0573: 
          jsr L132A                     ; Jump to Subroutine at 0x132A            
          bset 5,RAM1_061               ; Set Bit 5 at memory RAM1_061 (Mn <- 1 ) 
          jsr L0719                     ; Jump to Subroutine at 0x0719            
          bclr 2,RAM1_09e               ; Clear bit 2 at RAM1_09e                 
L057D: 
          brset 6,RAM1_061,L0585        ; Branch to 0x0585 if Bit 6 is set at RAM1_061 (Mn=1)
          jsr L305D                     ; Jump to Subroutine at 0x305D            
          bset 6,RAM1_061               ; Set Bit 6 at memory RAM1_061 (Mn <- 1 ) 
L0585: 
          brset 4,RAM1_061,L0591        ; Branch to 0x0591 if Bit 4 is set at RAM1_061 (Mn=1)
          jsr L2633                     ; Jump to Subroutine at 0x2633            
          jsr L1E8B                     ; Jump to Subroutine at 0x1E8B            
          jsr L477E                     ; Jump to Subroutine at 0x477E            
L0591: 
          bset 4,RAM1_061               ; Set Bit 4 at memory RAM1_061 (Mn <- 1 ) 
          brset 2,RAM1_09e,L0599        ; Branch to 0x0599 if Bit 2 is set at RAM1_09e (Mn=1)
          jsr L38BC                     ; Jump to Subroutine at 0x38BC            
L0599: 
          jsr L0719                     ; Jump to Subroutine at 0x0719            
L059C: 
          jsr L35FA                     ; Jump to Subroutine at 0x35FA            
          jsr L3A05                     ; Jump to Subroutine at 0x3A05            
          jsr L0B1D                     ; Jump to Subroutine at 0x0B1D            
          clrx                          ; Clear byte at clrx <- 0x00              
          jsr L2557                     ; Jump to Subroutine at 0x2557            
          brclr 3,RAM1_08b,L05BB        ; Branch to 0x05BB if Bit 3 Clear (Mn = 0)
          lda #$0B                      ; Load Accumulator with 0x0B, A <- 0x0B   
          brset 4,RAM1_08b,L05B6        ; Branch to 0x05B6 if Bit 4 is set at RAM1_08b (Mn=1)
          lda #$1A                      ; Load Accumulator with 0x1A, A <- 0x1A   
          brclr 1,RAM1_081,L05BB        ; Branch to 0x05BB if Bit 1 Clear (Mn = 0)
L05B6: 
          jsr L23F3                     ; Jump to Subroutine at 0x23F3            
          bset 1,STACK_0cb              ; Set Bit 1 at memory STACK_0cb (Mn <- 1 )
L05BB: 
          clr RAM1_067                  ; Clear byte at RAM1_067 <- 0x00          
          clr RAM1_068                  ; Clear byte at RAM1_068 <- 0x00          
          brclr 4,RAM1_0bb,L05C4        ; Branch to 0x05C4 if Bit 4 Clear (Mn = 0)
          bset 2,RAM1_094               ; Set Bit 2 at memory RAM1_094 (Mn <- 1 ) 
L05C4: 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bset 4,Miscell                ; Set Bit INTE at memory Miscell (Mn <- 1 )
          bset 7,TCR                    ; Set Bit ICIE at memory TCR (Mn <- 1 )   
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brset 7,RAM1_069,L05D4        ; Branch to 0x05D4 if Bit 7 is set at RAM1_069 (Mn=1)
          brclr 5,RAM1_0bb,L05D4        ; Branch to 0x05D4 if Bit 5 Clear (Mn = 0)
          bset 7,RAM1_069               ; Set Bit 7 at memory RAM1_069 (Mn <- 1 ) 
          bset 1,RAM1_05d               ; Set Bit 1 at memory RAM1_05d (Mn <- 1 ) 
L05D4: 
          jsr L0789                     ; Jump to Subroutine at 0x0789            
          brset 2,RAM1_05d,L05E3        ; Branch to 0x05E3 if Bit 2 is set at RAM1_05d (Mn=1)
          clra                          ; Clear byte at clra <- 0x00              
L05DB: 
          brclr 3,PortA,L05E6           ; Branch to 0x05E6 if 3 is LOW            
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bne L05DB                     ; Branch to 0x05DB if Not Equal (Z = 0);  
          bclr 4,RAM1_061               ; Clear bit 4 at RAM1_061                 
L05E3: 
          jmp L0506                     ; Unconditional Jump to 0x0506            
; 
L05E6: 
          bih L05EB                     ; Branch to 0x05EB if IRQ Pin High IRQ=1  
          jmp L04E5                     ; Unconditional Jump to 0x04E5            
; 
L05EB: 
          jsr L2223                     ; Jump to Subroutine at 0x2223            
          jsr L306C                     ; Jump to Subroutine at 0x306C            
          jsr L4B17                     ; Jump to Subroutine at 0x4B17            
          jsr L13E0                     ; Jump to Subroutine at 0x13E0            
L05F7: 
          jsr L36F2                     ; Jump to Subroutine at 0x36F2            
          jsr L4639                     ; Jump to Subroutine at 0x4639            
          jsr L44A8                     ; Jump to Subroutine at 0x44A8            
          jsr L4A15                     ; Jump to Subroutine at 0x4A15            
          jsr L3FBE                     ; Jump to Subroutine at 0x3FBE            
          jsr L47F4                     ; Jump to Subroutine at 0x47F4            
          jsr L26DD                     ; Jump to Subroutine at 0x26DD            
L060C: 
          jsr L26D0                     ; Jump to Subroutine at 0x26D0            
L060F: 
          jsr L1EB4                     ; Jump to Subroutine at 0x1EB4            
          jsr L3943                     ; Jump to Subroutine at 0x3943            
          jsr L3A83                     ; Jump to Subroutine at 0x3A83            
          jsr L061D                     ; Jump to Subroutine at 0x061D            
          bra L05C4                     ; Branch Always (1 = 1)                   
; 
L061D: 
          brset 3,RAM1_067,L0636        ; Branch to 0x0636 if Bit 3 is set at RAM1_067 (Mn=1)
          brset 2,RAM1_067,L0646        ; Branch to 0x0646 if Bit 2 is set at RAM1_067 (Mn=1)
          brset 1,RAM1_067,L064D        ; Branch to 0x064D if Bit 1 is set at RAM1_067 (Mn=1)
          brset 0,RAM1_067,L0676        ; Branch to 0x0676 if Bit 0 is set at RAM1_067 (Mn=1)
          brset 4,RAM1_067,L064F        ; Branch to 0x064F if Bit 4 is set at RAM1_067 (Mn=1)
          brset 5,RAM1_067,L0660        ; Branch to 0x0660 if Bit 5 is set at RAM1_067 (Mn=1)
          brset 6,RAM1_067,L066B        ; Branch to 0x066B if Bit 6 is set at RAM1_067 (Mn=1)
          brset 7,RAM1_067,L0673        ; Branch to 0x0673 if Bit 7 is set at RAM1_067 (Mn=1)
L0635: 
          rts                           ; Return from Subroutine                  
; 
L0636: 
          bclr 3,RAM1_067               ; Clear bit 3 at RAM1_067                 
          bset 2,RAM1_067               ; Set Bit 2 at memory RAM1_067 (Mn <- 1 ) 
          jsr L1FA3                     ; Jump to Subroutine at 0x1FA3            
          jsr L3769                     ; Jump to Subroutine at 0x3769            
          jsr L265C                     ; Jump to Subroutine at 0x265C            
          jmp L38EF                     ; Unconditional Jump to 0x38EF            
; 
L0646: 
          db $15                        ; data? 15                                
; 
L0647: 
          asr TCR,x                     ; Arithmetic Shift Right TCR, b7 -> [b7 >>>> b0] -> C
          asr STACK_0cc,x               ; Arithmetic Shift Right STACK_0cc, b7 -> [b7 >>>> b0] -> C
          brclr 3,OCL2,L066E            ; Branch to 0x066E if Bit 3 Clear (Mn = 0)
          inc TCL,x                     ; Increment Byte TCL, Byte = Byte + 1     
          asr STACK_0cd,x               ; Arithmetic Shift Right STACK_0cd, b7 -> [b7 >>>> b0] -> C
          bne L0692                     ; Branch to 0x0692 if Not Equal (Z = 0);  
          jsr L1E8C                     ; Jump to Subroutine at 0x1E8C            
          jsr L307B                     ; Jump to Subroutine at 0x307B            
          jsr L3BCD                     ; Jump to Subroutine at 0x3BCD            
          jmp L26D1                     ; Unconditional Jump to 0x26D1            
; 
L0660: 
          bclr 5,RAM1_067               ; Clear bit 5 at RAM1_067                 
          jsr L13CE                     ; Jump to Subroutine at 0x13CE            
          jsr L3BF2                     ; Jump to Subroutine at 0x3BF2            
          jmp L362E                     ; Unconditional Jump to 0x362E            
; 
L066B: 
          bclr 6,RAM1_067               ; Clear bit 6 at RAM1_067                 
          jsr L3A9D                     ; Jump to Subroutine at 0x3A9D            
          jmp L4B50                     ; Unconditional Jump to 0x4B50            
; 
L0673: 
          bclr 7,RAM1_067               ; Clear bit 7 at RAM1_067                 
          rts                           ; Return from Subroutine                  
; 
L0676: 
          bclr 0,RAM1_067               ; Clear bit 0 at RAM1_067                 
          jsr L47AA                     ; Jump to Subroutine at 0x47AA            
          jsr L3072                     ; Jump to Subroutine at 0x3072            
          jsr L3AF9                     ; Jump to Subroutine at 0x3AF9            
          brset 7,RAM1_060,L06AA        ; Branch to 0x06AA if Bit 7 is set at RAM1_060 (Mn=1)
          brclr 3,RAM1_08b,L06A4        ; Branch to 0x06A4 if Bit 3 Clear (Mn = 0)
          brset 3,STACK_0ce,L06A1       ; Branch to 0x06A1 if Bit 3 is set at STACK_0ce (Mn=1)
          brclr 6,RAM1_05d,L0698        ; Branch to 0x0698 if Bit 6 Clear (Mn = 0)
          bclr 1,STACK_0cb              ; Clear bit 1 at STACK_0cb                
          jsr L37CB                     ; Jump to Subroutine at 0x37CB            
L0692: 
          jsr L43E8                     ; Jump to Subroutine at 0x43E8            
          jsr L20DA                     ; Jump to Subroutine at 0x20DA            
L0698: 
          jsr L33FF                     ; Jump to Subroutine at 0x33FF            
L069B: 
          jsr L463B                     ; Jump to Subroutine at 0x463B            
          jsr L44A9                     ; Jump to Subroutine at 0x44A9            
L06A1: 
          jsr L27BE                     ; Jump to Subroutine at 0x27BE            
; 
L06A4: 
          db $CD, $2C                   ; data? CD, ,                             
; 
L06A6: 
          neg STACK_0cd,x               ; Negate Byte of STACK_0cd (Two’s Complement), STACK_0cd = 0x00 - (STACK_0cd)
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bset 3,STACK_0cd              ; Set Bit 3 at memory STACK_0cd (Mn <- 1 )
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
; 
          db $DD, $CD                   ; data? DD, CD                            
; 
L06AE: 
          dec STACK_0d3                 ; Decrement Byte at STACK_0d3 Byte = Byte - 1
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
          brclr 7,RAM1_060,L06B8        ; Branch to 0x06B8 if Bit 7 Clear (Mn = 0)
          jsr L2C60                     ; Jump to Subroutine at 0x2C60            
L06B8: 
          jmp L0BAC                     ; Unconditional Jump to 0x0BAC            
; 
          db $13, $67, $10, $67         ; data? 13, g, 10, g                      
          db $0F, $5D, $56, $1F         ; data? 0F, ], V, 1F                      
          db $5D, $B6                   ; data? ], B6                             
; 
L06C5: 
          ora XA40F                     ; Logical OR Accumulator with Memory at 0xA40F, A <- (A) || (0xA40F)
; 
          db $AE                        ; data? AE                                
; 
L06C9: 
          brclr 1,X0042,L0663           ; Branch to 0x0663 if Bit 1 Clear (Mn = 0)
cpx #$21 
          bcc L0718                     ; Branch to 0x0718 if C bit is cleared    
          jsr L06EB,x ;INFO: index jump ; Jump to Subroutine at 0x06EB            
          lda STACK_0ca                 ; Load Accumulator with value of Memory at STACK_0ca, A <- (STACK_0ca)
          jsr L2525                     ; Jump to Subroutine at 0x2525            
L06D8: 
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          ldx #$03                      ; Load Index Register with Memory Byte, X <- (0x03)
          mul                           ; Unsigned Multiply, X:A <- (X) * (A)     
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
cpx #$0C 
; 
          db $24                        ; data? $                                 
; 
L06E1: 
          ror STACK_0dd                 ; Rotate Byte at STACK_0dd Right through Carry Bit, C -> [b7 >>>> b0] -> C
          brclr 3,Miscell,L06F3         ; Branch to 0x06F3 if Bit SFA Clear (Mn = 0)
          ora X30CC                     ; Logical OR Accumulator with Memory at 0x30CC, A <- (A) || (0x30CC)
          bmi L06C9                     ; Branch to 0x06C9 if Minus N = 1         
L06EB: 
          jmp L0635                     ; Unconditional Jump to 0x0635            
; 
          db $CC                        ; data? CC                                
; 
L06EF: 
          bpl L074D                     ; Branch to 0x074D if Plus N = 0          
L06F1: 
          jmp L46D2                     ; Unconditional Jump to 0x46D2            
; 
          db $CC, $45, $44, $CC         ; data? CC, E, D, CC                      
L06F8: 
          db $35, $A9, $CC, $38         ; data? 5, A9, CC, 8                      
; 
L06FC: 
          asra                          ; Arithmetic Shift Right asra, b7 -> [b7 >>>> b0] -> C
L06FD: 
          jmp L2FC9                     ; Unconditional Jump to 0x2FC9            
; 
          db $CC, $06, $35              ; data? CC, 06, 5                         
; 
L0703: 
          jmp L4A9D                     ; Unconditional Jump to 0x4A9D            
L0706: 
          jmp L4414                     ; Unconditional Jump to 0x4414            
; 
          db $CC, $43, $DE, $CC         ; data? CC, C, DE, CC                     
          db $4A, $AB, $CC, $2B         ; data? J, AB, CC, +                      
L0711: 
          db $41                        ; data? A                                 
; 
L0712: 
          jmp L471A                     ; Unconditional Jump to 0x471A            
; 
          db $CC, $45, $B7              ; data? CC, E, B7                         
; 
L0718: 
          rts                           ; Return from Subroutine                  
; 
L0719: 
          jsr L13E0                     ; Jump to Subroutine at 0x13E0            
L071C: 
          jsr L36F2                     ; Jump to Subroutine at 0x36F2            
          jsr L13BC                     ; Jump to Subroutine at 0x13BC            
          jmp L36AE                     ; Unconditional Jump to 0x36AE            
; 
L0725: 
          clr RAM1_066                  ; Clear byte at RAM1_066 <- 0x00          
          lda RAM1_065                  ; Load Accumulator with value of Memory at RAM1_065, A <- (RAM1_065)
          sta RAM2_02b0                 ; Store Accumulator in Memory at RAM2_02b0
L072C: 
          brclr 4,RAM1_061,L0737        ; Branch to 0x0737 if Bit 4 Clear (Mn = 0)
          jsr L0B7A                     ; Jump to Subroutine at 0x0B7A            
          jsr L4769                     ; Jump to Subroutine at 0x4769            
L0735: 
          bclr 4,RAM1_061               ; Clear bit 4 at RAM1_061                 
L0737: 
          lda #$0A                      ; Load Accumulator with 0x0A, A <- 0x0A   
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          bset 2,TCR                    ; Set Bit OLV2 at memory TCR (Mn <- 1 )   
          bset 4,TCR                    ; Set Bit FOLV2 at memory TCR (Mn <- 1 )  
          bih L0743                     ; Branch to 0x0743 if IRQ Pin High IRQ=1  
          bclr 6,RAM1_0ba               ; Clear bit 6 at RAM1_0ba                 
L0743: 
          jsr L253F                     ; Jump to Subroutine at 0x253F            
          brset 1,PortC,L074B           ; Branch to 0x074B if 1 is HIGH           
          bset 4,RAM1_05d               ; Set Bit 4 at memory RAM1_05d (Mn <- 1 ) 
L074B: 
          bclr 1,PortC                  ; Set 1 LOW                               
L074D: 
          jsr L0789                     ; Jump to Subroutine at 0x0789            
          lda RAM1_065                  ; Load Accumulator with value of Memory at RAM1_065, A <- (RAM1_065)
          sub RAM2_02b0                 ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM2_02b0)
          cmp #$03                      ; Compare Accumulator with Memory Byte, (A) - (0x03)
          bcs L075B                     ; Branch to 0x075B if C = 1               
          bset 5,RAM1_060               ; Set Bit 5 at memory RAM1_060 (Mn <- 1 ) 
L075B: 
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          jsr L24C5                     ; Jump to Subroutine at 0x24C5            
          cmp #$19                      ; Compare Accumulator with Memory Byte, (A) - (0x19)
          bcs L0776                     ; Branch to 0x0776 if C = 1               
          cmp #$53                      ; Compare Accumulator with Memory Byte, (A) - (0x53)
          bhi L0772                     ; Branch to 0x0772 if Higher C v Z = 0    
          bclr 6,RAM1_061               ; Clear bit 6 at RAM1_061                 
          bclr 5,RAM1_061               ; Clear bit 5 at RAM1_061                 
          bclr 7,RAM1_061               ; Clear bit 7 at RAM1_061                 
          bclr 6,RAM1_05f               ; Clear bit 6 at RAM1_05f                 
          bra L0743                     ; Branch Always (1 = 1)                   
; 
L0772: 
          cmp #$73                      ; Compare Accumulator with Memory Byte, (A) - (0x73)
          bcs L0737                     ; Branch to 0x0737 if C = 1               
L0776: 
          bil L0737                     ; Branch to 0x0737 if IRQ Pin Low IRQ=0   
          dec RAM1_050                  ; Decrement Byte at RAM1_050 Byte = Byte - 1
L077A: 
          bne L0743                     ; Branch to 0x0743 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L077D: 
          jsr L0B7A                     ; Jump to Subroutine at 0x0B7A            
; 
          db $CD                        ; data? CD                                
; 
L0781: 
          asra                          ; Arithmetic Shift Right asra, b7 -> [b7 >>>> b0] -> C
          rol STACK_0cd,x               ; Rotate Byte at STACK_0cd Left through Carry Bit, C <- [b7 <<<< b0] <- C
; 
          db $20                        ; data? " "                               
; 
L0785: 
          bclr 5,STACK_0cc              ; Clear bit 5 at STACK_0cc                
; 
L0787: 
          db $05, $06                   ; data? 05, 06                            
; 
L0789: 
          brset 4,RAM1_05d,L0793        ; Branch to 0x0793 if Bit 4 is set at RAM1_05d (Mn=1)
          brclr 1,Miscell,L0792         ; Branch to 0x0792 if Bit SM Clear (Mn = 0)
          brclr 1,PortD,L07BB           ; Branch to 0x07BB if 1 is LOW            
L0792: 
          rts                           ; Return from Subroutine                  
; 
L0793: 
          lda #$06                      ; Load Accumulator with 0x06, A <- 0x06   
          brset 1,Miscell,L079A         ; Branch to 0x079A if Bit SM is set at Miscell (Mn=1)
L0798: 
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
L079A: 
          add RAM1_066                  ; Add without Carry, A ← (A) + (RAM1_066)
          sta RAM1_066                  ; Store Accumulator in Memory at RAM1_066 
; 
          db $24                        ; data? $                                 
; 
L079F: 
          bclr 5,RAM1_0a6               ; Clear bit 5 at RAM1_0a6                 
          brclr 0,RAM1_0bb,L0009        ; Branch to 0x0009 if Bit 0 Clear (Mn = 0)
          sta RAM1_065                  ; Store Accumulator in Memory at RAM1_065 
          bcc L07BB                     ; Branch to 0x07BB if C bit is cleared    
          brset 7,RAM1_064,L07BB        ; Branch to 0x07BB if Bit 7 is set at RAM1_064 (Mn=1)
          inc RAM1_064                  ; Increment Byte RAM1_064, Byte = Byte + 1
          bpl L07BB                     ; Branch to 0x07BB if Plus N = 0          
L07AF: 
          brset 2,RAM1_08b,L07BB        ; Branch to 0x07BB if Bit 2 is set at RAM1_08b (Mn=1)
          brset 1,RAM1_05f,L07BB        ; Branch to 0x07BB if Bit 1 is set at RAM1_05f (Mn=1)
L07B5: 
          brclr 0,RAM1_061,L07BB        ; Branch to 0x07BB if Bit 0 Clear (Mn = 0)
          jmp L08A3                     ; Unconditional Jump to 0x08A3            
; 
L07BB: 
          bclr 4,RAM1_05d               ; Clear bit 4 at RAM1_05d                 
L07BD: 
          brclr 1,DDRC,L07C4            ; Branch to 0x07C4 if 1 is set to INPUT   
          bclr 1,DDRC                   ; Set 1 as INPUT                          
L07C2: 
          bra L07D7                     ; Branch Always (1 = 1)                   
; 
L07C4: 
          lda RAM1_062                  ; Load Accumulator with value of Memory at RAM1_062, A <- (RAM1_062)
          brclr 1,PortC,L07CD           ; Branch to 0x07CD if 1 is LOW            
          add #$20                      ; A + 0x20 (without CARRY), A ← (A) + 0x20
          bra L07CF                     ; Branch Always (1 = 1)                   
; 
L07CD: 
          sub #$20                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x20)
L07CF: 
          bcs L07D3                     ; Branch to 0x07D3 if C = 1               
          sta RAM1_062                  ; Store Accumulator in Memory at RAM1_062 
L07D3: 
          bset 1,DDRC                   ; Set 1 as OUTPUT                         
          bset 1,PortC                  ; Set 1 HIGH                              
L07D7: 
          clra                          ; Clear byte at clra <- 0x00              
          brset 2,PortD,L07DD           ; Branch to 0x07DD if PANEL_ON_OFF#PD2
                                ;;

                                3)
                                        param1=LSR_TEST_PHANTOM#PD3 is HIGH
          ora #$01                      ; Logical OR Accumulator with Memory at 0x01, A <- (A) || (0x01)
L07DD: 
          brset 0,PortD,L07E2           ; Branch to 0x07E2 if S-KONT#PD0
                                ;;

                                1)
                                        param1=DIAG#PD1 is HIGH
          ora #$02                      ; Logical OR Accumulator with Memory at 0x02, A <- (A) || (0x02)
L07E2: 
          brclr 7,RAM1_05e,L07E7        ; Branch to 0x07E7 if Bit 7 Clear (Mn = 0)
          ora #$04                      ; Logical OR Accumulator with Memory at 0x04, A <- (A) || (0x04)
L07E7: 
          brclr 1,PortD,L07EC           ; Branch to 0x07EC if 1 is LOW            
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
L07EC: 
          tst RAM1_062                  ; Test Memory Byte for Negative or Zero, (RAM1_062) – 0x00
L07EE: 
          bpl L07F2                     ; Branch to 0x07F2 if Plus N = 0          
          ora #$08                      ; Logical OR Accumulator with Memory at 0x08, A <- (A) || (0x08)
L07F2: 
          brclr 6,PortD,L07F7           ; Branch to 0x07F7 if NAVI_IN#PD6
                                ;;

                                7)
                                        param1=ENA_U141#PD7 is LOW
L07F5: 
          ora #$80                      ; Logical OR Accumulator with Memory at 0x80, A <- (A) || (0x80)
L07F7: 
          eor RAM1_05f                  ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM1_05f)
          and #$9F                      ; Logical AND between A and constant 0x9F, A ← (A) && (0x9F)
L07FB: 
          beq L0068                     ; Branch to 0x0068 if Equal Z=1           
          sta RAM1_05b                  ; Store Accumulator in Memory at RAM1_05b 
          eor RAM1_05f                  ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM1_05f)
          sta RAM1_05f                  ; Store Accumulator in Memory at RAM1_05f 
          brclr 3,RAM1_05f,L000A        ; Branch to 0x000A if Bit 3 Clear (Mn = 0)
          bset 5,RAM1_05f               ; Set Bit 5 at memory RAM1_05f (Mn <- 1 ) 
          bra L0014                     ; Branch Always (1 = 1)                   
; 
          db $0F, $5F, $02, $1A         ; data? 0F, _, 02, 1A                     
          db $5F, $02, $5F, $02         ; data? _, 02, _, 02                      
          db $1B, $5F, $01, $5B         ; data? 1B, _, 01, [                      
          db $0D, $00, $5F, $7C         ; data? 0D, 00, _, |                      
          db $0C, $5F, $03, $01         ; data? 0C, _, 03, 01                     
          db $61, $04, $1D, $5F         ; data? a, 04, 1D, _                      
          db $20, $94, $0F, $60         ; data? " ", 94, 0F, `                    
          db $03, $0A, $5D, $22         ; data? 03, 0A, ], "                      
          db $1B, $5D, $02, $5F         ; data? 1B, ], 02, _                      
          db $0A, $03, $5B, $1A         ; data? 0A, 03, [, 1A                     
          db $01, $61, $75, $12         ; data? 01, a, u, 12                      
          db $61, $20, $6A, $00         ; data? a, " ", j, 00                     
          db $61, $08, $03, $5B         ; data? a, 08, 03, [                      
          db $0D, $00, $5F, $56         ; data? 0D, 00, _, V                      
          db $1A, $5F, $13, $61         ; data? 1A, _, 13, a                      
          db $03, $5B, $03, $06         ; data? 03, [, 03, 06                     
          db $CE, $4C, $09, $5B         ; data? CE, L, 09, [                      
          db $13, $00, $61, $03         ; data? 13, 00, a, 03                     
          db $03, $5F, $0D, $07         ; data? 03, _, 0D, 07                     
          db $60, $0A, $17, $60         ; data? `, 0A, 17, `                      
          db $08, $5F, $02, $10         ; data? 08, _, 02, 10                     
          db $60, $02, $0C, $03         ; data? `, 02, 0C, 03                     
          db $05, $5B, $03, $01         ; data? 05, [, 03, 01                     
          db $61, $42, $81, $CD         ; data? a, B, 81, CD                      
          db $1F, $FF, $CD, $1F         ; data? 1F, FF, CD, 1F                    
          db $F6, $CD, $47, $7E         ; data? F6, CD, G, ~                      
          db $A6, $C8, $B7, $63         ; data? A6, C8, B7, c                     
          db $3D, $63, $27, $30         ; data? =, c, ', 0                        
          db $07, $67, $05, $17         ; data? 07, g, 05, 17                     
          db $67, $CD, $47, $AA         ; data? g, CD, G, AA                      
          db $CD, $47, $F4, $CD         ; data? CD, G, F4, CD                     
          db $3F, $BE, $0F, $92         ; data? 3F, BE, 0F, 92                    
          db $EB, $08, $92, $E8         ; data? EB, 08, 92, E8                    
          db $10, $61, $1E, $60         ; data? 10, a, 1E, `                      
          db $1C, $60, $20, $14         ; data? 1C, `, " ", 14                    
          db $19, $61, $10, $61         ; data? 19, a, 10, a                      
          db $3F, $93, $03, $5F         ; data? 3F, 93, 03, _                     
          db $0B, $13, $61, $20         ; data? 0B, 13, a, " "                    
          db $07                        ; data? 07                                
; 
L08A3: 
          bclr 0,RAM1_061               ; Clear bit 0 at RAM1_061                 
          brclr 1,RAM1_05f,L00AA        ; Branch to 0x00AA if Bit 1 Clear (Mn = 0)
          bset 5,RAM1_05f               ; Set Bit 5 at memory RAM1_05f (Mn <- 1 ) 
          jmp L0506                     ; Unconditional Jump to 0x0506            
; 
L08AD: 
          bclr 7,RAM1_069               ; Clear bit 7 at RAM1_069                 
          brset 4,RAM1_060,L0069        ; Branch to 0x0069 if Bit 4 is set at RAM1_060 (Mn=1)
          brset 0,RAM1_060,L00B9        ; Branch to 0x00B9 if Bit 0 is set at RAM1_060 (Mn=1)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          sta RAM1_060                  ; Store Accumulator in Memory at RAM1_060 
          brset 3,RAM1_07f,L00C2        ; Branch to 0x00C2 if Bit 3 is set at RAM1_07f (Mn=1)
          brset 2,RAM1_07f,L00C2        ; Branch to 0x00C2 if Bit 2 is set at RAM1_07f (Mn=1)
          jsr L0B7A                     ; Jump to Subroutine at 0x0B7A            
          brset 5,RAM1_05f,L00CB        ; Branch to 0x00CB if Bit 5 is set at RAM1_05f (Mn=1)
          jsr L0B7A                     ; Jump to Subroutine at 0x0B7A            
          jsr L4769                     ; Jump to Subroutine at 0x4769            
          jsr L2223                     ; Jump to Subroutine at 0x2223            
          clr PLMA                      ; Clear byte at PLMA <- 0x00              
          bih L00D5                     ; Branch to 0x00D5 if IRQ Pin High IRQ=1  
          jmp L04E5                     ; Unconditional Jump to 0x04E5            
; 
          db $05, $9E, $03, $CD         ; data? 05, 9E, 03, CD                    
          db $38, $9F, $0C, $5F         ; data? 8, 9F, 0C, _                      
          db $03, $CD, $30, $69         ; data? 03, CD, 0, i                      
          db $0A, $5F, $03, $CD         ; data? 0A, _, 03, CD                     
          db $20, $1B, $CD, $07         ; data? " ", 1B, CD, 07                   
          db $89, $0C, $5F, $07         ; data? 89, 0C, _, 07                     
          db $11, $01, $AE, $02         ; data? 11, 01, AE, 02                    
          db $CD, $25, $57, $0A         ; data? CD, %, W, 0A                      
          db $5F, $0B, $0D, $5F         ; data? _, 0B, 0D, _                      
          db $21, $0B, $61, $05         ; data? !, 0B, a, 05                      
          db $00, $A1, $2D, $20         ; data? 00, A1, -, " "                    
          db $19, $CD, $1F, $FF         ; data? 19, CD, 1F, FF                    
          db $0D, $5F, $1D, $17         ; data? 0D, _, 1D, 17                     
          db $00, $16, $04, $CD         ; data? 00, 16, 04, CD                    
          db $13, $2A, $A6, $89         ; data? 13, *, A6, 89                     
          db $B7, $B3, $B6, $C4         ; data? B7, B3, B6, C4                    
          db $B7, $B7, $1A, $61         ; data? B7, B7, 1A, a                     
          db $20, $12, $0F, $64         ; data? " ", 12, 0F, d                    
          db $07, $1D, $5F, $AE         ; data? 07, 1D, _, AE                     
          db $02, $CD, $25, $57         ; data? 02, CD, %, W                      
          db $1B, $61, $CD, $30         ; data? 1B, a, CD, 0                      
          db $69, $CD, $13, $7A         ; data? i, CD, 13, z                      
          db $0B, $5F, $2D, $13         ; data? 0B, _, -, 13                      
          db $81, $14, $12, $18         ; data? 81, 14, 12, 18                    
          db $12, $CD, $1F, $F6         ; data? 12, CD, 1F, F6                    
          db $CD, $47, $7E, $CD         ; data? CD, G, ~, CD                      
          db $0B, $1D, $18, $61         ; data? 0B, 1D, 18, a                     
          db $10, $80, $A6, $80         ; data? 10, 80, A6, 80                    
          db $B7, $7D, $B7, $7B         ; data? B7, }, B7, {                      
          db $07, $8E, $02, $AA         ; data? 07, 8E, 02, AA                    
          db $10, $B7, $D5, $1C         ; data? 10, B7, D5, 1C                    
          db $94, $1A, $94, $12         ; data? 94, 1A, 94, 12                    
          db $94, $19, $6B, $1C         ; data? 94, 19, k, 1C                     
          db $95, $CC, $09, $B7         ; data? 95, CC, 09, B7                    
          db $15, $12, $0A, $61         ; data? 15, 12, 0A, a                     
          db $F8, $CD, $30, $69         ; data? F8, CD, 0, i                      
          db $07, $60, $29, $04         ; data? 07, `, ), 04                      
          db $5F, $03, $CC, $0A         ; data? _, 03, CC, 0A                     
          db $5B, $CD, $20, $31         ; data? [, CD, " ", 1                     
          db $A6, $FA, $B7, $12         ; data? A6, FA, B7, 12                    
          db $A6, $64, $B7, $63         ; data? A6, d, B7, c                      
          db $CD, $07, $89, $CD         ; data? CD, 07, 89, CD                    
          db $3F, $BE, $08, $60         ; data? 3F, BE, 08, `                     
          db $32, $0A, $5F, $2F         ; data? 2, 0A, _, /                       
          db $CD, $22, $23, $0D         ; data? CD, ", #, 0D                      
          db $5F, $EE, $3D, $63         ; data? _, EE, =, c                       
          db $26, $EA, $20, $23         ; data? &, EA, " ", #                     
          db $CD, $1F, $E2, $A6         ; data? CD, 1F, E2, A6                    
          db $5A, $B7, $12, $A6         ; data? Z, B7, 12, A6                     
          db $FA, $B7, $63, $CD         ; data? FA, B7, c, CD                     
          db $07, $89, $CD, $3F         ; data? 07, 89, CD, 3F                    
          db $BE, $08, $60, $0F         ; data? BE, 08, `, 0F                     
          db $0A, $5F, $0C, $06         ; data? 0A, _, 0C, 06                     
          db $60, $09, $09, $5F         ; data? `, 09, 09, _                      
          db $EA, $3D, $63, $26         ; data? EA, =, c, &                       
          db $EA, $16, $60, $CC         ; data? EA, 16, `, CC                     
          db $05, $06, $A6, $64         ; data? 05, 06, A6, d                     
          db $B7, $63, $A6, $1E         ; data? B7, c, A6, 1E                     
          db $B7, $68, $1D, $67         ; data? B7, h, 1D, g                      
          db $13, $01, $A6, $5B         ; data? 13, 01, A6, [                     
          db $B7, $A6, $9A, $0D         ; data? B7, A6, 9A, 0D                    
          db $5F, $0E, $CD, $13         ; data? _, 0E, CD, 13                     
          db $E0, $CD, $36, $F2         ; data? E0, CD, 6, F2                     
          db $CD, $33, $FF, $CD         ; data? CD, 3, FF, CD                     
          db $30, $6C, $10, $01         ; data? 0, l, 10, 01                      
          db $CD, $07, $89, $CD         ; data? CD, 07, 89, CD                    
          db $3F, $BE, $08, $60         ; data? 3F, BE, 08, `                     
          db $D2, $2E, $70, $CD         ; data? D2, ., p, CD                      
          db $4B, $17, $CD, $22         ; data? K, 17, CD, "                      
          db $23, $05, $12, $03         ; data? #, 05, 12, 03                     
          db $CD, $47, $F4, $07         ; data? CD, G, F4, 07                     
          db $67, $D4, $17, $67         ; data? g, D4, 17, g                      
          db $0D, $5F, $11, $CD         ; data? 0D, _, 11, CD                     
          db $13, $BC, $CD, $36         ; data? 13, BC, CD, 6                     
          db $AE, $CD, $30, $72         ; data? AE, CD, 0, r                      
          db $0B, $67, $05, $1B         ; data? 0B, g, 05, 1B                     
          db $67, $CD, $13, $CE         ; data? g, CD, 13, CE                     
          db $05, $12, $32, $0B         ; data? 05, 12, 2, 0B                     
          db $5F, $A5, $CD, $2C         ; data? _, A5, CD, ,                      
          db $60, $CD, $0B, $AC         ; data? `, CD, 0B, AC                     
          db $CD, $47, $AA, $09         ; data? CD, G, AA, 09                     
          db $67, $AC, $19, $67         ; data? g, AC, 19, g                      
          db $3A, $A7, $27, $15         ; data? :, A7, ', 15                      
          db $0E, $5F, $9F, $B6         ; data? 0E, _, 9F, B6                     
          db $9A, $A1, $F0, $25         ; data? 9A, A1, F0, %                     
          db $99, $07, $5F, $9A         ; data? 99, 07, _, 9A                     
          db $02, $5F, $97, $A6         ; data? 02, _, 97, A6                     
          db $02, $B7, $A6, $20         ; data? 02, B7, A6, " "                   
          db $91, $3A, $A6, $26         ; data? 91, :, A6, &                      
          db $8D, $1B, $5F, $20         ; data? 8D, 1B, _, " "                    
          db $89, $0A, $5F, $68         ; data? 89, 0A, _, h                      
          db $01, $A1, $03, $CC         ; data? 01, A1, 03, CC                    
          db $09, $B7, $0D, $67         ; data? 09, B7, 0D, g                     
          db $07, $06, $B9, $5C         ; data? 07, 06, B9, \                     
          db $3D, $63, $27, $58         ; data? =, c, ', X                        
          db $CC, $09, $C7, $14         ; data? CC, 09, C7, 14                    
          db $12, $18, $12, $CC         ; data? 12, 18, 12, CC                    
          db $04, $E5, $9B, $19         ; data? 04, E5, 9B, 19                    
          db $0C, $CD, $1F, $E2         ; data? 0C, CD, 1F, E2                    
          db $A6, $5A, $B7, $12         ; data? A6, Z, B7, 12                     
          db $12, $0C, $A6, $14         ; data? 12, 0C, A6, 14                    
          db $B7, $63, $3F, $0B         ; data? B7, c, 3F, 0B                     
          db $3F, $76, $3F, $5E         ; data? 3F, v, 3F, ^                      
          db $3F, $A8, $3F, $A6         ; data? 3F, A8, 3F, A6                    
          db $3F, $09, $3F, $0F         ; data? 3F, 09, 3F, 0F                    
          db $9A, $CD, $07, $89         ; data? 9A, CD, 07, 89                    
          db $A6, $08, $BB, $1A         ; data? A6, 08, BB, 1A                    
          db $B7, $1E, $3F, $1F         ; data? B7, 1E, 3F, 1F                    
          db $8F, $00, $00, $00         ; data? 8F, 00, 00, 00                    
          db $A6, $27, $B7, $09         ; data? A6, ', B7, 09                     
          db $CD, $21, $A2, $0A         ; data? CD, !, A2, 0A                     
          db $5F, $16, $3D, $63         ; data? _, 16, =, c                       
          db $26, $1C, $06, $00         ; data? &, 1C, 06, 00                     
          db $0C, $17, $00, $16         ; data? 0C, 17, 00, 16                    
          db $04, $4F, $4A, $26         ; data? 04, O, J, &                       
          db $FD, $17, $04, $3F         ; data? FD, 17, 04, 3F                    
          db $6A, $0D, $5F, $03         ; data? j, 0D, _, 03                      
          db $CC, $05, $06, $11         ; data? CC, 05, 06, 11                    
          db $05, $0F, $64, $02         ; data? 05, 0F, d, 02                     
          db $1D, $61, $0C, $5F         ; data? 1D, a, 0C, _                      
          db $BF, $2E, $9C, $05         ; data? BF, ., 9C, 05                     
          db $12, $0C, $3D, $63         ; data? 12, 0C, =, c                      
          db $26, $B6, $1A, $01         ; data? &, B6, 1A, 01                     
          db $17, $00, $16, $04         ; data? 17, 00, 16, 04                    
          db $20, $9A, $0F, $09         ; data? " ", 9A, 0F, 09                   
          db $FD, $3D, $A8, $26         ; data? FD, =, A8, &                      
          db $0B, $07, $A6, $22         ; data? 0B, 07, A6, "                     
          db $B6, $A4, $BE, $A5         ; data? B6, A4, BE, A5                    
          db $AD, $3F, $20, $30         ; data? AD, 3F, " ", 0                    
          db $B6, $A8, $B0, $08         ; data? B6, A8, B0, 08                    
          db $25, $14, $A1, $03         ; data? %, 14, A1, 03                     
          db $25, $10, $14, $12         ; data? %, 10, 14, 12                     
          db $18, $12, $17, $01         ; data? 18, 12, 17, 01                    
          db $16, $05, $A6, $30         ; data? 16, 05, A6, 0                     
          db $B7, $63, $1B, $01         ; data? B7, c, 1B, 01                     
          db $20, $1A, $B6, $08         ; data? " ", 1A, B6, 08                   
          db $BB, $A5, $B7, $A5         ; data? BB, A5, B7, A5                    
          db $24, $02, $3C, $A4         ; data? $, 02, <, A4                      
          db $3C, $A6, $B6, $A6         ; data? <, A6, B6, A6                     
          db $A5, $3F, $26, $0E         ; data? A5, 3F, &, 0E                     
          db $B6, $A4, $BE, $A5         ; data? B6, A4, BE, A5                    
          db $AD, $0D, $B7, $A8         ; data? AD, 0D, B7, A8                    
          db $3F, $A5, $3F, $A4         ; data? 3F, A5, 3F, A4                    
          db $3F, $A6, $CC, $0A         ; data? 3F, A6, CC, 0A                    
          db $75, $59, $49, $59         ; data? u, Y, I, Y                        
          db $49, $59, $49, $81         ; data? I, Y, I, 81                       
; 
L0B1D: 
          brset 7,RAM1_061,L0343        ; Branch to 0x0343 if Bit 7 is set at RAM1_061 (Mn=1)
          ldx #$A8                      ; Load Index Register with Memory Byte, X <- (0xA8)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          sta RAM1_085                  ; Store Accumulator in Memory at RAM1_085 
          jsr L124C                     ; Jump to Subroutine at 0x124C            
          jsr L1267                     ; Jump to Subroutine at 0x1267            
          stx RAM1_057                  ; Store Index Register In Memory at RAM1_057
          ldx #$AB                      ; Load Index Register with Memory Byte, X <- (0xAB)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          add #$FD                      ; A + 0xFD (without CARRY), A ← (A) + 0xFD
          add RAM1_057                  ; Add without Carry, A ← (A) + (RAM1_057)
          bpl L033B                     ; Branch to 0x033B if Plus N = 0          
          clra                          ; Clear byte at clra <- 0x00              
          cmp RAM1_085                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_085)
          bcc L0343                     ; Branch to 0x0343 if C bit is cleared    
          sta RAM1_085                  ; Store Accumulator in Memory at RAM1_085 
          bset 3,RAM1_05c               ; Set Bit 3 at memory RAM1_05c (Mn <- 1 ) 
          bclr 7,RAM1_082               ; Clear bit 7 at RAM1_082                 
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_088                  ; Store Accumulator in Memory at RAM1_088 
          sta RAM1_083                  ; Store Accumulator in Memory at RAM1_083 
          jsr L0F82                     ; Jump to Subroutine at 0x0F82            
          clr RAM1_082                  ; Clear byte at RAM1_082 <- 0x00          
          jsr L0F4C                     ; Jump to Subroutine at 0x0F4C            
          jsr L0F3F                     ; Jump to Subroutine at 0x0F3F            
          clr RAM1_07e                  ; Clear byte at RAM1_07e <- 0x00          
          clr RAM1_080                  ; Clear byte at RAM1_080 <- 0x00          
          clr RAM1_087                  ; Clear byte at RAM1_087 <- 0x00          
          bset 4,RAM1_07e               ; Set Bit 4 at memory RAM1_07e (Mn <- 1 ) 
          bset 3,RAM1_07e               ; Set Bit 3 at memory RAM1_07e (Mn <- 1 ) 
          brclr 3,RAM1_05f,L0366        ; Branch to 0x0366 if Bit 3 Clear (Mn = 0)
          brset 0,RAM1_081,L038B        ; Branch to 0x038B if Bit 0 is set at RAM1_081 (Mn=1)
          bclr 0,RAM1_081               ; Clear bit 0 at RAM1_081                 
          clrx                          ; Clear byte at clrx <- 0x00              
          brset 0,RAM1_061,L036E        ; Branch to 0x036E if Bit 0 is set at RAM1_061 (Mn=1)
          ldx #$04                      ; Load Index Register with Memory Byte, X <- (0x04)
          lda X1320,x                   ; Load Accumulator with data from  memory at 0x1320, A <- (0x1320)
          sta RAM1_08a                  ; Store Accumulator in Memory at RAM1_08a 
          bset 6,RAM1_082               ; Set Bit 6 at memory RAM1_082 (Mn <- 1 ) 
          bclr 2,RAM1_06b               ; Clear bit 2 at RAM1_06b                 
          bclr 1,RAM1_06b               ; Clear bit 1 at RAM1_06b                 
          rts                           ; Return from Subroutine                  
; 
L0B7A: 
          brclr 3,PortB,L0384           ; Branch to 0x0384 if 3 is LOW            
          bclr 3,PortB                  ; Set 3 LOW                               
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          jsr L2531                     ; Jump to Subroutine at 0x2531            
          jsr L0F4C                     ; Jump to Subroutine at 0x0F4C            
          bclr 1,PortB                  ; Set 1 LOW                               
          bclr 0,RAM1_081               ; Clear bit 0 at RAM1_081                 
          rts                           ; Return from Subroutine                  
; 
L0B8C: 
          brclr 7,RAM1_087,L03AB        ; Branch to 0x03AB if Bit 7 Clear (Mn = 0)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          eor TCR                       ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (TCR)
          sta TCR                       ; Store Accumulator in Memory at TCR      
          lda OCL1                      ; Load Accumulator with value of Memory at OCL1, A <- (OCL1)
          add #$A0                      ; A + 0xA0 (without CARRY), A ← (A) + 0xA0
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda OCH1                      ; Load Accumulator with value of Memory at OCH1, A <- (OCH1)
          adc #$01                      ; A + 0x01 + CARRY, A ← (A) + 0x01 + (C) 
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bmi L03A8                     ; Branch to 0x03A8 if Minus N = 1         
          bne L03AB                     ; Branch to 0x03AB if Not Equal (Z = 0);  
cpx ACL 
          bhi L03AB                     ; Branch to 0x03AB if Higher C v Z = 0    
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          rts                           ; Return from Subroutine                  
; 
L0BAC: 
          tst RAM1_07e                  ; Test Memory Byte for Negative or Zero, (RAM1_07e) – 0x00
          beq L03EB                     ; Branch to 0x03EB if Equal Z=1           
          brclr 2,RAM1_07e,L03BB        ; Branch to 0x03BB if Bit 2 Clear (Mn = 0)
          bclr 2,RAM1_07e               ; Clear bit 2 at RAM1_07e                 
          clr RAM1_08a                  ; Clear byte at RAM1_08a <- 0x00          
          lda #$DD                      ; Load Accumulator with 0xDD, A <- 0xDD   
          sta RAM1_087                  ; Store Accumulator in Memory at RAM1_087 
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          brset 6,RAM1_07e,L03D6        ; Branch to 0x03D6 if Bit 6 is set at RAM1_07e (Mn=1)
          lda #$C8                      ; Load Accumulator with 0xC8, A <- 0xC8   
          brset 7,RAM1_07e,L03D6        ; Branch to 0x03D6 if Bit 7 is set at RAM1_07e (Mn=1)
          brclr 1,RAM1_07e,L03E0        ; Branch to 0x03E0 if Bit 1 Clear (Mn = 0)
          bclr 1,RAM1_07e               ; Clear bit 1 at RAM1_07e                 
          lda RAM1_082                  ; Load Accumulator with value of Memory at RAM1_082, A <- (RAM1_082)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          cmp #$02                      ; Compare Accumulator with Memory Byte, (A) - (0x02)
          bne L03E0                     ; Branch to 0x03E0 if Not Equal (Z = 0);  
          bset 4,RAM1_080               ; Set Bit 4 at memory RAM1_080 (Mn <- 1 ) 
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          bclr 6,RAM1_07e               ; Clear bit 6 at RAM1_07e                 
          bclr 7,RAM1_07e               ; Clear bit 7 at RAM1_07e                 
          jsr L0F4C                     ; Jump to Subroutine at 0x0F4C            
          jmp L0CFB                     ; Unconditional Jump to 0x0CFB            
; 
          db $0B, $7E, $08, $1B         ; data? 0B, ~, 08, 1B                     
          db $7E, $0D, $82, $03         ; data? ~, 0D, 82, 03                     
          db $CC, $0C, $E4, $0D         ; data? CC, 0C, E4, 0D                    
          db $82, $03, $CC, $0C         ; data? 82, 03, CC, 0C                    
          db $A7, $04, $BE, $03         ; data? A7, 04, BE, 03                    
          db $06, $7F, $39, $0E         ; data? 06, DEL, 9, 0E                    
          db $87, $64, $00, $80         ; data? 87, d, 00, 80                     
          db $33, $0A, $7F, $52         ; data? 3, 0A, DEL, R                     
          db $0E, $7F, $55, $0C         ; data? 0E, DEL, U, 0C                    
          db $7F, $46, $08, $82         ; data? DEL, F, 08, 82                    
          db $0E, $0B, $80, $0B         ; data? 0E, 0B, 80, 0B                    
          db $B6, $88, $AB, $34         ; data? B6, 88, AB, 4                     
          db $24, $05, $1B, $82         ; data? $, 05, 1B, 82                     
          db $CC, $0C, $D0, $B6         ; data? CC, 0C, D0, B6                    
          db $7F, $A4, $03, $26         ; data? DEL, A4, 03, &                    
          db $16, $C6, $02, $66         ; data? 16, C6, 02, f                     
          db $2A, $0E, $C6, $02         ; data? *, 0E, C6, 02                     
          db $65, $A1, $40, $27         ; data? e, A1, @, '                       
          db $04, $A1, $30, $26         ; data? 04, A1, 0, &                      
          db $03, $CC, $0C, $DA         ; data? 03, CC, 0C, DA                    
          db $CC, $0C, $C6, $4A         ; data? CC, 0C, C6, J                     
          db $26, $13, $AE, $AD         ; data? &, 13, AE, AD                     
          db $CD, $37, $C7, $27         ; data? CD, 7, C7, '                      
          db $03, $02, $7C, $0C         ; data? 03, 02, |, 0C                     
          db $0E, $7C, $ED, $02         ; data? 0E, |, ED, 02                     
          db $7C, $EA, $CC, $0C         ; data? |, EA, CC, 0C                     
          db $DA, $4A, $26, $06         ; data? DA, J, &, 06                      
          db $00, $BA, $77, $CC         ; data? 00, BA, w, CC                     
          db $0C, $DA, $0C, $80         ; data? 0C, DA, 0C, 80                    
          db $71, $CC, $0C, $DA         ; data? q, CC, 0C, DA                     
          db $A6, $80, $B7, $87         ; data? A6, 80, B7, 87                    
          db $20, $7C, $3A, $8A         ; data? " ", |, :, 8A                     
          db $2A, $63, $B6, $87         ; data? *, c, B6, 87                      
          db $A4, $1F, $A1, $1F         ; data? A4, 1F, A1, 1F                    
          db $26, $04, $13, $87         ; data? &, 04, 13, 87                     
          db $1D, $87, $3C, $87         ; data? 1D, 87, <, 87                     
          db $0C, $87, $03, $01         ; data? 0C, 87, 03, 01                    
          db $87, $23, $CD, $12         ; data? 87, #, CD, 12                     
          db $2E, $27, $05, $0C         ; data? ., ', 05, 0C                      
          db $87, $7B, $20, $76         ; data? 87, {, " ", v                     
          db $0B, $7F, $0C, $1F         ; data? 0B, DEL, 0C, 1F                   
          db $7F, $1F, $82, $1D         ; data? DEL, 1F, 82, 1D                   
          db $82, $3F, $8A, $11         ; data? 82, 3F, 8A, 11                    
          db $82, $20, $67, $01         ; data? 82, " ", g, 01                    
          db $87, $07, $CD, $0F         ; data? 87, 07, CD, 0F                    
          db $67, $A6, $14, $20         ; data? g, A6, 14, " "                    
          db $09, $A6, $FE, $B7         ; data? 09, A6, FE, B7                    
          db $88, $CD, $0F, $4C         ; data? 88, CD, 0F, L                     
          db $A6, $50, $B7, $8A         ; data? A6, P, B7, 8A                     
          db $CC, $0D, $77, $3A         ; data? CC, 0D, w, :                      
          db $8A, $26, $1A, $01         ; data? 8A, &, 1A, 01                     
          db $81, $53, $A6, $02         ; data? 81, S, A6, 02                     
          db $B7, $8A, $CD, $12         ; data? B7, 8A, CD, 12                    
          db $2E, $27, $2D, $0F         ; data? ., ', -, 0F                       
          db $82, $19, $B8, $82         ; data? 82, 19, B8, 82                    
          db $B7, $82, $16, $7E         ; data? B7, 82, 16, ~                     
          db $16, $BC, $CD, $0F         ; data? 16, BC, CD, 0F                    
          db $3F, $81, $0B, $82         ; data? 3F, 81, 0B, 82                    
          db $03, $09, $82, $04         ; data? 03, 09, 82, 04                    
          db $1A, $82, $20, $D4         ; data? 1A, 82, " ", D4                   
          db $0E, $82, $D1, $0E         ; data? 0E, 82, D1, 0E                    
          db $82, $04, $CD, $0F         ; data? 82, 04, CD, 0F                    
          db $4C, $81, $CD, $12         ; data? L, 81, CD, 12                     
          db $2E, $26, $17, $1B         ; data? ., &, 17, 1B                      
          db $82, $0F, $82, $C0         ; data? 82, 0F, 82, C0                    
          db $1D, $82, $19, $80         ; data? 1D, 82, 19, 80                    
          db $0F, $82, $DA, $3F         ; data? 0F, 82, DA, 3F                    
          db $8A, $00, $80, $D5         ; data? 8A, 00, 80, D5                    
          db $CD, $0F, $67, $CC         ; data? CD, 0F, g, CC                     
          db $0B, $EB, $0F, $82         ; data? 0B, EB, 0F, 82                    
          db $CD, $A6, $02              ; data? CD, A6, 02                        
; 
L0CFB: 
          sta RAM1_08a                  ; Store Accumulator in Memory at RAM1_08a 
          bset 6,RAM1_082               ; Set Bit 6 at memory RAM1_082 (Mn <- 1 ) 
          bra L0577                     ; Branch Always (1 = 1)                   
; 
          db $03, $81, $48, $04         ; data? 03, 81, H, 04                     
          db $82, $5F, $07, $82         ; data? 82, _, 07, 82                     
          db $0E, $03, $01, $06         ; data? 0E, 03, 01, 06                    
          db $13, $01, $AE, $04         ; data? 13, 01, AE, 04                    
          db $20, $4F, $0F, $6B         ; data? " ", O, 0F, k                     
          db $50, $20, $46, $04         ; data? P, " ", F, 04                     
          db $BE, $AA, $07, $01         ; data? BE, AA, 07, 01                    
          db $0C, $17, $01, $AE         ; data? 0C, 17, 01, AE                    
          db $01, $0F, $6B, $4A         ; data? 01, 0F, k, J                      
          db $03, $01, $47, $20         ; data? 03, 01, G, " "                    
          db $41, $AE, $02, $01         ; data? A, AE, 02, 01                     
          db $61, $3E, $0E, $6B         ; data? a, >, 0E, k                       
          db $06, $1E, $6B, $1C         ; data? 06, 1E, k, 1C                     
          db $95, $20, $37, $02         ; data? 95, " ", 7, 02                    
          db $01, $06, $12, $01         ; data? 01, 06, 12, 01                    
          db $AE, $01, $20, $2E         ; data? AE, 01, " ", .                    
          db $AE, $03, $03, $90         ; data? AE, 03, 03, 90                    
          db $27, $16, $01, $AE         ; data? ', 16, 01, AE                     
          db $06, $20, $23, $00         ; data? 06, " ", #, 00                    
          db $61, $0A, $0E, $5F         ; data? a, 0A, 0E, _                      
          db $14, $06, $5F, $11         ; data? 14, 06, _, 11                     
          db $17, $01, $20, $12         ; data? 17, 01, " ", 12                   
          db $02, $01, $0A, $12         ; data? 02, 01, 0A, 12                    
          db $01, $1F, $6B, $1C         ; data? 01, 1F, k, 1C                     
          db $95, $AE, $04, $20         ; data? 95, AE, 04, " "                   
          db $09, $01, $02, $02         ; data? 09, 01, 02, 02                    
          db $16, $01, $AE, $05         ; data? 16, 01, AE, 05                    
          db $10, $81, $D6, $13         ; data? 10, 81, D6, 13                    
          db $20, $B7, $8A, $18         ; data? " ", B7, 8A, 18                   
          db $12, $81, $BE, $85         ; data? 12, 81, BE, 85                    
          db $D6, $12, $D0, $03         ; data? D6, 12, D0, 03                    
          db $81, $03, $D6, $12         ; data? 81, 03, D6, 12                    
          db $F0, $B7, $58, $08         ; data? F0, B7, X, 08                     
          db $80, $0F, $0C, $82         ; data? 80, 0F, 0C, 82                    
          db $09, $0E, $87, $09         ; data? 09, 0E, 87, 09                    
          db $0E, $82, $03, $0B         ; data? 0E, 82, 03, 0B                    
          db $82, $03, $CC, $0E         ; data? 82, 03, CC, 0E                    
          db $6D, $CD, $12, $4C         ; data? m, CD, 12, L                      
          db $0E, $87, $1D, $08         ; data? 0E, 87, 1D, 08                    
          db $7F, $41, $AE, $A9         ; data? DEL, A, AE, A9                    
          db $CD, $12, $5B, $0B         ; data? CD, 12, [, 0B                     
          db $7F, $03, $02, $A1         ; data? DEL, 03, 02, A1                   
          db $09, $0D, $7F, $33         ; data? 09, 0D, DEL, 3                    
          db $3D, $58, $27, $12         ; data? =, X, ', 12                       
          db $3A, $58, $BF, $86         ; data? :, X, BF, 86                      
          db $B6, $57, $20, $0A         ; data? B6, W, " ", 0A                    
          db $0D, $87, $07, $CB         ; data? 0D, 87, 07, CB                    
          db $13, $27, $24, $02         ; data? 13, ', $, 02                      
          db $A6, $FF, $B1, $58         ; data? A6, FF, B1, X                     
          db $22, $02, $B7, $58         ; data? ", 02, B7, X                      
          db $0F, $87, $14, $0C         ; data? 0F, 87, 14, 0C                    
          db $87, $11, $B6, $87         ; data? 87, 11, B6, 87                    
          db $44, $A4, $0F, $97         ; data? D, A4, 0F, 97                     
          db $B6, $58, $DB, $13         ; data? B6, X, DB, 13                     
          db $10, $24, $02, $A6         ; data? 10, $, 02, A6                     
          db $FF, $B7, $58, $0C         ; data? FF, B7, X, 0C                     
          db $81, $0C, $B6, $84         ; data? 81, 0C, B6, 84                    
          db $27, $08, $48, $40         ; data? ', 08, H, @                       
          db $BB, $58, $25, $04         ; data? BB, X, %, 04                      
          db $4F, $C1, $B6, $58         ; data? O, C1, B6, X                      
          db $07, $81, $04, $A6         ; data? 07, 81, 04, A6                    
          db $80, $B0, $85, $B7         ; data? 80, B0, 85, B7                    
          db $58, $04, $BE, $32         ; data? X, 04, BE, 2                      
          db $06, $82, $6D, $04         ; data? 06, 82, m, 04                     
          db $82, $19, $04, $6B         ; data? 82, 19, 04, k                     
          db $03, $03, $6B, $06         ; data? 03, 03, k, 06                     
          db $15, $6B, $13, $6B         ; data? 15, k, 13, k                      
          db $1C, $95, $03, $81         ; data? 1C, 95, 03, 81                    
          db $1D, $02, $01, $1A         ; data? 1D, 02, 01, 1A                    
          db $08, $82, $17, $16         ; data? 08, 82, 17, 16                    
          db $82, $20, $51, $AE         ; data? 82, " ", Q, AE                    
          db $AE, $CD, $37, $C7         ; data? AE, CD, 7, C7                     
          db $A4, $07, $4A, $48         ; data? A4, 07, J, H                      
          db $48, $CB, $13, $28         ; data? H, CB, 13, (                      
          db $BB, $58, $25, $40         ; data? BB, X, %, @                       
          db $B7, $58, $0E, $81         ; data? B7, X, 0E, 81                     
          db $18, $0A, $7F, $15         ; data? 18, 0A, DEL, 15                   
          db $0C, $7F, $12, $06         ; data? 0C, DEL, 12, 06                   
          db $81, $0F, $AE, $00         ; data? 81, 0F, AE, 00                    
          db $03, $81, $02, $AE         ; data? 03, 81, 02, AE                    
          db $10, $CD, $12, $79         ; data? 10, CD, 12, y                     
          db $43, $A4, $0F, $20         ; data? C, A4, 0F, " "                    
          db $01, $4F, $B7, $59         ; data? 01, O, B7, Y                      
          db $B1, $83, $27, $10         ; data? B1, 83, ', 10                     
          db $24, $09, $B6, $83         ; data? $, 09, B6, 83                     
          db $4A, $A4, $0F, $B7         ; data? J, A4, 0F, B7                     
          db $83, $20, $02, $B7         ; data? 83, " ", 02, B7                   
          db $83, $CD, $0F, $73         ; data? 83, CD, 0F, s                     
          db $38, $59, $B6, $58         ; data? 8, Y, B6, X                       
          db $B0, $59, $24, $01         ; data? B0, Y, $, 01                      
          db $4F, $48, $24, $02         ; data? O, H, $, 02                       
          db $A6, $FF, $B7, $58         ; data? A6, FF, B7, X                     
          db $B7, $59, $0C, $82         ; data? B7, Y, 0C, 82                     
          db $0F, $0E, $87, $0C         ; data? 0F, 0E, 87, 0C                    
          db $B6, $88, $B0, $58         ; data? B6, 88, B0, X                     
          db $27, $5E, $46, $A8         ; data? ', ^, F, A8                       
          db $7F, $09, $81, $04         ; data? DEL, 09, 81, 04                   
          db $B6, $58, $20, $41         ; data? B6, X, " ", A                     
          db $AE, $20, $CD, $12         ; data? AE, " ", CD, 12                   
          db $79, $48, $0A, $82         ; data? y, H, 0A, 82                      
          db $02, $AB, $10, $AB         ; data? 02, AB, 10, AB                    
          db $00, $97, $D6, $12         ; data? 00, 97, D6, 12                    
          db $B0, $3A, $8A, $2B         ; data? B0, :, 8A, +                      
          db $1C, $4D, $2B, $0A         ; data? 1C, M, +, 0A                      
          db $3D, $89, $2B, $1C         ; data? =, 89, +, 1C                      
          db $B1, $89, $22, $0A         ; data? B1, 89, ", 0A                     
          db $20, $3A, $3D, $89         ; data? " ", :, =, 89                     
          db $2A, $12, $B1, $89         ; data? *, 12, B1, 89                     
          db $24, $F6, $97, $B0         ; data? $, F6, 97, B0                     
          db $89, $BF, $89, $20         ; data? 89, BF, 89, " "                   
          db $0E, $4D, $26, $04         ; data? 0E, M, &, 04                      
          db $B6, $58, $B0, $88         ; data? B6, X, B0, 88                     
          db $DE, $12, $B1, $BF         ; data? DE, 12, B1, BF                    
          db $8A, $B7, $89, $BB         ; data? 8A, B7, 89, BB                    
          db $88, $18, $82, $B1         ; data? 88, 18, 82, B1                    
          db $59, $26, $02, $19         ; data? Y, &, 02, 19                      
          db $82, $B1, $88, $27         ; data? 82, B1, 88, '                     
          db $09, $B7, $88, $CD         ; data? 09, B7, 88, CD                    
          db $0F, $82, $20, $08         ; data? 0F, 82, " ", 08                   
          db $19, $82, $08, $7E         ; data? 19, 82, 08, ~                     
          db $F6, $06, $7E, $F3         ; data? F6, 06, ~, F3                     
          db $B6, $82, $A4, $0C         ; data? B6, 82, A4, 0C                    
          db $97, $01, $80, $03         ; data? 97, 01, 80, 03                    
          db $00, $61, $02, $B8         ; data? 00, a, 02, B8                     
          db $7F, $A4, $0C, $27         ; data? DEL, A4, 0C, '                    
          db $48, $0B, $82, $03         ; data? H, 0B, 82, 03                     
          db $0F, $82, $42, $5D         ; data? 0F, 82, B, ]                      
          db $27, $01, $9F, $B8         ; data? ', 01, 9F, B8                     
          db $82, $B7, $82, $1C         ; data? 82, B7, 82, 1C                    
          db $95, $15, $6B, $13         ; data? 95, 15, k, 13                     
          db $6B, $03, $81, $13         ; data? k, 03, 81, 13                     
          db $06, $82, $05, $05         ; data? 06, 82, 05, 05                    
          db $82, $04, $14, $6B         ; data? 82, 04, 14, k                     
          db $12, $6B, $11, $81         ; data? 12, k, 11, 81                     
          db $A6, $05, $B7, $8A         ; data? A6, 05, B7, 8A                    
          db $1C, $82, $81, $07         ; data? 1C, 82, 81, 07                    
          db $82, $0C, $AE, $AF         ; data? 82, 0C, AE, AF                    
          db $CD, $37, $C7, $46         ; data? CD, 7, C7, F                      
          db $24, $09, $14, $6B         ; data? $, 09, 14, k                      
          db $20, $07, $05, $82         ; data? " ", 07, 05, 82                   
          db $07, $14, $6B, $12         ; data? 07, 14, k, 12                     
          db $6B, $16, $01, $81         ; data? k, 16, 01, 81                     
          db $00, $61, $02, $17         ; data? 00, a, 02, 17                     
          db $01, $81                   ; data? 01, 81                            
; 
L0F3F: 
          lda RAM1_082                  ; Load Accumulator with value of Memory at RAM1_082, A <- (RAM1_082)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda X11B1,x                   ; Load Accumulator with data from  memory at 0x11B1, A <- (0x11B1)
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          clra                          ; Clear byte at clra <- 0x00              
          bra L0779                     ; Branch Always (1 = 1)                   
; 
L0F4C: 
          bset 7,RAM1_082               ; Set Bit 7 at memory RAM1_082 (Mn <- 1 ) 
          brset 5,RAM1_081,L073E        ; Branch to 0x073E if Bit 5 is set at RAM1_081 (Mn=1)
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          cmp RAM1_088                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_088)
          beq L075B                     ; Branch to 0x075B if Equal Z=1           
          sta RAM1_088                  ; Store Accumulator in Memory at RAM1_088 
          bsr L0787                     ; Branch to Subroutine at 0x0787          
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          lda #$03                      ; Load Accumulator with 0x03, A <- 0x03   
          bsr L0779                     ; Branch to Subroutine at 0x0779          
          lda #$81                      ; Load Accumulator with 0x81, A <- 0x81   
          bra L076D                     ; Branch Always (1 = 1)                   
; 
          db $1F, $82, $16, $7E         ; data? 1F, 82, 16, ~                     
          db $A6, $80, $B7, $50         ; data? A6, 80, B7, P                     
          db $A6, $08, $20, $06         ; data? A6, 08, " ", 06                   
          db $B6, $83, $B7, $50         ; data? B6, 83, B7, P                     
          db $A6, $01, $AE, $88         ; data? A6, 01, AE, 88                    
          db $01, $02, $03, $CD         ; data? 01, 02, 03, CD                    
          db $11, $B5, $81              ; data? 11, B5, 81                        
; 
L0F82: 
          lda RAM1_088                  ; Load Accumulator with value of Memory at RAM1_088, A <- (RAM1_088)
          brset 7,RAM1_082,L0781        ; Branch to 0x0781 if Bit 7 is set at RAM1_082 (Mn=1)
          brclr 5,RAM1_07f,L0792        ; Branch to 0x0792 if Bit 5 Clear (Mn = 0)
          brset 5,RAM1_082,L0792        ; Branch to 0x0792 if Bit 5 is set at RAM1_082 (Mn=1)
          add #$E0                      ; A + 0xE0 (without CARRY), A ← (A) + 0xE0
          bcs L0792                     ; Branch to 0x0792 if C = 1               
          clra                          ; Clear byte at clra <- 0x00              
          brclr 1,RAM1_081,L07BB        ; Branch to 0x07BB if Bit 1 Clear (Mn = 0)
          brclr 1,RAM1_082,L07A2        ; Branch to 0x07A2 if Bit 1 Clear (Mn = 0)
          brset 0,RAM1_082,L07AF        ; Branch to 0x07AF if Bit 0 is set at RAM1_082 (Mn=1)
          brclr 2,RAM1_0b8,L07AF        ; Branch to 0x07AF if Bit 2 Clear (Mn = 0)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          bra L07A9                     ; Branch Always (1 = 1)                   
; 
          db $A6, $14, $01, $82         ; data? A6, 14, 01, 82                    
          db $02, $A6, $0C, $40         ; data? 02, A6, 0C, @                     
          db $BB, $88, $25, $01         ; data? BB, 88, %, 01                     
          db $4F, $A1, $30, $24         ; data? O, A1, 0, $                       
          db $02, $A6, $30, $A1         ; data? 02, A6, 0, A1                     
          db $44, $24, $02, $16         ; data? D, $, 02, 16                      
          db $7E, $B7, $56, $1F         ; data? ~, B7, V, 1F                      
          db $5B, $AE, $A0, $CD         ; data? [, AE, A0, CD                     
          db $10, $A5, $B7, $59         ; data? 10, A5, B7, Y                     
          db $AE, $A1, $CD, $10         ; data? AE, A1, CD, 10                    
          db $A5, $B7, $58, $0A         ; data? A5, B7, X, 0A                     
          db $82, $28, $07, $7E         ; data? 82, (, 07, ~                      
          db $25, $17, $7E, $2B         ; data? %, 17, ~, +                       
          db $02, $43, $C1, $AB         ; data? 02, C, C1, AB                     
          db $07, $A4, $0F, $B7         ; data? 07, A4, 0F, B7                    
          db $50, $B6, $59, $2B         ; data? P, B6, Y, +                       
          db $07, $43, $A5, $08         ; data? 07, C, A5, 08                     
          db $26, $04, $A0, $0D         ; data? &, 04, A0, 0D                     
          db $AB, $07, $CD, $25         ; data? AB, 07, CD, %                     
          db $2C, $BB, $50, $B7         ; data? ,, BB, P, B7                      
          db $50, $A6, $03, $CD         ; data? P, A6, 03, CD                     
          db $0F, $79, $B6, $58         ; data? 0F, y, B6, X                      
          db $26, $0C, $B6, $59         ; data? &, 0C, B6, Y                      
          db $AB, $08, $B7, $57         ; data? AB, 08, B7, W                     
          db $97, $D6, $10, $ED         ; data? 97, D6, 10, ED                    
          db $20, $15, $AB, $08         ; data? " ", 15, AB, 08                   
          db $B7, $57, $B6, $59         ; data? B7, W, B6, Y                      
          db $2A, $01, $40, $CD         ; data? *, 01, @, CD                      
          db $25, $2C, $BB, $57         ; data? %, ,, BB, W                       
          db $97, $D6, $10, $ED         ; data? 97, D6, 10, ED                    
          db $0F, $59, $03, $CD         ; data? 0F, Y, 03, CD                     
          db $25, $2C, $CD, $25         ; data? %, ,, CD, %                       
          db $25, $06, $57, $0E         ; data? %, 06, W, 0E                      
          db $0E, $5B, $0A, $40         ; data? 0E, [, 0A, @                      
          db $27, $07, $BB, $56         ; data? ', 07, BB, V                      
          db $25, $0A, $4F, $20         ; data? %, 0A, O, " "                     
          db $07, $4F, $BB, $56         ; data? 07, O, BB, V                      
          db $24, $02, $A6, $FF         ; data? $, 02, A6, FF                     
          db $B7, $50, $A6, $02         ; data? B7, P, A6, 02                     
          db $CD, $0F, $79, $09         ; data? CD, 0F, y, 09                     
          db $7E, $60, $19, $7E         ; data? ~, `, 19, ~                       
          db $A6, $88, $B7, $55         ; data? A6, 88, B7, U                     
          db $A6, $14, $B7, $54         ; data? A6, 14, B7, T                     
          db $A6, $E0, $AE, $53         ; data? A6, E0, AE, S                     
          db $BF, $57, $BE, $57         ; data? BF, W, BE, W                      
          db $7F, $B7, $56, $AE         ; data? DEL, B7, V, AE                    
          db $A3, $CD, $37, $C7         ; data? A3, CD, 7, C7                     
X105E: 
          db $0D, $8E, $01, $4F         ; data? 0D, 8E, 01, O                     
          db $B8, $56, $A5, $20         ; data? B8, V, A5, " "                    
          db $26, $0E, $CD, $37         ; data? &, 0E, CD, 7                      
          db $C7, $0D, $8E, $01         ; data? C7, 0D, 8E, 01                    
          db $4F, $2A, $01, $40         ; data? O, *, 01, @                       
          db $AB, $10, $AD, $20         ; data? AB, 10, AD, " "                   
          db $AE, $A2, $CD, $37         ; data? AE, A2, CD, 7                     
          db $C7, $B8, $56, $A5         ; data? C7, B8, V, A5                     
          db $40, $27, $08, $CD         ; data? @, ', 08, CD                      
          db $37, $C7, $2A, $01         ; data? 7, C7, *, 01                      
          db $40, $AD, $0D, $3A         ; data? @, AD, 0D, :                      
          db $57, $B6, $56, $A0         ; data? W, B6, V, A0                      
          db $20, $2B, $C3, $AE         ; data? " ", +, C3, AE                    
          db $55, $CC, $11, $BB         ; data? U, CC, 11, BB                     
          db $97, $D6, $11, $91         ; data? 97, D6, 11, 91                    
          db $BE, $57, $FB, $A1         ; data? BE, W, FB, A1                     
          db $1F, $23, $02, $A6         ; data? 1F, #, 02, A6                     
          db $1F, $F7, $81, $4F         ; data? 1F, F7, 81, O                     
          db $0A, $82, $09, $0A         ; data? 0A, 82, 09, 0A                    
          db $7F, $3F, $0C, $7F         ; data? DEL, 3F, 0C, DEL                  
          db $3C, $06, $81, $39         ; data? <, 06, 81, 9                      
          db $CD, $37, $C7, $AB         ; data? CD, 7, C7, AB                     
          db $06, $2A, $02, $A6         ; data? 06, *, 02, A6                     
          db $06, $A3, $A0, $26         ; data? 06, A3, A0, &                     
          db $02, $AB, $0D, $03         ; data? 02, AB, 0D, 03                    
          db $81, $02, $AB, $1A         ; data? 81, 02, AB, 1A                    
          db $97, $D6, $11, $5D         ; data? 97, D6, 11, ]                     
          db $2B, $1F, $03, $81         ; data? +, 1F, 03, 81                     
          db $1C, $BE, $56, $A3         ; data? 1C, BE, V, A3                     
          db $44, $24, $16, $3F         ; data? D, $, 16, 3F                      
          db $53, $A3, $36, $25         ; data? S, A3, 6, %                       
          db $08, $3C, $53, $A3         ; data? 08, <, S, A3                      
          db $3C, $25, $02, $3C         ; data? <, %, 02, <                       
          db $53, $B1, $53, $23         ; data? S, B1, S, #                       
          db $04, $B6, $53, $1E         ; data? 04, B6, S, 1E                     
          db $5B, $4D, $81, $00         ; data? [, M, 81, 00                      
          db $00, $70, $72, $62         ; data? 00, p, r, b                       
          db $51, $41, $21, $00         ; data? Q, A, !, 00                       
          db $21, $41, $52, $62         ; data? !, A, R, b                        
          db $72, $70, $00, $00         ; data? r, p, 00, 00                      
          db $00, $78, $67, $57         ; data? 00, x, g, W                       
          db $56, $35, $13, $00         ; data? V, 5, 13, 00                      
          db $32, $53, $65, $75         ; data? 2, S, e, u                        
          db $76, $86, $00, $00         ; data? v, 86, 00, 00                     
          db $00, $68, $68, $57         ; data? 00, h, h, W                       
          db $46, $35, $13, $00         ; data? F, 5, 13, 00                      
          db $41, $53, $74, $75         ; data? A, S, t, u                        
          db $85, $86, $00, $00         ; data? 85, 86, 00, 00                    
          db $00, $69, $58, $58         ; data? 00, i, X, X                       
          db $47, $25, $14, $00         ; data? G, %, 14, 00                      
          db $41, $63, $74, $75         ; data? A, c, t, u                        
          db $85, $86, $00, $00         ; data? 85, 86, 00, 00                    
          db $00, $59, $58, $48         ; data? 00, Y, X, H                       
          db $47, $26, $14, $00         ; data? G, &, 14, 00                      
          db $41, $63, $74, $84         ; data? A, c, t, 84                       
          db $85, $95, $00, $00         ; data? 85, 95, 00, 00                    
          db $00, $59, $58, $48         ; data? 00, Y, X, H                       
          db $47, $25, $14, $00         ; data? G, %, 14, 00                      
          db $41, $62, $74, $84         ; data? A, b, t, 84                       
          db $85, $95, $00, $00         ; data? 85, 95, 00, 00                    
          db $00, $59, $58, $48         ; data? 00, Y, X, H                       
          db $47, $25, $14, $00         ; data? G, %, 14, 00                      
          db $41, $62, $74, $84         ; data? A, b, t, 84                       
          db $85, $95, $00, $FA         ; data? 85, 95, 00, FA                    
          db $FB, $FC, $FD, $FE         ; data? FB, FC, FD, FE                    
          db $FF, $00, $01, $02         ; data? FF, 00, 01, 02                    
          db $03, $04, $05, $06         ; data? 03, 04, 05, 06                    
          db $FB, $FC, $FD, $FD         ; data? FB, FC, FD, FD                    
          db $FE, $FE, $FF, $00         ; data? FE, FE, FF, 00                    
          db $01, $01, $02, $03         ; data? 01, 01, 02, 03                    
          db $03, $FB, $FB, $FC         ; data? 03, FB, FB, FC                    
          db $FD, $FE, $FF, $00         ; data? FD, FE, FF, 00                    
          db $01, $01, $02, $02         ; data? 01, 01, 02, 02                    
          db $03, $03, $FB, $FB         ; data? 03, 03, FB, FB                    
          db $FC, $FD, $FE, $FF         ; data? FC, FD, FE, FF                    
          db $00, $01, $01, $02         ; data? 00, 01, 01, 02                    
          db $02, $03, $03, $00         ; data? 02, 03, 03, 00                    
          db $01, $02, $03, $04         ; data? 01, 02, 03, 04                    
          db $05, $06, $07, $08         ; data? 05, 06, 07, 08                    
          db $09, $0A, $0B, $0C         ; data? 09, 0A, 0B, 0C                    
          db $0D, $0E, $0F, $00         ; data? 0D, 0E, 0F, 00                    
          db $01, $02, $03, $04         ; data? 01, 02, 03, 04                    
          db $05, $06, $07, $08         ; data? 05, 06, 07, 08                    
          db $09, $0A, $0B, $0C         ; data? 09, 0A, 0B, 0C                    
          db $0D, $0E, $1F              ; data? 0D, 0E, 1F                        
X11B1: 
          db $38, $39, $3A, $2B         ; data? 8, 9, :, +                        
          db $B7, $51, $BF, $52         ; data? B7, Q, BF, R                      
          db $AE, $52, $BF, $5A         ; data? AE, R, BF, Z                      
          db $AD, $06, $24, $63         ; data? AD, 06, $, c                      
          db $AD, $02, $24, $5F         ; data? AD, 02, $, _                      
          db $BE, $5A, $AD, $5C         ; data? BE, Z, AD, \                      
          db $F6, $AD, $0A, $25         ; data? F6, AD, 0A, %                     
          db $4C, $5A, $A3, $50         ; data? L, Z, A3, P                       
          db $24, $F6, $98, $20         ; data? $, F6, 98, " "                    
          db $44, $99, $49, $25         ; data? D, 99, I, %                       
          db $04, $AD, $14, $20         ; data? 04, AD, 14, " "                   
          db $04, $1D, $04, $20         ; data? 04, 1D, 04, " "                   
          db $00, $AD, $05, $48         ; data? 00, AD, 05, H                     
          db $26, $F1, $1D, $04         ; data? &, F1, 1D, 04                     
          db $1F, $04, $0C, $00         ; data? 1F, 04, 0C, 00                    
          db $00, $20, $39, $1C         ; data? 00, " ", 9, 1C                    
          db $04, $1D, $00, $81         ; data? 04, 1D, 00, 81                    
          db $AD, $2E, $AD, $DD         ; data? AD, ., AD, DD                     
          db $25, $1F, $AD, $2C         ; data? %, 1F, AD, ,                      
          db $A6, $01, $1D, $04         ; data? A6, 01, 1D, 04                    
          db $1F                        ; data? 1F                                
X1202: 
          db $04, $0C, $00, $00         ; data? 04, 0C, 00, 00                    
          db $49, $AD, $20, $24         ; data? I, AD, " ", $                     
          db $F4, $F7, $3A, $59         ; data? F4, F7, :, Y                      
          db $2B, $07, $AD, $DE         ; data? +, 07, AD, DE                     
          db $5A, $1F, $04, $20         ; data? Z, 1F, 04, " "                    
          db $E4, $AD, $CE, $98         ; data? E4, AD, CE, 98                    
          db $AD, $0D, $AD, $D2         ; data? AD, 0D, AD, D2                    
          db $1F, $04, $AD, $02         ; data? 1F, 04, AD, 02                    
          db $1D, $04, $81, $AD         ; data? 1D, 04, 81, AD                    
          db $F7, $AD, $C7, $1E         ; data? F7, AD, C7, 1E                    
          db $04, $1F, $00, $81         ; data? 04, 1F, 00, 81                    
          db $A6, $03, $0A, $7F         ; data? A6, 03, 0A, DEL                   
          db $12, $0E, $7F, $11         ; data? 12, 0E, DEL, 11                   
          db $0C, $87, $0E, $4A         ; data? 0C, 87, 0E, J                     
          db $0C, $7F, $08, $01         ; data? 0C, DEL, 08, 01                   
          db $7F, $03, $02, $7C         ; data? DEL, 03, 02, |                    
          db $02, $B6, $7F, $3F         ; data? 02, B6, DEL, 3F                   
          db $87, $B8, $82, $A4         ; data? 87, B8, 82, A4                    
          db $03, $81                   ; data? 03, 81                            
; 
L124C: 
          ldx #$10                      ; Load Index Register with Memory Byte, X <- (0x10)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          brclr 1,RAM1_081,L025A        ; Branch to 0x025A if Bit 1 Clear (Mn = 0)
          add #$10                      ; A + 0x10 (without CARRY), A ← (A) + 0x10
          bcc L025A                     ; Branch to 0x025A if C bit is cleared    
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          rts                           ; Return from Subroutine                  
; 
          db $B7, $57, $CD, $37         ; data? B7, W, CD, 7                      
          db $C7, $48, $48, $AB         ; data? C7, H, H, AB                      
          db $F4, $40, $BB, $57         ; data? F4, @, BB, W                      
; 
L1267: 
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          clrx                          ; Clear byte at clrx <- 0x00              
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          lda X12D0,x                   ; Load Accumulator with data from  memory at 0x12D0, A <- (0x12D0)
          brclr 1,RAM1_081,L0274        ; Branch to 0x0274 if Bit 1 Clear (Mn = 0)
          lda X12F0,x                   ; Load Accumulator with data from  memory at 0x12F0, A <- (0x12F0)
          cmp RAM1_057                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_057)
          bhi L026A                     ; Branch to 0x026A if Higher C v Z = 0    
          rts                           ; Return from Subroutine                  
; 
          db $3F, $57, $DB, $12         ; data? 3F, W, DB, 12                     
          db $88, $25, $05, $3C         ; data? 88, %, 05, <                      
          db $57, $5C, $20, $F6         ; data? W, \, " ", F6                     
          db $B6, $57, $81, $B7         ; data? B6, W, 81, B7                     
          db $04, $04, $04, $04         ; data? 04, 04, 04, 04                    
          db $04, $04, $04, $04         ; data? 04, 04, 04, 04                    
          db $FF, $00, $00, $00         ; data? FF, 00, 00, 00                    
          db $00, $00, $00, $8F         ; data? 00, 00, 00, 8F                    
          db $06, $06, $06, $06         ; data? 06, 06, 06, 06                    
          db $06, $06, $06, $06         ; data? 06, 06, 06, 06                    
          db $06, $06, $06, $06         ; data? 06, 06, 06, 06                    
          db $06, $06, $FF, $20         ; data? 06, 06, FF, " "                   
          db $40, $16, $0A, $02         ; data? @, 16, 0A, 02                     
          db $0E, $20, $FF, $20         ; data? 0E, " ", FF, " "                  
          db $00, $10, $00, $08         ; data? 00, 10, 00, 08                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $FE, $03, $FC         ; data? 00, FE, 03, FC                    
          db $00, $F8, $00, $0C         ; data? 00, F8, 00, 0C                    
          db $00, $06, $00, $02         ; data? 00, 06, 00, 02                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $FE, $03, $FC         ; data? 00, FE, 03, FC                    
          db $00, $F8, $00              ; data? 00, F8, 00                        
X12D0: 
          db $9C, $9C, $90, $84         ; data? 9C, 9C, 90, 84                    
          db $78, $6C, $64, $5C         ; data? x, l, d, \                        
          db $54, $4E, $48, $44         ; data? T, N, H, D                        
          db $40, $3C, $38, $34         ; data? @, <, 8, 4                        
          db $30, $2C, $28, $26         ; data? 0, ,, (, &                        
          db $24, $22, $20, $1E         ; data? $, ", " ", 1E                     
          db $1C, $1A, $18, $16         ; data? 1C, 1A, 18, 16                    
          db $14, $12, $10, $10         ; data? 14, 12, 10, 10                    
X12F0: 
          db $9C, $92, $88, $7E         ; data? 9C, 92, 88, ~                     
          db $74, $6A, $62, $5A         ; data? t, j, b, Z                        
          db $54, $4E, $48, $44         ; data? T, N, H, D                        
          db $40, $3C, $38, $36         ; data? @, <, 8, 6                        
          db $34, $32, $30, $2E         ; data? 4, 2, 0, .                        
          db $2C, $2A, $28, $26         ; data? ,, *, (, &                        
          db $24, $22, $20, $1E         ; data? $, ", " ", 1E                     
          db $1C, $1A, $18, $18         ; data? 1C, 1A, 18, 18                    
          db $1E, $1C, $1A, $18         ; data? 1E, 1C, 1A, 18                    
          db $16, $14, $12, $10         ; data? 16, 14, 12, 10                    
          db $0E, $0C, $0A, $08         ; data? 0E, 0C, 0A, 08                    
          db $06, $04, $02, $00         ; data? 06, 04, 02, 00                    
X1320: 
          db $0A, $14, $03, $50         ; data? 0A, 14, 03, P                     
          db $28, $05, $3C, $18         ; data? (, 05, <, 18                      
          db $00, $10                   ; data? 00, 10                            
; 
L132A: 
          brclr 6,RAM1_061,L0338        ; Branch to 0x0338 if Bit 6 Clear (Mn = 0)
          brset 6,RAM1_0ba,L0335        ; Branch to 0x0335 if Bit 6 is set at RAM1_0ba (Mn=1)
          brset 5,RAM1_0ba,L034A        ; Branch to 0x034A if Bit 5 is set at RAM1_0ba (Mn=1)
          bra L0338                     ; Branch Always (1 = 1)                   
; 
          db $0B, $BA, $12, $19         ; data? 0B, BA, 12, 19                    
          db $01, $1D, $BA, $1A         ; data? 01, 1D, BA, 1A                    
          db $BA, $3F, $D6, $3F         ; data? BA, 3F, D6, 3F                    
          db $C1, $CD, $1E, $26         ; data? C1, CD, 1E, &                     
          db $10, $BA, $CD, $25         ; data? 10, BA, CD, %                     
          db $4E, $18, $01, $AE         ; data? N, 18, 01, AE                     
          db $B0, $CD, $37, $C7         ; data? B0, CD, 7, C7                     
          db $A4, $62, $AA, $80         ; data? A4, b, AA, 80                     
          db $09, $B5, $02, $AA         ; data? 09, B5, 02, AA                    
          db $10, $B7, $B5, $3F         ; data? 10, B7, B5, 3F                    
          db $BF, $CD, $25, $3F         ; data? BF, CD, %, 3F                     
          db $01, $61, $13, $3F         ; data? 01, a, 13, 3F                     
          db $BC, $14, $BC, $09         ; data? BC, 14, BC, 09                    
          db $69, $0C, $02, $5F         ; data? i, 0C, 02, _                      
          db $09, $1D, $B5, $B6         ; data? 09, 1D, B5, B6                    
          db $B5, $AE, $B0, $CD         ; data? B5, AE, B0, CD                    
          db $37, $9B, $18, $BC         ; data? 7, 9B, 18, BC                     
          db $81, $0D, $61, $08         ; data? 81, 0D, a, 08                     
          db $0C, $BA, $05, $A6         ; data? 0C, BA, 05, A6                    
          db $05, $0B, $BA, $02         ; data? 05, 0B, BA, 02                    
          db $A6, $28, $B7, $63         ; data? A6, (, B7, c                      
          db $1C, $BA, $1A, $BA         ; data? 1C, BA, 1A, BA                    
          db $A6, $30, $AE, $01         ; data? A6, 0, AE, 01                     
          db $CD, $1B, $82, $07         ; data? CD, 1B, 82, 07                    
          db $67, $08, $17, $67         ; data? g, 08, 17, g                      
          db $CD, $13, $BC, $CD         ; data? CD, 13, BC, CD                    
          db $36, $AE, $CD, $07         ; data? 6, AE, CD, 07                     
          db $89, $CD, $36, $F2         ; data? 89, CD, 6, F2                     
          db $CD, $13, $E0, $0D         ; data? CD, 13, E0, 0D                    
          db $BA, $06, $1D, $D6         ; data? BA, 06, 1D, D6                    
          db $3D, $63, $26, $E3         ; data? =, c, &, E3                       
          db $CD, $36, $F2, $CD         ; data? CD, 6, F2, CD                     
          db $1E, $26, $1B, $BA         ; data? 1E, &, 1B, BA                     
          db $1D, $BA, $81              ; data? 1D, BA, 81                        
; 
L13BC: 
          brset 7,STACK_0d6,L03FA       ; Branch to 0x03FA if Bit 7 is set at STACK_0d6 (Mn=1)
          brset 6,RAM1_0ba,L03C5        ; Branch to 0x03C5 if Bit 6 is set at RAM1_0ba (Mn=1)
          brclr 5,RAM1_0ba,L03E9        ; Branch to 0x03E9 if Bit 5 Clear (Mn = 0)
          lda RAM1_0bb                  ; Load Accumulator with value of Memory at RAM1_0bb, A <- (RAM1_0bb)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L13FB                     ; Jump to Subroutine at 0x13FB            
          bra L03F0                     ; Branch Always (1 = 1)                   
; 
L13CE: 
          brset 7,STACK_0d6,L03FA       ; Branch to 0x03FA if Bit 7 is set at STACK_0d6 (Mn=1)
          brset 6,RAM1_0ba,L03D7        ; Branch to 0x03D7 if Bit 6 is set at RAM1_0ba (Mn=1)
          brclr 5,RAM1_0ba,L03E9        ; Branch to 0x03E9 if Bit 5 Clear (Mn = 0)
          lda RAM1_0bb                  ; Load Accumulator with value of Memory at RAM1_0bb, A <- (RAM1_0bb)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L1506                     ; Jump to Subroutine at 0x1506            
          bra L03F0                     ; Branch Always (1 = 1)                   
; 
L13E0: 
          lda RAM1_0bb                  ; Load Accumulator with value of Memory at RAM1_0bb, A <- (RAM1_0bb)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L157D                     ; Jump to Subroutine at 0x157D            
          bra L03F0                     ; Branch Always (1 = 1)                   
; 
          db $01, $61, $04, $1B         ; data? 01, a, 04, 1B                     
          db $61, $14, $5D, $B6         ; data? a, 14, ], B6                      
          db $BB, $B1, $58, $27         ; data? BB, B1, X, '                      
          db $04, $1C, $CB, $1A         ; data? 04, 1C, CB, 1A                    
          db $CB, $81                   ; data? CB, 81                            
; 
L13FB: 
          brclr 4,RAM1_0bc,L0403        ; Branch to 0x0403 if Bit 4 Clear (Mn = 0)
          bclr 4,RAM1_0bc               ; Clear bit 4 at RAM1_0bc                 
          jmp L1A4E                     ; Unconditional Jump to 0x1A4E            
; 
          db $0E, $C1, $03, $0C         ; data? 0E, C1, 03, 0C                    
          db $C1, $06, $07, $BC         ; data? C1, 06, 07, BC                    
          db $03, $CC, $18, $FF         ; data? 03, CC, 18, FF                    
          db $05, $C0, $03, $CC         ; data? 05, C0, 03, CC                    
          db $1C, $56, $B6, $B3         ; data? 1C, V, B6, B3                     
          db $26, $07, $CD, $14         ; data? &, 07, CD, 14                     
          db $94, $CD, $14, $CB         ; data? 94, CD, 14, CB                    
          db $81, $2B, $3F, $08         ; data? 81, +, 3F, 08                     
          db $B3, $19, $A5, $60         ; data? B3, 19, A5, `                     
          db $27, $05, $CD, $18         ; data? ', 05, CD, 18                     
          db $4C, $20, $02, $3F         ; data? L, " ", 02, 3F                    
          db $B3, $11, $BA, $0E         ; data? B3, 11, BA, 0E                    
          db $B9, $06, $0D, $BA         ; data? B9, 06, 0D, BA                    
          db $03, $0D, $C1, $02         ; data? 03, 0D, C1, 02                    
          db $10, $BA, $81, $B6         ; data? 10, BA, 81, B6                    
          db $C1, $A4, $86, $A1         ; data? C1, A4, 86, A1                    
          db $86, $26, $03, $CD         ; data? 86, &, 03, CD                     
          db $1C, $2B, $A6, $B4         ; data? 1C, +, A6, B4                     
          db $0A, $B6, $11, $A6         ; data? 0A, B6, 11, A6                    
          db $88, $0F, $BA, $DB         ; data? 88, 0F, BA, DB                    
          db $05, $B6, $D8, $03         ; data? 05, B6, D8, 03                    
          db $B6, $06, $0A, $B3         ; data? B6, 06, 0A, B3                    
          db $03, $01, $B6, $CF         ; data? 03, 01, B6, CF                    
          db $B7, $B3, $1F, $B3         ; data? B7, B3, 1F, B3                    
          db $15, $BB, $A4, $07         ; data? 15, BB, A4, 07                    
          db $97, $B6, $B4, $2A         ; data? 97, B6, B4, *                     
          db $06, $A4, $7F, $B7         ; data? 06, A4, DEL, B7                   
          db $B4, $B7, $B8, $DE         ; data? B4, B7, B8, DE                    
          db $19, $89, $DD, $19         ; data? 19, 89, DD, 19                    
          db $E9, $0E, $B3, $B5         ; data? E9, 0E, B3, B5                    
          db $B6, $B3, $A1, $70         ; data? B6, B3, A1, p                     
          db $24, $AD, $17, $BB         ; data? $, AD, 17, BB                     
          db $08, $B3, $A8, $B7         ; data? 08, B3, A8, B7                    
          db $B6, $1B, $BC, $A4         ; data? B6, 1B, BC, A4                    
          db $07, $A1, $07, $26         ; data? 07, A1, 07, &                     
          db $9E, $18, $B6, $20         ; data? 9E, 18, B6, " "                   
          db $9A, $B6, $C1, $A5         ; data? 9A, B6, C1, A5                    
          db $C0, $27, $11, $A4         ; data? C0, ', 11, A4                     
          db $86, $A1, $86, $26         ; data? 86, A1, 86, &                     
          db $29, $1B, $BC, $15         ; data? ), 1B, BC, 15                     
          db $BB, $CD, $1E, $12         ; data? BB, CD, 1E, 12                    
          db $27, $0B, $15, $BA         ; data? ', 0B, 15, BA                     
          db $19, $C0, $A6, $97         ; data? 19, C0, A6, 97                    
          db $AE, $C0, $CD, $1C         ; data? AE, C0, CD, 1C                    
          db $2D, $CD, $1E, $1D         ; data? -, CD, 1E, 1D                     
          db $09, $BF, $0B, $04         ; data? 09, BF, 0B, 04                    
          db $BE, $0C, $02, $BE         ; data? BE, 0C, 02, BE                    
          db $09, $0F, $BF, $06         ; data? 09, 0F, BF, 06                    
          db $1F, $BF, $18, $BF         ; data? 1F, BF, 18, BF                    
          db $16, $BC, $81, $81         ; data? 16, BC, 81, 81                    
          db $08, $C1, $37, $3A         ; data? 08, C1, 7, :                      
          db $C3, $26, $33, $B6         ; data? C3, &, 3, B6                      
          db $C1, $A1, $60, $27         ; data? C1, A1, `, '                      
          db $08, $07, $BC, $05         ; data? 08, 07, BC, 05                    
          db $3C, $C3, $CC, $18         ; data? <, C3, CC, 18                     
          db $FF, $0F, $C1, $0F         ; data? FF, 0F, C1, 0F                    
          db $1F, $C1, $1D, $C1         ; data? 1F, C1, 1D, C1                    
          db $B6, $C1, $A4, $07         ; data? B6, C1, A4, 07                    
          db $97, $DE, $1C, $C1         ; data? 97, DE, 1C, C1                    
          db $DC, $1C, $C9, $0D         ; data? DC, 1C, C9, 0D                    
          db $C1, $0E, $1D, $C1         ; data? C1, 0E, 1D, C1                    
          db $B6, $B6, $A4, $07         ; data? B6, B6, A4, 07                    
          db $97, $DE, $1B, $B7         ; data? 97, DE, 1B, B7                    
          db $DD, $1B, $BF, $C1         ; data? DD, 1B, BF, C1                    
          db $3F, $C1, $81              ; data? 3F, C1, 81                        
; 
L1506: 
          brset 7,RAM1_0ba,L0551        ; Branch to 0x0551 if Bit 7 is set at RAM1_0ba (Mn=1)
          jsr L1DF8                     ; Jump to Subroutine at 0x1DF8            
          beq L0551                     ; Branch to 0x0551 if Equal Z=1           
          lda RAM1_0be                  ; Load Accumulator with value of Memory at RAM1_0be, A <- (RAM1_0be)
          brset 5,RAM1_0b9,L0533        ; Branch to 0x0533 if Bit 5 is set at RAM1_0b9 (Mn=1)
          brset 4,RAM1_0b9,L0529        ; Branch to 0x0529 if Bit 4 is set at RAM1_0b9 (Mn=1)
          brclr 1,RAM1_0be,L051E        ; Branch to 0x051E if Bit 1 Clear (Mn = 0)
          brclr 3,RAM1_0b9,L0521        ; Branch to 0x0521 if Bit 3 Clear (Mn = 0)
          bra L054D                     ; Branch Always (1 = 1)                   
; 
          db $06, $BA, $2C, $A5         ; data? 06, BA, ,, A5                     
          db $F0, $27, $2C, $AA         ; data? F0, ', ,, AA                      
          db $F0, $20, $2C, $03         ; data? F0, " ", ,, 03                    
          db $BE, $03, $00, $BE         ; data? BE, 03, 00, BE                    
          db $15, $A6, $02, $20         ; data? 15, A6, 02, " "                   
          db $08, $05, $BE, $03         ; data? 08, 05, BE, 03                    
          db $00, $BE, $0B, $A6         ; data? 00, BE, 0B, A6                    
          db $04, $1E, $BF, $1A         ; data? 04, 1E, BF, 1A                    
          db $CB, $16, $BC, $4C         ; data? CB, 16, BC, L                     
          db $18, $BA, $A4, $07         ; data? 18, BA, A4, 07                    
          db $AA, $20, $0D, $B9         ; data? AA, " ", 0D, B9                   
          db $02, $AA, $C0, $AB         ; data? 02, AA, C0, AB                    
          db $F0, $25, $04, $CD         ; data? F0, %, 04, CD                     
          db $1E, $30, $4F, $B7         ; data? 1E, 0, O, B7                      
          db $BE, $09, $C1, $AB         ; data? BE, 09, C1, AB                    
          db $CC, $14, $CE              ; data? CC, 14, CE                        
X155D: 
          db $03, $6C, $AB, $00         ; data? 03, l, AB, 00                     
          db $CD, $F5, $03, $03         ; data? CD, F5, 03, 03                    
          db $03, $2F, $03, $06         ; data? 03, /, 03, 06                     
          db $B7, $56, $AD, $05         ; data? B7, V, AD, 05                     
          db $B6, $56, $CD, $25         ; data? B6, V, CD, %                      
          db $2C, $CD, $24, $41         ; data? ,, CD, $, A                       
          db $C1, $A6, $20, $D7         ; data? C1, A6, " ", D7                   
          db $02, $88, $5C, $81         ; data? 02, 88, \, 81                     
; 
L157D: 
          brclr 3,STACK_0d6,L057C       ; Branch to 0x057C if Bit 3 Clear (Mn = 0)
          bclr 3,STACK_0d6              ; Clear bit 3 at STACK_0d6                
          bset 6,RAM1_0ba               ; Set Bit 6 at memory RAM1_0ba (Mn <- 1 ) 
          ldx RAM2_0271                 ; Load Index Register with Memory Byte, X <- (RAM2_0271)
          stx RAM1_05b                  ; Store Index Register In Memory at RAM1_05b
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
cpx #$0C 
          bcc L059C                     ; Branch to 0x059C if C bit is cleared    
          ldx X155D,x                   ; Load Index Register with Memory Byte, X <- (0x155D)
          lda RAM2_0272                 ; Load Accumulator with value of Memory at RAM2_0272, A <- (RAM2_0272)
          jmp L1599,x ;INFO: index jump ; Unconditional Jump to 0x1599            
; 
L1599: 
          db $CC, $16, $C2, $CC         ; data? CC, 16, C2, CC                    
          db $16, $BF, $1C, $BB         ; data? 16, BF, 1C, BB                    
          db $14, $BF, $C1, $02         ; data? 14, BF, C1, 02                    
          db $73, $25, $02, $15         ; data? s, %, 02, 15                      
          db $BF, $09, $CE, $EF         ; data? BF, 09, CE, EF                    
          db $5F, $C6, $02, $74         ; data? _, C6, 02, t                      
          db $AD, $BF, $AD, $C1         ; data? AD, BF, AD, C1                    
          db $C6, $02, $73, $CD         ; data? C6, 02, s, CD                     
          db $15, $72, $AD, $B9         ; data? 15, r, AD, B9                     
          db $00, $BB, $40, $AD         ; data? 00, BB, @, AD                     
          db $B4, $A3, $08, $26         ; data? B4, A3, 08, &                     
          db $FA, $20, $38, $03         ; data? FA, " ", 8, 03                    
          db $5B, $37, $C6, $02         ; data? [, 7, C6, 02                      
          db $74, $2B, $13, $B8         ; data? t, +, 13, B8                      
          db $C5, $A4, $1F, $26         ; data? C5, A4, 1F, &                     
          db $03, $0E, $C5, $0A         ; data? 03, 0E, C5, 0A                    
          db $B8, $C5, $B7, $C5         ; data? B8, C5, B7, C5                    
          db $1A, $C5, $1C, $C5         ; data? 1A, C5, 1C, C5                    
          db $1E, $C5, $09, $CE         ; data? 1E, C5, 09, CE                    
          db $1A, $0C, $BB, $07         ; data? 1A, 0C, BB, 07                    
          db $5F, $AD, $8A, $A3         ; data? _, AD, 8A, A3                     
          db $04, $26, $FA, $10         ; data? 04, &, FA, 10                     
          db $BB, $AE, $04, $C6         ; data? BB, AE, 04, C6                    
          db $02, $73, $CD, $15         ; data? 02, s, CD, 15                     
          db $69, $C6, $02, $72         ; data? i, C6, 02, r                      
          db $CD, $15, $69, $1C         ; data? CD, 15, i, 1C                     
          db $CB, $CC, $16, $BF         ; data? CB, CC, 16, BF                    
          db $BE, $5B, $A3, $08         ; data? BE, [, A3, 08                     
          db $27, $0D, $A3, $0B         ; data? ', 0D, A3, 0B                     
          db $26, $F3, $0D, $CE         ; data? &, F3, 0D, CE                     
          db $03, $CD, $1E, $5C         ; data? 03, CD, 1E, \                     
          db $C6, $02, $75, $1B         ; data? C6, 02, u, 1B                     
          db $BA, $1D, $BA, $4D         ; data? BA, 1D, BA, M                     
          db $2A, $02, $1C, $BA         ; data? *, 02, 1C, BA                     
          db $17, $BA, $A5, $40         ; data? 17, BA, A5, @                     
          db $27, $14, $16, $BA         ; data? ', 14, 16, BA                     
          db $A5, $20, $27, $0E         ; data? A5, " ", ', 0E                    
          db $97, $B6, $B8, $A4         ; data? 97, B6, B8, A4                    
          db $0F, $AA, $80, $B7         ; data? 0F, AA, 80, B7                    
          db $B4, $A6, $CA, $B7         ; data? B4, A6, CA, B7                    
          db $B3, $9F, $CD, $25         ; data? B3, 9F, CD, %                     
          db $25, $B8, $B9, $A4         ; data? %, B8, B9, A4                     
          db $07, $20, $65, $19         ; data? 07, " ", e, 19                    
          db $BB, $05, $5B, $B9         ; data? BB, 05, [, B9                     
          db $AE, $07, $BF, $56         ; data? AE, 07, BF, V                     
          db $A6, $07, $B0, $56         ; data? A6, 07, B0, V                     
          db $97, $D6, $02, $72         ; data? 97, D6, 02, r                     
          db $BE, $56, $D7, $02         ; data? BE, V, D7, 02                     
          db $80, $3A, $56, $2A         ; data? 80, :, V, *                       
          db $EF, $18, $BB, $14         ; data? EF, 18, BB, 14                    
          db $94, $1A, $BB, $20         ; data? 94, 1A, BB, " "                   
          db $9A, $13, $BB, $A5         ; data? 9A, 13, BB, A5                    
          db $10, $27, $02, $12         ; data? 10, ', 02, 12                     
          db $BB, $A4, $87, $2A         ; data? BB, A4, 87, *                     
          db $0C, $AA, $10, $0E         ; data? 0C, AA, 10, 0E                    
          db $B9, $0E, $19, $BB         ; data? B9, 0E, 19, BB                    
          db $CD, $17, $4C, $20         ; data? CD, 17, L, " "                    
          db $05, $0F, $B9, $04         ; data? 05, 0F, B9, 04                    
          db $1F, $BA, $1E, $CB         ; data? 1F, BA, 1E, CB                    
          db $CD, $25, $2D, $B8         ; data? CD, %, -, B8                      
          db $B9, $A4, $B8, $20         ; data? B9, A4, B8, " "                   
          db $1B, $00, $BF, $16         ; data? 1B, 00, BF, 16                    
          db $C6, $02, $71, $A4         ; data? C6, 02, q, A4                     
          db $03, $97, $D6, $02         ; data? 03, 97, D6, 02                    
          db $72, $B7, $56, $A4         ; data? r, B7, V, A4                      
          db $07, $97, $DE, $17         ; data? 07, 97, DE, 17                    
          db $20, $1F, $BA, $DD         ; data? " ", 1F, BA, DD                   
          db $17, $26, $20, $16         ; data? 17, &, " ", 16                    
          db $1A, $CB, $27, $12         ; data? 1A, CB, ', 12                     
          db $B8, $B9, $B7, $B9         ; data? B8, B9, B7, B9                    
          db $04, $B8, $0B, $07         ; data? 04, B8, 0B, 07                    
          db $B9, $08, $AE, $B2         ; data? B9, 08, AE, B2                    
          db $CD, $37, $C7, $CD         ; data? CD, 7, C7, CD                     
          db $1D, $EE, $1C, $D6         ; data? 1D, EE, 1C, D6                    
          db $81, $00, $BF, $E2         ; data? 81, 00, BF, E2                    
          db $C6, $02, $73, $06         ; data? C6, 02, s, 06                     
          db $B6, $04, $A1, $FF         ; data? B6, 04, A1, FF                    
          db $27, $40, $B7, $B7         ; data? ', @, B7, B7                      
          db $B6, $B6, $A4, $07         ; data? B6, B6, A4, 07                    
          db $A1, $04, $26, $0B         ; data? A1, 04, &, 0B                     
          db $CD, $1E, $35, $B8         ; data? CD, 1E, 5, B8                     
          db $C0, $A4, $03, $27         ; data? C0, A4, 03, '                     
          db $02, $14, $C0, $C6         ; data? 02, 14, C0, C6                    
          db $02, $72, $2B, $0A         ; data? 02, r, +, 0A                      
          db $0D, $B9, $0E, $19         ; data? 0D, B9, 0E, 19                    
          db $BB, $CD, $1E, $28         ; data? BB, CD, 1E, (                     
          db $20, $05, $0C, $B9         ; data? " ", 05, 0C, B9                   
          db $04, $1C, $B9, $1A         ; data? 04, 1C, B9, 1A                    
          db $CB, $0B, $B6, $17         ; data? CB, 0B, B6, 17                    
          db $B6, $B7, $BE, $C2         ; data? B6, B7, BE, C2                    
          db $5C, $27, $0E, $0F         ; data? \, ', 0E, 0F                      
          db $C1, $0D, $B1, $C2         ; data? C1, 0D, B1, C2                    
          db $26, $09, $1B, $B6         ; data? &, 09, 1B, B6                     
          db $20, $05, $16, $BB         ; data? " ", 05, 16, BB                   
          db $C1, $B7, $C2, $B6         ; data? C1, B7, C2, B6                    
          db $C3, $A1, $40, $27         ; data? C3, A1, @, '                      
          db $04, $1A, $BB, $1C         ; data? 04, 1A, BB, 1C                    
          db $CB, $20, $87, $C2         ; data? CB, " ", 87, C2                   
          db $27, $44, $44, $00         ; data? ', D, D, 00                       
          db $26, $0F, $61, $02         ; data? &, 0F, a, 02                      
          db $1F, $61, $09, $B6         ; data? 1F, a, 09, B6                     
          db $0B, $0E, $B6, $4C         ; data? 0B, 0E, B6, L                     
          db $B6, $C1, $A4, $07         ; data? B6, C1, A4, 07                    
          db $A1, $02, $27, $46         ; data? A1, 02, ', F                      
          db $0A, $BC, $09, $0C         ; data? 0A, BC, 09, 0C                    
          db $BC, $06, $B6, $B8         ; data? BC, 06, B6, B8                    
          db $A4, $70, $26, $04         ; data? A4, p, &, 04                      
          db $AD, $38, $1E, $BB         ; data? AD, 8, 1E, BB                     
          db $0E, $56, $00, $81         ; data? 0E, V, 00, 81                     
          db $0F, $56, $17, $18         ; data? 0F, V, 17, 18                     
          db $B8, $04, $B8, $0D         ; data? B8, 04, B8, 0D                    
          db $11, $B8, $A6, $FF         ; data? 11, B8, A6, FF                    
          db $AE, $BC, $CD, $37         ; data? AE, BC, CD, 7                     
          db $9B, $5C, $CD, $37         ; data? 9B, \, CD, 7                      
          db $9B, $A6, $80, $B7         ; data? 9B, A6, 80, B7                    
          db $B3, $81, $CC, $1D         ; data? B3, 81, CC, 1D                    
          db $33, $17, $BF, $0F         ; data? 3, 17, BF, 0F                     
          db $56, $78, $CD, $1C         ; data? V, x, CD, 1C                      
          db $25, $14, $7E, $B6         ; data? %, 14, ~, B6                      
          db $B8, $B7, $BD, $14         ; data? B8, B7, BD, 14                    
          db $BB, $1D, $BC, $81         ; data? BB, 1D, BC, 81                    
          db $19, $BB, $0C, $56         ; data? 19, BB, 0C, V                     
          db $0C, $1D, $BC, $15         ; data? 0C, 1D, BC, 15                    
          db $BB, $1D, $B8, $1B         ; data? BB, 1D, B8, 1B                    
          db $B8, $19, $B8, $20         ; data? B8, 19, B8, " "                   
          db $57, $B6, $B8, $0C         ; data? W, B6, B8, 0C                     
          db $BC, $04, $A5, $70         ; data? BC, 04, A5, p                     
          db $26, $50, $A4, $0C         ; data? &, P, A4, 0C                      
          db $B7, $BD, $C6, $02         ; data? B7, BD, C6, 02                    
          db $72, $A0, $06, $27         ; data? r, A0, 06, '                      
          db $09, $2B, $05, $4A         ; data? 09, +, 05, J                      
          db $3C, $BD, $20, $F5         ; data? <, BD, " ", F5                    
          db $AB, $07, $CD, $25         ; data? AB, 07, CD, %                     
          db $2C, $BB, $BD, $B7         ; data? ,, BB, BD, B7                     
          db $BD, $05, $B8, $09         ; data? BD, 05, B8, 09                    
          db $CD, $25, $2D, $B8         ; data? CD, %, -, B8                      
          db $B8, $A4, $08, $20         ; data? B8, A4, 08, " "                   
          db $0B, $0B, $69, $04         ; data? 0B, 0B, i, 04                     
          db $A5, $01, $26, $12         ; data? A5, 01, &, 12                     
          db $B8, $B8, $A4, $03         ; data? B8, B8, A4, 03                    
          db $27, $10, $0D, $BC         ; data? ', 10, 0D, BC                     
          db $06, $1D, $B8, $1B         ; data? 06, 1D, B8, 1B                    
          db $B8, $19, $B8, $0A         ; data? B8, 19, B8, 0A                    
          db $BC, $A1, $0C, $BC         ; data? BC, A1, 0C, BC                    
          db $AA, $81, $1A, $BB         ; data? AA, 81, 1A, BB                    
          db $B6, $BD, $B7, $B8         ; data? B6, BD, B7, B8                    
          db $1C, $BC, $15, $BB         ; data? 1C, BC, 15, BB                    
          db $1E, $CB, $81, $0D         ; data? 1E, CB, 81, 0D                    
          db $D2, $03, $CC, $17         ; data? D2, 03, CC, 17                    
          db $4D, $0F, $56, $2A         ; data? M, 0F, V, *                       
          db $15, $C0, $CD, $1D         ; data? 15, C0, CD, 1D                    
          db $EB, $AD, $87, $0A         ; data? EB, AD, 87, 0A                    
          db $B6, $1A, $0D, $BF         ; data? B6, 1A, 0D, BF                    
          db $10, $02, $BA, $04         ; data? 10, 02, BA, 04                    
          db $12, $BA, $16, $BC         ; data? 12, BA, 16, BC                    
          db $A6, $E3, $08, $C1         ; data? A6, E3, 08, C1                    
          db $06, $AE, $01, $20         ; data? 06, AE, 01, " "                   
          db $04, $A6, $60, $AE         ; data? 04, A6, `, AE                     
          db $28, $CC, $1C, $2D         ; data? (, CC, 1C, -                      
          db $05, $C1, $F6, $1A         ; data? 05, C1, F6, 1A                    
          db $C1, $81, $0B, $B6         ; data? C1, 81, 0B, B6                    
          db $05, $CD, $1D, $33         ; data? 05, CD, 1D, 3                     
          db $20, $1A, $B6, $B6         ; data? " ", 1A, B6, B6                   
          db $A4, $07, $A1, $05         ; data? A4, 07, A1, 05                    
          db $27, $0B, $A1, $04         ; data? ', 0B, A1, 04                     
          db $26, $0E, $0D, $B5         ; data? &, 0E, 0D, B5                     
          db $0B, $3F, $C2, $10         ; data? 0B, 3F, C2, 10                    
          db $B6, $34, $C2, $26         ; data? B6, 4, C2, &                      
          db $03, $CD, $1C, $F4         ; data? 03, CD, 1C, F4                    
          db $1E, $BA, $B6, $B6         ; data? 1E, BA, B6, B6                    
          db $AA, $D0, $A5, $20         ; data? AA, D0, A5, " "                   
          db $27, $02, $A4, $A7         ; data? ', 02, A4, A7                     
          db $B7, $B3, $81, $B6         ; data? B7, B3, 81, B6                    
          db $B3, $A5, $0F, $27         ; data? B3, A5, 0F, '                     
          db $72, $A4, $07, $97         ; data? r, A4, 07, 97                     
          db $4F, $99, $49, $5A         ; data? O, 99, I, Z                       
          db $2A, $FC, $B7, $56         ; data? *, FC, B7, V                      
          db $AE, $B5, $07, $B3         ; data? AE, B5, 07, B3                    
          db $02, $AE, $BC, $0D         ; data? 02, AE, BC, 0D                    
          db $B3, $09, $0A, $B3         ; data? B3, 09, 0A, B3                    
          db $04, $43, $F4, $20         ; data? 04, C, F4, " "                    
          db $03, $F8, $B1, $FA         ; data? 03, F8, B1, FA                    
          db $06, $B3, $09, $03         ; data? 06, B3, 09, 03                    
          db $56, $06, $A5, $02         ; data? V, 06, A5, 02                     
          db $27, $02, $AA, $0C         ; data? ', 02, AA, 0C                     
          db $07, $8E, $0F, $09         ; data? 07, 8E, 0F, 09                    
          db $56, $06, $A5, $10         ; data? V, 06, A5, 10                     
          db $27, $02, $AA, $08         ; data? ', 02, AA, 08                     
          db $A5, $08, $26, $02         ; data? A5, 08, &, 02                     
          db $A4, $AF, $F7, $AE         ; data? A4, AF, F7, AE                    
          db $F3, $06, $B3, $46         ; data? F3, 06, B3, F                     
          db $A4, $62, $AE, $B0         ; data? A4, b, AE, B0                     
          db $CD, $37, $9B, $1A         ; data? CD, 7, 9B, 1A                     
          db $CB, $0A, $56, $06         ; data? CB, 0A, V, 06                     
          db $0D, $56, $51, $04         ; data? 0D, V, Q, 04                      
          db $B8, $0C, $B6, $B6         ; data? B8, 0C, B6, B6                    
          db $A4, $17, $A1, $04         ; data? A4, 17, A1, 04                    
          db $26, $04, $AD, $8C         ; data? &, 04, AD, 8C                     
          db $20, $4C, $0D, $56         ; data? " ", L, 0D, V                     
          db $3F, $AE, $10, $A1         ; data? 3F, AE, 10, A1                    
          db $05, $27, $3E, $0C         ; data? 05, ', >, 0C                      
          db $59, $07, $AE, $F1         ; data? Y, 07, AE, F1                     
          db $0C, $B9, $36, $20         ; data? 0C, B9, 6, " "                    
          db $2F, $18, $C0, $17         ; data? /, 18, C0, 17                     
          db $C0, $05                   ; data? C0, 05                            
X18CB: 
          db $B8, $11, $16, $C0         ; data? B8, 11, 16, C0                    
          db $AE, $B2, $CD, $37         ; data? AE, B2, CD, 7                     
          db $C7, $B7, $B8, $1B         ; data? C7, B7, B8, 1B                    
          db $BB, $CC, $17, $62         ; data? BB, CC, 17, b                     
          db $CC, $1A, $4E, $0C         ; data? CC, 1A, N, 0C                     
          db $C1, $14, $CD, $1E         ; data? C1, 14, CD, 1E                    
          db $12, $26, $0F, $A6         ; data? 12, &, 0F, A6                     
          db $01, $B7, $C3, $B6         ; data? 01, B7, C3, B6                    
          db $C1, $A1, $95, $27         ; data? C1, A1, 95, '                     
          db $05, $A6, $86, $CD         ; data? 05, A6, 86, CD                    
          db $1C, $2B, $B6, $B3         ; data? 1C, +, B6, B3                     
          db $A4, $10, $97, $BF         ; data? A4, 10, 97, BF                    
          db $B3, $16, $BC, $81         ; data? B3, 16, BC, 81                    
          db $A6, $C8, $0C, $5F         ; data? A6, C8, 0C, _                     
          db $27, $CD, $1E, $03         ; data? ', CD, 1E, 03                     
          db $0E, $61, $30, $03         ; data? 0E, a, 0, 03                      
          db $BA, $02, $A4, $BF         ; data? BA, 02, A4, BF                    
          db $AA, $08, $AA, $04         ; data? AA, 08, AA, 04                    
          db $A4, $4E, $0F, $B5         ; data? A4, N, 0F, B5                     
          db $05, $06, $B5, $02         ; data? 05, 06, B5, 02                    
          db $A4, $4A, $0D, $CE         ; data? A4, J, 0D, CE                     
          db $02, $AA, $30, $08         ; data? 02, AA, 0, 08                     
          db $CE, $03, $07, $CE         ; data? CE, 03, 07, CE                    
          db $02, $AA, $10, $4C         ; data? 02, AA, 10, L                     
          db $A5, $04, $27, $0D         ; data? A5, 04, ', 0D                     
          db $06, $5D, $03, $07         ; data? 06, ], 03, 07                     
          db $BF, $02, $A4, $F3         ; data? BF, 02, A4, F3                    
          db $0F, $BF, $02, $A4         ; data? 0F, BF, 02, A4                    
          db $FB, $AE, $01, $07         ; data? FB, AE, 01, 07                    
          db $8E, $06, $AA, $02         ; data? 8E, 06, AA, 02                    
          db $A4, $BB, $AE, $09         ; data? A4, BB, AE, 09                    
          db $01, $61, $0F, $03         ; data? 01, a, 0F, 03                     
          db $82, $07, $00, $82         ; data? 82, 07, 00, 82                    
          db $04, $AA, $80, $20         ; data? 04, AA, 80, " "                   
          db $05, $09, $69, $02         ; data? 05, 09, i, 02                     
          db $AA, $40, $C7, $02         ; data? AA, @, C7, 02                     
          db $7C, $9F, $0D, $5F         ; data? |, 9F, 0D, _                      
          db $02, $AA, $40, $13         ; data? 02, AA, @, 13                     
          db $BC, $AA, $80, $09         ; data? BC, AA, 80, 09                    
          db $BF, $07, $0E, $B5         ; data? BF, 07, 0E, B5                    
          db $04, $12, $BC, $A4         ; data? 04, 12, BC, A4                    
          db $7F, $C7, $02, $7D         ; data? DEL, C7, 02, }                    
          db $A6, $20, $05, $B8         ; data? A6, " ", 05, B8                   
          db $05, $0C, $5F, $02         ; data? 05, 0C, _, 02                     
          db $A6, $02, $AA, $10         ; data? A6, 02, AA, 10                    
          db $14, $B5, $97, $17         ; data? 14, B5, 97, 17                    
          db $BC, $A6, $0A, $CC         ; data? BC, A6, 0A, CC                    
          db $1A, $21, $7B, $78         ; data? 1A, !, {, x                       
          db $00, $5B, $D9, $BE         ; data? 00, [, D9, BE                     
          db $CD, $F2, $17, $5D         ; data? CD, F2, 17, ]                     
          db $B6, $B8, $A4, $74         ; data? B6, B8, A4, t                     
          db $A1, $60, $27, $3C         ; data? A1, `, ', <                       
          db $AE, $02, $A1, $10         ; data? AE, 02, A1, 10                    
          db $26, $04, $16, $BF         ; data? &, 04, 16, BF                     
          db $20, $2E, $AE, $83         ; data? " ", ., AE, 83                    
          db $A1, $50, $27, $28         ; data? A1, P, ', (                       
          db $5F, $05, $B8, $05         ; data? _, 05, B8, 05                     
          db $07, $B8, $07, $20         ; data? 07, B8, 07, " "                   
          db $03, $03, $B8, $02         ; data? 03, 03, B8, 02                    
          db $AE, $04, $A4, $70         ; data? AE, 04, A4, p                     
          db $A1, $20, $27, $0E         ; data? A1, " ", ', 0E                    
          db $04, $B8, $0A, $5C         ; data? 04, B8, 0A, \                     
          db $A1, $30, $27, $06         ; data? A1, 0, ', 06                      
          db $5C, $A1, $40, $27         ; data? \, A1, @, '                       
          db $01, $81, $58, $58         ; data? 01, 81, X, X                      
          db $99, $59, $99, $59         ; data? 99, Y, 99, Y                      
          db $A6, $18, $20, $4A         ; data? A6, 18, " ", J                    
          db $B6, $88, $44, $B7         ; data? B6, 88, D, B7                     
          db $56, $B6, $83, $48         ; data? V, B6, 83, H                      
          db $BB, $56, $AE, $70         ; data? BB, V, AE, p                      
          db $CD, $37, $86, $CC         ; data? CD, 7, 86, CC                     
          db $17, $6F, $07, $B3         ; data? 17, o, 07, B3                     
          db $A5, $3F, $B6, $0D         ; data? A5, 3F, B6, 0D                    
          db $B3, $0F, $0B, $B3         ; data? B3, 0F, 0B, B3                    
          db $06, $AE, $09, $3F         ; data? 06, AE, 09, 3F                    
          db $B3, $20, $24, $AE         ; data? B3, " ", $, AE                    
          db $EA, $BF, $B3, $20         ; data? EA, BF, B3, " "                   
          db $19, $1B, $BC, $1D         ; data? 19, 1B, BC, 1D                    
          db $BC, $16, $94, $CD         ; data? BC, 16, 94, CD                    
          db $1D, $9B, $AA, $80         ; data? 1D, 9B, AA, 80                    
          db $06, $B5, $04, $43         ; data? 06, B5, 04, C                     
          db $B4, $56, $C1, $BA         ; data? B4, V, C1, BA                     
          db $56, $BE, $57, $CD         ; data? V, BE, W, CD                      
          db $37, $9B, $CD, $1D         ; data? 7, 9B, CD, 1D                     
          db $D2, $AE, $89, $CD         ; data? D2, AE, 89, CD                    
          db $1D, $AF, $B7, $50         ; data? 1D, AF, B7, P                     
          db $BF, $51, $0F, $D6         ; data? BF, Q, 0F, D6                     
          db $0D, $CD, $07, $89         ; data? 0D, CD, 07, 89                    
          db $07, $67, $F7, $17         ; data? 07, g, F7, 17                     
          db $67, $CD, $36, $AE         ; data? g, CD, 6, AE                      
          db $20, $F0, $B6, $50         ; data? " ", F0, B6, P                    
          db $BE, $51, $C7, $02         ; data? BE, Q, C7, 02                     
          db $7A, $CF, $02, $7B         ; data? z, CF, 02, {                      
          db $1E, $D6, $3F, $D9         ; data? 1E, D6, 3F, D9                    
          db $81, $07, $B3, $07         ; data? 81, 07, B3, 07                    
          db $0E, $BA, $82, $AE         ; data? 0E, BA, 82, AE                    
          db $0A, $20, $85              ; data? 0A, " ", 85                       
; 
L1A4E: 
          brset 3,RAM1_0bf,L0243        ; Branch to 0x0243 if Bit 3 is set at RAM1_0bf (Mn=1)
          bset 0,RAM1_0bc               ; Set Bit 0 at memory RAM1_0bc (Mn <- 1 ) 
          brset 6,STACK_0d3,L0258       ; Branch to 0x0258 if Bit 6 is set at STACK_0d3 (Mn=1)
          bclr 0,RAM1_0bc               ; Clear bit 0 at RAM1_0bc                 
          lda RAM1_0bc                  ; Load Accumulator with value of Memory at RAM1_0bc, A <- (RAM1_0bc)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda #$20                      ; Load Accumulator with 0x20, A <- 0x20   
          bra L0221                     ; Branch Always (1 = 1)                   
; 
          db $CC, $1B, $2A, $17         ; data? CC, 1B, *, 17                     
          db $BF, $1B, $BB, $19         ; data? BF, 1B, BB, 19                    
          db $BB, $07, $B3, $16         ; data? BB, 07, B3, 16                    
          db $AE, $B1, $CD, $37         ; data? AE, B1, CD, 7                     
          db $C7, $0B, $B6, $07         ; data? C7, 0B, B6, 07                    
          db $A5, $70, $26, $05         ; data? A5, p, &, 05                      
          db $CC, $1D, $4E, $AA         ; data? CC, 1D, N, AA                     
          db $70, $B7, $B8, $04         ; data? p, B7, B8, 04                     
          db $B8, $00, $1F, $BF         ; data? B8, 00, 1F, BF                    
          db $B6, $B8, $A4, $70         ; data? B6, B8, A4, p                     
          db $A1, $70, $26, $03         ; data? A1, p, &, 03                      
          db $CD, $1D, $73, $CD         ; data? CD, 1D, s, CD                     
          db $1D, $9B, $10, $56         ; data? 1D, 9B, 10, V                     
          db $B4, $56, $16, $B5         ; data? B4, V, 16, B5                     
          db $26, $04, $17, $B5         ; data? &, 04, 17, B5                     
          db $19, $B5, $16, $BC         ; data? 19, B5, 16, BC                    
          db $13, $BA, $12, $BF         ; data? 13, BA, 12, BF                    
          db $10, $BF, $A6, $40         ; data? 10, BF, A6, @                     
          db $AE, $0C, $0D, $5F         ; data? AE, 0C, 0D, _                     
          db $02, $AE, $01, $CD         ; data? 02, AE, 01, CD                    
          db $1E, $26, $CC, $1C         ; data? 1E, &, CC, 1C                     
          db $2D, $04, $B8, $05         ; data? -, 04, B8, 05                     
          db $12, $B8, $11, $B8         ; data? 12, B8, 11, B8                    
          db $C1, $16, $B8, $20         ; data? C1, 16, B8, " "                   
          db $DD, $0A, $B3, $79         ; data? DD, 0A, B3, y                     
          db $07, $BF, $04, $10         ; data? 07, BF, 04, 10                    
          db $B3, $12, $B3, $0C         ; data? B3, 12, B3, 0C                    
          db $B3, $0C, $09, $B3         ; data? B3, 0C, 09, B3                    
          db $46, $03, $BA, $40         ; data? F, 03, BA, @                      
          db $13, $BA, $16, $BC         ; data? 13, BA, 16, BC                    
          db $20, $3A, $0D, $B3         ; data? " ", :, 0D, B3                    
          db $08, $09, $B3, $05         ; data? 08, 09, B3, 05                    
          db $19, $B3, $1D, $BF         ; data? 19, B3, 1D, BF                    
          db $C1, $1C, $BF, $1D         ; data? C1, 1C, BF, 1D                    
          db $B3, $B6, $B6, $A4         ; data? B3, B6, B6, A4                    
          db $07, $A1, $06, $26         ; data? 07, A1, 06, &                     
          db $0B, $AE, $B1, $CD         ; data? 0B, AE, B1, CD                    
          db $37, $C7, $B7, $B8         ; data? 7, C7, B7, B8                     
          db $1F, $BF, $20, $15         ; data? 1F, BF, " ", 15                   
          db $A1, $04, $26, $11         ; data? A1, 04, &, 11                     
          db $08, $B3, $0E, $B6         ; data? 08, B3, 0E, B6                    
          db $B6, $B8, $B3, $A5         ; data? B6, B8, B3, A5                    
          db $08, $27, $06, $CD         ; data? 08, ', 06, CD                     
          db $1A, $A7, $CC, $1A         ; data? 1A, A7, CC, 1A                    
          db $19, $09, $B3, $03         ; data? 19, 09, B3, 03                    
          db $1D, $BF, $81, $0E         ; data? 1D, BF, 81, 0E                    
          db $BF, $8C, $06, $BF         ; data? BF, 8C, 06, BF                    
          db $89, $1E, $BF, $CD         ; data? 89, 1E, BF, CD                    
          db $1A, $8D, $A6, $48         ; data? 1A, 8D, A6, H                     
          db $20, $82, $CC, $1A         ; data? " ", 82, CC, 1A                   
          db $A7, $07, $B3, $05         ; data? A7, 07, B3, 05                    
          db $1E, $BF, $CC, $1A         ; data? 1E, BF, CC, 1A                    
          db $9F, $0D, $B9, $E2         ; data? 9F, 0D, B9, E2                    
          db $CD, $1E, $2A, $A6         ; data? CD, 1E, *, A6                     
          db $48, $5F, $CC, $1A         ; data? H, _, CC, 1A                      
          db $21, $1D, $BF, $08         ; data? !, 1D, BF, 08                     
          db $B3, $0B, $0A, $B6         ; data? B3, 0B, 0A, B6                    
          db $E1, $AD, $2A, $A6         ; data? E1, AD, *, A6                     
          db $FF, $B7, $C2, $20         ; data? FF, B7, C2, " "                   
          db $D0, $B6, $BD, $B8         ; data? D0, B6, BD, B8                    
          db $B8, $A4, $07, $26         ; data? B8, A4, 07, &                     
          db $04, $B6, $BD, $B7         ; data? 04, B6, BD, B7                    
          db $B8, $3F, $C3, $CD         ; data? B8, 3F, C3, CD                    
          db $1E, $1D, $B6, $C1         ; data? 1E, 1D, B6, C1                    
          db $A1, $95, $26, $07         ; data? A1, 95, &, 07                     
          db $3F, $C1, $16, $BC         ; data? 3F, C1, 16, BC                    
          db $CC, $1D, $D2, $CD         ; data? CC, 1D, D2, CD                    
          db $17, $62, $CC, $1A         ; data? 17, b, CC, 1A                     
          db $83, $B6, $B8, $B7         ; data? 83, B6, B8, B7                    
          db $BD, $BE, $C1, $CC         ; data? BD, BE, C1, CC                    
          db $1D, $E1, $A6, $64         ; data? 1D, E1, A6, d                     
          db $C7, $02, $7C, $A6         ; data? C7, 02, |, A6                     
          db $19, $1D, $B8, $1B         ; data? 19, 1D, B8, 1B                    
          db $B8, $19, $B8, $1A         ; data? B8, 19, B8, 1A                    
          db $BC, $16, $B5, $17         ; data? BC, 16, B5, 17                    
          db $BB, $01, $B6, $06         ; data? BB, 01, B6, 06                    
          db $02, $B6, $03, $04         ; data? 02, B6, 03, 04                    
          db $B6, $02, $15, $BA         ; data? B6, 02, 15, BA                    
          db $05, $C0, $03, $15         ; data? 05, C0, 03, 15                    
          db $C0, $C1, $3F, $BB         ; data? C0, C1, 3F, BB                    
          db $3F, $C5, $CD, $1E         ; data? 3F, C5, CD, 1E                    
          db $26, $1E, $BA, $1E         ; data? &, 1E, BA, 1E                     
          db $CB, $1D, $BC, $06         ; data? CB, 1D, BC, 06                    
          db $C0, $02, $19, $C0         ; data? C0, 02, 19, C0                    
          db $17, $C0, $1E, $B5         ; data? 17, C0, 1E, B5                    
          db $20, $84, $A8, $11         ; data? " ", 84, A8, 11                   
          db $43, $43, $75, $44         ; data? C, C, u, D                        
          db $00, $1B, $CD, $1D         ; data? 00, 1B, CD, 1D                    
          db $2D, $AE, $C7, $06         ; data? -, AE, C7, 06                     
          db $8E, $03, $0B, $69         ; data? 8E, 03, 0B, i                     
          db $02, $AE, $E7, $1E         ; data? 02, AE, E7, 1E                    
          db $BF, $20, $AB, $BE         ; data? BF, " ", AB, BE                   
          db $B7, $4F, $C7, $02         ; data? B7, O, C7, 02                     
          db $7C, $A6, $11, $20         ; data? |, A6, 11, " "                    
          db $B4, $06, $C1, $19         ; data? B4, 06, C1, 19                    
          db $AE, $50, $10, $5B         ; data? AE, P, 10, [                      
          db $C1, $11, $5B, $A6         ; data? C1, 11, [, A6                     
          db $C1, $AD, $45, $AE         ; data? C1, AD, E, AE                     
          db $86, $07, $B6, $02         ; data? 86, 07, B6, 02                    
          db $AE, $06, $A6, $18         ; data? AE, 06, A6, 18                    
          db $01, $5B, $A5, $20         ; data? 01, [, A5, " "                    
          db $8C, $A6, $40, $AE         ; data? 8C, A6, @, AE                     
          db $02, $AD, $31, $CD         ; data? 02, AD, 1, CD                     
          db $1D, $73, $CC, $1C         ; data? 1D, s, CC, 1C                     
          db $A0, $81, $0A, $C1         ; data? A0, 81, 0A, C1                    
          db $19, $1E, $BF, $CD         ; data? 19, 1E, BF, CD                    
          db $1D, $2D, $AE, $A0         ; data? 1D, -, AE, A0                     
          db $04, $C2, $07, $A6         ; data? 04, C2, 07, A6                    
          db $6C, $02, $C2, $04         ; data? l, 02, C2, 04                     
          db $AE, $20, $A6, $64         ; data? AE, " ", A6, d                    
          db $CC, $1B, $7D, $CC         ; data? CC, 1B, }, CC                     
          db $1C, $BA, $0A, $B6         ; data? 1C, BA, 0A, B6                    
          db $FA, $CD, $1E, $1D         ; data? FA, CD, 1E, 1D                    
          db $A6, $92, $AE, $10         ; data? A6, 92, AE, 10                    
          db $20, $02, $AE, $C8         ; data? " ", 02, AE, C8                   
          db $B7, $C1, $BF, $C3         ; data? B7, C1, BF, C3                    
          db $CC, $14, $30, $06         ; data? CC, 14, 0, 06                     
          db $C1, $BF, $0A, $C1         ; data? C1, BF, 0A, C1                    
          db $E5, $A6, $C4, $AE         ; data? E5, A6, C4, AE                    
          db $64, $0A, $B6, $04         ; data? d, 0A, B6, 04                     
          db $A6, $D3, $AE, $FF         ; data? A6, D3, AE, FF                    
          db $AD, $E6, $1B, $B5         ; data? AD, E6, 1B, B5                    
          db $06, $CE, $0A, $AE         ; data? 06, CE, 0A, AE                    
          db $AC, $CD, $37, $C7         ; data? AC, CD, 7, C7                     
          db $46, $24, $02, $1A         ; data? F, $, 02, 1A                      
          db $B5, $CD, $1E, $35         ; data? B5, CD, 1E, 5                     
          db $B8, $C0, $A4, $03         ; data? B8, C0, A4, 03                    
          db $B8, $C0, $B7, $C0         ; data? B8, C0, B7, C0                    
          db $B6, $5B, $5F, $CC         ; data? B6, [, _, CC                      
          db $1B, $7D, $A6, $60         ; data? 1B, }, A6, `                      
          db $0B, $C1, $30, $AE         ; data? 0B, C1, 0, AE                     
          db $02, $0E, $B9, $05         ; data? 02, 0E, B9, 05                    
          db $0E, $BA, $B9, $1A         ; data? 0E, BA, B9, 1A                    
          db $BB, $03, $BA, $07         ; data? BB, 03, BA, 07                    
          db $13, $BA, $0D, $B5         ; data? 13, BA, 0D, B5                    
          db $02, $16, $BC, $07         ; data? 02, 16, BC, 07                    
          db $5D, $06, $17, $5D         ; data? ], 06, 17, ]                      
          db $A6, $82, $B7, $B3         ; data? A6, 82, B7, B3                    
          db $A6, $C0, $06, $BB         ; data? A6, C0, 06, BB                    
          db $9D, $CD, $1D, $D2         ; data? 9D, CD, 1D, D2                    
          db $08, $BF, $04, $AE         ; data? 08, BF, 04, AE                    
          db $2D, $20, $24, $A6         ; data? -, " ", $, A6                     
          db $C7, $20, $8F, $AE         ; data? C7, " ", 8F, AE                   
          db $1E, $AD, $8D, $CD         ; data? 1E, AD, 8D, CD                    
          db $1D, $AF, $BE, $B7         ; data? 1D, AF, BE, B7                    
          db $CF, $02, $7D, $27         ; data? CF, 02, }, '                      
          db $08, $0F, $61, $05         ; data? 08, 0F, a, 05                     
          db $AE, $29, $A6, $1A         ; data? AE, ), A6, 1A                     
          db $C1, $AE, $09, $CC         ; data? C1, AE, 09, CC                    
          db $1B, $8E, $CD, $17         ; data? 1B, 8E, CD, 17                    
          db $74, $AE, $23, $A6         ; data? t, AE, #, A6                      
          db $95, $CC, $1C, $2D         ; data? 95, CC, 1C, -                     
          db $6A, $6F, $36, $9C         ; data? j, o, 6, 9C                       
          db $5E, $47, $00, $16         ; data? ^, G, 00, 16                      
          db $A6, $86, $04, $CE         ; data? A6, 86, 04, CE                    
          db $50, $0E, $B9, $4D         ; data? P, 0E, B9, M                      
          db $CD, $1D, $F8, $27         ; data? CD, 1D, F8, '                     
          db $08, $A6, $85, $B7         ; data? 08, A6, 85, B7                    
          db $B3, $A6, $04, $B7         ; data? B3, A6, 04, B7                    
          db $C2, $81, $A6, $87         ; data? C2, 81, A6, 87                    
          db $3F, $BE, $04, $CE         ; data? 3F, BE, 04, CE                    
          db $38, $0E, $B9, $35         ; data? 8, 0E, B9, 5                      
          db $0A, $80, $DD, $B6         ; data? 0A, 80, DD, B6                    
          db $7F, $A4, $2B, $A1         ; data? DEL, A4, +, A1                    
          db $02, $26, $D5, $04         ; data? 02, &, D5, 04                     
          db $B8, $E7, $08, $C0         ; data? B8, E7, 08, C0                    
          db $CF, $14, $BA, $19         ; data? CF, 14, BA, 19                    
          db $BA, $81, $3F, $C1         ; data? BA, 81, 3F, C1                    
          db $19, $B6, $15, $BB         ; data? 19, B6, 15, BB                    
          db $A6, $87, $01, $BA         ; data? A6, 87, 01, BA                    
          db $02, $A6, $D7, $AE         ; data? 02, A6, D7, AE                    
          db $10, $20, $AE, $05         ; data? 10, " ", AE, 05                   
          db $BE, $03, $08, $BA         ; data? BE, 03, 08, BA                    
          db $0B, $0A, $B6, $0B         ; data? 0B, 0A, B6, 0B                    
          db $08, $BF, $C2, $A6         ; data? 08, BF, C2, A6                    
          db $86, $CC, $1C, $2B         ; data? 86, CC, 1C, +                     
          db $1B, $B6, $81, $CC         ; data? 1B, B6, 81, CC                    
          db $1B, $23, $0B, $C1         ; data? 1B, #, 0B, C1                     
          db $03, $CC, $18, $0E         ; data? 03, CC, 18, 0E                    
          db $A6, $D3, $AE, $FF         ; data? A6, D3, AE, FF                    
          db $20, $DB, $A6, $88         ; data? " ", DB, A6, 88                   
          db $B7, $B3, $81, $0D         ; data? B7, B3, 81, 0D                    
          db $BF, $09, $AE, $06         ; data? BF, 09, AE, 06                    
          db $05, $B8, $01, $58         ; data? 05, B8, 01, X                     
          db $CC, $1B, $E2, $0A         ; data? CC, 1B, E2, 0A                    
          db $C1, $07, $A6, $A1         ; data? C1, 07, A6, A1                    
          db $AE, $30, $CC, $1C         ; data? AE, 0, CC, 1C                     
          db $2D, $15, $BB, $B6         ; data? -, 15, BB, B6                     
          db $B8, $A4, $70, $26         ; data? B8, A4, p, &                      
          db $09, $06, $BF, $06         ; data? 09, 06, BF, 06                    
          db $0E, $B6, $03, $CD         ; data? 0E, B6, 03, CD                    
          db $1A, $00, $CD, $1D         ; data? 1A, 00, CD, 1D                    
          db $D2, $CC, $1C, $25         ; data? D2, CC, 1C, %                     
          db $0C, $BF, $06, $0B         ; data? 0C, BF, 06, 0B                    
          db $C1, $03, $CC, $18         ; data? C1, 03, CC, 18                    
          db $0E, $A6, $C3, $CC         ; data? 0E, A6, C3, CC                    
          db $1C, $43, $AD, $09         ; data? 1C, C, AD, 09                     
          db $B8, $B8, $A4, $70         ; data? B8, B8, A4, p                     
          db $B8, $B8, $B7, $B8         ; data? B8, B8, B7, B8                    
          db $81, $AD, $0D, $AB         ; data? 81, AD, 0D, AB                    
          db $B3, $CD, $37, $C6         ; data? B3, CD, 7, C6                     
          db $A4, $70, $A1, $70         ; data? A4, p, A1, p                      
          db $26, $01, $4F, $81         ; data? &, 01, O, 81                      
          db $B6, $B8, $A4, $03         ; data? B6, B8, A4, 03                    
          db $05, $B8, $06, $A6         ; data? 05, B8, 06, A6                    
          db $04, $07, $B8, $01         ; data? 04, 07, B8, 01                    
          db $4C, $81, $AD, $F0         ; data? L, 81, AD, F0                     
          db $AB, $BA, $B7, $57         ; data? AB, BA, B7, W                     
          db $CD, $37, $C6, $B7         ; data? CD, 7, C6, B7                     
          db $56, $B6, $B8, $CD         ; data? V, B6, B8, CD                     
          db $25, $25, $CD, $25         ; data? %, %, CD, %                       
          db $72, $81, $B6, $B8         ; data? r, 81, B6, B8                     
          db $48, $CD, $25, $24         ; data? H, CD, %, $                       
          db $26, $02, $A6, $07         ; data? &, 02, A6, 07                     
          db $4A, $05, $B8, $05         ; data? J, 05, B8, 05                     
          db $07, $B8, $0C, $20         ; data? 07, B8, 0C, " "                   
          db $08, $03, $B8, $02         ; data? 08, 03, B8, 02                    
          db $AB, $0E, $01, $B8         ; data? AB, 0E, 01, B8                    
          db $02, $AB, $07, $C7         ; data? 02, AB, 07, C7                    
          db $02, $7C, $A6, $19         ; data? 02, |, A6, 19                     
          db $81, $3F, $BD, $15         ; data? 81, 3F, BD, 15                    
          db $BB, $AE, $B1, $CD         ; data? BB, AE, B1, CD                    
          db $37, $C7, $B8, $B8         ; data? 7, C7, B8, B8                     
          db $A4, $0F, $27, $0A         ; data? A4, 0F, ', 0A                     
          db $AE, $B1, $CD, $37         ; data? AE, B1, CD, 7                     
          db $C7, $04, $B8, $00         ; data? C7, 04, B8, 00                    
          db $AD, $06, $CD, $1D         ; data? AD, 06, CD, 1D                    
          db $7E, $0E, $BB, $E0         ; data? ~, 0E, BB, E0                     
          db $B6, $B8, $A4, $7F         ; data? B6, B8, A4, DEL                   
          db $CC, $37, $9B              ; data? CC, 7, 9B                         
; 
L1DF8: 
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          brset 2,RAM1_0b8,L060F        ; Branch to 0x060F if Bit 2 is set at RAM1_0b8 (Mn=1)
          brset 2,RAM1_0be,L0611        ; Branch to 0x0611 if Bit 2 is set at RAM1_0be (Mn=1)
          brset 5,RAM1_0b9,L0611        ; Branch to 0x0611 if Bit 5 is set at RAM1_0b9 (Mn=1)
          lda RAM1_0b5                  ; Load Accumulator with value of Memory at RAM1_0b5, A <- (RAM1_0b5)
          and #$4E                      ; Logical AND between A and constant 0x4E, A ← (A) && (0x4E)
          brset 3,RAM1_08e,L060D        ; Branch to 0x060D if Bit 3 is set at RAM1_08e (Mn=1)
          brclr 6,RAM1_05f,L060F        ; Branch to 0x060F if Bit 6 Clear (Mn = 0)
          and #$BF                      ; Logical AND between A and constant 0xBF, A ← (A) && (0xBF)
          bit #$40                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x40)
          rts                           ; Return from Subroutine                  
; 
          db $AD, $E4, $26, $02         ; data? AD, E4, &, 02                     
          db $43, $81, $B6, $B9         ; data? C, 81, B6, B9                     
          db $A4, $38, $81, $B6         ; data? A4, 8, 81, B6                     
          db $B6, $27, $04, $3F         ; data? B6, ', 04, 3F                     
          db $B6, $1C, $CB, $81         ; data? B6, 1C, CB, 81                    
          db $3F, $B9, $1D, $B9         ; data? 3F, B9, 1D, B9                    
          db $1A, $CB, $1B, $B9         ; data? 1A, CB, 1B, B9                    
          db $19, $B9, $3F, $BE         ; data? 19, B9, 3F, BE                    
          db $19, $BA, $81, $3F         ; data? 19, BA, 81, 3F                    
          db $5B, $06, $B6, $02         ; data? [, 06, B6, 02                     
          db $1A, $5B, $0B, $B5         ; data? 1A, [, 0B, B5                     
          db $02, $14, $5B, $05         ; data? 02, 14, [, 05                     
          db $B8, $04, $1E, $5B         ; data? B8, 04, 1E, [                     
          db $20, $11, $1C, $5B         ; data? " ", 11, 1C, [                    
          db $B6, $B7, $A1, $41         ; data? B6, B7, A1, A                     
          db $22, $07, $A1, $12         ; data? ", 07, A1, 12                     
          db $25, $05, $10, $5B         ; data? %, 05, 10, [                      
          db $C1, $12, $5B, $B6         ; data? C1, 12, [, B6                     
          db $5B, $81, $5F, $C6         ; data? [, 81, _, C6                      
          db $02, $74, $AD, $17         ; data? 02, t, AD, 17                     
          db $C6, $02, $73, $AD         ; data? C6, 02, s, AD                     
          db $12, $C6, $02, $72         ; data? 12, C6, 02, r                     
          db $AD, $0D, $A6, $2E         ; data? AD, 0D, A6, .                     
          db $B7, $DE, $A6, $20         ; data? B7, DE, A6, " "                   
          db $B7, $E0, $A6, $52         ; data? B7, E0, A6, R                     
          db $B7, $E1, $81, $B7         ; data? B7, E1, 81, B7                    
          db $5B, $AD, $05, $B6         ; data? [, AD, 05, B6                     
          db $5B, $CD, $25, $2C         ; data? [, CD, %, ,                       
          db $CD, $25, $25, $AB         ; data? CD, %, %, AB                      
          db $30, $E7, $DA, $5C         ; data? 0, E7, DA, \                      
          db $81                        ; data? 81                                
; 
L1E8B: 
          rts                           ; Return from Subroutine                  
; 
L1E8C: 
          ldx #$CD                      ; Load Index Register with Memory Byte, X <- (0xCD)
          jsr L256C                     ; Jump to Subroutine at 0x256C            
          bne L06A1                     ; Branch to 0x06A1 if Not Equal (Z = 0);  
          clra                          ; Clear byte at clra <- 0x00              
          sta RAM2_0254                 ; Store Accumulator in Memory at RAM2_0254
          sta RAM2_0255                 ; Store Accumulator in Memory at RAM2_0255
          sta RAM2_0256                 ; Store Accumulator in Memory at RAM2_0256
          bset 4,RAM1_09e               ; Set Bit 4 at memory RAM1_09e (Mn <- 1 ) 
          bra L06B1                     ; Branch Always (1 = 1)                   
; 
          db $AE, $CC, $CD, $25         ; data? AE, CC, CD, %                     
          db $6C, $2A, $02, $13         ; data? l, *, 02, 13                      
          db $CB, $26, $07, $7A         ; data? CB, &, 07, z                      
          db $1B, $C5, $13, $CB         ; data? 1B, C5, 13, CB                    
          db $1E, $5D, $81              ; data? 1E, ], 81                         
; 
L1EB4: 
          brset 6,STACK_0c6,L06C9       ; Branch to 0x06C9 if Bit 6 is set at STACK_0c6 (Mn=1)
          brset 5,STACK_0c6,L06CB       ; Branch to 0x06CB if Bit 5 is set at STACK_0c6 (Mn=1)
          brclr 7,STACK_0c6,L06B3       ; Branch to 0x06B3 if Bit 7 Clear (Mn = 0)
          brset 2,STACK_0cb,L06C9       ; Branch to 0x06C9 if Bit 2 is set at STACK_0cb (Mn=1)
          lda STACK_0cc                 ; Load Accumulator with value of Memory at STACK_0cc, A <- (STACK_0cc)
          cmp #$FF                      ; Compare Accumulator with Memory Byte, (A) - (0xFF)
          beq L06C9                     ; Branch to 0x06C9 if Equal Z=1           
          bclr 7,STACK_0c6              ; Clear bit 7 at STACK_0c6                
          rts                           ; Return from Subroutine                  
; 
          db $1E, $50, $B6, $9E         ; data? 1E, P, B6, 9E                     
          db $A4, $F0, $26, $73         ; data? A4, F0, &, s                      
          db $B6, $C6, $A4, $1F         ; data? B6, C6, A4, 1F                    
          db $48, $B7, $56, $48         ; data? H, B7, V, H                       
          db $BB, $56, $A1, $BA         ; data? BB, V, A1, BA                     
          db $26, $02, $A6, $FF         ; data? &, 02, A6, FF                     
          db $0B, $C6, $07, $18         ; data? 0B, C6, 07, 18                    
          db $9E, $1A, $9E, $1B         ; data? 9E, 1A, 9E, 1B                    
          db $C6, $81, $4D, $2B         ; data? C6, 81, M, +                      
          db $02, $26, $05, $02         ; data? 02, &, 05, 02                     
          db $CB, $51, $27, $02         ; data? CB, Q, ', 02                      
          db $B7, $CC, $3F, $C6         ; data? B7, CC, 3F, C6                    
          db $B6, $C7, $2A, $48         ; data? B6, C7, *, H                      
          db $0D, $C7, $5C, $A4         ; data? 0D, C7, \, A4                     
          db $0E, $97, $D6, $1F         ; data? 0E, 97, D6, 1F                    
          db $83, $B7, $59, $D6         ; data? 83, B7, Y, D6                     
          db $1F, $84, $B7, $56         ; data? 1F, 84, B7, V                     
          db $54, $D6, $1F, $93         ; data? T, D6, 1F, 93                     
          db $C7, $02, $56, $A4         ; data? C7, 02, V, A4                     
          db $0F, $27, $13, $4A         ; data? 0F, ', 13, J                      
          db $B7, $58, $CE, $1F         ; data? B7, X, CE, 1F                     
          db $82, $BF, $57, $C6         ; data? 82, BF, W, C6                     
          db $1F, $81, $4D, $27         ; data? 1F, 81, M, '                      
          db $02, $10, $59, $CD         ; data? 02, 10, Y, CD                     
          db $25, $87, $0B, $C7         ; data? %, 87, 0B, C7                     
          db $03, $1C, $9E, $C1         ; data? 03, 1C, 9E, C1                    
          db $1E, $9E, $0F, $50         ; data? 1E, 9E, 0F, P                     
          db $0E, $15, $CB, $B6         ; data? 0E, 15, CB, B6                    
          db $CE, $A4, $07, $A1         ; data? CE, A4, 07, A1                    
          db $06, $26, $04, $B8         ; data? 06, &, 04, B8                     
          db $CE, $B7, $CE, $81         ; data? CE, B7, CE, 81                    
          db $AE, $61, $CF, $02         ; data? AE, a, CF, 02                     
          db $56, $C7, $02, $57         ; data? V, C7, 02, W                      
          db $A1, $70, $25, $E0         ; data? A1, p, %, E0                      
          db $A4, $07, $97, $D6         ; data? A4, 07, 97, D6                    
          db $1F, $9B, $C7, $02         ; data? 1F, 9B, C7, 02                    
          db $57, $20, $D2, $BE         ; data? W, " ", D2, BE                    
          db $C8, $A4, $0F, $A5         ; data? C8, A4, 0F, A5                    
          db $08, $26, $07, $1F         ; data? 08, &, 07, 1F                     
          db $50, $5D, $2A, $02         ; data? P, ], *, 02                       
          db $50, $4C, $CD, $25         ; data? P, L, CD, %                       
          db $2C, $C7, $02, $57         ; data? ,, C7, 02, W                      
          db $9F, $A4, $0F, $CB         ; data? 9F, A4, 0F, CB                    
          db $02, $57, $C7, $02         ; data? 02, W, C7, 02                     
          db $57, $A6, $71, $C7         ; data? W, A6, q, C7                      
          db $02, $56, $20, $AA         ; data? 02, V, " ", AA                    
          db $02, $57, $00, $C8         ; data? 02, W, 00, C8                     
          db $02, $80, $02, $57         ; data? 02, 80, 02, W                     
          db $02, $9E, $02, $60         ; data? 02, 9E, 02, `                     
          db $00, $00, $00, $6C         ; data? 00, 00, 00, l                     
          db $02, $88, $32, $48         ; data? 02, 88, 2, H                      
          db $58, $92, $A2, $B0         ; data? X, 92, A2, B0                     
          db $E1, $48, $15, $0E         ; data? E1, H, 15, 0E                     
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00                   ; data? 00, 00                            
; 
L1FA3: 
          brset 6,RAM1_069,L07A9        ; Branch to 0x07A9 if Bit 6 is set at RAM1_069 (Mn=1)
          brset 0,RAM1_080,L07C2        ; Branch to 0x07C2 if Bit 0 is set at RAM1_080 (Mn=1)
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          jsr L24C5                     ; Jump to Subroutine at 0x24C5            
          cmp #$D5                      ; Compare Accumulator with Memory Byte, (A) - (0xD5)
          bcs L07B7                     ; Branch to 0x07B7 if C = 1               
          bset 0,RAM1_080               ; Set Bit 0 at memory RAM1_080 (Mn <- 1 ) 
          bset 6,RAM1_069               ; Set Bit 6 at memory RAM1_069 (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
          db $A1, $D2, $22, $07         ; data? A1, D2, ", 07                     
          db $0D, $69, $04, $1D         ; data? 0D, i, 04, 1D                     
          db $69, $11, $80, $81         ; data? i, 11, 80, 81                     
; 
L1FC3: 
          jsr L209C                     ; Jump to Subroutine at 0x209C            
          brclr 7,Miscell,L07D7         ; Branch to 0x07D7 if Bit POR Clear (Mn = 0)
          ldx #$14                      ; Load Index Register with Memory Byte, X <- (0x14)
          jsr L204F                     ; Jump to Subroutine at 0x204F            
          jsr L2071                     ; Jump to Subroutine at 0x2071            
          bclr 7,Miscell                ; Clear bit POR at Miscell                
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_08c                  ; Store Accumulator in Memory at RAM1_08c 
L1FD7: 
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          add #$14                      ; A + 0x14 (without CARRY), A ← (A) + 0x14
          sta OCH2                      ; Store Accumulator in Memory at OCH2     
          lda TSR                       ; Load Accumulator with value of Memory at TSR, A <- (TSR)
          clr OCL2                      ; Clear byte at OCL2 <- 0x00              
          rts                           ; Return from Subroutine                  
; 
          db $AD, $37, $AD, $4B         ; data? AD, 7, AD, K                      
; 
L1FE6: 
          lda #$30                      ; Load Accumulator with 0x30, A <- 0x30   
          brclr 6,RAM1_05f,L07EF        ; Branch to 0x07EF if Bit 6 Clear (Mn = 0)
          lda #$31                      ; Load Accumulator with 0x31, A <- 0x31   
          bset 0,PortB                  ; Set ENA_12V_ANTENE#PB0
                                ;;

                                1)
                                        param1=ENA_12V_WOOFER#PB1 HIGH
          sta DDRB                      ; Store Accumulator in Memory at DDRB     
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          sta DDRC                      ; Store Accumulator in Memory at DDRC     
          rts                           ; Return from Subroutine                  
; 
          db $04, $01, $14, $14         ; data? 04, 01, 14, 14                    
          db $01, $AE, $08, $20         ; data? 01, AE, 08, " "                   
          db $0C                        ; data? 0C                                
; 
L1FFF: 
          brset 0,PortC,L000D           ; Branch to 0x000D if ENA_8V#PC0
                                ;;

                                1)
                                        param1=WDOG_TEL#PC1 is HIGH
          bset 0,PortC                  ; Set ENA_8V#PC0
                                ;;

                                1)
                                        param1=WDOG_TEL#PC1 HIGH
          brset 6,RAM1_05f,L000D        ; Branch to 0x000D if Bit 6 is set at RAM1_05f (Mn=1)
          bclr 3,PortB                  ; Set 3 LOW                               
          ldx #$06                      ; Load Index Register with Memory Byte, X <- (0x06)
          bsr L004F                     ; Branch to Subroutine at 0x004F          
          lda #$2C                      ; Load Accumulator with 0x2C, A <- 0x2C   
          sta SCCR2                     ; Store Accumulator in Memory at SCCR2    
          lda X20C1                     ; Load Accumulator with data from  memory at 0x20C1, A <- (0x20C1)
          sta BAUD                      ; Store Accumulator in Memory at BAUD     
          lda SCSR                      ; Load Accumulator with value of Memory at SCSR, A <- (SCSR)
          lda SCDR                      ; Load Accumulator with value of Memory at SCDR, A <- (SCDR)
          rts                           ; Return from Subroutine                  
; 
          db $19, $61, $11, $81         ; data? 19, a, 11, 81                     
          db $04, $12, $03, $05         ; data? 04, 12, 03, 05                    
          db $01, $0A, $AE, $32         ; data? 01, 0A, AE, 2                     
          db $AD, $26, $15, $01         ; data? AD, &, 15, 01                     
          db $AE, $05, $AD, $20         ; data? AE, 05, AD, " "                   
          db $9A, $81, $A6, $04         ; data? 9A, 81, A6, 04                    
          db $CD, $25, $41, $3F         ; data? CD, %, A, 3F                      
          db $0F, $A6, $07, $B7         ; data? 0F, A6, 07, B7                    
          db $04, $3F, $00, $1D         ; data? 04, 3F, 00, 1D                    
          db $01, $1B, $61, $01         ; data? 01, 1B, a, 01                     
          db $02, $EA, $11, $02         ; data? 02, EA, 11, 02                    
          db $09, $0C, $26, $AE         ; data? 09, 0C, &, AE                     
          db $32, $AD, $01, $81         ; data? 2, AD, 01, 81                     
; 
L204F: 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 7,RAM1_08f               ; Clear bit 7 at RAM1_08f                 
          brclr 1,PortC,L0058           ; Branch to 0x0058 if 1 is LOW            
          bclr 1,PortC                  ; Set 1 LOW                               
          cmp X1202                     ; Compare Accumulator with Memory Byte, (A) - (0x1202)
          jsr L253F                     ; Jump to Subroutine at 0x253F            
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bpl L0052                     ; Branch to 0x0052 if Plus N = 0          
          bset 2,STACK_0d6              ; Set Bit 2 at memory STACK_0d6 (Mn <- 1 )
          bset 4,RAM1_05e               ; Set Bit 4 at memory RAM1_05e (Mn <- 1 ) 
          bset 7,RAM1_096               ; Set Bit 7 at memory RAM1_096 (Mn <- 1 ) 
          brclr 0,PortC,L006F           ; Branch to 0x006F if ENA_8V#PC0
                                ;;

                                1)
                                        param1=WDOG_TEL#PC1 is LOW
          brclr 7,RAM1_08f,L006F        ; Branch to 0x006F if Bit 7 Clear (Mn = 0)
          jmp L04ED                     ; Unconditional Jump to 0x04ED            
; 
          db $9A, $81                   ; data? 9A, 81                            
; 
L2071: 
          ldx #$90                      ; Load Index Register with Memory Byte, X <- (0x90)
          lda #$00                      ; Load Accumulator with 0x00, A <- 0x00   
          clr X004F,x                   ; Clear byte at 0x004F <- 0x00            
          sta BOT1_024f,x               ; Store Accumulator in Memory at BOT1_024f
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L0075                     ; Branch to 0x0075 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L207E: 
          brclr 5,DDRB,L009C            ; Branch to 0x009C if 5 is set to INPUT   
          lda X20B8                     ; Load Accumulator with data from  memory at 0x20B8, A <- (0x20B8)
          sta DDRA                      ; Store Accumulator in Memory at DDRA     
          lda X20B9                     ; Load Accumulator with data from  memory at 0x20B9, A <- (0x20B9)
          sta DDRB                      ; Store Accumulator in Memory at DDRB     
          lda X20BA                     ; Load Accumulator with data from  memory at 0x20BA, A <- (0x20BA)
          sta DDRC                      ; Store Accumulator in Memory at DDRC     
          bset 7,TCR                    ; Set Bit ICIE at memory TCR (Mn <- 1 )   
          bset 6,TCR                    ; Set Bit OCIE at memory TCR (Mn <- 1 )   
          bset 5,TCR                    ; Set Bit TOIE at memory TCR (Mn <- 1 )   
          lda X20C0                     ; Load Accumulator with data from  memory at 0x20C0, A <- (0x20C0)
          sta Miscell                   ; Store Accumulator in Memory at Miscell  
          rts                           ; Return from Subroutine                  
; 
L209C: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X20B4,x                   ; Load Accumulator with data from  memory at 0x20B4, A <- (0x20B4)
          sta ,x                        ; Store Accumulator in Memory at          
          incx                          ; Increment Byte incx, Byte = Byte + 1    
cpx #$13 
          bmi L009D                     ; Branch to 0x009D if Minus N = 1         
          rts                           ; Return from Subroutine                  
; 
L20A7: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X20C7,x                   ; Load Accumulator with data from  memory at 0x20C7, A <- (0x20C7)
          sta ,x                        ; Store Accumulator in Memory at          
          incx                          ; Increment Byte incx, Byte = Byte + 1    
cpx #$13 
          bmi L00A8                     ; Branch to 0x00A8 if Minus N = 1         
          jmp L1FD7                     ; Unconditional Jump to 0x1FD7            
; 
X20B4: 
          db $FF, $B0, $FC, $00         ; data? FF, B0, FC, 00                    
X20B8: 
          db $04                        ; data? 04                                
X20B9: 
          db $FF                        ; data? FF                                
X20BA: 
          db $0F, $40, $00, $20         ; data? 0F, @, 00, " "                    
          db $00, $00                   ; data? 00, 00                            
X20C0: 
          db $BC                        ; data? BC                                
X20C1: 
          db $C0, $00, $2C, $00         ; data? C0, 00, ,, 00                     
          db $00, $FA                   ; data? 00, FA                            
X20C7: 
          db $F8, $B8, $FE, $00         ; data? F8, B8, FE, 00                    
          db $07, $31, $02, $40         ; data? 07, 1, 02, @                      
          db $00, $20, $00, $00         ; data? 00, " ", 00, 00                   
          db $BC, $C0, $00, $2C         ; data? BC, C0, 00, ,                     
          db $00, $00, $FA              ; data? 00, 00, FA                        
; 
L20DA: 
          brclr 6,RAM1_05d,L0114        ; Branch to 0x0114 if Bit 6 Clear (Mn = 0)
          brclr 2,STACK_0ce,L0114       ; Branch to 0x0114 if Bit 2 Clear (Mn = 0)
          brset 1,STACK_0ce,L0114       ; Branch to 0x0114 if Bit 1 is set at STACK_0ce (Mn=1)
          brclr 0,STACK_0ce,L0114       ; Branch to 0x0114 if Bit 0 Clear (Mn = 0)
          jmp L2121                     ; Unconditional Jump to 0x2121            
; 
L20E9: 
          db $B6, $78, $A4, $07         ; data? B6, x, A4, 07                     
          db $AE, $81, $A1, $04         ; data? AE, 81, A1, 04                    
          db $24, $21, $A1, $01         ; data? $, !, A1, 01                      
          db $26, $03, $18, $CE         ; data? &, 03, 18, CE                     
          db $81, $AE, $02, $A1         ; data? 81, AE, 02, A1                    
          db $02, $26, $03, $1A         ; data? 02, &, 03, 1A                     
          db $CE, $81, $16, $BC         ; data? CE, 81, 16, BC                    
          db $AE, $08, $C1, $AE         ; data? AE, 08, C1, AE                    
          db $01, $10, $80, $BF         ; data? 01, 10, 80, BF                    
          db $D0, $1C, $CE, $1E         ; data? D0, 1C, CE, 1E                    
          db $94, $1D, $B5, $81         ; data? 94, 1D, B5, 81                    
          db $A6, $48, $B7, $9F         ; data? A6, H, B7, 9F                     
          db $AE, $71, $A6, $41         ; data? AE, q, A6, A                      
          db $B7, $CE, $20, $E9         ; data? B7, CE, " ", E9                   
; 
L2121: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X213B,x                   ; Load Accumulator with data from  memory at 0x213B, A <- (0x213B)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X213A,x                   ; Load Accumulator with data from  memory at 0x213A, A <- (0x213A)
          beq L0139                     ; Branch to 0x0139 if Equal Z=1           
          jsr L2797                     ; Jump to Subroutine at 0x2797            
          bne L0122                     ; Branch to 0x0122 if Not Equal (Z = 0);  
          ldx X2139,x                   ; Load Index Register with Memory Byte, X <- (0x2139)
          jsr L20E9,x ;INFO: index jump ; Jump to Subroutine at 0x20E9            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X2139: 
          rts                           ; Return from Subroutine                  
; 
X213A: 
          db $E0                        ; data? E0                                
X213B: 
          db $00, $EB, $1F, $E8         ; data? 00, EB, 1F, E8                    
          db $2C, $07, $2C, $00         ; data? ,, 07, ,, 00                      
          db $A6, $02, $B8, $12         ; data? A6, 02, B8, 12                    
          db $B7, $12, $16, $76         ; data? B7, 12, 16, v                     
          db $B6, $14, $B7, $6D         ; data? B6, 14, B7, m                     
          db $B6, $15, $B7, $6E         ; data? B6, 15, B7, n                     
          db $09, $5E, $05, $02         ; data? 09, ^, 05, 02                     
          db $12, $31, $20, $1C         ; data? 12, 1, " ", 1C                    
          db $B0, $70, $97, $B6         ; data? B0, p, 97, B6                     
          db $6D, $B2, $6F, $A5         ; data? m, B2, o, A5                      
          db $E0, $26, $11, $02         ; data? E0, &, 11, 02                     
          db $0C, $0B, $03, $12         ; data? 0C, 0B, 03, 12                    
          db $08, $B7, $71, $BF         ; data? 08, B7, q, BF                     
          db $72, $11, $76, $20         ; data? r, 11, v, " "                     
          db $0E, $CD, $21, $E4         ; data? 0E, CD, !, E4                     
          db $B6, $6E, $B7, $70         ; data? B6, n, B7, p                      
          db $B6, $6D, $B7, $6F         ; data? B6, m, B7, o                      
          db $08, $5E, $06, $0A         ; data? 08, ^, 06, 0A                     
          db $03, $06, $03, $12         ; data? 03, 06, 03, 12                    
          db $06, $19, $5E, $81         ; data? 06, 19, ^, 81                     
          db $03, $12, $FC, $A6         ; data? 03, 12, FC, A6                    
          db $02, $B8, $12, $B7         ; data? 02, B8, 12, B7                    
          db $12, $A6, $10, $BB         ; data? 12, A6, 10, BB                    
          db $6E, $B7, $6E, $24         ; data? n, B7, n, $                       
          db $02, $3C, $6D, $B6         ; data? 02, <, m, B6                      
          db $15, $20, $B1              ; data? 15, " ", B1                       
; 
L21A2: 
          brclr 3,RAM1_076,L01A8        ; Branch to 0x01A8 if Bit 3 Clear (Mn = 0)
          bclr 3,RAM1_076               ; Clear bit 3 at RAM1_076                 
          rts                           ; Return from Subroutine                  
; 
          db $18, $5E, $13, $12         ; data? 18, ^, 13, 12                     
          db $B6, $15, $A6, $20         ; data? B6, 15, A6, " "                   
          db $BB, $76, $AA, $40         ; data? BB, v, AA, @                      
          db $A4, $DF, $B7, $76         ; data? A4, DF, B7, v                     
          db $0B, $03, $1D, $0E         ; data? 0B, 03, 1D, 0E                    
          db $01, $0E, $B6, $5E         ; data? 01, 0E, B6, ^                     
          db $A0, $20, $25, $02         ; data? A0, " ", %, 02                    
          db $B7, $5E, $2B, $32         ; data? B7, ^, +, 2                       
          db $1D, $5E, $20, $09         ; data? 1D, ^, " ", 09                    
          db $04, $76, $1E, $14         ; data? 04, v, 1E, 14                     
          db $76, $12, $76, $20         ; data? v, 12, v, " "                     
          db $18, $01, $61, $22         ; data? 18, 01, a, "                      
          db $A6, $14, $5F, $BF         ; data? A6, 14, _, BF                     
          db $71, $B7, $72, $10         ; data? q, B7, r, 10                      
          db $76, $01, $61, $05         ; data? v, 01, a, 05                      
          db $0F, $01, $02, $15         ; data? 0F, 01, 02, 15                    
          db $76, $B7, $73, $BF         ; data? v, B7, s, BF                      
          db $74, $18, $76, $0E         ; data? t, 18, v, 0E                      
          db $01, $08, $A6, $20         ; data? 01, 08, A6, " "                   
          db $BB, $5E, $25, $02         ; data? BB, ^, %, 02                      
          db $B7, $5E, $A6, $20         ; data? B7, ^, A6, " "                    
          db $BB, $76, $B7, $76         ; data? BB, v, B7, v                      
          db $A4, $60, $A1, $60         ; data? A4, `, A1, `                      
          db $26, $1C, $0E, $76         ; data? &, 1C, 0E, v                      
          db $05, $00, $61, $07         ; data? 05, 00, a, 07                     
          db $1D, $76, $1F, $01         ; data? 1D, v, 1F, 01                     
          db $18, $5E, $81, $A6         ; data? 18, ^, 81, A6                     
          db $24, $B7, $09, $0F         ; data? $, B7, 09, 0F                     
          db $09, $FD, $B6, $08         ; data? 09, FD, B6, 08                    
          db $B7, $75, $1E, $01         ; data? B7, u, 1E, 01                     
          db $18, $5E, $81              ; data? 18, ^, 81                         
; 
L2223: 
          clra                          ; Clear byte at clra <- 0x00              
          brset 0,RAM1_061,L022A        ; Branch to 0x022A if Bit 0 is set at RAM1_061 (Mn=1)
          brclr 2,RAM1_05f,L0287        ; Branch to 0x0287 if Bit 2 Clear (Mn = 0)
          brclr 4,RAM1_076,L0289        ; Branch to 0x0289 if Bit 4 Clear (Mn = 0)
          bclr 4,RAM1_076               ; Clear bit 4 at RAM1_076                 
          sei                           ; Set Interrupt Mask, I ← 1);           
          lda RAM1_073                  ; Load Accumulator with value of Memory at RAM1_073, A <- (RAM1_073)
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          lda RAM1_074                  ; Load Accumulator with value of Memory at RAM1_074, A <- (RAM1_074)
          sta RAM1_051                  ; Store Accumulator in Memory at RAM1_051 
          lda RAM1_071                  ; Load Accumulator with value of Memory at RAM1_071, A <- (RAM1_071)
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          lda RAM1_072                  ; Load Accumulator with value of Memory at RAM1_072, A <- (RAM1_072)
          sta RAM1_053                  ; Store Accumulator in Memory at RAM1_053 
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brset 7,RAM1_076,L02BC        ; Branch to 0x02BC if Bit 7 is set at RAM1_076 (Mn=1)
          clra                          ; Clear byte at clra <- 0x00              
          brclr 2,RAM1_05f,L0287        ; Branch to 0x0287 if Bit 2 Clear (Mn = 0)
          clrx                          ; Clear byte at clrx <- 0x00              
          jsr L239D                     ; Jump to Subroutine at 0x239D            
          jsr L239B                     ; Jump to Subroutine at 0x239B            
          ldx #$03                      ; Load Index Register with Memory Byte, X <- (0x03)
          lda RAM1_050,x                ; Load Accumulator with value of Memory at RAM1_050, A <- (RAM1_050)
          add RAM2_02a0,x               ; Add without Carry, A ← (A) + (RAM2_02a0)
          sta RAM2_02a0,x               ; Store Accumulator in Memory at RAM2_02a0
          sta RAM1_056,x                ; Store Accumulator in Memory at RAM1_056 
          lda X004F,x                   ; Load Accumulator with data from  memory at 0x004F, A <- (0x004F)
          adc RAM2_029f,x               ; ADD with CARRY, A ← (A) + (RAM2_029f) + (C) 
          sta RAM2_029f,x               ; Store Accumulator in Memory at RAM2_029f
          sta RAM1_055,x                ; Store Accumulator in Memory at RAM1_055 
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bpl L0251                     ; Branch to 0x0251 if Plus N = 0          
          jsr L24F2                     ; Jump to Subroutine at 0x24F2            
          clrx                          ; Clear byte at clrx <- 0x00              
          jsr L23C1                     ; Jump to Subroutine at 0x23C1            
          bcs L027F                     ; Branch to 0x027F if C = 1               
          ldx #$09                      ; Load Index Register with Memory Byte, X <- (0x09)
          jsr L232C                     ; Jump to Subroutine at 0x232C            
          lda #$1A                      ; Load Accumulator with 0x1A, A <- 0x1A   
          jsr L234D                     ; Jump to Subroutine at 0x234D            
          sta RAM2_02a5                 ; Store Accumulator in Memory at RAM2_02a5
          lda RAM2_02a5                 ; Load Accumulator with value of Memory at RAM2_02a5, A <- (RAM2_02a5)
          ldx PLMB                      ; Load Index Register with Memory Byte, X <- (PLMB)
          jsr L237C                     ; Jump to Subroutine at 0x237C            
          sta PLMB                      ; Store Accumulator in Memory at PLMB     
          rts                           ; Return from Subroutine                  
; 
          db $4F, $C7, $02, $AA         ; data? O, C7, 02, AA                     
          db $AE, $0D, $CD, $23         ; data? AE, 0D, CD, #                     
          db $9D, $B6, $75, $CB         ; data? 9D, B6, u, CB                     
          db $02, $AE, $C7, $02         ; data? 02, AE, C7, 02                    
          db $AE, $4F, $C9, $02         ; data? AE, O, C9, 02                     
          db $AD, $C7, $02, $AD         ; data? AD, C7, 02, AD                    
          db $C6, $02, $AE, $CE         ; data? C6, 02, AE, CE                    
          db $02, $AD, $56, $46         ; data? 02, AD, V, F                      
          db $56, $46, $56, $46         ; data? V, F, V, F                        
          db $AE, $0B, $CD, $23         ; data? AE, 0B, CD, #                     
          db $C2, $25, $4B, $AE         ; data? C2, %, K, AE                      
          db $19, $CD, $23, $2C         ; data? 19, CD, #, ,                      
          db $20, $34, $04, $76         ; data? " ", 4, 04, v                     
          db $CB, $AE, $06, $CD         ; data? CB, AE, 06, CD                    
          db $23, $9D, $CD, $23         ; data? #, 9D, CD, #                      
          db $9B, $AE, $03, $E6         ; data? 9B, AE, 03, E6                    
          db $50, $DB, $02, $A6         ; data? P, DB, 02, A6                     
          db $D7, $02, $A6, $E7         ; data? D7, 02, A6, E7                    
          db $56, $E6, $4F, $D9         ; data? V, E6, O, D9                      
          db $02, $A5, $D7, $02         ; data? 02, A5, D7, 02                    
          db $A5, $E7, $55, $5A         ; data? A5, E7, U, Z                      
          db $5A, $2A, $E8, $CD         ; data? Z, *, E8, CD                      
          db $24, $F2, $AE, $06         ; data? $, F2, AE, 06                     
          db $CD, $23, $C1, $25         ; data? CD, #, C1, %                      
          db $15, $AE, $0F, $CD         ; data? 15, AE, 0F, CD                    
          db $23, $2C, $A6, $24         ; data? #, ,, A6, $                       
          db $CD, $23, $4D, $C7         ; data? CD, #, M, C7                      
          db $02, $AB, $A6, $2A         ; data? 02, AB, A6, *                     
          db $CD, $23, $4D, $C7         ; data? CD, #, M, C7                      
          db $02, $AC, $01, $61         ; data? 02, AC, 01, a                     
          db $28, $C6, $02, $AB         ; data? (, C6, 02, AB                     
          db $BE, $0A, $CD, $23         ; data? BE, 0A, CD, #                     
          db $7C, $B7, $0A, $C6         ; data? |, B7, 0A, C6                     
          db $02, $AC, $BE, $6C         ; data? 02, AC, BE, l                     
          db $CD, $23, $7C, $97         ; data? CD, #, |, 97                      
          db $02, $76, $0C, $C6         ; data? 02, v, 0C, C6                     
          db $02, $AC, $B0, $6C         ; data? 02, AC, B0, l                     
          db $24, $01, $40, $A4         ; data? $, 01, @, A4                      
          db $FC, $27, $06, $13         ; data? FC, ', 06, 13                     
          db $76, $BF, $6C, $12         ; data? v, BF, l, 12                      
          db $5D, $81                   ; data? ], 81                             
; 
L232C: 
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          clr RAM1_056                  ; Clear byte at RAM1_056 <- 0x00          
          lda OPTR,x                    ; Load Accumulator with value of Memory at OPTR, A <- (OPTR)
          cmp RAM1_052                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_052)
          bcc L0342                     ; Branch to 0x0342 if C bit is cleared    
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          dec RAM1_050                  ; Decrement Byte at RAM1_050 Byte = Byte - 1
          bpl L0332                     ; Branch to 0x0332 if Plus N = 0          
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sub RAM1_056                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_056)
          sta RAM1_051                  ; Store Accumulator in Memory at RAM1_051 
          lda RAM1_052                  ; Load Accumulator with value of Memory at RAM1_052, A <- (RAM1_052)
          sub RAM1_056                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_056)
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          rts                           ; Return from Subroutine                  
; 
L234D: 
          add RAM1_050                  ; Add without Carry, A ← (A) + (RAM1_050)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          clr RAM1_05a                  ; Clear byte at RAM1_05a <- 0x00          
          lda RAM1_050                  ; Load Accumulator with value of Memory at RAM1_050, A <- (RAM1_050)
          cmp #$05                      ; Compare Accumulator with Memory Byte, (A) - (0x05)
          beq L0363                     ; Branch to 0x0363 if Equal Z=1           
          lda SEC_CODE1,x               ; Load Accumulator with value of Memory at SEC_CODE1, A <- (SEC_CODE1)
          sta RAM1_05a                  ; Store Accumulator in Memory at RAM1_05a 
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          tst RAM1_050                  ; Test Memory Byte for Negative or Zero, (RAM1_050) – 0x00
          bmi L0366                     ; Branch to 0x0366 if Minus N = 1         
          lda OPTR,x                    ; Load Accumulator with value of Memory at OPTR, A <- (OPTR)
          sub RAM1_05a                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_05a)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda RAM1_052                  ; Load Accumulator with value of Memory at RAM1_052, A <- (RAM1_052)
          mul                           ; Unsigned Multiply, X:A <- (X) * (A)     
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          stx RAM1_058                  ; Store Index Register In Memory at RAM1_058
          clr RAM1_057                  ; Clear byte at RAM1_057 <- 0x00          
          lda RAM1_051                  ; Load Accumulator with value of Memory at RAM1_051, A <- (RAM1_051)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          jsr L24F2                     ; Jump to Subroutine at 0x24F2            
          add RAM1_05a                  ; Add without Carry, A ← (A) + (RAM1_05a)
          rts                           ; Return from Subroutine                  
; 
L237C: 
          stx RAM1_056                  ; Store Index Register In Memory at RAM1_056
          sub RAM1_056                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_056)
          beq L0397                     ; Branch to 0x0397 if Equal Z=1           
          bcs L038E                     ; Branch to 0x038E if C = 1               
          ldx #$01                      ; Load Index Register with Memory Byte, X <- (0x01)
          cmp #$10                      ; Compare Accumulator with Memory Byte, (A) - (0x10)
          bcs L0396                     ; Branch to 0x0396 if C = 1               
          ldx #$08                      ; Load Index Register with Memory Byte, X <- (0x08)
          bra L0396                     ; Branch Always (1 = 1)                   
; 
          db $AE, $FF, $A1, $F0         ; data? AE, FF, A1, F0                    
          db $22, $02, $AE, $F8         ; data? ", 02, AE, F8                     
          db $9F, $BB, $56, $81         ; data? 9F, BB, V, 81                     
          db $81                        ; data? 81                                
; 
L239B: 
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          incx                          ; Increment Byte incx, Byte = Byte + 1    
L239D: 
          lda RAM2_02a0,x               ; Load Accumulator with value of Memory at RAM2_02a0, A <- (RAM2_02a0)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda RAM2_02a1,x               ; Load Accumulator with value of Memory at RAM2_02a1, A <- (RAM2_02a1)
          lsr RAM1_056                  ; Logical Shift Right of RAM1_056, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lsr RAM1_056                  ; Logical Shift Right of RAM1_056, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lsr RAM1_056                  ; Logical Shift Right of RAM1_056, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda RAM2_02a1,x               ; Load Accumulator with value of Memory at RAM2_02a1, A <- (RAM2_02a1)
          sub RAM1_057                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_057)
          sta RAM2_02a1,x               ; Store Accumulator in Memory at RAM2_02a1
          lda RAM2_02a0,x               ; Load Accumulator with value of Memory at RAM2_02a0, A <- (RAM2_02a0)
          sbc RAM1_056                  ; Subtract Memory Byte RAM1_056 and Carry Bit from Accumulator, A ←  (A) – (RAM1_056) – (C)
          sta RAM2_02a0,x               ; Store Accumulator in Memory at RAM2_02a0
          rts                           ; Return from Subroutine                  
; 
L23C1: 
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          brset 1,RAM1_076,L03D1        ; Branch to 0x03D1 if Bit 1 is set at RAM1_076 (Mn=1)
          sub RAM2_02a4,x               ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM2_02a4)
          bcc L03CD                     ; Branch to 0x03CD if C bit is cleared    
          nega                          ; Negate Byte of nega (Two’s Complement), nega = 0x00 - (nega)
          cmp #$02                      ; Compare Accumulator with Memory Byte, (A) - (0x02)
          bcs L03D8                     ; Branch to 0x03D8 if C = 1               
          lda RAM1_052                  ; Load Accumulator with value of Memory at RAM1_052, A <- (RAM1_052)
          sta RAM2_02a4,x               ; Store Accumulator in Memory at RAM2_02a4
          cmp #$00                      ; Compare Accumulator with Memory Byte, (A) - (0x00)
          rts                           ; Return from Subroutine                  
; 
L23D9: 
          ldx STACK_0cc                 ; Load Index Register with Memory Byte, X <- (STACK_0cc)
cpx #$FF 
          bne L03E1                     ; Branch to 0x03E1 if Not Equal (Z = 0);  
          bclr 5,STACK_0c5              ; Clear bit 5 at STACK_0c5                
          ldx #$80                      ; Load Index Register with Memory Byte, X <- (0x80)
          brset 0,STACK_0cb,L03EA       ; Branch to 0x03EA if Bit 0 is set at STACK_0cb (Mn=1)
          brclr 6,STACK_0c6,L03FC       ; Branch to 0x03FC if Bit 6 Clear (Mn = 0)
          rts                           ; Return from Subroutine                  
; 
          db $AE, $5F, $C1, $AE         ; data? AE, _, C1, AE                     
          db $20, $1B, $C5, $20         ; data? " ", 1B, C5, " "                  
          db $09                        ; data? 09                                
; 
L23F3: 
          ldx #$4C                      ; Load Index Register with Memory Byte, X <- (0x4C)
          cmp XAE50                     ; Compare Accumulator with Memory Byte, (A) - (0xAE50)
          clr STACK_0cc                 ; Clear byte at STACK_0cc <- 0x00         
          bset 3,STACK_0cc              ; Set Bit 3 at memory STACK_0cc (Mn <- 1 )
          bclr 0,STACK_0cb              ; Clear bit 0 at STACK_0cb                
          stx STACK_0c6                 ; Store Index Register In Memory at STACK_0c6
          sta STACK_0c7                 ; Store Accumulator in Memory at STACK_0c7
          rts                           ; Return from Subroutine                  
; 
          db $D8, $02, $50, $27         ; data? D8, 02, P, '                      
          db $08, $D8, $02, $50         ; data? 08, D8, 02, P                     
          db $D7, $02, $50, $1A         ; data? D7, 02, P, 1A                     
          db $C6, $5C, $81, $5F         ; data? C6, \, 81, _                      
          db $A6, $00, $AD, $EC         ; data? A6, 00, AD, EC                    
          db $A3, $06, $26, $F8         ; data? A3, 06, &, F8                     
          db $81, $AE, $01, $AD         ; data? 81, AE, 01, AD                    
          db $E3, $B6, $56, $AA         ; data? E3, B6, V, AA                     
          db $40, $0B, $69, $01         ; data? @, 0B, i, 01                      
          db $4F, $04, $B8, $05         ; data? O, 04, B8, 05                     
          db $0D, $B5, $02, $AA         ; data? 0D, B5, 02, AA                    
          db $04, $AD, $E3, $5F         ; data? 04, AD, E3, _                     
          db $A6, $00, $20, $CC         ; data? A6, 00, " ", CC                   
          db $B7, $56, $AD, $06         ; data? B7, V, AD, 06                     
          db $97, $B6, $56, $CD         ; data? 97, B6, V, CD                     
          db $25, $2C, $CD, $25         ; data? %, ,, CD, %                       
          db $25, $A1, $0A, $25         ; data? %, A1, 0A, %                      
          db $02, $AB, $07, $AB         ; data? 02, AB, 07, AB                    
          db $30, $81, $A6, $68         ; data? 0, 81, A6, h                      
          db $C1, $A6, $70, $C1         ; data? C1, A6, p, C1                     
          db $A6, $60, $C1, $A6         ; data? A6, `, C1, A6                     
          db $78, $C1, $A6, $80         ; data? x, C1, A6, 80                     
          db $4A, $B7, $56, $AE         ; data? J, B7, V, AE                      
          db $07, $BF, $57, $BE         ; data? 07, BF, W, BE                     
          db $56, $D6, $25, $B3         ; data? V, D6, %, B3                      
          db $3A, $56, $BE, $57         ; data? :, V, BE, W                       
          db $D7, $02, $57, $3A         ; data? D7, 02, W, :                      
          db $57, $2A, $F0, $81         ; data? W, *, F0, 81                      
          db $02, $CB, $0B, $3C         ; data? 02, CB, 0B, <                     
          db $CC, $3D, $CC, $27         ; data? CC, =, CC, '                      
          db $03, $3A, $CC, $81         ; data? 03, :, CC, 81                     
          db $3A, $CC                   ; data? :, CC                             
; 
L2481: 
          cmp #$03                      ; Compare Accumulator with Memory Byte, (A) - (0x03)
          bne L048E                     ; Branch to 0x048E if Not Equal (Z = 0);  
          lda #$39                      ; Load Accumulator with 0x39, A <- 0x39   
          brclr 6,STACK_0d2,L04A8       ; Branch to 0x04A8 if Bit 6 Clear (Mn = 0)
          lda #$36                      ; Load Accumulator with 0x36, A <- 0x36   
          bra L04A8                     ; Branch Always (1 = 1)                   
; 
          db $A1, $01, $26, $05         ; data? A1, 01, &, 05                     
          db $0B, $BB, $2F, $16         ; data? 0B, BB, /, 16                     
          db $94, $0D, $B5, $05         ; data? 94, 0D, B5, 05                    
          db $04, $B8, $02, $AA         ; data? 04, B8, 02, AA                    
          db $08                        ; data? 08                                
; 
L249F: 
          brclr 3,RAM1_08e,L04A4        ; Branch to 0x04A4 if Bit 3 Clear (Mn = 0)
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
          sta STACK_0d5                 ; Store Accumulator in Memory at STACK_0d5
          bra L04B4                     ; Branch Always (1 = 1)                   
; 
          db $AA, $40, $B8, $D5         ; data? AA, @, B8, D5                     
          db $A4, $7F, $27, $14         ; data? A4, DEL, ', 14                    
          db $B8, $D5, $B7, $D5         ; data? B8, D5, B7, D5                    
; 
L24B4: 
          brclr 0,RAM1_061,L04BB        ; Branch to 0x04BB if Bit 0 Clear (Mn = 0)
          brclr 3,STACK_0ce,L04C0       ; Branch to 0x04C0 if Bit 3 Clear (Mn = 0)
          clra                          ; Clear byte at clra <- 0x00              
          brclr 3,RAM1_08e,L04C0        ; Branch to 0x04C0 if Bit 3 Clear (Mn = 0)
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
          bset 7,STACK_0d5              ; Set Bit 7 at memory STACK_0d5 (Mn <- 1 )
          bset 1,RAM1_094               ; Set Bit 1 at memory RAM1_094 (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
L24C5: 
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          clr RAM1_057                  ; Clear byte at RAM1_057 <- 0x00          
          clra                          ; Clear byte at clra <- 0x00              
          bms L04D8                     ; Branch to 0x04D8 if Interrupt Mask Set (I=1)
          sei                           ; Set Interrupt Mask, I ← 1);           
          stx ADSTAT                    ; Store Index Register In Memory at ADSTAT
          brclr 7,ADSTAT,L04D2          ; Branch to 0x04D2 if Bit COCO Clear (Mn = 0)
          cli                           ; Clear Interrupt Mask (I <- 0)           
          bra L04DD                     ; Branch Always (1 = 1)                   
; 
          db $BF, $09, $0F, $09         ; data? BF, 09, 0F, 09                    
          db $FD, $BB, $08, $24         ; data? FD, BB, 08, $                     
          db $02, $3C, $57, $3A         ; data? 02, <, W, :                       
          db $56, $26, $E6, $34         ; data? V, &, E6, 4                       
          db $57, $46, $34, $57         ; data? W, F, 4, W                        
          db $46, $A9, $00, $B7         ; data? F, A9, 00, B7                     
          db $56, $81                   ; data? V, 81                             
; 
L24F2: 
          clrx                          ; Clear byte at clrx <- 0x00              
          sec                           ; Set Carry Bit , C ← 1                 
          rolx                          ; Rotate Byte at rolx Left through Carry Bit, C <- [b7 <<<< b0] <- C
          bcs L0521                     ; Branch to 0x0521 if C = 1               
          lsr RAM1_056                  ; Logical Shift Right of RAM1_056, b7 -> [b7 >>>> b0] -> C
          ror RAM1_057                  ; Rotate Byte at RAM1_057 Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lda RAM1_059                  ; Load Accumulator with value of Memory at RAM1_059, A <- (RAM1_059)
          sub RAM1_057                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_057)
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          lda RAM1_058                  ; Load Accumulator with value of Memory at RAM1_058, A <- (RAM1_058)
          sbc RAM1_056                  ; Subtract Memory Byte RAM1_056 and Carry Bit from Accumulator, A ←  (A) – (RAM1_056) – (C)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          bcc L04F3                     ; Branch to 0x04F3 if C bit is cleared    
          clc                           ; Clear Carry Bit (C <- 0)                
          rolx                          ; Rotate Byte at rolx Left through Carry Bit, C <- [b7 <<<< b0] <- C
          bcs L0521                     ; Branch to 0x0521 if C = 1               
          lsr RAM1_056                  ; Logical Shift Right of RAM1_056, b7 -> [b7 >>>> b0] -> C
          ror RAM1_057                  ; Rotate Byte at RAM1_057 Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lda RAM1_059                  ; Load Accumulator with value of Memory at RAM1_059, A <- (RAM1_059)
          add RAM1_057                  ; Add without Carry, A ← (A) + (RAM1_057)
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          lda RAM1_058                  ; Load Accumulator with value of Memory at RAM1_058, A <- (RAM1_058)
          adc RAM1_056                  ; ADD with CARRY, A ← (A) + (RAM1_056) + (C) 
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          bcc L0509                     ; Branch to 0x0509 if C bit is cleared    
          bra L04F3                     ; Branch Always (1 = 1)                   
; 
          db $9F, $81, $44              ; data? 9F, 81, D                         
; 
L2524: 
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
L2525: 
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          rts                           ; Return from Subroutine                  
; 
          db $48, $48, $48, $48         ; data? H, H, H, H                        
          db $48, $48, $81              ; data? H, H, 81                          
; 
L2531: 
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          bra L053A                     ; Branch Always (1 = 1)                   
; 
          db $CD, $07, $89, $AD         ; data? CD, 07, 89, AD                    
          db $05, $3A, $50, $2A         ; data? 05, :, P, *                       
          db $F7, $81                   ; data? F7, 81                            
; 
L253F: 
          lda #$14                      ; Load Accumulator with 0x14, A <- 0x14   
          add ACH                       ; Add without Carry, A ← (A) + (ACH)    
          tst ACL                       ; Test Memory Byte for Negative or Zero, (ACL) – 0x00
          bih L0549                     ; Branch to 0x0549 if IRQ Pin High IRQ=1  
          bset 7,RAM1_08f               ; Set Bit 7 at memory RAM1_08f (Mn <- 1 ) 
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bpl L0545                     ; Branch to 0x0545 if Plus N = 0          
          rts                           ; Return from Subroutine                  
; 
L254E: 
          lda #$85                      ; Load Accumulator with 0x85, A <- 0x85   
; 
          db $C1                        ; data? C1                                
; 
L2551: 
          lda #$21                      ; Load Accumulator with 0x21, A <- 0x21   
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bne L0553                     ; Branch to 0x0553 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L2557: 
          lda X2564,x                   ; Load Accumulator with data from  memory at 0x2564, A <- (0x2564)
          sta RAM1_064                  ; Store Accumulator in Memory at RAM1_064 
          lda X2565,x                   ; Load Accumulator with data from  memory at 0x2565, A <- (0x2565)
          sta RAM1_065                  ; Store Accumulator in Memory at RAM1_065 
          clr RAM1_066                  ; Clear byte at RAM1_066 <- 0x00          
          rts                           ; Return from Subroutine                  
; 
X2564: 
          db $7C                        ; data? |                                 
X2565: 
          db $52, $69, $EB, $2C         ; data? R, i, EB, ,                       
          db $00, $7F, $E0              ; data? 00, DEL, E0                       
; 
L256C: 
          inc ,x                        ; Increment Byte , Byte = Byte + 1        
          beq L0570                     ; Branch to 0x0570 if Equal Z=1           
          dec ,x                        ; Decrement Byte at  Byte = Byte - 1      
          dec ,x                        ; Decrement Byte at  Byte = Byte - 1      
          rts                           ; Return from Subroutine                  
; 
          db $A4, $07, $97, $4F         ; data? A4, 07, 97, O                     
          db $99, $49, $5A, $2A         ; data? 99, I, Z, *                       
          db $FC, $81                   ; data? FC, 81                            
; 
L257C: 
          lda #$80                      ; Load Accumulator with 0x80, A <- 0x80   
          bit ,x                        ; Bit Test Accumulator with Memory Byte (A) ∧ ()
          bne L0584                     ; Branch to 0x0584 if Not Equal (Z = 0);  
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          bne L057E                     ; Branch to 0x057E if Not Equal (Z = 0);  
          eor ,x                        ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X ()
          sta ,x                        ; Store Accumulator in Memory at          
          rts                           ; Return from Subroutine                  
; 
L2587: 
          ldx RAM1_056                  ; Load Index Register with Memory Byte, X <- (RAM1_056)
          inc RAM1_056                  ; Increment Byte RAM1_056, Byte = Byte + 1
          lda ,x                        ; Load Accumulator with value of Memory at , A <- ()
          brclr 1,RAM1_059,L0592        ; Branch to 0x0592 if Bit 1 Clear (Mn = 0)
          lda BOT1_0200,x               ; Load Accumulator with value of Memory at BOT1_0200, A <- (BOT1_0200)
          ldx RAM1_057                  ; Load Index Register with Memory Byte, X <- (RAM1_057)
          inc RAM1_057                  ; Increment Byte RAM1_057, Byte = Byte + 1
          brclr 0,RAM1_059,L059D        ; Branch to 0x059D if Bit 0 Clear (Mn = 0)
          sta BOT1_0200,x               ; Store Accumulator in Memory at BOT1_0200
          cmp STACK_0f7                 ; Compare Accumulator with Memory Byte, (A) - (STACK_0f7)
          dec RAM1_058                  ; Decrement Byte at RAM1_058 Byte = Byte - 1
          bpl L0587                     ; Branch to 0x0587 if Plus N = 0          
          rts                           ; Return from Subroutine                  
; 
L25A3: 
          clrx                          ; Clear byte at clrx <- 0x00              
          tsta                          ; Test Memory Byte for Negative or Zero, (tsta) – 0x00
          bpl L05B2                     ; Branch to 0x05B2 if Plus N = 0          
          ldx #$07                      ; Load Index Register with Memory Byte, X <- (0x07)
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          bmi L05B2                     ; Branch to 0x05B2 if Minus N = 1         
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          bmi L05B2                     ; Branch to 0x05B2 if Minus N = 1         
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rts                           ; Return from Subroutine                  
; 
          db $54, $41, $20, $20         ; data? T, A, " ", " "                    
          db $20, $31, $20, $20         ; data? " ", 1, " ", " "                  
          db $47, $41, $4C, $41         ; data? G, A, L, A                        
          db $20, $31, $20, $20         ; data? " ", 1, " ", " "                  
          db $56, $4F, $4C, $20         ; data? V, O, L, " "                      
          db $20, $31, $20, $20         ; data? " ", 1, " ", " "                  
          db $53, $45, $4E, $53         ; data? S, E, N, S                        
          db $20, $44, $58, $20         ; data? " ", D, X, " "                    
          db $52, $4D, $20, $20         ; data? R, M, " ", " "                    
          db $20, $4F, $4E, $20         ; data? " ", O, N, " "                    
          db $4E, $41, $56, $20         ; data? N, A, V, " "                      
          db $20, $31, $20, $20         ; data? " ", 1, " ", " "                  
          db $54, $45, $4C, $20         ; data? T, E, L, " "                      
          db $20, $52, $20, $20         ; data? " ", R, " ", " "                  
          db $47, $41, $4C, $41         ; data? G, A, L, A                        
          db $20, $4F, $46, $46         ; data? " ", O, F, F                      
          db $53, $45, $4E, $53         ; data? S, E, N, S                        
          db $20, $4C, $4F, $20         ; data? " ", L, O, " "                    
          db $52, $4D, $20, $20         ; data? R, M, " ", " "                    
          db $20, $4F, $46, $46         ; data? " ", O, F, F                      
          db $54, $45, $4C, $20         ; data? T, E, L, " "                      
          db $20, $4C, $20, $20         ; data? " ", L, " ", " "                  
          db $45, $31, $20, $50         ; data? E, 1, " ", P                      
          db $33, $3A, $30, $30         ; data? 3, :, 0, 0                        
          db $43, $44, $31, $20         ; data? C, D, 1, " "                      
          db $45, $52, $52, $31         ; data? E, R, R, 1                        
          db $4E, $4F, $20, $43         ; data? N, O, " ", C                      
          db $4F, $44, $45, $20         ; data? O, D, E, " "                      
          db $52, $30, $20, $30         ; data? R, 0, " ", 0                      
          db $30, $3A, $20, $20         ; data? 0, :, " ", " "                    
          db $46, $41, $44, $20         ; data? F, A, D, " "                      
          db $4F, $46, $46, $20         ; data? O, F, F, " "                      
; 
L2633: 
          clr STACK_0ca                 ; Clear byte at STACK_0ca <- 0x00         
          lda #$0A                      ; Load Accumulator with 0x0A, A <- 0x0A   
          sta STACK_0cf                 ; Store Accumulator in Memory at STACK_0cf
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          sta STACK_0ce                 ; Store Accumulator in Memory at STACK_0ce
          rts                           ; Return from Subroutine                  
; 
          db $AE, $D1, $CD, $25         ; data? AE, D1, CD, %                     
          db $6C, $26, $02, $1F         ; data? l, &, 02, 1F                      
          db $D2, $AE, $CF, $CD         ; data? D2, AE, CF, CD                    
          db $25, $6C, $26, $EF         ; data? %, l, &, EF                       
          db $07, $CE, $02, $1E         ; data? 07, CE, 02, 1E                    
          db $5D, $05, $CE, $79         ; data? ], 05, CE, y                      
          db $B6, $CE, $A4, $F8         ; data? B6, CE, A4, F8                    
          db $B7, $CE                   ; data? B7, CE                            
; 
L265C: 
          lda #$0A                      ; Load Accumulator with 0x0A, A <- 0x0A   
          brset 7,RAM1_060,L06C5        ; Branch to 0x06C5 if Bit 7 is set at RAM1_060 (Mn=1)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          brclr 3,RAM1_08b,L06C5        ; Branch to 0x06C5 if Bit 3 Clear (Mn = 0)
          tst STACK_0ce                 ; Test Memory Byte for Negative or Zero, (STACK_0ce) – 0x00
          beq L069B                     ; Branch to 0x069B if Equal Z=1           
          brset 7,STACK_0ce,L06C5       ; Branch to 0x06C5 if Bit 7 is set at STACK_0ce (Mn=1)
          brset 2,STACK_0ce,L0690       ; Branch to 0x0690 if Bit 2 is set at STACK_0ce (Mn=1)
          brclr 1,STACK_0ce,L067C       ; Branch to 0x067C if Bit 1 Clear (Mn = 0)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          brclr 0,STACK_0ce,L06B6       ; Branch to 0x06B6 if Bit 0 Clear (Mn = 0)
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          bra L06B6                     ; Branch Always (1 = 1)                   
; 
          db $0A, $CE, $08, $0D         ; data? 0A, CE, 08, 0D                    
          db $CE, $19, $A6, $05         ; data? CE, 19, A6, 05                    
          db $00, $CE, $3E, $A6         ; data? 00, CE, >, A6                     
          db $09, $0D, $67, $2A         ; data? 09, 0D, g, *                      
          db $1E, $5D, $20, $26         ; data? 1E, ], " ", &                     
          db $03, $CE, $08, $04         ; data? 03, CE, 08, 04                    
          db $CB, $05, $A6, $06         ; data? CB, 05, A6, 06                    
          db $01, $CE, $19, $A6         ; data? 01, CE, 19, A6                    
          db $01, $06, $CE, $16         ; data? 01, 06, CE, 16                    
          db $A6, $06, $0C, $7F         ; data? A6, 06, 0C, DEL                   
          db $11, $06, $7F, $0E         ; data? 11, 06, DEL, 0E                   
          db $A6, $04, $0A, $7F         ; data? A6, 04, 0A, DEL                   
          db $07, $B6, $7F, $43         ; data? 07, B6, DEL, C                    
          db $A4, $03, $27, $02         ; data? A4, 03, ', 02                     
          db $AA, $40, $0A, $7F         ; data? AA, @, 0A, DEL                    
          db $0C, $B7, $56, $B6         ; data? 0C, B7, V, B6                     
          db $7F, $43, $A4, $03         ; data? DEL, C, A4, 03                    
          db $CD, $25, $2C, $BB         ; data? CD, %, ,, BB                      
          db $56, $B8, $CA, $27         ; data? V, B8, CA, '                      
          db $06, $B8, $CA, $B7         ; data? 06, B8, CA, B7                    
          db $CA, $1E, $5D, $81         ; data? CA, 1E, ], 81                     
; 
L26D0: 
          rts                           ; Return from Subroutine                  
; 
L26D1: 
          lda RAM1_07a                  ; Load Accumulator with value of Memory at RAM1_07a, A <- (RAM1_07a)
          beq L0735                     ; Branch to 0x0735 if Equal Z=1           
          dec RAM1_079                  ; Decrement Byte at RAM1_079 Byte = Byte - 1
          bne L0735                     ; Branch to 0x0735 if Not Equal (Z = 0);  
          clr RAM1_07a                  ; Clear byte at RAM1_07a <- 0x00          
          bra L072D                     ; Branch Always (1 = 1)                   
; 
L26DD: 
          brset 1,RAM1_077,L06FD        ; Branch to 0x06FD if Bit 1 is set at RAM1_077 (Mn=1)
          brclr 4,RAM1_077,L0701        ; Branch to 0x0701 if Bit 4 Clear (Mn = 0)
          lda RAM1_078                  ; Load Accumulator with value of Memory at RAM1_078, A <- (RAM1_078)
          and #$1F                      ; Logical AND between A and constant 0x1F, A ← (A) && (0x1F)
          beq L06FD                     ; Branch to 0x06FD if Equal Z=1           
          sta RAM1_07a                  ; Store Accumulator in Memory at RAM1_07a 
          lda RAM1_077                  ; Load Accumulator with value of Memory at RAM1_077, A <- (RAM1_077)
          and #$E0                      ; Logical AND between A and constant 0xE0, A ← (A) && (0xE0)
          add RAM1_07a                  ; Add without Carry, A ← (A) + (RAM1_07a)
          sta RAM1_07a                  ; Store Accumulator in Memory at RAM1_07a 
          jsr L2524                     ; Jump to Subroutine at 0x2524            
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda X2735,x                   ; Load Accumulator with data from  memory at 0x2735, A <- (0x2735)
          sta RAM1_079                  ; Store Accumulator in Memory at RAM1_079 
          cmp X3F7A                     ; Compare Accumulator with Memory Byte, (A) - (0x3F7A)
          clr RAM1_077                  ; Clear byte at RAM1_077 <- 0x00          
          brclr 6,RAM1_09f,L0735        ; Branch to 0x0735 if Bit 6 Clear (Mn = 0)
          brset 6,RAM1_05d,L0735        ; Branch to 0x0735 if Bit 6 is set at RAM1_05d (Mn=1)
          lda RAM1_07a                  ; Load Accumulator with value of Memory at RAM1_07a, A <- (RAM1_07a)
          beq L0719                     ; Branch to 0x0719 if Equal Z=1           
          brclr 7,RAM1_09f,L0711        ; Branch to 0x0711 if Bit 7 Clear (Mn = 0)
          bclr 6,RAM1_09f               ; Clear bit 6 at RAM1_09f                 
          rts                           ; Return from Subroutine                  
; 
          db $3F, $7A, $A4, $1F         ; data? 3F, z, A4, 1F                     
          db $AA, $C0, $20, $14         ; data? AA, C0, " ", 14                   
          db $1D, $9F, $B6, $9F         ; data? 1D, 9F, B6, 9F                    
          db $2A, $04, $A8, $90         ; data? *, 04, A8, 90                     
          db $20, $0A, $97, $D6         ; data? " ", 0A, 97, D6                   
          db $27, $69, $0B, $69         ; data? ', i, 0B, i                       
          db $03, $D6, $27, $3B         ; data? 03, D6, ', ;                      
          db $B7, $78, $A1, $01         ; data? B7, x, A1, 01                     
          db $27, $02, $1C, $5D         ; data? ', 02, 1C, ]                      
X2735: 
          db $81, $19, $0A, $4B         ; data? 81, 19, 0A, K                     
          db $25, $32, $00, $E1         ; data? %, 2, 00, E1                      
          db $E2, $E3, $E4, $E5         ; data? E2, E3, E4, E5                    
          db $E6, $E7, $07, $E9         ; data? E6, E7, 07, E9                    
          db $01, $01, $01, $ED         ; data? 01, 01, 01, ED                    
          db $0D, $09, $0A, $F6         ; data? 0D, 09, 0A, F6                    
          db $01, $F3, $0C, $F5         ; data? 01, F3, 0C, F5                    
          db $01, $F7, $F8, $F9         ; data? 01, F7, F8, F9                    
          db $FA, $FB, $FC, $FD         ; data? FA, FB, FC, FD                    
          db $FE, $06, $EA, $01         ; data? FE, 06, EA, 01                    
          db $02, $0F, $0F, $03         ; data? 02, 0F, 0F, 03                    
          db $FF, $F4, $08, $EE         ; data? FF, F4, 08, EE                    
          db $EF, $F0, $F1, $F2         ; data? EF, F0, F1, F2                    
          db $00, $E1, $E2, $E3         ; data? 00, E1, E2, E3                    
          db $E4, $E5, $E6, $E7         ; data? E4, E5, E6, E7                    
          db $E8, $E9, $04, $EB         ; data? E8, E9, 04, EB                    
          db $EC, $ED, $0D, $09         ; data? EC, ED, 0D, 09                    
          db $0A, $F6, $05, $F3         ; data? 0A, F6, 05, F3                    
          db $0C, $F5, $0B, $F7         ; data? 0C, F5, 0B, F7                    
          db $F8, $F9, $FA, $FB         ; data? F8, F9, FA, FB                    
          db $FC, $FD, $FE, $06         ; data? FC, FD, FE, 06                    
          db $EA, $01, $02, $0F         ; data? EA, 01, 02, 0F                    
          db $0F, $03, $FF, $F4         ; data? 0F, 03, FF, F4                    
          db $08, $EE, $EF, $F0         ; data? 08, EE, EF, F0                    
          db $F1, $F2                   ; data? F1, F2                            
; 
L2797: 
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          cmp RAM1_078                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_078)
          beq L07BD                     ; Branch to 0x07BD if Equal Z=1           
          cmp #$1F                      ; Compare Accumulator with Memory Byte, (A) - (0x1F)
          bne L07A7                     ; Branch to 0x07A7 if Not Equal (Z = 0);  
          eor RAM1_078                  ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM1_078)
          and #$F0                      ; Logical AND between A and constant 0xF0, A ← (A) && (0xF0)
          bra L07BD                     ; Branch Always (1 = 1)                   
; 
          db $A5, $E0, $27, $0F         ; data? A5, E0, ', 0F                     
          db $A5, $1F, $26, $0B         ; data? A5, 1F, &, 0B                     
          db $B8, $78, $27, $07         ; data? B8, x, ', 07                      
          db $A1, $06, $22, $03         ; data? A1, 06, ", 03                     
          db $A5, $00, $81, $A6         ; data? A5, 00, 81, A6                    
          db $01, $81, $81              ; data? 01, 81, 81                        
; 
L27BE: 
          brset 6,RAM1_05f,L003D        ; Branch to 0x003D if Bit 6 is set at RAM1_05f (Mn=1)
          brclr 1,RAM1_0bc,L07D9        ; Branch to 0x07D9 if Bit 1 Clear (Mn = 0)
          brset 7,RAM1_0b9,L07D9        ; Branch to 0x07D9 if Bit 7 is set at RAM1_0b9 (Mn=1)
          brset 7,RAM1_0b3,L07D9        ; Branch to 0x07D9 if Bit 7 is set at RAM1_0b3 (Mn=1)
          brclr 2,STACK_0ce,L07D3       ; Branch to 0x07D3 if Bit 2 Clear (Mn = 0)
          brset 1,STACK_0ce,L07D3       ; Branch to 0x07D3 if Bit 1 is set at STACK_0ce (Mn=1)
          brclr 0,STACK_0ce,L07D9       ; Branch to 0x07D9 if Bit 0 Clear (Mn = 0)
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          sta RAM1_0b3                  ; Store Accumulator in Memory at RAM1_0b3 
          bclr 1,RAM1_0bc               ; Clear bit 1 at RAM1_0bc                 
          brclr 5,STACK_0cb,L0000       ; Branch to 0x0000 if Bit 5 Clear (Mn = 0)
          lda STACK_0d5                 ; Load Accumulator with value of Memory at STACK_0d5, A <- (STACK_0d5)
          and #$70                      ; Logical AND between A and constant 0x70, A ← (A) && (0x70)
          bne L0000                     ; Branch to 0x0000 if Not Equal (Z = 0);  
          lda STACK_0d5                 ; Load Accumulator with value of Memory at STACK_0d5, A <- (STACK_0d5)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          beq L0000                     ; Branch to 0x0000 if Equal Z=1           
          cmp #$06                      ; Compare Accumulator with Memory Byte, (A) - (0x06)
          bcc L0000                     ; Branch to 0x0000 if C bit is cleared    
          clra                          ; Clear byte at clra <- 0x00              
          brset 3,STACK_0ce,L07F3       ; Branch to 0x07F3 if Bit 3 is set at STACK_0ce (Mn=1)
          brclr 6,RAM1_0b5,L07F5        ; Branch to 0x07F5 if Bit 6 Clear (Mn = 0)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          eor STACK_0d5                 ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (STACK_0d5)
          and #$08                      ; Logical AND between A and constant 0x08, A ← (A) && (0x08)
          beq L0000                     ; Branch to 0x0000 if Equal Z=1           
          eor STACK_0d5                 ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (STACK_0d5)
          jsr L249F                     ; Jump to Subroutine at 0x249F            
          bclr 6,STACK_0d2              ; Clear bit 6 at STACK_0d2                
          lda RAM1_0b6                  ; Load Accumulator with value of Memory at RAM1_0b6, A <- (RAM1_0b6)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          cmp #$06                      ; Compare Accumulator with Memory Byte, (A) - (0x06)
          bne L000C                     ; Branch to 0x000C if Not Equal (Z = 0);  
          bset 6,STACK_0d2              ; Set Bit 6 at memory STACK_0d2 (Mn <- 1 )
          lda RAM1_07f                  ; Load Accumulator with value of Memory at RAM1_07f, A <- (RAM1_07f)
          and #$2B                      ; Logical AND between A and constant 0x2B, A ← (A) && (0x2B)
          cmp #$02                      ; Compare Accumulator with Memory Byte, (A) - (0x02)
          bne L003D                     ; Branch to 0x003D if Not Equal (Z = 0);  
          brset 5,STACK_0ce,L0023       ; Branch to 0x0023 if Bit 5 is set at STACK_0ce (Mn=1)
          lda STACK_0ca                 ; Load Accumulator with value of Memory at STACK_0ca, A <- (STACK_0ca)
          and #$0F                      ; Logical AND between A and constant 0x0F, A ← (A) && (0x0F)
          cmp #$01                      ; Compare Accumulator with Memory Byte, (A) - (0x01)
          beq L0023                     ; Branch to 0x0023 if Equal Z=1           
          cmp #$06                      ; Compare Accumulator with Memory Byte, (A) - (0x06)
          bne L003D                     ; Branch to 0x003D if Not Equal (Z = 0);  
          brset 5,STACK_0cb,L002E       ; Branch to 0x002E if Bit 5 is set at STACK_0cb (Mn=1)
          brset 6,STACK_0cb,L002E       ; Branch to 0x002E if Bit 6 is set at STACK_0cb (Mn=1)
          brclr 7,STACK_0cb,L0034       ; Branch to 0x0034 if Bit 7 Clear (Mn = 0)
          bset 2,STACK_0cb              ; Set Bit 2 at memory STACK_0cb (Mn <- 1 )
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          bclr 5,STACK_0cb              ; Clear bit 5 at STACK_0cb                
          bclr 6,STACK_0cb              ; Clear bit 6 at STACK_0cb                
          brset 6,STACK_0ce,L003D       ; Branch to 0x003D if Bit 6 is set at STACK_0ce (Mn=1)
          brclr 6,RAM1_05d,L003D        ; Branch to 0x003D if Bit 6 Clear (Mn = 0)
          jmp L2BDF                     ; Unconditional Jump to 0x2BDF            
; 
          db $81, $B6, $B8, $A4         ; data? 81, B6, B8, A4                    
          db $60, $A1, $60, $26         ; data? `, A1, `, &                       
          db $08, $B6, $B8, $A4         ; data? 08, B6, B8, A4                    
          db $0F, $AA, $10, $20         ; data? 0F, AA, 10, " "                   
          db $16, $A6, $10, $20         ; data? 16, A6, 10, " "                   
          db $08, $B6, $B8, $A4         ; data? 08, B6, B8, A4                    
          db $60, $27, $06, $A6         ; data? `, ', 06, A6                      
          db $F0, $BB, $B8, $20         ; data? F0, BB, B8, " "                   
          db $0B, $B6, $B8, $A4         ; data? 0B, B6, B8, A4                    
          db $0F, $AA, $60, $04         ; data? 0F, AA, `, 04                     
          db $B8, $02, $A8, $01         ; data? B8, 02, A8, 01                    
          db $AA, $80, $20, $2B         ; data? AA, 80, " ", +                    
          db $B6, $B8, $04, $B8         ; data? B6, B8, 04, B8                    
          db $05, $A4, $03, $4C         ; data? 05, A4, 03, L                     
          db $20, $1F, $A6, $08         ; data? " ", 1F, A6, 08                   
          db $07, $B8, $18, $4F         ; data? 07, B8, 18, O                     
          db $20, $17, $B6, $B8         ; data? " ", 17, B6, B8                   
          db $04, $B8, $08, $48         ; data? 04, B8, 08, H                     
          db $48, $B8, $B8, $A4         ; data? H, B8, B8, A4                     
          db $08, $20, $06, $44         ; data? 08, " ", 06, D                    
          db $44, $B8, $B8, $A4         ; data? D, B8, B8, A4                     
          db $02, $AA, $04, $B8         ; data? 02, AA, 04, B8                    
          db $B8, $AA, $F0, $B7         ; data? B8, AA, F0, B7                    
          db $B4, $A6, $80, $20         ; data? B4, A6, 80, " "                   
          db $57, $20, $B2, $20         ; data? W, " ", B2, " "                   
          db $9C, $20, $C9, $20         ; data? 9C, " ", C9, " "                  
          db $D9, $04, $B8, $FB         ; data? D9, 04, B8, FB                    
          db $0A, $69, $20, $A6         ; data? 0A, i, " ", A6                    
          db $01, $20, $E4, $05         ; data? 01, " ", E4, 05                   
          db $B8, $05, $18, $B3         ; data? B8, 05, 18, B3                    
          db $1A, $B3, $81, $09         ; data? 1A, B3, 81, 09                    
          db $CE, $E9, $A6, $30         ; data? CE, E9, A6, 0                     
          db $CC, $29, $76, $CC         ; data? CC, ), v, CC                      
          db $2A, $1F, $04, $B6         ; data? *, 1F, 04, B6                     
          db $06, $06, $8E, $13         ; data? 06, 06, 8E, 13                    
          db $05, $B8, $17, $81         ; data? 05, B8, 17, 81                    
          db $A6, $19, $02, $B5         ; data? A6, 19, 02, B5                    
          db $02, $A6, $18, $CD         ; data? 02, A6, 18, CD                    
          db $23, $F3, $A6, $61         ; data? #, F3, A6, a                      
          db $CC, $29, $62, $1C         ; data? CC, ), b, 1C                      
          db $C5, $A6, $63, $CC         ; data? C5, A6, c, CC                     
          db $29, $64, $CC, $29         ; data? ), d, CC, )                       
          db $9C, $1E, $D2, $AE         ; data? 9C, 1E, D2, AE                    
          db $FA, $BF, $D1, $20         ; data? FA, BF, D1, " "                   
          db $34, $A6, $A4, $0B         ; data? 4, A6, A4, 0B                     
          db $B6, $02, $A6, $B4         ; data? B6, 02, A6, B4                    
          db $1F, $D2, $20, $69         ; data? 1F, D2, " ", i                    
          db $A6, $86, $B7, $B3         ; data? A6, 86, B7, B3                    
          db $1F, $D2, $14, $CB         ; data? 1F, D2, 14, CB                    
          db $81, $A6, $08, $04         ; data? 81, A6, 08, 04                    
          db $B8, $12, $AE, $D4         ; data? B8, 12, AE, D4                    
          db $CD, $37, $C7, $B7         ; data? CD, 7, C7, B7                     
          db $5B, $B6, $B8, $CD         ; data? [, B6, B8, CD                     
          db $37, $9B, $B8, $5B         ; data? 7, 9B, B8, [                      
          db $A4, $01, $AA, $02         ; data? A4, 01, AA, 02                    
          db $CC, $28, $94, $1E         ; data? CC, (, 94, 1E                     
          db $D2, $20, $05, $1E         ; data? D2, " ", 05, 1E                   
          db $D2, $A6, $C4, $C1         ; data? D2, A6, C4, C1                    
          db $A6, $CC, $0F, $D2         ; data? A6, CC, 0F, D2                    
          db $B9, $AE, $FA, $BF         ; data? B9, AE, FA, BF                    
          db $D1, $20, $17, $0E         ; data? D1, " ", 17, 0E                   
          db $D2, $2D, $A6, $D4         ; data? D2, -, A6, D4                     
          db $20, $05, $0E, $D2         ; data? " ", 05, 0E, D2                   
          db $26, $A6, $DC, $19         ; data? &, A6, DC, 19                     
          db $BB, $1B, $BB, $20         ; data? BB, 1B, BB, " "                   
          db $20, $A6, $C4, $C1         ; data? " ", A6, C4, C1                   
          db $A6, $CC, $06, $5D         ; data? A6, CC, 06, ]                     
          db $2E, $19, $BB, $1B         ; data? ., 19, BB, 1B                     
          db $BB, $0F, $D2, $02         ; data? BB, 0F, D2, 02                    
          db $AA, $07, $B7, $B3         ; data? AA, 07, B7, B3                    
          db $14, $CB, $0F, $D2         ; data? 14, CB, 0F, D2                    
          db $1A, $AE, $FA, $BF         ; data? 1A, AE, FA, BF                    
          db $D1, $20, $14, $A6         ; data? D1, " ", 14, A6                   
          db $94, $14, $CB, $1A         ; data? 94, 14, CB, 1A                    
          db $D2, $B7, $B3, $CC         ; data? D2, B7, B3, CC                    
          db $2A, $15, $A6, $8A         ; data? *, 15, A6, 8A                     
          db $CD, $2A, $41, $1B         ; data? CD, *, A, 1B                      
          db $D2, $1E, $7E, $A6         ; data? D2, 1E, ~, A6                     
          db $90, $B7, $77, $81         ; data? 90, B7, w, 81                     
          db $1A, $7E, $0B, $D2         ; data? 1A, ~, 0B, D2                     
          db $FA, $13, $CB, $A6         ; data? FA, 13, CB, A6                    
          db $80, $CD, $2A, $41         ; data? 80, CD, *, A                      
          db $20, $25, $5F, $1A         ; data? " ", %, _, 1A                     
          db $D2, $04, $BA, $0C         ; data? D2, 04, BA, 0C                    
          db $06, $CE, $09, $08         ; data? 06, CE, 09, 08                    
          db $B6, $09, $0F, $BA         ; data? B6, 09, 0F, BA                    
          db $06, $05, $B6, $03         ; data? 06, 05, B6, 03                    
          db $CC, $2A, $06, $0B         ; data? CC, *, 06, 0B                     
          db $B6, $03, $A6, $B4         ; data? B6, 03, A6, B4                    
          db $C1, $A6, $42, $B7         ; data? C1, A6, B, B7                     
          db $B3, $18, $CC, $A6         ; data? B3, 18, CC, A6                    
          db $B0, $20, $CA, $A6         ; data? B0, " ", CA, A6                   
          db $27, $CD, $24, $C5         ; data? ', CD, $, C5                      
          db $A1, $19, $24, $0A         ; data? A1, 19, $, 0A                     
          db $16, $5D, $B6, $B4         ; data? 16, ], B6, B4                     
          db $A4, $74, $A1, $60         ; data? A4, t, A1, `                      
          db $27, $11, $07, $81         ; data? ', 11, 07, 81                     
          db $09, $17, $81, $AE         ; data? 09, 17, 81, AE                    
          db $A8, $CD, $37, $C7         ; data? A8, CD, 7, C7                     
          db $B7, $85, $07, $5D         ; data? B7, 85, 07, ]                     
          db $16, $20, $3B, $AE         ; data? 16, " ", ;, AE                    
          db $82, $B8, $B8, $A4         ; data? 82, B8, B8, A4                    
          db $74, $27, $2A, $17         ; data? t, ', *, 17                       
          db $5D, $16, $7E, $16         ; data? ], 16, ~, 16                      
          db $81, $B6, $88, $40         ; data? 81, B6, 88, @                     
          db $44, $B7, $85, $06         ; data? D, B7, 85, 06                     
          db $8E, $24, $B6, $B4         ; data? 8E, $, B6, B4                     
          db $A4, $7F, $B1, $B8         ; data? A4, DEL, B1, B8                   
          db $26, $1C, $05, $CE         ; data? &, 1C, 05, CE                     
          db $19, $02, $CE, $16         ; data? 19, 02, CE, 16                    
          db $00, $CE, $13, $CD         ; data? 00, CE, 13, CD                    
          db $1D, $9B, $B4, $56         ; data? 1D, 9B, B4, V                     
          db $27, $0C, $1F, $B5         ; data? ', 0C, 1F, B5                     
          db $C1, $BF, $B3, $20         ; data? C1, BF, B3, " "                   
          db $05, $A6, $80, $CD         ; data? 05, A6, 80, CD                    
          db $2A, $41, $14, $CE         ; data? *, A, 14, CE                      
          db $13, $CE, $11, $CE         ; data? 13, CE, 11, CE                    
          db $A6, $7D, $B7, $CF         ; data? A6, }, B7, CF                     
          db $07, $CE, $06, $13         ; data? 07, CE, 06, 13                    
          db $CE, $A6, $32, $B7         ; data? CE, A6, 2, B7                     
          db $CF, $81, $0A, $D2         ; data? CF, 81, 0A, D2                    
          db $0E, $1A, $D2, $09         ; data? 0E, 1A, D2, 09                    
          db $BB, $04, $A6, $C2         ; data? BB, 04, A6, C2                    
          db $20, $13, $A6, $01         ; data? " ", 13, A6, 01                   
          db $B7, $CC, $81, $B6         ; data? B7, CC, 81, B6                    
          db $CC, $A1, $FF, $26         ; data? CC, A1, FF, &                     
          db $F5, $1B, $D2, $B6         ; data? F5, 1B, D2, B6                    
          db $B7, $B7, $C8, $A6         ; data? B7, B7, C8, A6                    
          db $C0, $CC, $23, $F6         ; data? C0, CC, #, F6                     
          db $B7, $B3, $14, $CB         ; data? B7, B3, 14, CB                    
          db $1F, $D2, $B6, $78         ; data? 1F, D2, B6, x                     
          db $CD, $25, $2C, $B8         ; data? CD, %, ,, B8                      
          db $B8, $A4, $70, $B8         ; data? B8, A4, p, B8                     
          db $B8, $AA, $80, $B7         ; data? B8, AA, 80, B7                    
          db $B4, $0B, $69, $02         ; data? B4, 0B, i, 02                     
          db $11, $B4, $81, $07         ; data? 11, B4, 81, 07                    
          db $CE, $03, $CC, $2A         ; data? CE, 03, CC, *                     
          db $E3, $0E, $B9, $26         ; data? E3, 0E, B9, &                     
          db $0F, $BA, $03, $04         ; data? 0F, BA, 03, 04                    
          db $B6, $20, $07, $8E         ; data? B6, " ", 07, 8E                   
          db $1D, $0F, $C5, $1A         ; data? 1D, 0F, C5, 1A                    
          db $09, $B5, $17, $0D         ; data? 09, B5, 17, 0D                    
          db $C5, $14, $1D, $C5         ; data? C5, 14, 1D, C5                    
          db $1A, $C5, $B6, $C5         ; data? 1A, C5, B6, C5                    
          db $A4, $1F, $CD, $24         ; data? A4, 1F, CD, $                     
          db $A8, $B6, $C5, $A4         ; data? A8, B6, C5, A4                    
          db $1F, $AB, $23, $CC         ; data? 1F, AB, #, CC                     
          db $23, $F6, $A6, $01         ; data? #, F6, A6, 01                     
          db $09, $BB, $04, $07         ; data? 09, BB, 04, 07                    
          db $B5, $01, $4C, $0E         ; data? B5, 01, L, 0E                     
          db $B9, $06, $0F, $BA         ; data? B9, 06, 0F, BA                    
          db $05, $05, $B6, $02         ; data? 05, 05, B6, 02                    
          db $A6, $03, $CD, $24         ; data? A6, 03, CD, $                     
          db $73, $A6, $13, $0C         ; data? s, A6, 13, 0C                     
          db $D2, $32, $07, $B5         ; data? D2, 2, 07, B5                     
          db $19, $0F, $BA, $03         ; data? 19, 0F, BA, 03                    
          db $04, $B6, $13, $09         ; data? 04, B6, 13, 09                    
          db $CE, $0B, $0C, $BB         ; data? CE, 0B, 0C, BB                    
          db $03, $01, $BB, $0A         ; data? 03, 01, BB, 0A                    
          db $A6, $CE, $CC, $23         ; data? A6, CE, CC, #                     
          db $D9, $A6, $C2, $08         ; data? D9, A6, C2, 08                    
          db $BB, $F8, $0B, $BB         ; data? BB, F8, 0B, BB                    
          db $1C, $4F, $05, $B8         ; data? 1C, O, 05, B8                     
          db $07, $AA, $10, $07         ; data? 07, AA, 10, 07                    
          db $8E, $02, $AA, $20         ; data? 8E, 02, AA, " "                   
          db $B7, $C9, $B6, $B7         ; data? B7, C9, B6, B7                    
          db $B7, $C8, $A6, $C0         ; data? B7, C8, A6, C0                    
          db $0F, $CB, $03, $CC         ; data? 0F, CB, 03, CC                    
          db $23, $EA, $CC, $23         ; data? #, EA, CC, #                      
          db $D9, $81, $0C, $5F         ; data? D9, 81, 0C, _                     
          db $4E, $05, $B6, $07         ; data? N, 05, B6, 07                     
          db $CD, $2A, $15, $A6         ; data? CD, *, 15, A6                     
          db $70, $20, $E9, $B6         ; data? p, " ", E9, B6                    
          db $CF, $4A, $02, $CE         ; data? CF, J, 02, CE                     
          db $28, $01, $B9, $08         ; data? (, 01, B9, 08                     
          db $0C, $BB, $02, $2B         ; data? 0C, BB, 02, +                     
          db $18, $04, $BF, $15         ; data? 18, 04, BF, 15                    
          db $2A, $0E, $A6, $32         ; data? *, 0E, A6, 2                      
          db $B7, $CF, $A6, $D4         ; data? B7, CF, A6, D4                    
          db $07, $B6, $02, $A6         ; data? 07, B6, 02, A6                    
          db $DC, $CC, $29, $62         ; data? DC, CC, ), b                      
          db $0B, $D2, $96, $20         ; data? 0B, D2, 96, " "                   
          db $D6, $A6, $0A, $B7         ; data? D6, A6, 0A, B7                    
          db $CE, $A6, $7D, $B7         ; data? CE, A6, }, B7                     
          db $CF, $2A, $8A, $A6         ; data? CF, *, 8A, A6                     
          db $4B, $B7, $CF, $AE         ; data? K, B7, CF, AE                     
          db $04, $CD, $25, $57         ; data? 04, CD, %, W                      
          db $1C, $5F, $B6, $B7         ; data? 1C, _, B6, B7                     
          db $B7, $C4, $A6, $15         ; data? B7, C4, A6, 15                    
          db $CC, $23, $EA, $B6         ; data? CC, #, EA, B6                     
          db $CF, $4A, $2A, $F6         ; data? CF, J, *, F6                      
          db $11, $61, $14, $5D         ; data? 11, a, 14, ]                      
          db $81, $CC, $24, $12         ; data? 81, CC, $, 12                     
          db $1F, $CB, $0C, $5F         ; data? 1F, CB, 0C, _                     
          db $F8, $0F, $69, $F5         ; data? F8, 0F, i, F5                     
          db $B6, $B8, $04, $B8         ; data? B6, B8, 04, B8                    
          db $20, $A4, $07, $97         ; data? " ", A4, 07, 97                   
          db $D6, $2B, $DA, $0B         ; data? D6, +, DA, 0B                     
          db $69, $02, $A4, $0C         ; data? i, 02, A4, 0C                     
          db $0F, $BA, $03, $04         ; data? 0F, BA, 03, 04                    
          db $B6, $03, $07, $B5         ; data? B6, 03, 07, B5                    
          db $02, $AA, $02, $06         ; data? 02, AA, 02, 06                    
          db $8E, $0E, $03, $BB         ; data? 8E, 0E, 03, BB                    
          db $0B, $AA, $01, $20         ; data? 0B, AA, 01, " "                   
          db $07, $A6, $18, $07         ; data? 07, A6, 18, 07                    
          db $B8, $02, $A6, $1C         ; data? B8, 02, A6, 1C                    
          db $5F, $CD, $24, $03         ; data? _, CD, $, 03                      
          db $06, $CE, $05, $B6         ; data? 06, CE, 05, B6                    
          db $BD, $04, $BB, $02         ; data? BD, 04, BB, 02                    
          db $B6, $B8, $A4, $70         ; data? B6, B8, A4, p                     
          db $0F, $B9, $01, $4F         ; data? 0F, B9, 01, O                     
          db $CD, $25, $25, $CD         ; data? CD, %, %, CD                      
          db $24, $03, $A6, $02         ; data? $, 03, A6, 02                     
          db $04, $B8, $24, $A6         ; data? 04, B8, $, A6                     
          db $08, $0F, $BA, $03         ; data? 08, 0F, BA, 03                    
          db $04, $B6, $03, $07         ; data? 04, B6, 03, 07                    
          db $B5, $02, $AA, $01         ; data? B5, 02, AA, 01                    
          db $06, $CE, $03, $0D         ; data? 06, CE, 03, 0D                    
          db $B5, $02, $AA, $04         ; data? B5, 02, AA, 04                    
          db $07, $8E, $05, $09         ; data? 07, 8E, 05, 09                    
          db $B5, $02, $AA, $04         ; data? B5, 02, AA, 04                    
          db $03, $B8, $09, $AA         ; data? 03, B8, 09, AA                    
          db $20, $20, $05, $07         ; data? " ", " ", 05, 07                  
          db $B8, $02, $AA, $20         ; data? B8, 02, AA, " "                   
          db $0B, $B6, $02, $AA         ; data? 0B, B6, 02, AA                    
          db $10, $0B, $69, $02         ; data? 10, 0B, i, 02                     
          db $A4, $2F, $CD, $24         ; data? A4, /, CD, $                      
          db $03, $4F, $5C, $05         ; data? 03, O, \, 05                      
          db $BB, $07, $B6, $BD         ; data? BB, 07, B6, BD                    
          db $A4, $70, $CD, $25         ; data? A4, p, CD, %                      
          db $25, $CD, $24, $03         ; data? %, CD, $, 03                      
          db $81, $48, $28, $4C         ; data? 81, H, (, L                       
          db $2C, $81                   ; data? ,, 81                             
; 
L2BDF: 
          clrx                          ; Clear byte at clrx <- 0x00              
          brclr 3,STACK_0ce,L03E5       ; Branch to 0x03E5 if Bit 3 Clear (Mn = 0)
          ldx #$52                      ; Load Index Register with Memory Byte, X <- (0x52)
          lda X2BFC,x                   ; Load Accumulator with data from  memory at 0x2BFC, A <- (0x2BFC)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X2BFB,x                   ; Load Accumulator with data from  memory at 0x2BFB, A <- (0x2BFB)
          beq L03FA                     ; Branch to 0x03FA if Equal Z=1           
          jsr L2797                     ; Jump to Subroutine at 0x2797            
          bne L03E5                     ; Branch to 0x03E5 if Not Equal (Z = 0);  
          ldx X2BFA,x                   ; Load Index Register with Memory Byte, X <- (0x2BFA)
          jsr L289E,x ;INFO: index jump ; Jump to Subroutine at 0x289E            
X2BFA: 
          rts                           ; Return from Subroutine                  
; 
X2BFB: 
          db $E0                        ; data? E0                                
X2BFC: 
          db $E9, $A0, $CD, $80         ; data? E9, A0, CD, 80                    
          db $D2, $C0, $DB, $FF         ; data? D2, C0, DB, FF                    
          db $00, $F4, $02, $E9         ; data? 00, F4, 02, E9                    
          db $25, $A9, $2F, $C9         ; data? %, A9, /, C9                      
          db $3E, $E7, $84, $F8         ; data? >, E7, 84, F8                     
          db $87, $87, $B9, $98         ; data? 87, 87, B9, 98                    
          db $B9, $A7, $82, $B8         ; data? B9, A7, 82, B8                    
          db $7E, $C7, $92, $D8         ; data? ~, C7, 92, D8                     
          db $99, $FC, $84, $FD         ; data? 99, FC, 84, FD                    
          db $87, $9C, $B9, $9D         ; data? 87, 9C, B9, 9D                    
          db $B9, $BC, $82, $BD         ; data? B9, BC, 82, BD                    
          db $7E, $DC, $92, $DD         ; data? ~, DC, 92, DD                     
          db $99, $F0, $84, $EF         ; data? 99, F0, 84, EF                    
          db $87, $90, $B9, $8F         ; data? 87, 90, B9, 8F                    
          db $B9, $B0, $82, $AF         ; data? B9, B0, 82, AF                    
          db $7E, $D0, $92, $CF         ; data? ~, D0, 92, CF                     
          db $99, $0B, $50, $F5         ; data? 99, 0B, P, F5                     
          db $45, $B5, $5B, $D5         ; data? E, B5, [, D5                      
          db $64, $08, $04, $F6         ; data? d, 08, 04, F6                     
          db $12, $D6, $22, $36         ; data? 12, D6, ", 6                      
          db $06, $E7, $95, $F8         ; data? 06, E7, 95, F8                    
          db $9C, $FC, $95, $FD         ; data? 9C, FC, 95, FD                    
          db $9C, $F0, $95, $EF         ; data? 9C, F0, 95, EF                    
          db $9C, $F5, $64, $E0         ; data? 9C, F5, d, E0                     
          db $E2, $F7, $08, $00         ; data? E2, F7, 08, 00                    
; 
L2C60: 
          brset 7,RAM1_060,L0482        ; Branch to 0x0482 if Bit 7 is set at RAM1_060 (Mn=1)
          brclr 3,RAM1_08b,L0482        ; Branch to 0x0482 if Bit 3 Clear (Mn = 0)
          lda #$48                      ; Load Accumulator with 0x48, A <- 0x48   
          brset 2,RAM1_0be,L046D        ; Branch to 0x046D if Bit 2 is set at RAM1_0be (Mn=1)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          brset 3,RAM1_05f,L0485        ; Branch to 0x0485 if Bit 3 is set at RAM1_05f (Mn=1)
          lda #$40                      ; Load Accumulator with 0x40, A <- 0x40   
          brset 4,RAM1_0ba,L0485        ; Branch to 0x0485 if Bit 4 is set at RAM1_0ba (Mn=1)
          brset 2,RAM1_0be,L0485        ; Branch to 0x0485 if Bit 2 is set at RAM1_0be (Mn=1)
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          brset 7,RAM1_05f,L048C        ; Branch to 0x048C if Bit 7 is set at RAM1_05f (Mn=1)
          lda #$80                      ; Load Accumulator with 0x80, A <- 0x80   
          brset 2,RAM1_0ba,L048C        ; Branch to 0x048C if Bit 2 is set at RAM1_0ba (Mn=1)
          clra                          ; Clear byte at clra <- 0x00              
          bra L048C                     ; Branch Always (1 = 1)                   
; 
          db $0B, $CB, $04, $1B         ; data? 0B, CB, 04, 1B                    
          db $CB, $1E, $5D, $B8         ; data? CB, 1E, ], B8                     
          db $7F, $A4, $CC, $B7         ; data? DEL, A4, CC, B7                   
          db $5B, $B8, $7F, $B7         ; data? [, B8, DEL, B7                    
          db $7F, $A4, $60, $26         ; data? DEL, A4, `, &                     
          db $0C, $09, $7F, $09         ; data? 0C, 09, DEL, 09                   
          db $19, $7F, $AE, $A8         ; data? 19, DEL, AE, A8                   
          db $CD, $37, $C7, $B7         ; data? CD, 7, C7, B7                     
          db $85, $01, $61, $5D         ; data? 85, 01, a, ]                      
          db $3D, $5B, $27, $27         ; data? =, [, ', '                        
          db $1E, $5D, $10, $CB         ; data? 1E, ], 10, CB                     
          db $16, $7E, $14, $CB         ; data? 16, ~, 14, CB                     
          db $06, $CE, $4F, $07         ; data? 06, CE, O, 07                     
          db $5B, $08, $1E, $5D         ; data? [, 08, 1E, ]                      
          db $10, $CB, $18, $B3         ; data? 10, CB, 18, B3                    
          db $1F, $D2, $0D, $5B         ; data? 1F, D2, 0D, [                     
          db $0E, $1E, $5D, $0C         ; data? 0E, 1E, ], 0C                     
          db $7F, $09, $AE, $A8         ; data? DEL, 09, AE, A8                   
          db $CD, $37, $C7, $B7         ; data? CD, 7, C7, B7                     
          db $85, $20, $00, $0B         ; data? 85, " ", 00, 0B                   
          db $7C, $30, $0C, $7C         ; data? |, 0, 0C, |                       
          db $19, $05, $69, $2A         ; data? 19, 05, i, *                      
          db $15, $69, $15, $D2         ; data? 15, i, 15, D2                     
          db $19, $D3, $AE, $A5         ; data? 19, D3, AE, A5                    
          db $CD, $37, $9B, $02         ; data? CD, 7, 9B, 02                     
          db $7F, $1C, $01, $7F         ; data? DEL, 1C, 01, DEL                  
          db $19, $04, $81, $12         ; data? 19, 04, 81, 12                    
          db $20, $2E, $04, $69         ; data? " ", ., 04, i                     
          db $11, $14, $69, $14         ; data? 11, 14, i, 14                     
          db $81, $03, $7F, $02         ; data? 81, 03, DEL, 02                   
          db $15, $81, $14, $CB         ; data? 15, 81, 14, CB                    
          db $18, $B3, $CC, $2E         ; data? 18, B3, CC, .                     
          db $5F, $81, $B6, $7F         ; data? _, 81, B6, DEL                    
          db $00, $80, $04, $A5         ; data? 00, 80, 04, A5                    
          db $EA, $27, $4A, $A5         ; data? EA, ', J, A5                      
          db $03, $26, $10, $03         ; data? 03, &, 10, 03                     
          db $D2, $52, $00, $D2         ; data? D2, R, 00, D2                     
          db $4F, $10, $D2, $AE         ; data? O, 10, D2, AE                     
          db $88, $CC, $2D, $CF         ; data? 88, CC, -, CF                     
          db $CC, $2E, $1A, $01         ; data? CC, ., 1A, 01                     
          db $7F, $3F, $05, $D2         ; data? DEL, 3F, 05, D2                   
          db $7E, $0A, $7F, $39         ; data? ~, 0A, DEL, 9                     
          db $07, $5F, $03, $02         ; data? 07, _, 03, 02                     
          db $7C, $75, $0E, $D3         ; data? |, u, 0E, D3                      
          db $72, $1E, $D3, $15         ; data? r, 1E, D3, 15                     
          db $D3, $07, $6A, $02         ; data? D3, 07, j, 02                     
          db $14, $D3, $13, $D3         ; data? 14, D3, 13, D3                    
          db $03, $7C, $11, $12         ; data? 03, |, 11, 12                     
          db $D3, $10, $D3, $01         ; data? D3, 10, D3, 01                    
          db $7C, $05, $04, $7C         ; data? |, 05, 04, |                      
          db $07, $20, $03, $05         ; data? 07, " ", 03, 05                   
          db $7C, $02, $11, $D3         ; data? |, 02, 11, D3                     
          db $A6, $88, $CC, $2E         ; data? A6, 88, CC, .                     
          db $0E, $07, $8B, $09         ; data? 0E, 07, 8B, 09                    
          db $0E, $60, $06, $B6         ; data? 0E, `, 06, B6                     
          db $CE, $A4, $C8, $27         ; data? CE, A4, C8, '                     
          db $0C, $02, $D2, $62         ; data? 0C, 02, D2, b                     
          db $04, $D2, $03, $07         ; data? 04, D2, 03, 07                    
          db $7C, $39, $CC, $2E         ; data? |, 9, CC, .                       
          db $08, $01, $7F, $14         ; data? 08, 01, DEL, 14                   
          db $02, $D2, $53, $0D         ; data? 02, D2, S, 0D                     
          db $7C, $2D, $08, $7C         ; data? |, -, 08, |                       
          db $2A, $05, $D2, $54         ; data? *, 05, D2, T                      
          db $0E, $D3, $51, $20         ; data? 0E, D3, Q, " "                    
          db $22, $CC, $2C, $DD         ; data? ", CC, ,, DD                      
          db $04, $D2, $7C, $06         ; data? 04, D2, |, 06                     
          db $7C, $79, $0D, $6A         ; data? |, y, 0D, j                       
          db $8F, $C6, $02, $65         ; data? 8F, C6, 02, e                     
          db $A4, $F0, $A1, $B0         ; data? A4, F0, A1, B0                    
          db $27, $07, $07, $D4         ; data? ', 07, 07, D4                     
          db $04, $17, $D4, $20         ; data? 04, 17, D4, " "                   
          db $1A, $03, $D2, $17         ; data? 1A, 03, D2, 17                    
          db $00, $D2, $14, $1B         ; data? 00, D2, 14, 1B                    
          db $80, $B6, $85, $26         ; data? 80, B6, 85, &                     
          db $02, $1A, $80, $0D         ; data? 02, 1A, 80, 0D                    
          db $5D, $75, $07, $8B         ; data? ], u, 07, 8B                      
          db $72, $00, $80, $6F         ; data? r, 00, 80, o                      
          db $CC, $30, $12, $12         ; data? CC, 0, 12, 12                     
          db $D2, $11, $D2, $18         ; data? D2, 11, D2, 18                    
          db $B3, $AE, $8D, $05         ; data? B3, AE, 8D, 05                    
          db $D4, $08, $AE, $83         ; data? D4, 08, AE, 83                    
          db $20, $04, $AE, $80         ; data? " ", 04, AE, 80                   
          db $13, $D2, $BF, $7D         ; data? 13, D2, BF, }                     
          db $1C, $94, $20, $49         ; data? 1C, 94, " ", I                    
          db $14, $D2, $18, $B3         ; data? 14, D2, 18, B3                    
          db $13, $7F, $10, $7F         ; data? 13, DEL, 10, DEL                  
          db $06, $D3, $0D, $16         ; data? 06, D3, 0D, 16                    
          db $D3, $A6, $8C, $08         ; data? D3, A6, 8C, 08                    
          db $D3, $27, $A6, $8D         ; data? D3, ', A6, 8D                     
          db $10, $7C, $20, $21         ; data? 10, |, " ", !                     
          db $A6, $8F, $0F, $D3         ; data? A6, 8F, 0F, D3                    
          db $1C, $1F, $D3, $B6         ; data? 1C, 1F, D3, B6                    
          db $D3, $A4, $07, $0B         ; data? D3, A4, 07, 0B                    
          db $D3, $02, $AA, $08         ; data? D3, 02, AA, 08                    
          db $97, $D6, $30, $02         ; data? 97, D6, 0, 02                     
          db $05, $D3, $0A, $16         ; data? 05, D3, 0A, 16                    
          db $6A, $20, $08, $A6         ; data? j, " ", 08, A6                    
          db $80, $15, $D2, $17         ; data? 80, 15, D2, 17                    
          db $7C, $17, $6A, $B7         ; data? |, 17, j, B7                      
          db $7B, $1A, $94, $A1         ; data? {, 1A, 94, A1                     
          db $81, $27, $0A, $20         ; data? 81, ', 0A, " "                    
          db $04, $12, $7F, $11         ; data? 04, 12, DEL, 11                   
          db $7F, $1F, $D2, $14         ; data? DEL, 1F, D2, 14                   
          db $CB, $18, $5C, $1E         ; data? CB, 18, \, 1E                     
          db $5D, $16, $BC, $81         ; data? ], 16, BC, 81                     
          db $0D, $7C, $14, $0A         ; data? 0D, |, 14, 0A                     
          db $7F, $11, $A6, $81         ; data? DEL, 11, A6, 81                   
          db $20, $DB, $06, $8E         ; data? " ", DB, 06, 8E                   
          db $1C, $03, $A1, $03         ; data? 1C, 03, A1, 03                    
          db $07, $D2, $04, $A6         ; data? 07, D2, 04, A6                    
          db $B0, $B7, $77, $81         ; data? B0, B7, w, 81                     
          db $0B, $7F, $0E, $1B         ; data? 0B, DEL, 0E, 1B                   
          db $7F, $13, $CE, $11         ; data? DEL, 13, CE, 11                   
          db $CE, $A6, $80, $B7         ; data? CE, A6, 80, B7                    
          db $A0, $17, $D2, $20         ; data? A0, 17, D2, " "                   
          db $CC, $06, $7F, $EB         ; data? CC, 06, DEL, EB                   
          db $15, $81, $1C, $C5         ; data? 15, 81, 1C, C5                    
          db $00, $7F, $19, $03         ; data? 00, DEL, 19, 03                   
          db $7F, $BB, $0A, $7C         ; data? DEL, BB, 0A, |                    
          db $08, $A6, $84, $B7         ; data? 08, A6, 84, B7                    
          db $7B, $1A, $94, $20         ; data? {, 1A, 94, " "                    
          db $0B, $05, $69, $08         ; data? 0B, 05, i, 08                     
          db $10, $7F, $19, $7C         ; data? 10, DEL, 19, |                    
          db $17, $6A, $20, $0B         ; data? 17, j, " ", 0B                    
          db $0D, $6A, $A2, $4F         ; data? 0D, j, A2, O                      
          db $C7, $02, $64, $11         ; data? C7, 02, d, 11                     
          db $D4, $11, $7F, $13         ; data? D4, 11, DEL, 13                   
          db $7F, $15, $BA, $20         ; data? DEL, 15, BA, " "                  
          db $98, $AE, $00, $C1         ; data? 98, AE, 00, C1                    
          db $AE, $06, $20, $18         ; data? AE, 06, " ", 18                   
          db $AE, $06, $0D, $8E         ; data? AE, 06, 0D, 8E                    
          db $13, $B6, $CE, $A4         ; data? 13, B6, CE, A4                    
          db $F8, $B7, $CE, $CD         ; data? F8, B7, CE, CD                    
          db $24, $59, $A6, $C4         ; data? $, Y, A6, C4                      
          db $CC, $23, $F6, $AE         ; data? CC, #, F6, AE                     
          db $04, $C1, $AE, $02         ; data? 04, C1, AE, 02                    
          db $0A, $7F, $98, $05         ; data? 0A, DEL, 98, 05                   
          db $CE, $11, $03, $CE         ; data? CE, 11, 03, CE                    
          db $0E, $00, $CE, $0B         ; data? 0E, 00, CE, 0B                    
          db $B3, $D0, $26, $07         ; data? B3, D0, &, 07                     
          db $3F, $CF, $10, $CF         ; data? 3F, CF, 10, CF                    
          db $3F, $CC, $81, $0E         ; data? 3F, CC, 81, 0E                    
          db $7F, $FC, $0A, $80         ; data? DEL, FC, 0A, 80                   
          db $F9, $B6, $82, $A4         ; data? F9, B6, 82, A4                    
          db $8F, $27, $25, $A1         ; data? 8F, ', %, A1                      
          db $01, $27, $21, $A4         ; data? 01, ', !, A4                      
          db $0F, $27, $1D, $A1         ; data? 0F, ', 1D, A1                     
          db $02, $26, $E7, $0E         ; data? 02, &, E7, 0E                     
          db $B9, $E4, $05, $B6         ; data? B9, E4, 05, B6                    
          db $13, $B6, $B6, $A1         ; data? 13, B6, B6, A1                    
          db $05, $27, $DB, $0E         ; data? 05, ', DB, 0E                     
          db $B5, $04, $1E, $B5         ; data? B5, 04, 1E, B5                    
          db $16, $BC, $18, $B3         ; data? 16, BC, 18, B3                    
          db $1A, $B3, $1F, $D2         ; data? 1A, B3, 1F, D2                    
          db $BF, $D0, $14, $CE         ; data? BF, D0, 14, CE                    
          db $12, $CE, $11, $CE         ; data? 12, CE, 11, CE                    
          db $A6, $96, $B7, $CF         ; data? A6, 96, B7, CF                    
          db $CC, $2F, $C9, $A6         ; data? CC, /, C9, A6                     
          db $01, $C1, $A6, $FF         ; data? 01, C1, A6, FF                    
          db $AE, $50, $20, $07         ; data? AE, P, " ", 07                    
          db $A6, $01, $C1, $A6         ; data? A6, 01, C1, A6                    
          db $FF, $AE, $30, $BF         ; data? FF, AE, 0, BF                     
          db $77, $20, $62, $B6         ; data? w, " ", b, B6                     
          db $78, $A4, $0F, $AB         ; data? x, A4, 0F, AB                     
          db $F9, $40, $27, $A2         ; data? F9, @, ', A2                      
          db $05, $CE, $56, $03         ; data? 05, CE, V, 03                     
          db $CE, $53, $00, $CE         ; data? CE, S, 00, CE                     
          db $50, $B7, $57, $CD         ; data? P, B7, W, CD                      
          db $2F, $C9, $AD, $37         ; data? /, C9, AD, 7                      
          db $22, $26, $CD, $2F         ; data? ", &, CD, /                       
          db $EA, $26, $08, $3D         ; data? EA, &, 08, =                      
          db $63, $26, $C1, $BB         ; data? c, &, C1, BB                      
          db $57, $20, $13, $2A         ; data? W, " ", 13, *                     
          db $0B, $BB, $57, $2B         ; data? 0B, BB, W, +                      
          db $0D, $A6, $28, $B7         ; data? 0D, A6, (, B7                     
          db $63, $4F, $20, $06         ; data? c, O, " ", 06                     
          db $BB, $57, $2B, $F5         ; data? BB, W, +, F5                      
          db $27, $F3, $AD, $13         ; data? ', F3, AD, 13                     
          db $22, $A6, $20, $02         ; data? ", A6, " ", 02                    
          db $3F, $56, $AD, $74         ; data? 3F, V, AD, t                      
          db $B6, $56, $CD, $37         ; data? B6, V, CD, 7                      
          db $9B, $18, $7E, $16         ; data? 9B, 18, ~, 16                     
          db $7E, $20, $95, $BE         ; data? ~, " ", 95, BE                    
          db $D0, $58, $B7, $56         ; data? D0, X, B7, V                      
          db $2A, $02, $40, $5C         ; data? *, 02, @, \                       
          db $03, $81, $02, $5C         ; data? 03, 81, 02, \                     
          db $5C, $D1, $2F, $B9         ; data? \, D1, /, B9                      
          db $81, $0A, $82, $43         ; data? 81, 0A, 82, C                     
          db $0E, $87, $40, $0C         ; data? 0E, 87, @, 0C                     
          db $7F, $03, $0B, $7F         ; data? DEL, 03, 0B, DEL                  
          db $0D, $08, $7F, $0D         ; data? 0D, 08, DEL, 0D                   
          db $BE, $86, $B3, $85         ; data? BE, 86, B3, 85                    
          db $23, $07, $BF, $85         ; data? #, 07, BF, 85                     
          db $20, $03, $06, $82         ; data? " ", 03, 06, 82                   
          db $2A, $18, $7F, $BB         ; data? *, 18, DEL, BB                    
          db $85, $2B, $13, $06         ; data? 85, +, 13, 06                     
          db $81, $06, $A1, $1E         ; data? 81, 06, A1, 1E                    
          db $23, $02, $A6, $1E         ; data? #, 02, A6, 1E                     
          db $0F, $82, $08, $3D         ; data? 0F, 82, 08, =                     
          db $85, $26, $14, $A6         ; data? 85, &, 14, A6                     
          db $01, $B1, $4F, $B7         ; data? 01, B1, O, B7                     
          db $85, $0C, $7F, $0B         ; data? 85, 0C, DEL, 0B                   
          db $0E, $7F, $08, $0A         ; data? 0E, DEL, 08, 0A                   
          db $7F, $05, $06, $81         ; data? DEL, 05, 06, 81                   
          db $02, $16, $5C, $81         ; data? 02, 16, \, 81                     
          db $06, $06, $05, $05         ; data? 06, 06, 05, 05                    
          db $06, $06, $05, $05         ; data? 06, 06, 05, 05                    
          db $0F, $0F, $0F, $0F         ; data? 0F, 0F, 0F, 0F                    
          db $0F, $0F, $0F, $0F         ; data? 0F, 0F, 0F, 0F                    
; 
L2FC9: 
          brclr 6,RAM1_07f,L07DC        ; Branch to 0x07DC if Bit 6 Clear (Mn = 0)
          ldx #$0E                      ; Load Index Register with Memory Byte, X <- (0x0E)
          lda #$2B                      ; Load Accumulator with 0x2B, A <- 0x2B   
          brset 2,RAM1_0be,L07FB        ; Branch to 0x07FB if Bit 2 is set at RAM1_0be (Mn=1)
          brset 5,RAM1_0b9,L07FB        ; Branch to 0x07FB if Bit 5 is set at RAM1_0b9 (Mn=1)
          ldx #$10                      ; Load Index Register with Memory Byte, X <- (0x10)
          lda #$2A                      ; Load Accumulator with 0x2A, A <- 0x2A   
          bra L07FB                     ; Branch Always (1 = 1)                   
; 
          db $AE, $12, $A6, $38         ; data? AE, 12, A6, 8                     
          db $06, $8E, $04, $AE         ; data? 06, 8E, 04, AE                    
          db $11, $A6, $37, $06         ; data? 11, A6, 7, 06                     
          db $7F, $11, $B6, $D0         ; data? DEL, 11, B6, D0                   
          db $B7, $C7, $1E, $C7         ; data? B7, C7, 1E, C7                    
          db $44, $AB, $A0, $CD         ; data? D, AB, A0, CD                     
          db $37, $C6, $B7, $C8         ; data? 7, C6, B7, C8                     
          db $1C, $C6, $81, $CD         ; data? 1C, C6, 81, CD                    
          db $24, $A8, $9F, $CC         ; data? $, A8, 9F, CC                     
          db $23, $D9, $8F, $8F         ; data? #, D9, 8F, 8F                     
          db $8A, $8B, $90, $90         ; data? 8A, 8B, 90, 90                    
          db $89, $89, $8F, $8F         ; data? 89, 89, 8F, 8F                    
          db $82, $83, $90, $90         ; data? 82, 83, 90, 90                    
          db $89, $89, $5F, $07         ; data? 89, 89, _, 07                     
          db $CE, $02, $AE, $22         ; data? CE, 02, AE, "                     
          db $D6, $30, $2F, $B7         ; data? D6, 0, /, B7                      
          db $56, $D6, $30, $2E         ; data? V, D6, 0, .                       
          db $27, $0B, $CD, $27         ; data? ', 0B, CD, '                      
          db $97, $26, $F1, $DE         ; data? 97, &, F1, DE                     
          db $30, $2D, $DD, $2E         ; data? 0, -, DD, .                       
          db $29, $81, $0D, $64         ; data? ), 81, 0D, d                      
          db $09, $77, $0A, $5D         ; data? 09, w, 0A, ]                      
          db $0C, $7A, $1F, $E7         ; data? 0C, z, 1F, E7                     
          db $FA, $DC, $3A, $D3         ; data? FA, DC, :, D3                     
          db $5A, $D3, $DA, $92         ; data? Z, D3, DA, 92                     
          db $FB, $DF, $3B, $D6         ; data? FB, DF, ;, D6                     
          db $5B, $D6, $DB, $92         ; data? [, D6, DB, 92                     
          db $EB, $0A, $CB, $18         ; data? EB, 0A, CB, 18                    
          db $EE, $0A, $CE, $18         ; data? EE, 0A, CE, 18                    
          db $06, $00, $00              ; data? 06, 00, 00                        
; 
L3053: 
          jmp L253F                     ; Unconditional Jump to 0x253F            
; 
L3056: 
          lda #$C8                      ; Load Accumulator with 0xC8, A <- 0xC8   
          nop                           ; No Operation                            
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bne L0058                     ; Branch to 0x0058 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L305D: 
          clr RAM1_0a1                  ; Clear byte at RAM1_0a1 <- 0x00          
          clr RAM1_0a2                  ; Clear byte at RAM1_0a2 <- 0x00          
          clr RAM1_0b2                  ; Clear byte at RAM1_0b2 <- 0x00          
          brclr 4,RAM1_069,L0078        ; Branch to 0x0078 if Bit 4 Clear (Mn = 0)
          jmp L30A1                     ; Unconditional Jump to 0x30A1            
; 
          db $CC, $31, $33              ; data? CC, 1, 3                          
; 
L306C: 
          brclr 4,RAM1_069,L0078        ; Branch to 0x0078 if Bit 4 Clear (Mn = 0)
          jmp L30E2                     ; Unconditional Jump to 0x30E2            
; 
L3072: 
          brclr 4,RAM1_069,L0078        ; Branch to 0x0078 if Bit 4 Clear (Mn = 0)
          jmp L3106                     ; Unconditional Jump to 0x3106            
; 
          db $1F, $A0, $81              ; data? 1F, A0, 81                        
; 
L307B: 
          jmp L307E                     ; Unconditional Jump to 0x307E            
; 
L307E: 
          brclr 1,RAM1_0a1,L009F        ; Branch to 0x009F if Bit 1 Clear (Mn = 0)
          dec RAM1_0af                  ; Decrement Byte at RAM1_0af Byte = Byte - 1
          bpl L009F                     ; Branch to 0x009F if Plus N = 0          
          brset 7,RAM1_0a1,L008B        ; Branch to 0x008B if Bit 7 is set at RAM1_0a1 (Mn=1)
          jmp L3133                     ; Unconditional Jump to 0x3133            
; 
          db $04, $A1, $11, $A6         ; data? 04, A1, 11, A6                    
          db $14, $B7, $AF, $CD         ; data? 14, B7, AF, CD                    
          db $33, $5B, $A1, $03         ; data? 3, [, A1, 03                      
          db $23, $06, $3C, $B1         ; data? #, 06, <, B1                      
          db $26, $02, $12, $B1         ; data? &, 02, 12, B1                     
          db $99, $81                   ; data? 99, 81                            
; 
L30A1: 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 3,PortC                  ; Set 3 LOW                               
          bclr 2,PortC                  ; Set WR_SP#PC2/ECLK
                                ;;

                                3)
                                        param1=RD_SP#PC3 LOW
          cli                           ; Clear Interrupt Mask (I <- 0)           
          jsr L3053                     ; Jump to Subroutine at 0x3053            
          sei                           ; Set Interrupt Mask, I ← 1);           
          bset 2,PortC                  ; Set WR_SP#PC2/ECLK
                                ;;

                                3)
                                        param1=RD_SP#PC3 HIGH
          bset 3,PortC                  ; Set 3 HIGH                              
          cli                           ; Clear Interrupt Mask (I <- 0)           
          bsr L00C4                     ; Branch to Subroutine at 0x00C4          
          ldx #$A3                      ; Load Index Register with Memory Byte, X <- (0xA3)
          clr PortB,x                   ; Clear byte at PortB <- 0x00             
          jsr L329D                     ; Jump to Subroutine at 0x329D            
          jsr L32E3                     ; Jump to Subroutine at 0x32E3            
          inc RAM1_0b2                  ; Increment Byte RAM1_0b2, Byte = Byte + 1
          brclr 4,RAM1_0b2,L00B2        ; Branch to 0x00B2 if Bit 4 Clear (Mn = 0)
          bclr 4,RAM1_0b2               ; Clear bit 4 at RAM1_0b2                 
          rts                           ; Return from Subroutine                  
; 
          db $00, $A1, $FC, $CD         ; data? 00, A1, FC, CD                    
          db $31, $66, $A6, $4C         ; data? 1, f, A6, L                       
X30CC: 
          db $AD, $0E, $A6, $A6         ; data? AD, 0E, A6, A6                    
          db $AD, $0A, $A6, $07         ; data? AD, 0A, A6, 07                    
          db $AD, $06, $4F, $CD         ; data? AD, 06, O, CD                     
          db $32, $57, $A6, $0E         ; data? 2, W, A6, 0E                      
          db $AE, $50, $F7, $CC         ; data? AE, P, F7, CC                     
          db $31, $FB                   ; data? 1, FB                             
; 
L30E2: 
          brclr 7,RAM1_0a0,L0111        ; Branch to 0x0111 if Bit 7 Clear (Mn = 0)
          brclr 0,RAM1_0a1,L00EE        ; Branch to 0x00EE if Bit 0 Clear (Mn = 0)
          lda RAM1_0a0                  ; Load Accumulator with value of Memory at RAM1_0a0, A <- (RAM1_0a0)
          and #$08                      ; Logical AND between A and constant 0x08, A ← (A) && (0x08)
          bne L0111                     ; Branch to 0x0111 if Not Equal (Z = 0);  
          lda RAM1_0a0                  ; Load Accumulator with value of Memory at RAM1_0a0, A <- (RAM1_0a0)
          and #$0F                      ; Logical AND between A and constant 0x0F, A ← (A) && (0x0F)
          bsr L00FF                     ; Branch to Subroutine at 0x00FF          
          bclr 7,RAM1_0a0               ; Clear bit 7 at RAM1_0a0                 
          lda RAM1_0a0                  ; Load Accumulator with value of Memory at RAM1_0a0, A <- (RAM1_0a0)
          jsr L2524                     ; Jump to Subroutine at 0x2524            
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          beq L0111                     ; Branch to 0x0111 if Equal Z=1           
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          ldx X3320,x                   ; Load Index Register with Memory Byte, X <- (0x3320)
          jmp L32E3,x ;INFO: index jump ; Unconditional Jump to 0x32E3            
; 
L3106: 
          brset 0,RAM1_0a1,L0112        ; Branch to 0x0112 if Bit 0 is set at RAM1_0a1 (Mn=1)
          brset 2,RAM1_0a1,L0111        ; Branch to 0x0111 if Bit 2 is set at RAM1_0a1 (Mn=1)
          brset 1,RAM1_0a1,L0112        ; Branch to 0x0112 if Bit 1 is set at RAM1_0a1 (Mn=1)
          clr RAM1_0a1                  ; Clear byte at RAM1_0a1 <- 0x00          
          rts                           ; Return from Subroutine                  
; 
          db $CD, $32, $40, $A4         ; data? CD, 2, @, A4                      
          db $20, $26, $F8, $02         ; data? " ", &, F8, 02                    
          db $A1, $10, $B6, $AE         ; data? A1, 10, B6, AE                    
          db $A1, $02, $27, $03         ; data? A1, 02, ', 03                     
          db $09, $A1, $03, $1A         ; data? 09, A1, 03, 1A                    
          db $A1, $81, $A6, $91         ; data? A1, 81, A6, 91                    
          db $20, $2F, $07, $A1         ; data? " ", /, 07, A1                    
          db $E0, $A6, $92, $20         ; data? E0, A6, 92, " "                   
          db $5D                        ; data? ]                                 
; 
L3133: 
          bsr L015F                     ; Branch to Subroutine at 0x015F          
          brclr 0,RAM1_0a1,L0111        ; Branch to 0x0111 if Bit 0 Clear (Mn = 0)
          bsr L0166                     ; Branch to Subroutine at 0x0166          
          jmp L337F                     ; Unconditional Jump to 0x337F            
; 
          db $00, $A1, $D1, $AD         ; data? 00, A1, D1, AD                    
          db $1D, $B6, $A2, $A4         ; data? 1D, B6, A2, A4                    
          db $0F, $B7, $A2, $CD         ; data? 0F, B7, A2, CD                    
          db $33, $F2, $B6, $AD         ; data? 3, F2, B6, AD                     
          db $27, $04, $AB, $01         ; data? ', 04, AB, 01                     
          db $24, $02, $A6, $02         ; data? $, 02, A6, 02                     
          db $B7, $AE, $B7, $B1         ; data? B7, AE, B7, B1                    
          db $A6, $89, $B7, $A1         ; data? A6, 89, B7, A1                    
          db $20, $33, $03, $A1         ; data? " ", 3, 03, A1                    
          db $AF, $3F, $A1, $AD         ; data? AF, 3F, A1, AD                    
          db $00, $A6, $05, $CC         ; data? 00, A6, 05, CC                    
          db $32, $57, $B6, $A2         ; data? 2, W, B6, A2                      
          db $A4, $0F, $27, $71         ; data? A4, 0F, ', q                      
          db $AD, $EC, $AE, $AD         ; data? AD, EC, AE, AD                    
          db $CD, $32, $99, $0D         ; data? CD, 2, 99, 0D                     
          db $A0, $05, $AE, $A3         ; data? A0, 05, AE, A3                    
          db $CD, $32, $BD, $CD         ; data? CD, 2, BD, CD                     
          db $32, $E3, $BE, $AE         ; data? 2, E3, BE, AE                     
          db $BF, $B1, $B3, $AD         ; data? BF, B1, B3, AD                    
          db $25, $03, $A6, $8A         ; data? %, 03, A6, 8A                     
          db $C1, $A6, $82, $B7         ; data? C1, A6, 82, B7                    
          db $A1, $A6, $08, $AD         ; data? A1, A6, 08, AD                    
          db $D2, $B6, $AD, $05         ; data? D2, B6, AD, 05                    
          db $A1, $04, $B6, $B1         ; data? A1, 04, B6, B1                    
          db $1C, $A1, $B7, $58         ; data? 1C, A1, B7, X                     
          db $4F, $07, $A1, $03         ; data? O, 07, A1, 03                     
          db $4A, $B7, $58, $AE         ; data? J, B7, X, AE                      
          db $56, $B7, $57, $A6         ; data? V, B7, W, A6                      
          db $00, $F7, $AD, $32         ; data? 00, F7, AD, 2                     
          db $AE, $56, $A6, $7F         ; data? AE, V, A6, DEL                    
          db $F7, $B6, $B1, $A1         ; data? F7, B6, B1, A1                    
          db $02, $25, $03, $09         ; data? 02, %, 03, 09                     
          db $A1, $02, $A6, $02         ; data? A1, 02, A6, 02                    
          db $E7, $01, $7F, $AD         ; data? E7, 01, DEL, AD                   
          db $1F, $A6, $03, $00         ; data? 1F, A6, 03, 00                    
          db $A1, $02, $A6, $02         ; data? A1, 02, A6, 02                    
          db $AD, $99, $A6, $04         ; data? AD, 99, A6, 04                    
          db $AD, $95, $CD, $33         ; data? AD, 95, CD, 3                     
          db $FA, $5F, $AD, $67         ; data? FA, _, AD, g                      
          db $A4, $20, $26, $05         ; data? A4, " ", &, 05                    
          db $5A, $26, $F7, $3F         ; data? Z, &, F7, 3F                      
          db $A1, $81, $AD, $16         ; data? A1, 81, AD, 16                    
          db $64, $01, $76, $64         ; data? d, 01, v, d                       
          db $01, $76, $64, $01         ; data? 01, v, d, 01                      
          db $76, $64, $01, $76         ; data? v, d, 01, v                       
          db $0D, $A1, $05, $7C         ; data? 0D, A1, 05, |                     
          db $7C, $7C, $1D, $A1         ; data? |, |, 1D, A1                      
          db $AD, $00, $F6, $AD         ; data? AD, 00, F6, AD                    
          db $59, $F6, $CD, $25         ; data? Y, F6, CD, %                      
          db $25, $5C, $20, $52         ; data? %, \, " ", R                      
; 
L3205: 
          lda #$09                      ; Load Accumulator with 0x09, A <- 0x09   
          bsr L0257                     ; Branch to Subroutine at 0x0257          
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          jsr L3056                     ; Jump to Subroutine at 0x3056            
          ldx #$50                      ; Load Index Register with Memory Byte, X <- (0x50)
          bsr L0228                     ; Branch to Subroutine at 0x0228          
          sta ,x                        ; Store Accumulator in Memory at          
          incx                          ; Increment Byte incx, Byte = Byte + 1    
cpx #$54 
          bls L0210                     ; Branch to 0x0210 if Lower or Same C v Z = 1
          ldx #$51                      ; Load Index Register with Memory Byte, X <- (0x51)
          asl ,x                        ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          rol PortB,x                   ; Rotate Byte at PortB Left through Carry Bit, C <- [b7 <<<< b0] <- C
          asl ,x                        ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          rol PortB,x                   ; Rotate Byte at PortB Left through Carry Bit, C <- [b7 <<<< b0] <- C
          asl ,x                        ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          rol PortB,x                   ; Rotate Byte at PortB Left through Carry Bit, C <- [b7 <<<< b0] <- C
          asl ,x                        ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          rol PortB,x                   ; Rotate Byte at PortB Left through Carry Bit, C <- [b7 <<<< b0] <- C
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          rts                           ; Return from Subroutine                  
; 
          db $AD, $0C, $CD, $25         ; data? AD, 0C, CD, %                     
          db $25, $B7, $59, $AD         ; data? %, B7, Y, AD                      
          db $0A, $A4, $F0, $BA         ; data? 0A, A4, F0, BA                    
          db $59, $81, $A6, $31         ; data? Y, 81, A6, 1                      
          db $4A, $26, $FD, $A6         ; data? J, &, FD, A6                      
          db $1B, $4A, $26, $FD         ; data? 1B, J, &, FD                      
          db $9B, $B6, $06, $A4         ; data? 9B, B6, 06, A4                    
          db $03, $AB, $0C, $B7         ; data? 03, AB, 0C, B7                    
          db $06, $9A, $14, $02         ; data? 06, 9A, 14, 02                    
          db $17, $02, $AD, $45         ; data? 17, 02, AD, E                     
          db $B6, $02, $16, $02         ; data? B6, 02, 16, 02                    
          db $81, $A6, $03, $3F         ; data? 81, A6, 03, 3F                    
          db $5A, $16, $02, $3A         ; data? Z, 16, 02, :                      
          db $5A, $26, $03, $CC         ; data? Z, &, 03, CC                      
          db $31, $E0, $AD, $31         ; data? 1, E0, AD, 1                      
          db $17, $02, $CD, $33         ; data? 17, 02, CD, 3                     
          db $FA, $08, $02, $ED         ; data? FA, 08, 02, ED                    
          db $A1, $05, $27, $06         ; data? A1, 05, ', 06                     
          db $0A, $02, $E6, $C1         ; data? 0A, 02, E6, C1                    
          db $A6, $02, $CD, $25         ; data? A6, 02, CD, %                     
          db $2C, $AA, $0F, $9B         ; data? ,, AA, 0F, 9B                     
          db $B7, $02, $B6, $06         ; data? B7, 02, B6, 06                    
          db $A4, $03, $AB, $FC         ; data? A4, 03, AB, FC                    
          db $B7, $06, $9A, $15         ; data? B7, 06, 9A, 15                    
          db $02, $AD, $0A, $14         ; data? 02, AD, 0A, 14                    
          db $02, $B6, $06, $A4         ; data? 02, B6, 06, A4                    
          db $03, $AB, $0C, $B7         ; data? 03, AB, 0C, B7                    
          db $06, $CD, $33, $FA         ; data? 06, CD, 3, FA                     
          db $81, $11, $58, $20         ; data? 81, 11, X, " "                    
          db $04                        ; data? 04                                
; 
L329D: 
          bset 0,RAM1_058               ; Set Bit 0 at memory RAM1_058 (Mn <- 1 ) 
          bclr 1,RAM1_058               ; Clear bit 1 at RAM1_058                 
          stx RAM1_057                  ; Store Index Register In Memory at RAM1_057
          lda RAM1_0a2                  ; Load Accumulator with value of Memory at RAM1_0a2, A <- (RAM1_0a2)
          jsr L2525                     ; Jump to Subroutine at 0x2525            
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          lda RAM1_0b2                  ; Load Accumulator with value of Memory at RAM1_0b2, A <- (RAM1_0b2)
          and #$0F                      ; Logical AND between A and constant 0x0F, A ← (A) && (0x0F)
          sub RAM1_052                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_052)
          bpl L02B4                     ; Branch to 0x02B4 if Plus N = 0          
          add #$0A                      ; A + 0x0A (without CARRY), A ← (A) + 0x0A
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          ldx RAM1_057                  ; Load Index Register with Memory Byte, X <- (RAM1_057)
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          cmp XA608                     ; Compare Accumulator with Memory Byte, (A) - (0xA608)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          brclr 0,RAM1_058,L02D2        ; Branch to 0x02D2 if Bit 0 Clear (Mn = 0)
          lda ,x                        ; Load Accumulator with value of Memory at , A <- ()
          stx RAM1_05a                  ; Store Index Register In Memory at RAM1_05a
          ldx RAM1_059                  ; Load Index Register with Memory Byte, X <- (RAM1_059)
          sta RAM2_02d8,x               ; Store Accumulator in Memory at RAM2_02d8
          ldx RAM1_05a                  ; Load Index Register with Memory Byte, X <- (RAM1_05a)
          inc RAM1_059                  ; Increment Byte RAM1_059, Byte = Byte + 1
          bra L02DE                     ; Branch Always (1 = 1)                   
; 
          db $BF, $5A, $BE, $59         ; data? BF, Z, BE, Y                      
          db $3C, $59, $D6, $02         ; data? <, Y, D6, 02                      
          db $D8, $BE, $5A, $F7         ; data? D8, BE, Z, F7                     
          db $5C, $3A, $56, $26         ; data? \, :, V, &                        
          db $DE                        ; data? DE                                
; 
L32E3: 
          rts                           ; Return from Subroutine                  
; 
          db $B6, $A2, $A1, $0F         ; data? B6, A2, A1, 0F                    
          db $27, $2B, $AB, $10         ; data? ', +, AB, 10                      
          db $A1, $A0, $24, $25         ; data? A1, A0, $, %                      
          db $97, $CD, $25, $25         ; data? 97, CD, %, %                      
          db $B7, $56, $B6, $A2         ; data? B7, V, B6, A2                     
          db $A4, $0F, $B1, $56         ; data? A4, 0F, B1, V                     
          db $25, $17, $9F, $20         ; data? %, 17, 9F, " "                    
          db $0C, $B6, $A2, $A1         ; data? 0C, B6, A2, A1                    
          db $0F, $27, $0E, $A4         ; data? 0F, ', 0E, A4                     
          db $F0, $27, $0A, $A0         ; data? F0, ', 0A, A0                     
          db $10, $B8, $A2, $A4         ; data? 10, B8, A2, A4                    
          db $F0, $B8, $A2, $20         ; data? F0, B8, A2, " "                   
          db $06, $4F, $81, $B6         ; data? 06, O, 81, B6                     
          db $A2, $A4, $0F, $B7         ; data? A2, A4, 0F, B7                    
          db $A2, $A4, $0F, $81         ; data? A2, A4, 0F, 81                    
X3320: 
          db $6B, $00, $00, $00         ; data? k, 00, 00, 00                     
          db $50, $54, $58, $00         ; data? P, T, X, 00                       
          db $5C, $4D, $81, $81         ; data? \, M, 81, 81                      
          db $82, $68, $60, $64         ; data? 82, h, `, d                       
          db $CC, $31, $3D, $AD         ; data? CC, 1, =, AD                      
          db $AF, $20, $17, $AD         ; data? AF, " ", 17, AD                   
          db $C8, $20, $13, $AD         ; data? C8, " ", 13, AD                   
          db $DA, $20, $0F, $AD         ; data? DA, " ", 0F, AD                   
          db $D6, $20, $06, $AD         ; data? D6, " ", 06, AD                   
          db $9F, $20, $02, $AD         ; data? 9F, " ", 02, AD                   
          db $B8, $27, $98, $CC         ; data? B8, ', 98, CC                     
          db $31, $6B, $02, $A1         ; data? 1, k, 02, A1                      
          db $03, $CC, $30, $69         ; data? 03, CC, 0, i                      
          db $1F, $A1, $A6, $01         ; data? 1F, A1, A6, 01                    
          db $B7, $AF, $81, $B6         ; data? B7, AF, 81, B6                    
          db $AD, $B0, $B1, $24         ; data? AD, B0, B1, $                     
          db $02, $A0, $02, $81         ; data? 02, A0, 02, 81                    
          db $81, $CD, $31, $5F         ; data? 81, CD, 1, _                      
          db $15, $A1, $AE, $50         ; data? 15, A1, AE, P                     
          db $CD, $32, $99, $CD         ; data? CD, 2, 99, CD                     
          db $32, $E3, $B6, $52         ; data? 2, E3, B6, R                      
          db $B7, $AB, $B6, $53         ; data? B7, AB, B6, S                     
          db $B7, $AC, $BE, $B1         ; data? B7, AC, BE, B1                    
          db $CC, $31, $87              ; data? CC, 1, 87                         
; 
L337F: 
          jsr L3205                     ; Jump to Subroutine at 0x3205            
          lda ,x                        ; Load Accumulator with value of Memory at , A <- ()
          sta RAM1_0ad                  ; Store Accumulator in Memory at RAM1_0ad 
          brset 5,RAM1_0a1,L0392        ; Branch to 0x0392 if Bit 5 is set at RAM1_0a1 (Mn=1)
          sub RAM1_0ae                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_0ae)
          bcc L038E                     ; Branch to 0x038E if C bit is cleared    
          sub #$02                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x02)
          sub #$02                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x02)
          bcs L03EF                     ; Branch to 0x03EF if C = 1               
          lda RAM1_0b2                  ; Load Accumulator with value of Memory at RAM1_0b2, A <- (RAM1_0b2)
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          cmp #$09                      ; Compare Accumulator with Memory Byte, (A) - (0x09)
          bls L039A                     ; Branch to 0x039A if Lower or Same C v Z = 1
          clra                          ; Clear byte at clra <- 0x00              
          sta RAM1_0b2                  ; Store Accumulator in Memory at RAM1_0b2 
          ldx #$AD                      ; Load Index Register with Memory Byte, X <- (0xAD)
          jsr L329D                     ; Jump to Subroutine at 0x329D            
          ldx #$A3                      ; Load Index Register with Memory Byte, X <- (0xA3)
          jsr L32E3                     ; Jump to Subroutine at 0x32E3            
          lda RAM1_0ad                  ; Load Accumulator with value of Memory at RAM1_0ad, A <- (RAM1_0ad)
          add #$01                      ; A + 0x01 (without CARRY), A ← (A) + 0x01
          bcc L03AE                     ; Branch to 0x03AE if C bit is cleared    
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          sta RAM1_0b1                  ; Store Accumulator in Memory at RAM1_0b1 
          clr RAM1_0a2                  ; Clear byte at RAM1_0a2 <- 0x00          
          lda RAM1_0ae                  ; Load Accumulator with value of Memory at RAM1_0ae, A <- (RAM1_0ae)
          cmp RAM1_0b1                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_0b1)
          bcc L03D6                     ; Branch to 0x03D6 if C bit is cleared    
          sta RAM1_0ae                  ; Store Accumulator in Memory at RAM1_0ae 
          beq L03E2                     ; Branch to 0x03E2 if Equal Z=1           
          brset 5,RAM1_0a1,L03E9        ; Branch to 0x03E9 if Bit 5 is set at RAM1_0a1 (Mn=1)
          lda RAM1_0a2                  ; Load Accumulator with value of Memory at RAM1_0a2, A <- (RAM1_0a2)
          cmp #$90                      ; Compare Accumulator with Memory Byte, (A) - (0x90)
          bcc L03EF                     ; Branch to 0x03EF if C bit is cleared    
          add #$11                      ; A + 0x11 (without CARRY), A ← (A) + 0x11
          sta RAM1_0a2                  ; Store Accumulator in Memory at RAM1_0a2 
          ldx #$50                      ; Load Index Register with Memory Byte, X <- (0x50)
          bsr L03F4                     ; Branch to Subroutine at 0x03F4          
          lda RAM1_051                  ; Load Accumulator with value of Memory at RAM1_051, A <- (RAM1_051)
          brset 1,RAM1_0a1,L03DA        ; Branch to 0x03DA if Bit 1 is set at RAM1_0a1 (Mn=1)
          cmp RAM1_0ae                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_0ae)
          bcs L03B8                     ; Branch to 0x03B8 if C = 1               
          bset 1,RAM1_0a1               ; Set Bit 1 at memory RAM1_0a1 (Mn <- 1 ) 
          bra L03DE                     ; Branch Always (1 = 1)                   
; 
          db $B1, $AE, $24, $04         ; data? B1, AE, $, 04                     
          db $B1, $B1, $24, $D6         ; data? B1, B1, $, D6                     
          db $B6, $A2, $27, $09         ; data? B6, A2, ', 09                     
          db $0B, $A1, $02, $AA         ; data? 0B, A1, 02, AA                    
          db $0F, $A4, $0F, $B7         ; data? 0F, A4, 0F, B7                    
          db $A2, $3F, $A1, $81         ; data? A2, 3F, A1, 81                    
          db $AE, $AD, $CD, $32         ; data? AE, AD, CD, 2                     
          db $99, $CC, $32, $E3         ; data? 99, CC, 2, E3                     
          db $6D, $FF, $6D, $FF         ; data? m, FF, m, FF                      
          db $81                        ; data? 81                                
; 
L33FF: 
          brset 7,RAM1_0a0,L0408        ; Branch to 0x0408 if Bit 7 is set at RAM1_0a0 (Mn=1)
          lda STACK_0ce                 ; Load Accumulator with value of Memory at STACK_0ce, A <- (STACK_0ce)
          and #$C0                      ; Logical AND between A and constant 0xC0, A ← (A) && (0xC0)
          beq L0409                     ; Branch to 0x0409 if Equal Z=1           
          rts                           ; Return from Subroutine                  
; 
          db $0A, $CE, $3C, $03         ; data? 0A, CE, <, 03                     
          db $A1, $05, $0F, $A1         ; data? A1, 05, 0F, A1                    
          db $02, $1A, $7F, $0B         ; data? 02, 1A, DEL, 0B                   
          db $7F, $0F, $06, $7F         ; data? DEL, 0F, 06, DEL                  
          db $09, $0A, $B9, $06         ; data? 09, 0A, B9, 06                    
          db $00, $5D, $06, $09         ; data? 00, ], 06, 09                     
          db $BA, $03, $CC, $34         ; data? BA, 03, CC, 4                     
          db $EB, $01, $A1, $09         ; data? EB, 01, A1, 09                    
          db $0B, $7F, $06, $10         ; data? 0B, DEL, 06, 10                   
          db $5D, $A6, $80, $20         ; data? ], A6, 80, " "                    
          db $14, $0A, $B9, $0C         ; data? 14, 0A, B9, 0C                    
          db $09, $B9, $12, $02         ; data? 09, B9, 12, 02                    
          db $A1, $14, $0A, $7F         ; data? A1, 14, 0A, DEL                   
          db $11, $00, $5D, $0E         ; data? 11, 00, ], 0E                     
          db $00, $A1, $4C, $A6         ; data? 00, A1, L, A6                     
          db $89, $B7, $A0, $20         ; data? 89, B7, A0, " "                   
          db $46, $11, $5D, $00         ; data? F, 11, ], 00                      
          db $A1, $DF, $0B, $7F         ; data? A1, DF, 0B, DEL                   
          db $3E, $19, $BA, $06         ; data? >, 19, BA, 06                     
          db $CE, $39, $03, $A1         ; data? CE, 9, 03, A1                     
          db $06, $14, $CE, $1A         ; data? 06, 14, CE, 1A                    
          db $CF, $20, $30, $BE         ; data? CF, " ", 0, BE                    
          db $CF, $05, $CE, $1E         ; data? CF, 05, CE, 1E                    
          db $07, $D2, $09, $B6         ; data? 07, D2, 09, B6                    
          db $A2, $A4, $F0, $26         ; data? A2, A4, F0, &                     
          db $0E, $CC, $35, $84         ; data? 0E, CC, 5, 84                     
          db $5C, $26, $77, $1F         ; data? \, &, w, 1F                       
          db $CF, $A6, $88, $10         ; data? CF, A6, 88, 10                    
          db $5D, $20, $0F, $CD         ; data? ], " ", 0F, CD                    
          db $35, $A3, $A6, $85         ; data? 5, A3, A6, 85                     
          db $20, $0A, $5C, $26         ; data? " ", 0A, \, &                     
          db $0A, $07, $D2, $62         ; data? 0A, 07, D2, b                     
          db $A6, $8D, $1D, $80         ; data? A6, 8D, 1D, 80                    
          db $CC, $35, $39, $0D         ; data? CC, 5, 9, 0D                      
          db $5D, $2B, $06, $7F         ; data? ], +, 06, DEL                     
          db $28, $CC, $35, $CB         ; data? (, CC, 5, CB                      
          db $A6, $44, $1C, $C5         ; data? A6, D, 1C, C5                     
          db $20, $30, $06, $CE         ; data? " ", 0, 06, CE                    
          db $1C, $06, $8E, $19         ; data? 1C, 06, 8E, 19                    
          db $06, $D2, $76, $0A         ; data? 06, D2, v, 0A                     
          db $7F, $46, $81, $06         ; data? DEL, F, 81, 06                    
          db $CE, $0F, $A6, $30         ; data? CE, 0F, A6, 0                     
          db $06, $8E, $08, $03         ; data? 06, 8E, 08, 03                    
          db $A1, $03, $07, $D2         ; data? A1, 03, 07, D2                    
          db $1A, $A6, $B0, $B7         ; data? 1A, A6, B0, B7                    
          db $77, $81, $09, $BA         ; data? w, 81, 09, BA                     
          db $06, $19, $BA, $A6         ; data? 06, 19, BA, A6                    
          db $F1, $20, $07, $A6         ; data? F1, " ", 07, A6                   
          db $66, $05, $B8, $02         ; data? f, 05, B8, 02                     
          db $A6, $26, $B7, $B3         ; data? A6, &, B7, B3                     
          db $CC, $35, $68, $A6         ; data? CC, 5, h, A6                      
          db $24, $06, $8E, $C2         ; data? $, 06, 8E, C2                     
          db $06, $D2, $42, $0A         ; data? 06, D2, B, 0A                     
          db $7F, $06, $0D, $B5         ; data? DEL, 06, 0D, B5                   
          db $E6, $04, $B8, $E3         ; data? E6, 04, B8, E3                    
          db $04, $BE, $D6, $03         ; data? 04, BE, D6, 03                    
          db $A1, $06, $A6, $80         ; data? A1, 06, A6, 80                    
          db $B7, $A0, $20, $77         ; data? B7, A0, " ", w                    
          db $B6, $A2, $A4, $0F         ; data? B6, A2, A4, 0F                    
          db $0B, $7F, $07, $27         ; data? 0B, DEL, 07, '                    
          db $6E, $CD, $35, $A3         ; data? n, CD, 5, A3                      
          db $20, $35, $00, $A1         ; data? " ", 5, 00, A1                    
          db $02, $27, $0D, $19         ; data? 02, ', 0D, 19                     
          db $BA, $A6, $FF, $B7         ; data? BA, A6, FF, B7                    
          db $CF, $14, $CE, $A6         ; data? CF, 14, CE, A6                    
          db $80, $CC, $34, $8B         ; data? 80, CC, 4, 8B                     
          db $3F, $C8, $A6, $8A         ; data? 3F, C8, A6, 8A                    
          db $CD, $23, $F3, $A6         ; data? CD, #, F3, A6                     
          db $2C, $CD, $24, $A8         ; data? ,, CD, $, A8                      
          db $81, $CD, $35, $A3         ; data? 81, CD, 5, A3                     
          db $A6, $80, $02, $A1         ; data? A6, 80, 02, A1                    
          db $13, $B6, $A2, $A1         ; data? 13, B6, A2, A1                    
          db $0F, $27, $08, $4A         ; data? 0F, ', 08, J                      
          db $CD, $25, $2C, $B1         ; data? CD, %, ,, B1                      
          db $A2, $24, $03, $A6         ; data? A2, $, 03, A6                     
          db $86, $C1, $A6, $84         ; data? 86, C1, A6, 84                    
          db $1A, $7F, $B7, $A0         ; data? 1A, DEL, B7, A0                   
          db $20, $57, $03, $5F         ; data? " ", W, 03, _                     
          db $03, $CC, $34, $C8         ; data? 03, CC, 4, C8                     
          db $0A, $7F, $5A, $14         ; data? 0A, DEL, Z, 14                    
          db $7E, $10, $80, $A6         ; data? ~, 10, 80, A6                     
          db $02, $B7, $7F, $AE         ; data? 02, B7, DEL, AE                   
          db $06, $CD, $25, $57         ; data? 06, CD, %, W                      
          db $A6, $08, $B7, $CE         ; data? A6, 08, B7, CE                    
          db $A6, $26, $B7, $B3         ; data? A6, &, B7, B3                     
          db $1B, $D2, $A6, $14         ; data? 1B, D2, A6, 14                    
          db $AD, $31, $19, $B3         ; data? AD, 1, 19, B3                     
          db $1B, $B6, $81, $1B         ; data? 1B, B6, 81, 1B                    
          db $7F, $13, $CE, $11         ; data? DEL, 13, CE, 11                   
          db $CE, $17, $D2, $20         ; data? CE, 17, D2, " "                   
          db $2A, $0A, $7F, $2D         ; data? *, 0A, DEL, -                     
          db $08, $BA, $2A, $B6         ; data? 08, BA, *, B6                     
          db $A2, $A4, $0F, $27         ; data? A2, A4, 0F, '                     
          db $93, $A6, $86, $B7         ; data? 93, A6, 86, B7                    
          db $A0, $19, $BA, $17         ; data? A0, 19, BA, 17                    
          db $D2, $A6, $7D, $1C         ; data? D2, A6, }, 1C                     
          db $80, $15, $CE, $B7         ; data? 80, 15, CE, B7                    
          db $CF, $12, $CE, $10         ; data? CF, 12, CE, 10                    
          db $CE, $1A, $7F, $B7         ; data? CE, 1A, DEL, B7                   
          db $CF, $18, $B3, $1A         ; data? CF, 18, B3, 1A                    
          db $B3, $1F, $D2, $14         ; data? B3, 1F, D2, 14                    
          db $CB, $16, $7E, $1E         ; data? CB, 16, ~, 1E                     
          db $5D, $81, $16, $D2         ; data? ], 81, 16, D2                     
          db $A6, $32, $20, $DF         ; data? A6, 2, " ", DF                    
          db $B6, $A2, $A1, $0F         ; data? B6, A2, A1, 0F                    
          db $26, $04, $A6, $01         ; data? &, 04, A6, 01                     
          db $20, $0B, $CD, $25         ; data? " ", 0B, CD, %                    
          db $25, $B7, $5B, $B6         ; data? %, B7, [, B6                      
          db $A2, $B0, $5B, $A4         ; data? A2, B0, [, A4                     
          db $0F, $B7, $C8, $AB         ; data? 0F, B7, C8, AB                    
          db $2C, $CD, $24, $A8         ; data? ,, CD, $, A8                      
          db $A6, $8A, $CD, $23         ; data? A6, 8A, CD, #                     
          db $EA, $81, $5F, $0B         ; data? EA, 81, _, 0B                     
          db $CE, $02, $AE, $0E         ; data? CE, 02, AE, 0E                    
          db $D6, $35, $E8, $B7         ; data? D6, 5, E8, B7                     
          db $56, $D6, $35, $E7         ; data? V, D6, 5, E7                      
          db $27, $0B, $CD, $27         ; data? ', 0B, CD, '                      
          db $97, $26, $F1, $DE         ; data? 97, &, F1, DE                     
          db $35, $E6, $DD, $34         ; data? 5, E6, DD, 4                      
          db $99, $81, $E8, $13         ; data? 99, 81, E8, 13                    
          db $C8, $3B, $A8, $A6         ; data? C8, ;, A8, A6                     
          db $28, $00, $AB, $D9         ; data? (, 00, AB, D9                     
          db $AE, $D9, $08, $06         ; data? AE, D9, 08, 06                    
          db $07, $26, $E8, $26         ; data? 07, &, E8, &                      
          db $00                        ; data? 00                                
; 
L35FA: 
          bsr L0648                     ; Branch to Subroutine at 0x0648          
          beq L060C                     ; Branch to 0x060C if Equal Z=1           
          lda #$81                      ; Load Accumulator with 0x81, A <- 0x81   
          sta RAM1_07b                  ; Store Accumulator in Memory at RAM1_07b 
          bset 5,RAM1_094               ; Set Bit 5 at memory RAM1_094 (Mn <- 1 ) 
          bset 2,RAM1_069               ; Set Bit 2 at memory RAM1_069 (Mn <- 1 ) 
          bset 1,RAM1_07f               ; Set Bit 1 at memory RAM1_07f (Mn <- 1 ) 
          bclr 0,RAM1_07f               ; Clear bit 0 at RAM1_07f                 
          bset 4,RAM1_05c               ; Set Bit 4 at memory RAM1_05c (Mn <- 1 ) 
          lda SEC_MODE                  ; Load Accumulator with value of Memory at SEC_MODE, A <- (SEC_MODE)
          and #$EF                      ; Logical AND between A and constant 0xEF, A ← (A) && (0xEF)
          brclr 7,RAM1_08b,L0616        ; Branch to 0x0616 if Bit 7 Clear (Mn = 0)
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
          sta RAM1_08b                  ; Store Accumulator in Memory at RAM1_08b 
          bclr 7,RAM1_08b               ; Clear bit 7 at RAM1_08b                 
          and #$E0                      ; Logical AND between A and constant 0xE0, A ← (A) && (0xE0)
          cmp #$A0                      ; Compare Accumulator with Memory Byte, (A) - (0xA0)
          bne L062E                     ; Branch to 0x062E if Not Equal (Z = 0);  
          lda SEC_CODE1                 ; Load Accumulator with value of Memory at SEC_CODE1, A <- (SEC_CODE1)
          sta RAM1_08c                  ; Store Accumulator in Memory at RAM1_08c 
          lda SEC_CODE2                 ; Load Accumulator with value of Memory at SEC_CODE2, A <- (SEC_CODE2)
          sta RAM1_08d                  ; Store Accumulator in Memory at RAM1_08d 
          lda #$A8                      ; Load Accumulator with 0xA8, A <- 0xA8   
          sta RAM1_08b                  ; Store Accumulator in Memory at RAM1_08b 
L362E: 
          bsr L0648                     ; Branch to Subroutine at 0x0648          
          beq L0634                     ; Branch to 0x0634 if Equal Z=1           
          bclr 3,RAM1_08b               ; Clear bit 3 at RAM1_08b                 
          brset 3,RAM1_08b,L0647        ; Branch to 0x0647 if Bit 3 is set at RAM1_08b (Mn=1)
          bset 0,RAM1_080               ; Set Bit 0 at memory RAM1_080 (Mn <- 1 ) 
          brclr 2,RAM1_08b,L0647        ; Branch to 0x0647 if Bit 2 Clear (Mn = 0)
          brclr 7,RAM1_064,L0647        ; Branch to 0x0647 if Bit 7 Clear (Mn = 0)
          clr RAM1_08b                  ; Clear byte at RAM1_08b <- 0x00          
          clra                          ; Clear byte at clra <- 0x00              
          jsr L365F                     ; Jump to Subroutine at 0x365F            
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
L3648: 
          lda SEC_CODE1                 ; Load Accumulator with value of Memory at SEC_CODE1, A <- (SEC_CODE1)
          cmp RAM1_08c                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_08c)
          bne L0647                     ; Branch to 0x0647 if Not Equal (Z = 0);  
          lda SEC_CODE2                 ; Load Accumulator with value of Memory at SEC_CODE2, A <- (SEC_CODE2)
          cmp RAM1_08d                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_08d)
          rts                           ; Return from Subroutine                  
; 
          db $03, $8B, $02, $14         ; data? 03, 8B, 02, 14                    
          db $8B, $B6, $8B, $C1         ; data? 8B, B6, 8B, C1                    
          db $A6, $08                   ; data? A6, 08                            
; 
L365F: 
          ldx #$63                      ; Load Index Register with Memory Byte, X <- (0x63)
          jsr L3786                     ; Jump to Subroutine at 0x3786            
          bset 2,RAM1_05d               ; Set Bit 2 at memory RAM1_05d (Mn <- 1 ) 
          jmp L2633                     ; Unconditional Jump to 0x2633            
; 
L3669: 
          brclr 0,STACK_0d6,L0671       ; Branch to 0x0671 if Bit 0 Clear (Mn = 0)
          brclr 1,STACK_0d6,L0673       ; Branch to 0x0673 if Bit 1 Clear (Mn = 0)
          bclr 0,STACK_0d6              ; Clear bit 0 at STACK_0d6                
          bclr 2,STACK_0d6              ; Clear bit 2 at STACK_0d6                
          bset 1,STACK_0d6              ; Set Bit 1 at memory STACK_0d6 (Mn <- 1 )
          rts                           ; Return from Subroutine                  
; 
          db $13, $D6, $06, $10         ; data? 13, D6, 06, 10                    
          db $2E, $04, $D6, $2B         ; data? ., 04, D6, +                      
          db $B6, $11, $0C, $BA         ; data? B6, 11, 0C, BA                    
          db $03, $0B, $BA, $23         ; data? 03, 0B, BA, #                     
          db $00, $D6, $0F, $2B         ; data? 00, D6, 0F, +                     
          db $1B, $06, $D6, $1B         ; data? 1B, 06, D6, 1B                    
          db $C7, $02, $71, $10         ; data? C7, 02, q, 10                     
          db $D6, $A4, $07, $B7         ; data? D6, A4, 07, B7                    
          db $D7, $81, $BE, $D7         ; data? D7, 81, BE, D7                    
          db $D7, $02, $72, $3A         ; data? D7, 02, r, :                      
          db $D7, $2A, $04, $16         ; data? D7, *, 04, 16                     
          db $D6, $11, $D6, $81         ; data? D6, 11, D6, 81                    
          db $B7, $D8, $81, $14         ; data? B7, D8, 81, 14                    
          db $D6, $10, $D6, $81         ; data? D6, 10, D6, 81                    
; 
L36AE: 
          brclr 7,STACK_0d6,L06F1       ; Branch to 0x06F1 if Bit 7 Clear (Mn = 0)
          brset 2,STACK_0d6,L06F1       ; Branch to 0x06F1 if Bit 2 is set at STACK_0d6 (Mn=1)
          lda STACK_0d9                 ; Load Accumulator with value of Memory at STACK_0d9, A <- (STACK_0d9)
          bne L06BA                     ; Branch to 0x06BA if Not Equal (Z = 0);  
          clr STACK_0d8                 ; Clear byte at STACK_0d8 <- 0x00         
          lda RAM2_027a                 ; Load Accumulator with value of Memory at RAM2_027a, A <- (RAM2_027a)
          ora #$80                      ; Logical OR Accumulator with Memory at 0x80, A <- (A) || (0x80)
          cmp STACK_0d8                 ; Compare Accumulator with Memory Byte, (A) - (STACK_0d8)
          beq L06E7                     ; Branch to 0x06E7 if Equal Z=1           
          lda STACK_0d9                 ; Load Accumulator with value of Memory at STACK_0d9, A <- (STACK_0d9)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          bne L06D8                     ; Branch to 0x06D8 if Not Equal (Z = 0);  
          clrx                          ; Clear byte at clrx <- 0x00              
          bsr L0706                     ; Branch to Subroutine at 0x0706          
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bmi L06CA                     ; Branch to 0x06CA if Minus N = 1         
          eor RAM2_027a                 ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM2_027a)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          bne L06CA                     ; Branch to 0x06CA if Not Equal (Z = 0);  
          inc STACK_0d9                 ; Increment Byte STACK_0d9, Byte = Byte + 1
          bne L06F1                     ; Branch to 0x06F1 if Not Equal (Z = 0);  
          brclr 0,RAM1_061,L06E1        ; Branch to 0x06E1 if Bit 0 Clear (Mn = 0)
          bset 2,RAM1_05d               ; Set Bit 2 at memory RAM1_05d (Mn <- 1 ) 
          bclr 6,RAM1_0ba               ; Clear bit 6 at RAM1_0ba                 
          bclr 5,RAM1_0ba               ; Clear bit 5 at RAM1_0ba                 
          bclr 5,RAM1_061               ; Clear bit 5 at RAM1_061                 
          bclr 7,STACK_0d6              ; Clear bit 7 at STACK_0d6                
          brclr 1,RAM1_0bf,L06EF        ; Branch to 0x06EF if Bit 1 Clear (Mn = 0)
          bclr 1,RAM1_0bf               ; Clear bit 1 at RAM1_0bf                 
          rts                           ; Return from Subroutine                  
; 
          db $11, $BF, $81              ; data? 11, BF, 81                        
; 
L36F2: 
          brclr 6,STACK_0d6,L0712       ; Branch to 0x0712 if Bit 6 Clear (Mn = 0)
          bclr 6,STACK_0d6              ; Clear bit 6 at STACK_0d6                
          clra                          ; Clear byte at clra <- 0x00              
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          beq L06FE                     ; Branch to 0x06FE if Equal Z=1           
          brclr 7,SCSR,L06F8            ; Branch to 0x06F8 if Bit TDRE Clear (Mn = 0)
          lda RAM2_0271                 ; Load Accumulator with value of Memory at RAM2_0271, A <- (RAM2_0271)
          ora #$80                      ; Logical OR Accumulator with Memory at 0x80, A <- (A) || (0x80)
          sta SCDR                      ; Store Accumulator in Memory at SCDR     
          rts                           ; Return from Subroutine                  
; 
          db $4F, $4A, $27, $03         ; data? O, J, ', 03                       
          db $0F, $10, $FA, $D6         ; data? 0F, 10, FA, D6                    
          db $02, $7A, $B7, $11         ; data? 02, z, B7, 11                     
          db $81                        ; data? 81                                
; 
L3713: 
          clr RAM1_05d                  ; Clear byte at RAM1_05d <- 0x00          
          clr RAM1_077                  ; Clear byte at RAM1_077 <- 0x00          
          clr RAM1_0a0                  ; Clear byte at RAM1_0a0 <- 0x00          
          clr RAM1_05d                  ; Clear byte at RAM1_05d <- 0x00          
          clr STACK_0d5                 ; Clear byte at STACK_0d5 <- 0x00         
          clr RAM1_07d                  ; Clear byte at RAM1_07d <- 0x00          
          clr RAM1_07b                  ; Clear byte at RAM1_07b <- 0x00          
          clr RAM1_078                  ; Clear byte at RAM1_078 <- 0x00          
          clr RAM1_07a                  ; Clear byte at RAM1_07a <- 0x00          
          clr STACK_0d2                 ; Clear byte at STACK_0d2 <- 0x00         
          lda #$88                      ; Load Accumulator with 0x88, A <- 0x88   
          sta RAM1_0b3                  ; Store Accumulator in Memory at RAM1_0b3 
          clr RAM1_0bb                  ; Clear byte at RAM1_0bb <- 0x00          
          clr RAM1_0b6                  ; Clear byte at RAM1_0b6 <- 0x00          
          ldx #$A7                      ; Load Index Register with Memory Byte, X <- (0xA7)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          sta RAM1_07f                  ; Store Accumulator in Memory at RAM1_07f 
          bset 7,RAM1_07f               ; Set Bit 7 at memory RAM1_07f (Mn <- 1 ) 
          ldx #$A5                      ; Load Index Register with Memory Byte, X <- (0xA5)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          and #$71                      ; Logical AND between A and constant 0x71, A ← (A) && (0x71)
          sta STACK_0d3                 ; Store Accumulator in Memory at STACK_0d3
          bset 7,RAM1_07c               ; Set Bit 7 at memory RAM1_07c (Mn <- 1 ) 
          ldx #$A6                      ; Load Index Register with Memory Byte, X <- (0xA6)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          and #$06                      ; Logical AND between A and constant 0x06, A ← (A) && (0x06)
          sta STACK_0d4                 ; Store Accumulator in Memory at STACK_0d4
          lda RAM1_081                  ; Load Accumulator with value of Memory at RAM1_081, A <- (RAM1_081)
          and #$01                      ; Logical AND between A and constant 0x01, A ← (A) && (0x01)
          sta RAM1_081                  ; Store Accumulator in Memory at RAM1_081 
          bset 6,RAM1_081               ; Set Bit 6 at memory RAM1_081 (Mn <- 1 ) 
          jsr L3EEE                     ; Jump to Subroutine at 0x3EEE            
          brclr 5,RAM1_069,L0767        ; Branch to 0x0767 if Bit 5 Clear (Mn = 0)
          bclr 5,STACK_0d3              ; Clear bit 5 at STACK_0d3                
          bclr 6,STACK_0d3              ; Clear bit 6 at STACK_0d3                
          brset 0,RAM1_07f,L0767        ; Branch to 0x0767 if Bit 0 is set at RAM1_07f (Mn=1)
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          sta RAM1_07f                  ; Store Accumulator in Memory at RAM1_07f 
          rts                           ; Return from Subroutine                  
; 
          db $81                        ; data? 81                                
; 
L3769: 
          tst RAM1_05c                  ; Test Memory Byte for Negative or Zero, (RAM1_05c) – 0x00
          beq L0785                     ; Branch to 0x0785 if Equal Z=1           
          lda RAM1_07f                  ; Load Accumulator with value of Memory at RAM1_07f, A <- (RAM1_07f)
          ldx #$A7                      ; Load Index Register with Memory Byte, X <- (0xA7)
          brset 4,RAM1_05c,L077A        ; Branch to 0x077A if Bit 4 is set at RAM1_05c (Mn=1)
          lda RAM1_085                  ; Load Accumulator with value of Memory at RAM1_085, A <- (RAM1_085)
          ldx #$A8                      ; Load Index Register with Memory Byte, X <- (0xA8)
          bclr 3,RAM1_05c               ; Clear bit 3 at RAM1_05c                 
          bclr 4,RAM1_05c               ; Clear bit 4 at RAM1_05c                 
          brclr 0,RAM1_061,L0785        ; Branch to 0x0785 if Bit 0 Clear (Mn = 0)
          brset 0,RAM1_080,L0785        ; Branch to 0x0785 if Bit 0 is set at RAM1_080 (Mn=1)
          jsr L379B                     ; Jump to Subroutine at 0x379B            
          rts                           ; Return from Subroutine                  
; 
L3786: 
cpx #$90 
          bcc L07B6                     ; Branch to 0x07B6 if C bit is cleared    
cpx #$63 
          bcs L07B6                     ; Branch to 0x07B6 if C = 1               
          bsr L079F                     ; Branch to Subroutine at 0x079F          
          bsr L0792                     ; Branch to Subroutine at 0x0792          
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          sub #$30                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x30)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda EEPROM_0130,x             ; Load Accumulator with value of Memory at EEPROM_0130, A <- (EEPROM_0130)
          bra L079F                     ; Branch Always (1 = 1)                   
; 
L379B: 
cpx #$90 
          bcs L07B6                     ; Branch to 0x07B6 if C = 1               
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          cmp OPTR,x                    ; Compare Accumulator with Memory Byte, (A) - (OPTR)
          beq L07B6                     ; Branch to 0x07B6 if Equal Z=1           
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 4,Miscell                ; Clear bit INTE at Miscell               
          bset 1,EEPROM_ECLK_control    ; Set Bit E1LAT at memory EEPROM_ECLK_control (Mn <- 1 )
          bset 2,EEPROM_ECLK_control    ; Set Bit E1ERA at memory EEPROM_ECLK_control (Mn <- 1 )
          bsr L07B7                     ; Branch to Subroutine at 0x07B7          
          bset 1,EEPROM_ECLK_control    ; Set Bit E1LAT at memory EEPROM_ECLK_control (Mn <- 1 )
          bsr L07B7                     ; Branch to Subroutine at 0x07B7          
          bset 4,Miscell                ; Set Bit INTE at memory Miscell (Mn <- 1 )
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
          db $D7, $01, $00, $10         ; data? D7, 01, 00, 10                    
          db $07, $9A, $CD, $25         ; data? 07, 9A, CD, %                     
          db $3F, $9B, $B6, $59         ; data? 3F, 9B, B6, Y                     
          db $13, $07, $81, $97         ; data? 13, 07, 81, 97                    
; 
L37C7: 
          lda OPTR,x                    ; Load Accumulator with value of Memory at OPTR, A <- (OPTR)
          rts                           ; Return from Subroutine                  
; 
L37CB: 
          brclr 6,STACK_0ce,L0038       ; Branch to 0x0038 if Bit 6 Clear (Mn = 0)
          lda STACK_0d0                 ; Load Accumulator with value of Memory at STACK_0d0, A <- (STACK_0d0)
          and #$F0                      ; Logical AND between A and constant 0xF0, A ← (A) && (0xF0)
          beq L0038                     ; Branch to 0x0038 if Equal Z=1           
          jmp L387A                     ; Unconditional Jump to 0x387A            
; 
L37D7: 
          db $B6, $D0, $2B, $5D         ; data? B6, D0, +, ]                      
          db $A4, $70, $A1, $60         ; data? A4, p, A1, `                      
          db $22, $05, $03, $81         ; data? ", 05, 03, 81                     
          db $08, $26, $06, $4F         ; data? 08, &, 06, O                      
          db $07, $8E, $02, $AB         ; data? 07, 8E, 02, AB                    
          db $10, $AB, $10, $B7         ; data? 10, AB, 10, B7                    
          db $D0, $CD, $25, $25         ; data? D0, CD, %, %                      
          db $AB, $A8, $CD, $37         ; data? AB, A8, CD, 7                     
          db $C6, $A4, $07, $BB         ; data? C6, A4, 07, BB                    
          db $D0, $20, $28, $B6         ; data? D0, " ", (, B6                    
          db $D0, $CD, $25, $25         ; data? D0, CD, %, %                      
          db $97, $B6, $78, $A1         ; data? 97, B6, x, A1                     
          db $17, $27, $2E, $22         ; data? 17, ', ., "                       
          db $0C, $B6, $D0, $D1         ; data? 0C, B6, D0, D1                    
          db $38, $38, $22, $0E         ; data? 8, 8, ", 0E                       
          db $27, $11, $4C, $20         ; data? ', 11, L, " "                     
          db $0E, $B6, $D0, $D1         ; data? 0E, B6, D0, D1                    
          db $38, $3F, $22, $06         ; data? 8, 3F, ", 06                      
          db $27, $05, $D6, $38         ; data? ', 05, D6, 8                      
          db $38, $B1, $4A, $B7         ; data? 8, B1, J, B7                      
          db $D0, $CD, $25, $25         ; data? D0, CD, %, %                      
          db $AB, $A8, $97, $B6         ; data? AB, A8, 97, B6                    
          db $D0, $A4, $07, $CD         ; data? D0, A4, 07, CD                    
          db $37, $9B, $CC, $38         ; data? 7, 9B, CC, 8                      
          db $47, $81, $15, $25         ; data? G, 81, 15, %                      
          db $35, $41, $51, $65         ; data? 5, A, Q, e                        
          db $71, $11, $20, $31         ; data? q, 11, " ", 1                     
          db $40, $50, $61, $70         ; data? @, P, a, p                        
          db $A6, $00, $CD, $24         ; data? A6, 00, CD, $                     
          db $81, $B6, $D0, $2A         ; data? 81, B6, D0, *                     
          db $01, $81, $A4, $70         ; data? 01, 81, A4, p                     
          db $44, $CD, $24, $5B         ; data? D, CD, $, [                       
          db $B6, $D0, $A4, $07         ; data? B6, D0, A4, 07                    
          db $A1, $01, $27, $16         ; data? A1, 01, ', 16                     
          db $25, $07, $AA, $30         ; data? %, 07, AA, 0                      
          db $C7, $02, $5C, $20         ; data? C7, 02, \, " "                    
          db $0D, $B6, $D0, $A0         ; data? 0D, B6, D0, A0                    
          db $10, $44, $44, $A4         ; data? 10, D, D, A4                      
          db $18, $AB, $40, $CD         ; data? 18, AB, @, CD                     
          db $24, $5B, $A6, $C4         ; data? $, [, A6, C4                      
          db $CC, $23, $EA              ; data? CC, #, EA                         
; 
L387A: 
          clrx                          ; Clear byte at clrx <- 0x00              
          brset 7,STACK_0d0,L0080       ; Branch to 0x0080 if Bit 7 is set at STACK_0d0 (Mn=1)
          ldx #$00                      ; Load Index Register with Memory Byte, X <- (0x00)
          lda X3899,x                   ; Load Accumulator with data from  memory at 0x3899, A <- (0x3899)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X3898,x                   ; Load Accumulator with data from  memory at 0x3898, A <- (0x3898)
          beq L0097                     ; Branch to 0x0097 if Equal Z=1           
          jsr L2797                     ; Jump to Subroutine at 0x2797            
          bne L0080                     ; Branch to 0x0080 if Not Equal (Z = 0);  
          ldx X3897,x                   ; Load Index Register with Memory Byte, X <- (0x3897)
          jsr L37D7,x ;INFO: index jump ; Jump to Subroutine at 0x37D7            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X3897: 
          rts                           ; Return from Subroutine                  
; 
X3898: 
          db $E8                        ; data? E8                                
X3899: 
          db $00, $07, $00, $1F         ; data? 00, 07, 00, 1F                    
          db $27, $00, $A6, $05         ; data? ', 00, A6, 05                     
          db $B7, $63, $A6, $80         ; data? B7, c, A6, 80                     
          db $CD, $39, $79, $27         ; data? CD, 9, y, '                       
          db $0A, $CD, $07, $89         ; data? 0A, CD, 07, 89                    
          db $CD, $25, $3F, $3D         ; data? CD, %, 3F, =                      
          db $63, $26, $EF, $CD         ; data? c, &, EF, CD                      
          db $25, $3F, $1D, $01         ; data? %, 3F, 1D, 01                     
          db $3F, $9E, $81              ; data? 3F, 9E, 81                        
; 
L38BC: 
          bset 1,RAM1_05d               ; Set Bit 1 at memory RAM1_05d (Mn <- 1 ) 
          lda #$07                      ; Load Accumulator with 0x07, A <- 0x07   
          cmp XA607                     ; Compare Accumulator with Memory Byte, (A) - (0xA607)
          sta RAM1_09e                  ; Store Accumulator in Memory at RAM1_09e 
          jsr L399D                     ; Jump to Subroutine at 0x399D            
          bclr 6,PortB                  ; Set PANEL_RESET#PB6
                                ;;

                                7)
                                        param1=CONTROL#PB7 LOW
          jsr L254E                     ; Jump to Subroutine at 0x254E            
          bset 6,PortB                  ; Set PANEL_RESET#PB6
                                ;;

                                7)
                                        param1=CONTROL#PB7 HIGH
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          sta RAM1_063                  ; Store Accumulator in Memory at RAM1_063 
          brclr 0,PortA,L00DF           ; Branch to 0x00DF if PANEL_STATUS#PA0
				;;

                                1)
                                        param1=PANEL_DATA#PA1 is LOW
          tst RAM1_063                  ; Test Memory Byte for Negative or Zero, (RAM1_063) – 0x00
          bne L00D3                     ; Branch to 0x00D3 if Not Equal (Z = 0);  
          bclr 2,RAM1_09e               ; Clear bit 2 at RAM1_09e                 
          jmp L077D                     ; Unconditional Jump to 0x077D            
; 
          db $CD, $25, $3F, $CD         ; data? CD, %, 3F, CD                     
          db $25, $3F, $AD, $5C         ; data? %, 3F, AD, \                      
          db $3F, $9F, $CD, $24         ; data? 3F, 9F, CD, $                     
          db $12, $81, $20, $EB         ; data? 12, 81, " ", EB                   
; 
L38EF: 
          lda RAM1_09e                  ; Load Accumulator with value of Memory at RAM1_09e, A <- (RAM1_09e)
          and #$F0                      ; Logical AND between A and constant 0xF0, A ← (A) && (0xF0)
          bne L0109                     ; Branch to 0x0109 if Not Equal (Z = 0);  
          brclr 1,RAM1_05d,L011F        ; Branch to 0x011F if Bit 1 Clear (Mn = 0)
          lda RAM1_06c                  ; Load Accumulator with value of Memory at RAM1_06c, A <- (RAM1_06c)
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          ldx #$07                      ; Load Index Register with Memory Byte, X <- (0x07)
          sta RAM2_0250,x               ; Store Accumulator in Memory at RAM2_0250
          lda #$E1                      ; Load Accumulator with 0xE1, A <- 0xE1   
          bsr L0179                     ; Branch to Subroutine at 0x0179          
          bne L011F                     ; Branch to 0x011F if Not Equal (Z = 0);  
          bclr 1,RAM1_05d               ; Clear bit 1 at RAM1_05d                 
          rts                           ; Return from Subroutine                  
; 
          db $05, $9E, $13, $C6         ; data? 05, 9E, 13, C6                    
          db $02, $56, $AE, $07         ; data? 02, V, AE, 07                     
          db $0F, $9E, $0C, $07         ; data? 0F, 9E, 0C, 07                    
          db $9E, $22, $A6, $D0         ; data? 9E, ", A6, D0                     
          db $AD, $5E, $26, $02         ; data? AD, ^, &, 02                      
          db $17, $9E, $81, $0D         ; data? 17, 9E, 81, 0D                    
          db $9E, $0C, $06, $9E         ; data? 9E, 0C, 06, 9E                    
          db $13, $A6, $C0, $AD         ; data? 13, A6, C0, AD                    
          db $4F, $26, $F3, $16         ; data? O, &, F3, 16                      
          db $9E, $81, $A6, $13         ; data? 9E, 81, A6, 13                    
          db $5F, $0A, $9E, $04         ; data? _, 0A, 9E, 04                     
          db $A6, $23, $AE, $03         ; data? A6, #, AE, 03                     
          db $CD, $39, $79, $26         ; data? CD, 9, y, &                       
          db $E1, $AE, $9E, $CC         ; data? E1, AE, 9E, CC                    
          db $25, $7C                   ; data? %, |                              
; 
L3943: 
          brclr 2,RAM1_09e,L00ED        ; Branch to 0x00ED if Bit 2 Clear (Mn = 0)
          brset 0,PortA,L01A3           ; Branch to 0x01A3 if PANEL_STATUS#PA0
				;;

                                1)
                                        param1=PANEL_DATA#PA1 is HIGH
          brset 6,RAM1_09f,L01A3        ; Branch to 0x01A3 if Bit 6 is set at RAM1_09f (Mn=1)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda #$25                      ; Load Accumulator with 0x25, A <- 0x25   
          jsr L39A4                     ; Jump to Subroutine at 0x39A4            
          beq L019B                     ; Branch to 0x019B if Equal Z=1           
          bclr 1,DDRA                   ; Set 1 as INPUT                          
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          bset 2,PortA                  ; Set PANEL_CLOCK#PA2
                                ;;

                                3)
                                        param1=SLAVE_STATUS#PA3 HIGH
          brset 1,PortA,L0160           ; Branch to 0x0160 if 1 is HIGH           
          rola                          ; Rotate Byte at rola Left through Carry Bit, C <- [b7 <<<< b0] <- C
          bclr 2,PortA                  ; Set PANEL_CLOCK#PA2
                                ;;

                                3)
                                        param1=SLAVE_STATUS#PA3 LOW
          bcc L015B                     ; Branch to 0x015B if C bit is cleared    
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bsr L01E2                     ; Branch to Subroutine at 0x01E2          
          beq L019B                     ; Branch to 0x019B if Equal Z=1           
          brset 6,RAM1_056,L019D        ; Branch to 0x019D if Bit 6 is set at RAM1_056 (Mn=1)
          lda RAM1_056                  ; Load Accumulator with value of Memory at RAM1_056, A <- (RAM1_056)
          beq L0194                     ; Branch to 0x0194 if Equal Z=1           
          sta RAM1_09f                  ; Store Accumulator in Memory at RAM1_09f 
          bset 6,RAM1_09f               ; Set Bit 6 at memory RAM1_09f (Mn <- 1 ) 
          bra L0194                     ; Branch Always (1 = 1)                   
; 
          db $B7, $56, $A4, $0F         ; data? B7, V, A4, 0F                     
          db $4C, $B7, $57, $A6         ; data? L, B7, W, A6                      
          db $9A, $AD, $20, $27         ; data? 9A, AD, " ", '                    
          db $15, $B6, $56, $AD         ; data? 15, B6, V, AD                     
          db $39, $27, $0F, $D6         ; data? 9, ', 0F, D6                      
          db $02, $50, $5C, $3D         ; data? 02, P, \, =                       
          db $57, $2A, $F4, $12         ; data? W, *, F4, 12                      
          db $9E, $10, $9E, $4F         ; data? 9E, 10, 9E, O                     
          db $20, $02, $3A, $9E         ; data? " ", 02, :, 9E                    
; 
L399D: 
          bclr 1,DDRA                   ; Set 1 as INPUT                          
          bset 2,PortA                  ; Set PANEL_CLOCK#PA2
                                ;;

                                3)
                                        param1=SLAVE_STATUS#PA3 HIGH
          bset 2,DDRA                   ; Set PANEL_CLOCK#DDRA2
                                ;;

                                3)
                                        param1=SLAVE_STATUS#DDRA3 as OUTPUT
          rts                           ; Return from Subroutine                  
; 
L39A4: 
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          bclr 1,DDRA                   ; Set 1 as INPUT                          
          bclr 2,PortA                  ; Set PANEL_CLOCK#PA2
                                ;;

                                3)
                                        param1=SLAVE_STATUS#PA3 LOW
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          add #$14                      ; A + 0x14 (without CARRY), A ← (A) + 0x14
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bmi L01BF                     ; Branch to 0x01BF if Minus N = 1         
          brset 1,PortA,L01AE           ; Branch to 0x01AE if 1 is HIGH           
          brset 0,PortA,L01AE           ; Branch to 0x01AE if PANEL_STATUS#PA0
				;;

                                1)
                                        param1=PANEL_DATA#PA1 is HIGH
          brset 0,PortA,L01C1           ; Branch to 0x01C1 if PANEL_STATUS#PA0
				;;

                                1)
                                        param1=PANEL_DATA#PA1 is HIGH
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bpl L01B8                     ; Branch to 0x01B8 if Plus N = 0          
          clra                          ; Clear byte at clra <- 0x00              
          rts                           ; Return from Subroutine                  
; 
          db $B6, $58, $99, $49         ; data? B6, X, 99, I                      
          db $15, $00, $13, $00         ; data? 15, 00, 13, 00                    
          db $24, $04, $13, $04         ; data? $, 04, 13, 04                     
          db $20, $02, $12, $04         ; data? " ", 02, 12, 04                   
          db $14, $00, $48, $26         ; data? 14, 00, H, &                      
          db $EF, $15, $00, $CD         ; data? EF, 15, 00, CD                    
          db $3A, $04, $13, $04         ; data? :, 04, 13, 04                     
          db $3D, $57, $26, $01         ; data? =, W, &, 01                       
          db $9B, $A6, $38, $01         ; data? 9B, A6, 8, 01                     
          db $00, $05, $4A, $26         ; data? 00, 05, J, &                      
          db $FA, $9A, $81, $14         ; data? FA, 9A, 81, 14                    
          db $00, $9A, $3A, $57         ; data? 00, 9A, :, W                      
          db $2B, $11, $CD, $25         ; data? +, 11, CD, %                      
          db $4E, $4F, $00, $00         ; data? N, O, 00, 00                      
          db $0A, $A6, $38, $15         ; data? 0A, A6, 8, 15                     
          db $00, $00, $00, $03         ; data? 00, 00, 00, 03                    
          db $4A, $26, $FA, $81         ; data? J, &, FA, 81                      
; 
L3A05: 
          clra                          ; Clear byte at clra <- 0x00              
          sta RAM1_08f                  ; Store Accumulator in Memory at RAM1_08f 
          sta RAM2_02d1                 ; Store Accumulator in Memory at RAM2_02d1
          bclr 4,RAM1_06b               ; Clear bit 4 at RAM1_06b                 
          bset 6,RAM1_095               ; Set Bit 6 at memory RAM1_095 (Mn <- 1 ) 
          clr RAM1_090                  ; Clear byte at RAM1_090 <- 0x00          
          bset 1,RAM1_091               ; Set Bit 1 at memory RAM1_091 (Mn <- 1 ) 
          ldx #$0F                      ; Load Index Register with Memory Byte, X <- (0x0F)
          sta RAM2_02c0,x               ; Store Accumulator in Memory at RAM2_02c0
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bpl L0215                     ; Branch to 0x0215 if Plus N = 0          
          lda #$40                      ; Load Accumulator with 0x40, A <- 0x40   
          sta RAM2_02ca                 ; Store Accumulator in Memory at RAM2_02ca
          sta RAM2_02cb                 ; Store Accumulator in Memory at RAM2_02cb
          lda #$10                      ; Load Accumulator with 0x10, A <- 0x10   
          sta RAM2_02c2                 ; Store Accumulator in Memory at RAM2_02c2
          brset 7,RAM1_061,L0282        ; Branch to 0x0282 if Bit 7 is set at RAM1_061 (Mn=1)
          brclr 3,RAM1_08e,L0230        ; Branch to 0x0230 if Bit 3 Clear (Mn = 0)
          bset 4,STACK_0d5              ; Set Bit 4 at memory STACK_0d5 (Mn <- 1 )
          bset 5,STACK_0d5              ; Set Bit 5 at memory STACK_0d5 (Mn <- 1 )
          jsr L24B4                     ; Jump to Subroutine at 0x24B4            
          bset 5,RAM1_08f               ; Set Bit 5 at memory RAM1_08f (Mn <- 1 ) 
          brset 3,RAM1_05f,L023C        ; Branch to 0x023C if Bit 3 is set at RAM1_05f (Mn=1)
          bset 0,RAM1_090               ; Set Bit 0 at memory RAM1_090 (Mn <- 1 ) 
          ldx #$2F                      ; Load Index Register with Memory Byte, X <- (0x2F)
          bclr 0,RAM1_05b               ; Clear bit 0 at RAM1_05b                 
          lda OPTR,x                    ; Load Accumulator with value of Memory at OPTR, A <- (OPTR)
          cmp EEPROM_0130,x             ; Compare Accumulator with Memory Byte, (A) - (EEPROM_0130)
          bne L024D                     ; Branch to 0x024D if Not Equal (Z = 0);  
          cmp EEPROM_0160,x             ; Compare Accumulator with Memory Byte, (A) - (EEPROM_0160)
          beq L026A                     ; Branch to 0x026A if Equal Z=1           
          bset 0,RAM1_05b               ; Set Bit 0 at memory RAM1_05b (Mn <- 1 ) 
          and EEPROM_0130,x             ; Logical AND, A ← (A) && (EEPROM_0130) 
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda OPTR,x                    ; Load Accumulator with value of Memory at OPTR, A <- (OPTR)
          eor EEPROM_0130,x             ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (EEPROM_0130)
          and EEPROM_0160,x             ; Logical AND, A ← (A) && (EEPROM_0160) 
          ora RAM1_057                  ; Logical OR Accumulator with Memory at RAM1_057, A <- (A) || (RAM1_057)
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          add #$60                      ; A + 0x60 (without CARRY), A ← (A) + 0x60
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda RAM1_057                  ; Load Accumulator with value of Memory at RAM1_057, A <- (RAM1_057)
          jsr L3786                     ; Jump to Subroutine at 0x3786            
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bpl L0240                     ; Branch to 0x0240 if Plus N = 0          
          lda #$03                      ; Load Accumulator with 0x03, A <- 0x03   
          bsr L02BF                     ; Branch to Subroutine at 0x02BF          
          ldx #$12                      ; Load Index Register with Memory Byte, X <- (0x12)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          ldx #$0E                      ; Load Index Register with Memory Byte, X <- (0x0E)
          cmp #$5A                      ; Compare Accumulator with Memory Byte, (A) - (0x5A)
          beq L027D                     ; Branch to 0x027D if Equal Z=1           
          clra                          ; Clear byte at clra <- 0x00              
          add #$FF                      ; A + 0xFF (without CARRY), A ← (A) + 0xFF
          jsr L3CE8                     ; Jump to Subroutine at 0x3CE8            
          rts                           ; Return from Subroutine                  
; 
L3A83: 
          brclr 6,RAM1_09f,L029C        ; Branch to 0x029C if Bit 6 Clear (Mn = 0)
          clrx                          ; Clear byte at clrx <- 0x00              
          lda RAM1_09f                  ; Load Accumulator with value of Memory at RAM1_09f, A <- (RAM1_09f)
          bmi L0299                     ; Branch to 0x0299 if Minus N = 1         
          and #$3F                      ; Logical AND between A and constant 0x3F, A ← (A) && (0x3F)
          cmp #$21                      ; Compare Accumulator with Memory Byte, (A) - (0x21)
          beq L0299                     ; Branch to 0x0299 if Equal Z=1           
          bcs L0297                     ; Branch to 0x0297 if C = 1               
          cmp #$25                      ; Compare Accumulator with Memory Byte, (A) - (0x25)
          bcs L0299                     ; Branch to 0x0299 if C = 1               
          ldx #$BC                      ; Load Index Register with Memory Byte, X <- (0xBC)
          stx RAM2_02d6                 ; Store Index Register In Memory at RAM2_02d6
          rts                           ; Return from Subroutine                  
; 
L3A9D: 
          lda RAM2_02d6                 ; Load Accumulator with value of Memory at RAM2_02d6, A <- (RAM2_02d6)
          beq L02AE                     ; Branch to 0x02AE if Equal Z=1           
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          sta RAM2_02d6                 ; Store Accumulator in Memory at RAM2_02d6
          bne L02AE                     ; Branch to 0x02AE if Not Equal (Z = 0);  
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          bset 0,RAM1_05b               ; Set Bit 0 at memory RAM1_05b (Mn <- 1 ) 
          bra L02BF                     ; Branch Always (1 = 1)                   
; 
          db $09, $7C, $EB, $AE         ; data? 09, |, EB, AE                     
          db $0D, $CD, $3C, $BB         ; data? 0D, CD, <, BB                     
          db $C6, $02, $CD, $2A         ; data? C6, 02, CD, *                     
          db $E1, $A6, $04, $20         ; data? E1, A6, 04, " "                   
          db $0F, $B7, $50, $AE         ; data? 0F, B7, P, AE                     
          db $0D, $01, $5B, $00         ; data? 0D, 01, [, 00                     
          db $CD, $3C, $C9, $01         ; data? CD, <, C9, 01                     
          db $5B, $D0, $B6, $50         ; data? [, D0, B6, P                      
          db $AE, $CF, $CC, $37         ; data? AE, CF, CC, 7                     
          db $9B, $0F, $60, $22         ; data? 9B, 0F, `, "                      
          db $0D, $5D, $1F, $AE         ; data? 0D, ], 1F, AE                     
          db $23, $D6, $3F, $91         ; data? #, D6, 3F, 91                     
          db $5A, $5A, $B1, $78         ; data? Z, Z, B1, x                       
          db $26, $11, $D6, $3F         ; data? &, 11, D6, 3F                     
          db $91, $C7, $02, $D3         ; data? 91, C7, 02, D3                    
          db $D6, $3F, $92, $C7         ; data? D6, 3F, 92, C7                    
          db $02, $D4, $A6, $FF         ; data? 02, D4, A6, FF                    
          db $C7, $02, $D5, $5A         ; data? C7, 02, D5, Z                     
          db $26, $E3, $81              ; data? &, E3, 81                         
; 
L3AF9: 
          brclr 2,RAM1_091,L0334        ; Branch to 0x0334 if Bit 2 Clear (Mn = 0)
          sei                           ; Set Interrupt Mask, I ← 1);           
          brclr 7,PortB,L0322           ; Branch to 0x0322 if 7 is LOW            
          brclr 1,RAM1_090,L0322        ; Branch to 0x0322 if Bit 1 Clear (Mn = 0)
          brset 3,PortB,L0322           ; Branch to 0x0322 if 3 is HIGH           
          lda #$24                      ; Load Accumulator with 0x24, A <- 0x24   
          jsr L24C5                     ; Jump to Subroutine at 0x24C5            
          cmp #$1F                      ; Compare Accumulator with Memory Byte, (A) - (0x1F)
          bls L0311                     ; Branch to 0x0311 if Lower or Same C v Z = 1
          lda #$1F                      ; Load Accumulator with 0x1F, A <- 0x1F   
          sta RAM2_02c7                 ; Store Accumulator in Memory at RAM2_02c7
          lda #$23                      ; Load Accumulator with 0x23, A <- 0x23   
          jsr L24C5                     ; Jump to Subroutine at 0x24C5            
          cmp #$1F                      ; Compare Accumulator with Memory Byte, (A) - (0x1F)
          bls L031F                     ; Branch to 0x031F if Lower or Same C v Z = 1
          lda #$1F                      ; Load Accumulator with 0x1F, A <- 0x1F   
          sta RAM2_02c8                 ; Store Accumulator in Memory at RAM2_02c8
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brclr 3,PortB,L0376           ; Branch to 0x0376 if 3 is LOW            
          brclr 1,RAM1_090,L0376        ; Branch to 0x0376 if Bit 1 Clear (Mn = 0)
          bclr 1,RAM1_090               ; Clear bit 1 at RAM1_090                 
          lda RAM2_02c7                 ; Load Accumulator with value of Memory at RAM2_02c7, A <- (RAM2_02c7)
          beq L0376                     ; Branch to 0x0376 if Equal Z=1           
          bset 4,RAM1_06b               ; Set Bit 4 at memory RAM1_06b (Mn <- 1 ) 
          bset 6,RAM1_095               ; Set Bit 6 at memory RAM1_095 (Mn <- 1 ) 
          lda RAM1_090                  ; Load Accumulator with value of Memory at RAM1_090, A <- (RAM1_090)
          add #$04                      ; A + 0x04 (without CARRY), A ← (A) + 0x04
          sta RAM1_090                  ; Store Accumulator in Memory at RAM1_090 
          bcs L0370                     ; Branch to 0x0370 if C = 1               
          bpl L0376                     ; Branch to 0x0376 if Plus N = 0          
          sei                           ; Set Interrupt Mask, I ← 1);           
          brclr 7,PortB,L0376           ; Branch to 0x0376 if 7 is LOW            
          brclr 5,RAM1_08e,L0370        ; Branch to 0x0370 if Bit 5 Clear (Mn = 0)
          lda #$24                      ; Load Accumulator with 0x24, A <- 0x24   
          jsr L24C5                     ; Jump to Subroutine at 0x24C5            
          cli                           ; Clear Interrupt Mask (I <- 0)           
          sub RAM2_02c7                 ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM2_02c7)
          bcc L0351                     ; Branch to 0x0351 if C bit is cleared    
          clra                          ; Clear byte at clra <- 0x00              
          jsr L3E8F                     ; Jump to Subroutine at 0x3E8F            
          brset 1,RAM1_08f,L0370        ; Branch to 0x0370 if Bit 1 is set at RAM1_08f (Mn=1)
          brset 0,RAM1_08f,L0370        ; Branch to 0x0370 if Bit 0 is set at RAM1_08f (Mn=1)
          brset 7,RAM1_08e,L0370        ; Branch to 0x0370 if Bit 7 is set at RAM1_08e (Mn=1)
          sei                           ; Set Interrupt Mask, I ← 1);           
          brclr 7,PortB,L0376           ; Branch to 0x0376 if 7 is LOW            
          lda #$23                      ; Load Accumulator with 0x23, A <- 0x23   
          jsr L24C5                     ; Jump to Subroutine at 0x24C5            
          cli                           ; Clear Interrupt Mask (I <- 0)           
          sub RAM2_02c8                 ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM2_02c8)
          bcc L036D                     ; Branch to 0x036D if C bit is cleared    
          clra                          ; Clear byte at clra <- 0x00              
          jsr L3E8F                     ; Jump to Subroutine at 0x3E8F            
          bclr 4,RAM1_06b               ; Clear bit 4 at RAM1_06b                 
          bset 6,RAM1_095               ; Set Bit 6 at memory RAM1_095 (Mn <- 1 ) 
          clr RAM1_090                  ; Clear byte at RAM1_090 <- 0x00          
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brset 4,RAM1_0bc,L03B3        ; Branch to 0x03B3 if Bit 4 is set at RAM1_0bc (Mn=1)
          brset 2,RAM1_0bc,L0392        ; Branch to 0x0392 if Bit 2 is set at RAM1_0bc (Mn=1)
          brset 3,RAM1_0bf,L03B3        ; Branch to 0x03B3 if Bit 3 is set at RAM1_0bf (Mn=1)
          brclr 5,RAM1_08f,L03B3        ; Branch to 0x03B3 if Bit 5 Clear (Mn = 0)
          bclr 5,RAM1_08f               ; Clear bit 5 at RAM1_08f                 
          bclr 6,RAM1_08f               ; Clear bit 6 at RAM1_08f                 
          bset 2,RAM1_0bc               ; Set Bit 2 at memory RAM1_0bc (Mn <- 1 ) 
          bset 4,RAM1_0bc               ; Set Bit 4 at memory RAM1_0bc (Mn <- 1 ) 
          lda #$60                      ; Load Accumulator with 0x60, A <- 0x60   
          sta RAM2_02d1                 ; Store Accumulator in Memory at RAM2_02d1
          bra L03B3                     ; Branch Always (1 = 1)                   
; 
          db $C6, $02, $D1, $A5         ; data? C6, 02, D1, A5                    
          db $08, $26, $06, $4C         ; data? 08, &, 06, L                      
          db $C7, $02, $D1, $20         ; data? C7, 02, D1, " "                   
          db $14, $9B, $0E, $01         ; data? 14, 9B, 0E, 01                    
          db $10, $A6, $23, $CD         ; data? 10, A6, #, CD                     
          db $24, $C5, $C7, $02         ; data? $, C5, C7, 02                     
          db $D2, $C6, $02, $D1         ; data? D2, C6, 02, D1                    
          db $AA, $80, $C7, $02         ; data? AA, 80, C7, 02                    
          db $D1, $9A, $0F, $60         ; data? D1, 9A, 0F, `                     
          db $15, $10, $80, $C6         ; data? 15, 10, 80, C6                    
          db $02, $D5, $27, $0E         ; data? 02, D5, ', 0E                     
          db $4A, $C7, $02, $D5         ; data? J, C7, 02, D5                     
          db $26, $08, $A6, $20         ; data? &, 08, A6, " "                    
          db $C7, $02, $D3, $C7         ; data? C7, 02, D3, C7                    
          db $02, $D4, $81              ; data? 02, D4, 81                        
; 
L3BCD: 
          lda RAM2_02d7                 ; Load Accumulator with value of Memory at RAM2_02d7, A <- (RAM2_02d7)
          brclr 4,RAM1_06a,L03D7        ; Branch to 0x03D7 if Bit 4 Clear (Mn = 0)
          add #$0C                      ; A + 0x0C (without CARRY), A ← (A) + 0x0C
          bcs L03DE                     ; Branch to 0x03DE if C = 1               
          beq L03DE                     ; Branch to 0x03DE if Equal Z=1           
          sub #$04                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x04)
          sta RAM2_02d7                 ; Store Accumulator in Memory at RAM2_02d7
          brclr 2,RAM1_091,L03CC        ; Branch to 0x03CC if Bit 2 Clear (Mn = 0)
          brclr 0,RAM1_090,L03CC        ; Branch to 0x03CC if Bit 0 Clear (Mn = 0)
          bclr 0,RAM1_090               ; Clear bit 0 at RAM1_090                 
          brset 3,RAM1_091,L03ED        ; Branch to 0x03ED if Bit 3 is set at RAM1_091 (Mn=1)
          jsr L3E9D                     ; Jump to Subroutine at 0x3E9D            
          rts                           ; Return from Subroutine                  
; 
          db $A6, $32, $B7, $90         ; data? A6, 2, B7, 90                     
          db $81                        ; data? 81                                
; 
L3BF2: 
          clrx                          ; Clear byte at clrx <- 0x00              
          brset 1,RAM1_05f,L03FD        ; Branch to 0x03FD if Bit 1 is set at RAM1_05f (Mn=1)
          lda RAM1_09c                  ; Load Accumulator with value of Memory at RAM1_09c, A <- (RAM1_09c)
          cmp #$F4                      ; Compare Accumulator with Memory Byte, (A) - (0xF4)
          bhi L0400                     ; Branch to 0x0400 if Higher C v Z = 0    
          clc                           ; Clear Carry Bit (C <- 0)                
          jsr L3CB8                     ; Jump to Subroutine at 0x3CB8            
          brclr 5,RAM1_060,L040A        ; Branch to 0x040A if Bit 5 Clear (Mn = 0)
          bclr 5,RAM1_060               ; Clear bit 5 at RAM1_060                 
          ldx #$01                      ; Load Index Register with Memory Byte, X <- (0x01)
          jsr L3CEB                     ; Jump to Subroutine at 0x3CEB            
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          jsr L24C5                     ; Jump to Subroutine at 0x24C5            
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          add #$78                      ; A + 0x78 (without CARRY), A ← (A) + 0x78
          bcs L0418                     ; Branch to 0x0418 if C = 1               
          add #$14                      ; A + 0x14 (without CARRY), A ← (A) + 0x14
          bcs L041D                     ; Branch to 0x041D if C = 1               
          ldx #$01                      ; Load Index Register with Memory Byte, X <- (0x01)
          jsr L3CBB                     ; Jump to Subroutine at 0x3CBB            
          brclr 2,RAM1_0bc,L046F        ; Branch to 0x046F if Bit 2 Clear (Mn = 0)
          lda RAM2_02d1                 ; Load Accumulator with value of Memory at RAM2_02d1, A <- (RAM2_02d1)
          bpl L046F                     ; Branch to 0x046F if Plus N = 0          
          ldx #$03                      ; Load Index Register with Memory Byte, X <- (0x03)
          brset 6,RAM1_08f,L0433        ; Branch to 0x0433 if Bit 6 is set at RAM1_08f (Mn=1)
          bclr 4,RAM1_08f               ; Clear bit 4 at RAM1_08f                 
          brclr 0,RAM1_091,L0433        ; Branch to 0x0433 if Bit 0 Clear (Mn = 0)
          bset 4,RAM1_08f               ; Set Bit 4 at memory RAM1_08f (Mn <- 1 ) 
          bset 6,RAM1_08f               ; Set Bit 6 at memory RAM1_08f (Mn <- 1 ) 
          jsr L3CBB                     ; Jump to Subroutine at 0x3CBB            
          bclr 3,RAM1_08f               ; Clear bit 3 at RAM1_08f                 
          ldx #$02                      ; Load Index Register with Memory Byte, X <- (0x02)
          lda RAM2_02d2                 ; Load Accumulator with value of Memory at RAM2_02d2, A <- (RAM2_02d2)
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          add #$66                      ; A + 0x66 (without CARRY), A ← (A) + 0x66
          bcc L0444                     ; Branch to 0x0444 if C bit is cleared    
          bset 3,RAM1_08f               ; Set Bit 3 at memory RAM1_08f (Mn <- 1 ) 
          bsr L04BB                     ; Branch to Subroutine at 0x04BB          
          lda RAM2_02c3                 ; Load Accumulator with value of Memory at RAM2_02c3, A <- (RAM2_02c3)
          bmi L046B                     ; Branch to 0x046B if Minus N = 1         
          lda RAM2_02c2                 ; Load Accumulator with value of Memory at RAM2_02c2, A <- (RAM2_02c2)
          bpl L0453                     ; Branch to 0x0453 if Plus N = 0          
          brclr 2,RAM1_08f,L046B        ; Branch to 0x046B if Bit 2 Clear (Mn = 0)
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          bne L0458                     ; Branch to 0x0458 if Not Equal (Z = 0);  
          bset 2,RAM1_08f               ; Set Bit 2 at memory RAM1_08f (Mn <- 1 ) 
          brclr 6,RAM1_08f,L046F        ; Branch to 0x046F if Bit 6 Clear (Mn = 0)
          lda RAM2_02d1                 ; Load Accumulator with value of Memory at RAM2_02d1, A <- (RAM2_02d1)
          bit #$70                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x70)
          beq L0469                     ; Branch to 0x0469 if Equal Z=1           
          sub #$10                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x10)
          sta RAM2_02d1                 ; Store Accumulator in Memory at RAM2_02d1
          bra L046F                     ; Branch Always (1 = 1)                   
; 
          db $1A, $8F, $15, $BC         ; data? 1A, 8F, 15, BC                    
          db $18, $BC, $AE, $04         ; data? 18, BC, AE, 04                    
          db $03, $01, $0C, $0A         ; data? 03, 01, 0C, 0A                    
          db $91, $00, $AD, $42         ; data? 91, 00, AD, B                     
          db $C6, $02, $C4, $2A         ; data? C6, 02, C4, *                     
          db $02, $13, $01, $AE         ; data? 02, 13, 01, AE                    
          db $05, $06, $91, $00         ; data? 05, 06, 91, 00                    
          db $AD, $31, $AE, $09         ; data? AD, 1, AE, 09                     
          db $01, $01, $0C, $08         ; data? 01, 01, 0C, 08                    
          db $91, $00, $AD, $2A         ; data? 91, 00, AD, *                     
          db $C6, $02, $C9, $2A         ; data? C6, 02, C9, *                     
          db $02, $11, $01, $05         ; data? 02, 11, 01, 05                    
          db $8E, $11, $03, $5F         ; data? 8E, 11, 03, _                     
          db $0E, $B6, $9C, $A1         ; data? 0E, B6, 9C, A1                    
          db $F4, $22, $08, $AE         ; data? F4, ", 08, AE                     
          db $0A, $09, $6A, $00         ; data? 0A, 09, j, 00                     
          db $CD, $3C, $B8, $03         ; data? CD, <, B8, 03                     
          db $8E, $08, $AE, $0B         ; data? 8E, 08, AE, 0B                    
          db $0D, $6A, $00, $CD         ; data? 0D, j, 00, CD                     
          db $3C, $B8, $81              ; data? <, B8, 81                         
; 
L3CB8: 
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          rola                          ; Rotate Byte at rola Left through Carry Bit, C <- [b7 <<<< b0] <- C
L3CBB: 
          lda RAM2_02c0,x               ; Load Accumulator with value of Memory at RAM2_02c0, A <- (RAM2_02c0)
          bcs L04DE                     ; Branch to 0x04DE if C = 1               
          sub #$02                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x02)
          bcc L04E2                     ; Branch to 0x04E2 if C bit is cleared    
          bra L04CE                     ; Branch Always (1 = 1)                   
; 
          db $46, $43, $49              ; data? F, C, I                           
; 
L3CC9: 
          lda RAM2_02c0,x               ; Load Accumulator with value of Memory at RAM2_02c0, A <- (RAM2_02c0)
          bcs L04EB                     ; Branch to 0x04EB if C = 1               
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          bcs L0500                     ; Branch to 0x0500 if C = 1               
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          sta RAM2_02c0,x               ; Store Accumulator in Memory at RAM2_02c0
          lda EEPROM_01c0,x             ; Load Accumulator with value of Memory at EEPROM_01c0, A <- (EEPROM_01c0)
          beq L0500                     ; Branch to 0x0500 if Equal Z=1           
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bra L04ED                     ; Branch Always (1 = 1)                   
; 
          db $2B, $20, $AB, $02         ; data? +, " ", AB, 02                    
          db $D7, $02, $C0, $2B         ; data? D7, 02, C0, +                     
          db $04, $81                   ; data? 04, 81                            
; 
L3CE8: 
          clra                          ; Clear byte at clra <- 0x00              
          bcs L04ED                     ; Branch to 0x04ED if C = 1               
L3CEB: 
          lda #$33                      ; Load Accumulator with 0x33, A <- 0x33   
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          add #$C0                      ; A + 0xC0 (without CARRY), A ← (A) + 0xC0
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda RAM1_056                  ; Load Accumulator with value of Memory at RAM1_056, A <- (RAM1_056)
          brset 0,RAM1_08e,L04FD        ; Branch to 0x04FD if Bit 0 is set at RAM1_08e (Mn=1)
cpx #$C2 
          bne L04FD                     ; Branch to 0x04FD if Not Equal (Z = 0);  
          clra                          ; Clear byte at clra <- 0x00              
          jsr L379B                     ; Jump to Subroutine at 0x379B            
          rts                           ; Return from Subroutine                  
; 
          db $C6, $02, $B3, $A1         ; data? C6, 02, B3, A1                    
          db $03, $26, $11, $C6         ; data? 03, &, 11, C6                     
          db $02, $B4, $A1, $53         ; data? 02, B4, A1, S                     
          db $26, $03, $10, $90         ; data? &, 03, 10, 90                     
          db $81, $A6, $06, $CD         ; data? 81, A6, 06, CD                    
          db $24, $9F, $1F, $5D         ; data? $, 9F, 1F, ]                      
          db $81, $DE, $3D, $20         ; data? 81, DE, =, " "                    
          db $DC, $3D, $28, $00         ; data? DC, =, (, 00                      
          db $00, $20, $32, $4F         ; data? 00, " ", 2, O                     
          db $65, $6A, $7C, $4F         ; data? e, j, |, O                        
          db $0E, $91, $02, $A6         ; data? 0E, 91, 02, A6                    
          db $08, $C7, $02, $B5         ; data? 08, C7, 02, B5                    
          db $A6, $27, $CD, $24         ; data? A6, ', CD, $                      
          db $C5, $C7, $02, $B8         ; data? C5, C7, 02, B8                    
          db $4F, $05, $5F, $03         ; data? O, 05, _, 03                      
          db $C6, $02, $A4, $C7         ; data? C6, 02, A4, C7                    
          db $02, $BB, $02, $5F         ; data? 02, BB, 02, _                     
          db $3E, $20, $3C, $10         ; data? >, " ", <, 10                     
          db $90, $A6, $F3, $00         ; data? 90, A6, F3, 00                    
          db $8F, $07, $A6, $F2         ; data? 8F, 07, A6, F2                    
          db $02, $8F, $02, $A6         ; data? 02, 8F, 02, A6                    
          db $C2, $C7, $02, $B8         ; data? C2, C7, 02, B8                    
          db $81, $1A, $8F, $01         ; data? 81, 1A, 8F, 01                    
          db $8E, $05, $A6, $12         ; data? 8E, 05, A6, 12                    
          db $C7, $02, $B5, $A6         ; data? C7, 02, B5, A6                    
          db $F2, $08, $8F, $0A         ; data? F2, 08, 8F, 0A                    
          db $A6, $C2, $07, $8F         ; data? A6, C2, 07, 8F                    
          db $05, $01, $8E, $02         ; data? 05, 01, 8E, 02                    
          db $A6, $F3, $C7, $02         ; data? A6, F3, C7, 02                    
          db $BB, $81, $4F, $12         ; data? BB, 81, O, 12                     
          db $01, $0B, $91, $01         ; data? 01, 0B, 91, 01                    
          db $4C, $C7, $02, $B5         ; data? L, C7, 02, B5                     
          db $06, $5F, $00, $A6         ; data? 06, _, 00, A6                     
          db $87, $25, $01, $4C         ; data? 87, %, 01, L                      
          db $C7, $02, $BE, $81         ; data? C7, 02, BE, 81                    
          db $0C, $6A, $0B, $20         ; data? 0C, j, 0B, " "                    
          db $09, $1A, $D5, $CD         ; data? 09, 1A, D5, CD                    
          db $24, $B4, $C6, $02         ; data? $, B4, C6, 02                     
          db $D7, $49, $A6, $C2         ; data? D7, I, A6, C2                     
          db $25, $01, $4C, $C7         ; data? %, 01, L, C7                      
          db $02, $B8, $81, $C6         ; data? 02, B8, 81, C6                    
          db $02, $D3, $C7, $02         ; data? 02, D3, C7, 02                    
          db $B4, $C6, $02, $D4         ; data? B4, C6, 02, D4                    
          db $C7, $02, $B5, $81         ; data? C7, 02, B5, 81                    
          db $3F, $5B, $07, $8E         ; data? 3F, [, 07, 8E                     
          db $02, $3C, $5B, $C6         ; data? 02, <, [, C6                      
          db $02, $B3, $AE, $80         ; data? 02, B3, AE, 80                    
          db $CD, $37, $86, $C6         ; data? CD, 7, 86, C6                     
          db $02, $B4, $AE, $81         ; data? 02, B4, AE, 81                    
          db $CD, $37, $86, $C6         ; data? CD, 7, 86, C6                     
          db $02, $B5, $AE, $82         ; data? 02, B5, AE, 82                    
          db $CD, $37, $86, $C6         ; data? CD, 7, 86, C6                     
          db $02, $B6, $AE, $83         ; data? 02, B6, AE, 83                    
          db $CD, $37, $86, $A6         ; data? CD, 7, 86, A6                     
          db $5A, $AE, $72, $CD         ; data? Z, AE, r, CD                      
          db $37, $86, $CD, $3E         ; data? 7, 86, CD, >                      
          db $EE, $07, $8E, $2E         ; data? EE, 07, 8E, .                     
          db $3D, $5B, $26, $2A         ; data? =, [, &, *                        
          db $AE, $12, $CD, $3E         ; data? AE, 12, CD, >                     
          db $B2, $AE, $00, $CD         ; data? B2, AE, 00, CD                    
          db $3E, $C0, $A6, $0D         ; data? >, C0, A6, 0D                     
          db $CD, $3E, $C8, $C6         ; data? CD, >, C8, C6                     
          db $02, $7C, $4A, $2A         ; data? 02, |, J, *                       
          db $F7, $AE, $30, $CD         ; data? F7, AE, 0, CD                     
          db $3E, $B2, $AE, $02         ; data? >, B2, AE, 02                     
          db $CD, $3E, $C0, $A6         ; data? CD, >, C0, A6                     
          db $1B, $CD, $3E, $C8         ; data? 1B, CD, >, C8                     
          db $C6, $02, $7C, $4A         ; data? C6, 02, |, J                      
          db $2A, $F7, $81, $A6         ; data? *, F7, 81, A6                     
          db $81, $B7, $D0, $A6         ; data? 81, B7, D0, A6                    
          db $41, $B7, $CE, $10         ; data? A, B7, CE, 10                     
          db $80, $1E, $94, $1F         ; data? 80, 1E, 94, 1F                    
          db $60, $1D, $60, $1E         ; data? `, 1D, `, 1E                      
          db $5D, $81, $AE, $CF         ; data? ], 81, AE, CF                     
          db $4F, $A3, $BE, $22         ; data? O, A3, BE, "                      
          db $03, $D6, $3D, $CF         ; data? 03, D6, =, CF                     
          db $CD, $37, $9B, $CD         ; data? CD, 7, 9B, CD                     
          db $07, $89, $5A, $A3         ; data? 07, 89, Z, A3                     
          db $A0, $24, $ED, $AE         ; data? A0, $, ED, AE                     
          db $80, $A6, $03, $CD         ; data? 80, A6, 03, CD                    
          db $37, $86, $AE, $81         ; data? 7, 86, AE, 81                     
          db $A6, $22, $CD, $37         ; data? A6, ", CD, 7                      
          db $86, $A6, $00, $AE         ; data? 86, A6, 00, AE                    
          db $72, $CD, $37, $86         ; data? r, CD, 7, 86                      
          db $A6, $46, $CD, $23         ; data? A6, F, CD, #                      
          db $EA, $CD, $1E, $B4         ; data? EA, CD, 1E, B4                    
          db $CD, $38, $EF, $CD         ; data? CD, 8, EF, CD                     
          db $07, $89, $20, $FB         ; data? 07, 89, " ", FB                   
          db $AE, $63, $A6, $A0         ; data? AE, c, A6, A0                     
          db $CD, $37, $86, $CD         ; data? CD, 7, 86, CD                     
          db $24, $50, $A6, $C4         ; data? $, P, A6, C4                      
          db $20, $E4, $00, $00         ; data? " ", E4, 00, 00                   
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $02, $08, $03         ; data? 00, 02, 08, 03                    
          db $03, $03, $00, $00         ; data? 03, 03, 00, 00                    
          db $03, $00, $02, $00         ; data? 03, 00, 02, 00                    
          db $00, $10, $10, $10         ; data? 00, 10, 10, 10                    
          db $10, $10, $10, $00         ; data? 10, 10, 10, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00                   ; data? 00, 00                            
; 
L3E8F: 
          bclr 1,RAM1_08f               ; Clear bit 1 at RAM1_08f                 
          cmp #$A9                      ; Compare Accumulator with Memory Byte, (A) - (0xA9)
          bhi L069D                     ; Branch to 0x069D if Higher C v Z = 0    
          cmp #$0B                      ; Compare Accumulator with Memory Byte, (A) - (0x0B)
          bhi L069F                     ; Branch to 0x069F if Higher C v Z = 0    
          bset 0,RAM1_08f               ; Set Bit 0 at memory RAM1_08f (Mn <- 1 ) 
          bra L06A1                     ; Branch Always (1 = 1)                   
; 
L3E9D: 
          bset 1,RAM1_08f               ; Set Bit 1 at memory RAM1_08f (Mn <- 1 ) 
          bclr 0,RAM1_08f               ; Clear bit 0 at RAM1_08f                 
          ldx #$05                      ; Load Index Register with Memory Byte, X <- (0x05)
          brclr 1,RAM1_08f,L06A6        ; Branch to 0x06A6 if Bit 1 Clear (Mn = 0)
          jsr L3CC9                     ; Jump to Subroutine at 0x3CC9            
          ldx #$06                      ; Load Index Register with Memory Byte, X <- (0x06)
          brclr 0,RAM1_08f,L06AE        ; Branch to 0x06AE if Bit 0 Clear (Mn = 0)
          jsr L3CC9                     ; Jump to Subroutine at 0x3CC9            
          rts                           ; Return from Subroutine                  
; 
          db $A6, $89, $C7, $02         ; data? A6, 89, C7, 02                    
          db $7D, $A6, $8A, $C7         ; data? }, A6, 8A, C7                     
          db $02, $7C, $A6, $0A         ; data? 02, |, A6, 0A                     
          db $20, $0F, $4F, $C7         ; data? " ", 0F, O, C7                    
          db $02, $7C, $A6, $11         ; data? 02, |, A6, 11                     
          db $20, $07, $C7, $02         ; data? " ", 07, C7, 02                   
          db $7C, $A6, $19, $AE         ; data? |, A6, 19, AE                     
          db $89, $C7, $02, $7A         ; data? 89, C7, 02, z                     
          db $CF, $02, $7B, $1E         ; data? CF, 02, {, 1E                     
          db $D6, $3F, $D9, $CD         ; data? D6, 3F, D9, CD                    
          db $07, $89, $CD, $47         ; data? 07, 89, CD, G                     
          db $F4, $07, $67, $F7         ; data? F4, 07, g, F7                     
          db $17, $67, $CD, $36         ; data? 17, g, CD, 6                      
          db $AE, $CD, $47, $AA         ; data? AE, CD, G, AA                     
          db $0E, $D6, $EC, $81         ; data? 0E, D6, EC, 81                    
; 
L3EEE: 
          ldx EEPROM_0120               ; Load Index Register with Memory Byte, X <- (EEPROM_0120)
          lda EEPROM_0121               ; Load Accumulator with value of Memory at EEPROM_0121, A <- (EEPROM_0121)
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          bsr L072D                     ; Branch to Subroutine at 0x072D          
          lda RAM1_058                  ; Load Accumulator with value of Memory at RAM1_058, A <- (RAM1_058)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          sta RAM1_08e                  ; Store Accumulator in Memory at RAM1_08e 
          brclr 0,RAM1_056,L0703        ; Branch to 0x0703 if Bit 0 Clear (Mn = 0)
          bset 3,RAM1_08e               ; Set Bit 3 at memory RAM1_08e (Mn <- 1 ) 
          brclr 4,RAM1_058,L0708        ; Branch to 0x0708 if Bit 4 Clear (Mn = 0)
          bset 4,RAM1_08e               ; Set Bit 4 at memory RAM1_08e (Mn <- 1 ) 
          lda RAM1_057                  ; Load Accumulator with value of Memory at RAM1_057, A <- (RAM1_057)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          beq L071C                     ; Branch to 0x071C if Equal Z=1           
          bset 5,RAM1_08e               ; Set Bit 5 at memory RAM1_08e (Mn <- 1 ) 
          cmp #$05                      ; Compare Accumulator with Memory Byte, (A) - (0x05)
          bne L0716                     ; Branch to 0x0716 if Not Equal (Z = 0);  
          bset 6,RAM1_08e               ; Set Bit 6 at memory RAM1_08e (Mn <- 1 ) 
          cmp #$01                      ; Compare Accumulator with Memory Byte, (A) - (0x01)
          bne L071C                     ; Branch to 0x071C if Not Equal (Z = 0);  
          bset 7,RAM1_08e               ; Set Bit 7 at memory RAM1_08e (Mn <- 1 ) 
          brclr 5,RAM1_069,L0725        ; Branch to 0x0725 if Bit 5 Clear (Mn = 0)
          bclr 4,RAM1_08e               ; Clear bit 4 at RAM1_08e                 
          bclr 3,RAM1_08e               ; Clear bit 3 at RAM1_08e                 
          bclr 1,RAM1_08e               ; Clear bit 1 at RAM1_08e                 
          bclr 1,RAM1_081               ; Clear bit 1 at RAM1_081                 
          brclr 4,RAM1_08e,L072C        ; Branch to 0x072C if Bit 4 Clear (Mn = 0)
          bset 1,RAM1_081               ; Set Bit 1 at memory RAM1_081 (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
          db $BF, $50, $B7, $51         ; data? BF, P, B7, Q                      
          db $A4, $0F, $A1, $09         ; data? A4, 0F, A1, 09                    
          db $23, $02, $AB, $06         ; data? #, 02, AB, 06                     
          db $B7, $58, $3F, $57         ; data? B7, X, 3F, W                      
          db $3F, $56, $5F, $B6         ; data? 3F, V, _, B6                      
          db $51, $AD, $0B, $B6         ; data? Q, AD, 0B, B6                     
          db $50, $AD, $04, $B6         ; data? P, AD, 04, B6                     
          db $50, $20, $03, $CD         ; data? P, " ", 03, CD                    
          db $25, $2C, $CD, $25         ; data? %, ,, CD, %                       
          db $25, $B7, $52, $27         ; data? %, B7, R, '                       
          db $32, $1E, $59, $D6         ; data? 2, 1E, Y, D6                      
          db $3F, $8C, $BB, $58         ; data? 3F, 8C, BB, X                     
          db $25, $04, $1F, $59         ; data? %, 04, 1F, Y                      
          db $A0, $60, $29, $02         ; data? A0, `, ), 02                      
          db $A0, $06, $B7, $58         ; data? A0, 06, B7, X                     
          db $39, $59, $1E, $59         ; data? 9, Y, 1E, Y                       
          db $D6, $3F, $8B, $B9         ; data? D6, 3F, 8B, B9                    
          db $57, $25, $04, $1F         ; data? W, %, 04, 1F                      
          db $59, $A0, $60, $29         ; data? Y, A0, `, )                       
          db $02                        ; data? 02                                
X3F7A: 
          db $A0, $06, $B7, $57         ; data? A0, 06, B7, W                     
          db $39, $59, $24, $02         ; data? 9, Y, $, 02                       
          db $3C, $56, $3A, $52         ; data? <, V, :, R                        
          db $26, $CE, $5C, $5C         ; data? &, CE, \, \                       
          db $81, $66, $7C, $68         ; data? 81, f, |, h                       
          db $BC, $A6, $FC, $30         ; data? BC, A6, FC, 0                     
          db $30, $FB, $30, $31         ; data? 0, FB, 0, 1                       
          db $FA, $30, $32, $FF         ; data? FA, 0, 2, FF                      
          db $30, $33, $F4, $30         ; data? 0, 3, F4, 0                       
          db $34, $08, $30, $35         ; data? 4, 08, 0, 5                       
          db $EE, $30, $36, $EF         ; data? EE, 0, 6, EF                      
          db $30, $37, $F0, $30         ; data? 0, 7, F0, 0                       
          db $38, $F1, $30, $39         ; data? 8, F1, 0, 9                       
          db $F2, $31, $30, $FD         ; data? F2, 1, 0, FD                      
          db $31, $31, $FC, $A6         ; data? 1, 1, FC, A6                      
          db $1F, $B7, $90, $19         ; data? 1F, B7, 90, 19                    
          db $6B, $1C, $95, $81         ; data? k, 1C, 95, 81                     
; 
L3FBE: 
          brclr 7,RAM1_060,L07D9        ; Branch to 0x07D9 if Bit 7 Clear (Mn = 0)
          brset 7,RAM1_092,L07D9        ; Branch to 0x07D9 if Bit 7 is set at RAM1_092 (Mn=1)
          bclr 7,RAM1_060               ; Clear bit 7 at RAM1_060                 
          bclr 7,RAM1_093               ; Clear bit 7 at RAM1_093                 
          bset 2,RAM1_05d               ; Set Bit 2 at memory RAM1_05d (Mn <- 1 ) 
          brclr 6,RAM1_060,L07D4        ; Branch to 0x07D4 if Bit 6 Clear (Mn = 0)
          bclr 6,RAM1_060               ; Clear bit 6 at RAM1_060                 
          brset 0,RAM1_05f,L07D4        ; Branch to 0x07D4 if Bit 0 is set at RAM1_05f (Mn=1)
          bclr 0,RAM1_061               ; Clear bit 0 at RAM1_061                 
          bclr 3,PortB                  ; Set 3 LOW                               
          bclr 1,PortB                  ; Set 1 LOW                               
          rts                           ; Return from Subroutine                  
; 
          db $06, $60, $6B, $00         ; data? 06, `, k, 00                      
          db $60, $5B, $08, $60         ; data? `, [, 08, `                       
          db $06, $0F, $93, $06         ; data? 06, 0F, 93, 06                    
          db $CC, $40, $6F, $CC         ; data? CC, @, o, CC                      
          db $40, $82, $CD, $42         ; data? @, 82, CD, B                      
          db $CC, $27, $58, $CD         ; data? CC, ', X, CD                      
          db $42, $CC, $27, $53         ; data? B, CC, ', S                       
          db $B8, $93, $B7, $93         ; data? B8, 93, B7, 93                    
          db $07, $93, $08, $09         ; data? 07, 93, 08, 09                    
          db $93, $41, $0B, $93         ; data? 93, A, 0B, 93                     
          db $38, $20, $3C, $0A         ; data? 8, " ", <, 0A                     
          db $93, $00, $4F, $49         ; data? 93, 00, O, I                      
          db $B8, $93, $46, $24         ; data? B8, 93, F, $                      
          db $1B, $A4, $03, $97         ; data? 1B, A4, 03, 97                    
          db $C6, $02, $B1, $B0         ; data? C6, 02, B1, B0                    
          db $68, $A1, $11, $25         ; data? h, A1, 11, %                      
          db $0F, $A1, $17, $25         ; data? 0F, A1, 17, %                     
          db $11, $A1, $22, $25         ; data? 11, A1, ", %                      
          db $07, $A1, $2B, $22         ; data? 07, A1, +, "                      
          db $03, $5D, $27, $0D         ; data? 03, ], ', 0D                      
          db $A6, $08, $B7, $93         ; data? A6, 08, B7, 93                    
          db $20, $11, $5D, $27         ; data? " ", 11, ], '                     
          db $F7, $A3, $04, $22         ; data? F7, A3, 04, "                     
          db $F3, $3C, $93, $20         ; data? F3, <, 93, " "                    
          db $06, $11, $60, $19         ; data? 06, 11, `, 19                     
          db $60, $3F, $93, $B6         ; data? `, 3F, 93, B6                     
          db $68, $C7, $02, $B1         ; data? h, C7, 02, B1                     
          db $3F, $92, $81, $C6         ; data? 3F, 92, 81, C6                    
          db $02, $B1, $B0, $68         ; data? 02, B1, B0, h                     
          db $A1, $C8, $25, $03         ; data? A1, C8, %, 03                     
          db $16, $60, $81, $0B         ; data? 16, `, 81, 0B                     
          db $93, $F0, $08, $93         ; data? 93, F0, 08, 93                    
          db $ED, $A1, $3C, $25         ; data? ED, A1, <, %                      
          db $E9, $07, $93, $05         ; data? E9, 07, 93, 05                    
          db $A6, $38, $B7, $93         ; data? A6, 8, B7, 93                     
          db $81, $B6, $93, $A1         ; data? 81, B6, 93, A1                    
          db $25, $26, $DB, $18         ; data? %, &, DB, 18                      
          db $60, $81, $0E, $95         ; data? `, 81, 0E, 95                     
          db $0F, $08, $94, $0C         ; data? 0F, 08, 94, 0C                    
          db $0F, $92, $B1, $08         ; data? 0F, 92, B1, 08                    
          db $92, $06, $06, $92         ; data? 92, 06, 06, 92                    
          db $0C, $0C, $93, $39         ; data? 0C, 0C, 93, 9                     
          db $81, $19, $60, $15         ; data? 81, 19, `, 15                     
          db $60, $13, $60, $20         ; data? `, 13, `, " "                     
          db $4C, $17, $92, $5F         ; data? L, 17, 92, _                      
          db $D6, $42, $D7, $27         ; data? D6, B, D7, '                      
          db $22, $C1, $02, $B0         ; data? ", C1, 02, B0                     
          db $26, $08, $D6, $42         ; data? &, 08, D6, B                      
          db $D8, $C1, $02, $B2         ; data? D8, C1, 02, B2                    
          db $27, $05, $5C, $5C         ; data? ', 05, \, \                       
          db $5C, $20, $E9, $A1         ; data? \, " ", E9, A1                    
          db $04, $27, $00, $1D         ; data? 04, ', 00, 1D                     
          db $93, $B6, $93, $A4         ; data? 93, B6, 93, A4                    
          db $1F, $DE, $42, $D9         ; data? 1F, DE, B, D9                     
          db $DC, $40, $D6, $AE         ; data? DC, @, D6, AE                     
          db $47, $CD, $42, $96         ; data? G, CD, B, 96                      
          db $81, $1D, $93, $B6         ; data? 81, 1D, 93, B6                    
          db $93, $4C, $A4, $1F         ; data? 93, L, A4, 1F                     
          db $A1, $02, $27, $F9         ; data? A1, 02, ', F9                     
          db $A1, $03, $27, $14         ; data? A1, 03, ', 14                     
          db $A1, $04, $27, $10         ; data? A1, 04, ', 10                     
          db $A1, $05, $27, $23         ; data? A1, 05, ', #                      
          db $A0, $14, $24, $46         ; data? A0, 14, $, F                      
          db $81, $A6, $01, $0B         ; data? 81, A6, 01, 0B                    
          db $69, $02, $A6, $02         ; data? i, 02, A6, 02                     
          db $CD, $42, $8C, $18         ; data? CD, B, 8C, 18                     
          db $94, $1C, $93, $0E         ; data? 94, 1C, 93, 0E                    
          db $92, $2E, $A6, $90         ; data? 92, ., A6, 90                     
          db $B7, $92, $C6, $02         ; data? B7, 92, C6, 02                    
          db $B0, $AA, $20, $C7         ; data? B0, AA, " ", C7                   
          db $02, $B0, $81, $CD         ; data? 02, B0, 81, CD                    
          db $42, $8C, $18, $94         ; data? B, 8C, 18, 94                     
          db $C6, $01, $20, $C7         ; data? C6, 01, " ", C7                   
          db $02, $B4, $C6, $01         ; data? 02, B4, C6, 01                    
          db $21, $C7, $02, $B5         ; data? !, C7, 02, B5                     
          db $C6, $01, $22, $C7         ; data? C6, 01, ", C7                     
          db $02, $B6, $C6, $01         ; data? 02, B6, C6, 01                    
          db $23, $C7, $02, $B7         ; data? #, C7, 02, B7                     
          db $1E, $60, $1E, $5D         ; data? 1E, `, 1E, ]                      
          db $81, $A6, $13, $B7         ; data? 81, A6, 13, B7                    
          db $93, $4F, $B7, $50         ; data? 93, O, B7, P                      
          db $AE, $95, $CD, $42         ; data? AE, 95, CD, B                     
          db $96, $3F, $57, $CC         ; data? 96, 3F, W, CC                     
          db $42, $15, $AE, $CE         ; data? B, 15, AE, CE                     
          db $4F, $CD, $37, $9B         ; data? O, CD, 7, 9B                      
          db $5A, $A3, $C0, $24         ; data? Z, A3, C0, $                      
          db $F7, $20, $E2, $A1         ; data? F7, " ", E2, A1                   
          db $06, $25, $09, $A1         ; data? 06, %, 09, A1                     
          db $08, $25, $07, $26         ; data? 08, %, 07, &                      
          db $03, $CC, $42, $1B         ; data? 03, CC, B, 1B                     
          db $A6, $05, $4C, $CD         ; data? A6, 05, L, CD                     
          db $42, $8C, $1E, $5D         ; data? B, 8C, 1E, ]                      
          db $CD, $3D, $01, $81         ; data? CD, =, 01, 81                     
          db $CE, $02, $B3, $27         ; data? CE, 02, B3, '                     
          db $13, $A3, $07, $22         ; data? 13, A3, 07, "                     
          db $10, $BF, $5B, $DE         ; data? 10, BF, [, DE                     
          db $42, $FC, $CD, $42         ; data? B, FC, CD, B                      
          db $96, $18, $94, $BE         ; data? 96, 18, 94, BE                    
          db $5B, $CD, $3D, $1A         ; data? [, CD, =, 1A                      
          db $81, $A3, $19, $26         ; data? 81, A3, 19, &                     
          db $FB, $05, $60, $F8         ; data? FB, 05, `, F8                     
          db $12, $60, $81, $CD         ; data? 12, `, 81, CD                     
          db $3D, $B1, $CC, $40         ; data? =, B1, CC, @                      
          db $D6, $05, $8B, $03         ; data? D6, 05, 8B, 03                    
          db $CC, $40, $B4, $CE         ; data? CC, @, B4, CE                     
          db $02, $B3, $C6, $02         ; data? 02, B3, C6, 02                    
          db $B4, $CD, $3F, $2D         ; data? B4, CD, 3F, -                     
          db $B6, $57, $C1, $01         ; data? B6, W, C1, 01                     
          db $01, $26, $0F, $B6         ; data? 01, &, 0F, B6                     
          db $58, $C1, $01, $02         ; data? X, C1, 01, 02                     
          db $26, $08, $CD, $36         ; data? &, 08, CD, 6                      
          db $5D, $15, $5D, $14         ; data? ], 15, ], 14                      
          db $60, $81, $3C, $8B         ; data? `, 81, <, 8B                      
          db $CD, $36, $55, $A6         ; data? CD, 6, U, A6                      
          db $FF, $B7, $8C, $CC         ; data? FF, B7, 8C, CC                    
          db $3F, $C4, $20, $41         ; data? 3F, C4, " ", A                    
          db $03, $60, $3D, $C6         ; data? 03, `, =, C6                      
          db $02, $B3, $B7, $50         ; data? 02, B3, B7, P                     
          db $C6, $02, $B5, $B7         ; data? C6, 02, B5, B7                    
          db $51, $A6, $12, $CD         ; data? Q, A6, 12, CD                     
          db $42, $8C, $A6, $03         ; data? B, 8C, A6, 03                     
          db $B7, $52, $BE, $51         ; data? B7, R, BE, Q                      
          db $9F, $A4, $FC, $27         ; data? 9F, A4, FC, '                     
          db $0B, $A0, $30, $27         ; data? 0B, A0, 0, '                      
          db $07, $A0, $30, $27         ; data? 07, A0, 0, '                      
          db $03, $CD, $37, $C7         ; data? 03, CD, 7, C7                     
          db $3C, $51, $BE, $52         ; data? <, Q, BE, R                       
          db $D7, $02, $B0, $3C         ; data? D7, 02, B0, <                     
          db $52, $C6, $02, $B0         ; data? R, C6, 02, B0                     
          db $4C, $C7, $02, $B0         ; data? L, C7, 02, B0                     
          db $A1, $0F, $27, $04         ; data? A1, 0F, ', 04                     
          db $3A, $50, $26, $D6         ; data? :, P, &, D6                       
          db $81, $C6, $02, $B3         ; data? 81, C6, 02, B3                    
          db $A1, $AB, $26, $0A         ; data? A1, AB, &, 0A                     
          db $C6, $02, $B4, $A1         ; data? C6, 02, B4, A1                    
          db $CD, $26, $03, $CC         ; data? CD, &, 03, CC                     
          db $3E, $27, $03, $60         ; data? >, ', 03, `                       
          db $EB, $C6, $02, $B3         ; data? EB, C6, 02, B3                    
          db $C1, $01, $01, $26         ; data? C1, 01, 01, &                     
          db $E3, $C6, $02, $B4         ; data? E3, C6, 02, B4                    
          db $C1, $01, $02, $26         ; data? C1, 01, 02, &                     
          db $DB, $CC, $3E, $61         ; data? DB, CC, >, a                      
          db $3C, $50, $3C, $93         ; data? <, P, <, 93                       
          db $BE, $50, $A3, $0E         ; data? BE, P, A3, 0E                     
          db $23, $05, $3F, $93         ; data? #, 05, 3F, 93                     
          db $1E, $93, $81, $D6         ; data? 1E, 93, 81, D6                    
          db $01, $C0, $27, $EC         ; data? 01, C0, ', EC                     
          db $A3, $02, $27, $14         ; data? A3, 02, ', 14                     
          db $A3, $03, $27, $08         ; data? A3, 03, ', 08                     
          db $A3, $05, $27, $0C         ; data? A3, 05, ', 0C                     
          db $A3, $06, $26, $0D         ; data? A3, 06, &, 0D                     
          db $5A, $D1, $01, $C0         ; data? Z, D1, 01, C0                     
          db $25, $D6, $20, $05         ; data? %, D6, " ", 05                    
          db $D1, $01, $C1, $23         ; data? D1, 01, C1, #                     
          db $CF, $A1, $33, $26         ; data? CF, A1, 3, &                      
          db $01, $4F, $B7, $51         ; data? 01, O, B7, Q                      
          db $BE, $57, $5C, $5C         ; data? BE, W, \, \                       
          db $5C, $A3, $0C, $23         ; data? \, A3, 0C, #                      
          db $03, $1C, $93, $81         ; data? 03, 1C, 93, 81                    
          db $BF, $57, $9F, $AB         ; data? BF, W, 9F, AB                     
          db $03, $C7, $02, $B0         ; data? 03, C7, 02, B0                    
          db $B6, $50, $48, $BB         ; data? B6, P, H, BB                      
          db $50, $B7, $58, $BE         ; data? P, B7, X, BE                      
          db $58, $D6, $43, $AF         ; data? X, D6, C, AF                      
          db $BE, $57, $D7, $02         ; data? BE, W, D7, 02                     
          db $B0, $BE, $58, $D6         ; data? B0, BE, X, D6                     
          db $43, $B0, $BE, $57         ; data? C, B0, BE, W                      
          db $D7, $02, $B1, $BE         ; data? D7, 02, B1, BE                    
          db $58, $D6, $43, $B1         ; data? X, D6, C, B1                      
          db $3D, $51, $26, $02         ; data? =, Q, &, 02                       
          db $A4, $7F, $BE, $57         ; data? A4, DEL, BE, W                    
          db $D7, $02, $B2, $18         ; data? D7, 02, B2, 18                    
          db $94, $20, $85, $B7         ; data? 94, " ", 85, B7                   
          db $93, $B6, $93, $A4         ; data? 93, B6, 93, A4                    
          db $1F, $97, $DE, $42         ; data? 1F, 97, DE, B                     
          db $F3, $1E, $93, $3F         ; data? F3, 1E, 93, 3F                    
          db $56, $BF, $57, $1B         ; data? V, BF, W, 1B                      
          db $5D, $A3, $49, $26         ; data? ], A3, I, &                       
          db $02, $1A, $5D, $D6         ; data? 02, 1A, ], D6                     
          db $43, $15, $C7, $02         ; data? C, 15, C7, 02                     
          db $B0, $A4, $0F, $A0         ; data? B0, A4, 0F, A0                    
          db $03, $B7, $58, $A6         ; data? 03, B7, X, A6                     
          db $FF, $C7, $02, $B1         ; data? FF, C7, 02, B1                    
          db $BE, $57, $D6, $43         ; data? BE, W, D6, C                      
          db $16, $BE, $56, $D7         ; data? 16, BE, V, D7                     
          db $02, $B2, $3C, $56         ; data? 02, B2, <, V                      
          db $3C, $57, $3A, $58         ; data? <, W, :, X                        
          db $2A, $EE, $1E, $95         ; data? *, EE, 1E, 95                     
          db $18, $92, $81, $4F         ; data? 18, 92, 81, O                     
          db $03, $03, $02, $A6         ; data? 03, 03, 02, A6                    
          db $20, $B8, $93, $A4         ; data? " ", B8, 93, A4                   
          db $20, $81, $03, $00         ; data? " ", 81, 03, 00                   
          db $00, $03, $07, $40         ; data? 00, 03, 07, @                     
          db $03, $05, $51, $04         ; data? 03, 05, Q, 04                     
          db $04, $5E, $04, $29         ; data? 04, ^, 04, )                      
          db $77, $07, $10, $9A         ; data? w, 07, 10, 9A                     
          db $08, $2B, $A0, $05         ; data? 08, +, A0, 05                     
          db $1B, $D1, $06, $03         ; data? 1B, D1, 06, 03                    
          db $D3, $00, $15, $01         ; data? D3, 00, 15, 01                    
          db $0F, $1D, $2B, $38         ; data? 0F, 1D, +, 8                      
          db $3B, $3F, $43, $47         ; data? ;, 3F, C, G                       
          db $49, $57, $65, $70         ; data? I, W, e, p                        
          db $7E, $86, $8E, $95         ; data? ~, 86, 8E, 95                     
          db $93, $9A, $9D, $A0         ; data? 93, 9A, 9D, A0                    
          db $A3, $A6, $A9, $AC         ; data? A3, A6, A9, AC                    
          db $AF, $B2, $B5, $B8         ; data? AF, B2, B5, B8                    
          db $BB, $BE, $C1, $C4         ; data? BB, BE, C1, C4                    
          db $81, $0F, $F6, $34         ; data? 81, 0F, F6, 4                     
          db $42, $30, $30, $33         ; data? B, 0, 0, 3                        
          db $35, $31, $38, $36         ; data? 5, 1, 8, 6                        
          db $20, $20, $20, $0F         ; data? " ", " ", " ", 0F                 
          db $F6, $34, $42, $30         ; data? F6, 4, B, 0                       
          db $30, $33, $35, $31         ; data? 0, 3, 5, 1                        
          db $35, $32, $20, $20         ; data? 5, 2, " ", " "                    
          db $20, $0F, $F6, $20         ; data? " ", 0F, F6, " "                  
          db $52, $61, $64, $69         ; data? R, a, d, i                        
          db $6F, $20, $20, $20         ; data? o, " ", " ", " "                  
          db $20, $20, $20, $0E         ; data? " ", " ", " ", 0E                 
          db $F6, $20, $20, $20         ; data? F6, " ", " ", " "                 
          db $20, $20, $20, $20         ; data? " ", " ", " ", " "                
          db $30, $30, $30, $31         ; data? 0, 0, 0, 1                        
          db $08, $F6, $00, $05         ; data? 08, F6, 00, 05                    
          db $F5, $03, $53, $05         ; data? F5, 03, S, 05                     
          db $F5, $03, $56, $05         ; data? F5, 03, V, 05                     
          db $F5, $04, $AB, $44         ; data? F5, 04, AB, D                     
          db $0A, $0F, $E7, $10         ; data? 0A, 0F, E7, 10                    
          db $08, $00, $06, $4E         ; data? 08, 00, 06, N                     
          db $C0, $17, $64, $80         ; data? C0, 17, d, 80                     
          db $25, $00, $87, $0F         ; data? %, 00, 87, 0F                     
          db $E7, $25, $00, $F0         ; data? E7, %, 00, F0                     
          db $25, $00, $C2, $11         ; data? %, 00, C2, 11                     
          db $20, $20, $11, $20         ; data? " ", " ", 11, " "                 
          db $20, $0C, $E7, $25         ; data? " ", 0C, E7, %                    
          db $01, $11, $25, $00         ; data? 01, 11, %, 00                     
          db $F4, $25, $00, $C2         ; data? F4, %, 00, C2                     
          db $0F, $E7, $10, $01         ; data? 0F, E7, 10, 01                    
          db $00, $11, $20, $20         ; data? 00, 11, " ", " "                  
          db $25, $00, $F5, $25         ; data? %, 00, F5, %                      
          db $00, $88, $09, $E7         ; data? 00, 88, 09, E7                    
          db $25, $00, $F6, $25         ; data? %, 00, F6, %                      
          db $00, $C2, $09, $E7         ; data? 00, C2, 09, E7                    
          db $25, $00, $F7, $25         ; data? %, 00, F7, %                      
          db $00, $C2, $06, $E7         ; data? 00, C2, 06, E7                    
          db $11, $20, $20, $03         ; data? 11, " ", " ", 03                  
          db $FD, $06, $FC, $FF         ; data? FD, 06, FC, FF                    
          db $FF, $88, $03, $51         ; data? FF, 88, 03, Q                     
          db $A4, $02, $9C, $87         ; data? A4, 02, 9C, 87                    
          db $03, $58, $A4, $03         ; data? 03, X, A4, 03                     
          db $58, $9D, $03, $52         ; data? X, 9D, 03, R                      
          db $9D, $03, $54, $AC         ; data? 9D, 03, T, AC                     
          db $03, $54, $A4, $03         ; data? 03, T, A4, 03                     
          db $55, $AC, $03, $55         ; data? U, AC, 03, U                      
          db $A4, $03, $58, $9D         ; data? A4, 03, X, 9D                     
          db $03, $56, $B1, $03         ; data? 03, V, B1, 03                     
          db $57, $B1, $03, $57         ; data? W, B1, 03, W                      
          db $9D, $FF, $FF, $00         ; data? 9D, FF, FF, 00                    
          db $04, $14, $23, $00         ; data? 04, 14, #, 00                     
          db $81, $A6, $07, $CD         ; data? 81, A6, 07, CD                    
          db $24, $9F, $A6, $14         ; data? $, 9F, A6, 14                     
          db $CC, $23, $D9              ; data? CC, #, D9                         
; 
L43E8: 
          brclr 6,STACK_0ce,L03F5       ; Branch to 0x03F5 if Bit 6 Clear (Mn = 0)
          lda STACK_0d0                 ; Load Accumulator with value of Memory at STACK_0d0, A <- (STACK_0d0)
          bit #$F0                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0xF0)
          bne L03F5                     ; Branch to 0x03F5 if Not Equal (Z = 0);  
          jmp L448A                     ; Unconditional Jump to 0x448A            
; 
L43F4: 
          db $81, $81, $A6, $01         ; data? 81, 81, A6, 01                    
          db $20, $02, $A6, $07         ; data? " ", 02, A6, 07                   
          db $07, $D0, $F6, $BB         ; data? 07, D0, F6, BB                    
          db $D0, $A4, $0F, $AA         ; data? D0, A4, 0F, AA                    
          db $08, $A1, $0D, $25         ; data? 08, A1, 0D, %                     
          db $07, $26, $03, $A6         ; data? 07, &, 03, A6                     
          db $08, $C1, $A6, $0C         ; data? 08, C1, A6, 0C                    
          db $B7, $D0, $20, $00         ; data? B7, D0, " ", 00                   
; 
L4414: 
          brclr 5,STACK_0ce,L0427       ; Branch to 0x0427 if Bit 5 Clear (Mn = 0)
          lda #$17                      ; Load Accumulator with 0x17, A <- 0x17   
          brset 6,RAM1_081,L0476        ; Branch to 0x0476 if Bit 6 is set at RAM1_081 (Mn=1)
          ldx RAM1_084                  ; Load Index Register with Memory Byte, X <- (RAM1_084)
          lda X4479,x                   ; Load Accumulator with data from  memory at 0x4479, A <- (0x4479)
          sta STACK_0c8                 ; Store Accumulator in Memory at STACK_0c8
          lda #$8B                      ; Load Accumulator with 0x8B, A <- 0x8B   
          bra L0476                     ; Branch Always (1 = 1)                   
; 
          db $0D, $CE, $CB, $BE         ; data? 0D, CE, CB, BE                    
          db $D0, $A6, $05, $0C         ; data? D0, A6, 05, 0C                    
          db $6A, $02, $A6, $07         ; data? j, 02, A6, 07                     
          db $A3, $01, $27, $3F         ; data? A3, 01, ', 3F                     
          db $A6, $CA, $A3, $08         ; data? A6, CA, A3, 08                    
          db $27, $39, $9F, $AE         ; data? ', 9, 9F, AE                      
          db $07, $A1, $09, $27         ; data? 07, A1, 09, '                     
          db $12, $A1, $0A, $27         ; data? 12, A1, 0A, '                     
          db $18, $A1, $0B, $26         ; data? 18, A1, 0B, &                     
          db $1F, $E6, $A3, $D7         ; data? 1F, E6, A3, D7                    
          db $02, $57, $5A, $2A         ; data? 02, W, Z, *                       
          db $F8, $20, $1E, $E6         ; data? F8, " ", 1E, E6                   
          db $DA, $D7, $02, $57         ; data? DA, D7, 02, W                     
          db $5A, $2A, $F8, $20         ; data? Z, *, F8, " "                     
          db $14, $D6, $44, $82         ; data? 14, D6, D, 82                     
          db $D7, $02, $57, $5A         ; data? D7, 02, W, Z                      
          db $2A, $F7, $20, $09         ; data? *, F7, " ", 09                    
          db $D6, $01, $90, $D7         ; data? D6, 01, 90, D7                    
          db $02, $57, $5A, $2A         ; data? 02, W, Z, *                       
          db $F7, $A6, $C4, $CC         ; data? F7, A6, C4, CC                    
          db $23, $EA                   ; data? #, EA                             
X4479: 
          db $00, $01, $03, $04         ; data? 00, 01, 03, 04                    
          db $05, $06, $08, $09         ; data? 05, 06, 08, 09                    
          db $0A, $37, $31, $32         ; data? 0A, 7, 1, 2                       
          db $38, $2E, $31, $20         ; data? 8, ., 1, " "                      
          db $4D                        ; data? M                                 
; 
L448A: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X44A2,x                   ; Load Accumulator with data from  memory at 0x44A2, A <- (0x44A2)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X44A1,x                   ; Load Accumulator with data from  memory at 0x44A1, A <- (0x44A1)
          beq L04A0                     ; Branch to 0x04A0 if Equal Z=1           
          jsr L2797                     ; Jump to Subroutine at 0x2797            
          bne L048B                     ; Branch to 0x048B if Not Equal (Z = 0);  
          ldx X44A0,x                   ; Load Index Register with Memory Byte, X <- (0x44A0)
          jsr L43F4,x ;INFO: index jump ; Jump to Subroutine at 0x43F4            
X44A0: 
          rts                           ; Return from Subroutine                  
; 
X44A1: 
          db $F6                        ; data? F6                                
X44A2: 
          db $01, $F8, $02, $E7         ; data? 01, F8, 02, E7                    
          db $06, $00                   ; data? 06, 00                            
; 
L44A8: 
          rts                           ; Return from Subroutine                  
; 
L44A9: 
          brclr 1,STACK_0d2,L0521       ; Branch to 0x0521 if Bit 1 Clear (Mn = 0)
          brset 0,STACK_0d2,L0521       ; Branch to 0x0521 if Bit 0 is set at STACK_0d2 (Mn=1)
          brclr 3,STACK_0cb,L04B6       ; Branch to 0x04B6 if Bit 3 Clear (Mn = 0)
          bclr 3,STACK_0cb              ; Clear bit 3 at STACK_0cb                
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          brclr 6,RAM1_05d,L0521        ; Branch to 0x0521 if Bit 6 Clear (Mn = 0)
          jmp L45DF                     ; Unconditional Jump to 0x45DF            
; 
L44BC: 
          db $03, $D2, $62, $A6         ; data? 03, D2, b, A6                     
          db $06, $B8, $D4, $B7         ; data? 06, B8, D4, B7                    
          db $D4, $AE, $A6, $CD         ; data? D4, AE, A6, CD                    
          db $37, $9B, $11, $D4         ; data? 7, 9B, 11, D4                     
          db $AE, $83, $04, $D4         ; data? AE, 83, 04, D4                    
          db $0F, $AE, $8D, $20         ; data? 0F, AE, 8D, " "                   
          db $0B, $03, $D2, $49         ; data? 0B, 03, D2, I                     
          db $AE, $89, $A6, $01         ; data? AE, 89, A6, 01                    
          db $B8, $D4, $B7, $D4         ; data? B8, D4, B7, D4                    
          db $14, $6A, $20, $14         ; data? 14, j, " ", 14                    
          db $AE, $87, $C1, $AE         ; data? AE, 87, C1, AE                    
          db $86, $C1, $AE, $85         ; data? 86, C1, AE, 85                    
          db $C1, $AE, $84, $20         ; data? C1, AE, 84, " "                   
          db $07, $AE, $8B, $C1         ; data? 07, AE, 8B, C1                    
          db $AE, $8A, $AD, $1E         ; data? AE, 8A, AD, 1E                    
          db $11, $D4, $C6, $02         ; data? 11, D4, C6, 02                    
          db $64, $A4, $ED, $C7         ; data? d, A4, ED, C7                     
          db $02, $64, $BF, $7D         ; data? 02, d, BF, }                      
          db $1C, $94, $1E, $5D         ; data? 1C, 94, 1E, ]                     
          db $19, $D2, $14, $CB         ; data? 19, D2, 14, CB                    
          db $81, $08, $D2, $DA         ; data? 81, 08, D2, DA                    
          db $08, $D2, $DA, $13         ; data? 08, D2, DA, 13                    
          db $D2, $81, $A6, $50         ; data? D2, 81, A6, P                     
          db $B7, $77, $81, $A6         ; data? B7, w, 81, A6                     
          db $90, $B7, $77, $18         ; data? 90, B7, w, 18                     
          db $D2, $81, $B6, $78         ; data? D2, 81, B6, x                     
          db $A4, $07, $B7, $C8         ; data? A4, 07, B7, C8                    
          db $4A, $CD, $25, $72         ; data? J, CD, %, r                       
          db $C4, $02, $66, $26         ; data? C4, 02, f, &                      
          db $0C, $A6, $88, $CD         ; data? 0C, A6, 88, CD                    
          db $23, $F3, $B6, $C8         ; data? #, F3, B6, C8                     
          db $AA, $20, $CD, $24         ; data? AA, " ", CD, $                    
          db $A8, $B6, $C8, $AA         ; data? A8, B6, C8, AA                    
          db $C0, $97, $20, $B4         ; data? C0, 97, " ", B4                   
          db $A6, $05, $CD, $24         ; data? A6, 05, CD, $                     
          db $73, $C6, $02, $60         ; data? s, C6, 02, `                      
          db $A4, $07, $B7, $C8         ; data? A4, 07, B7, C8                    
          db $C6, $02, $65, $A5         ; data? C6, 02, e, A5                     
          db $06, $26, $46, $A5         ; data? 06, &, F, A5                      
          db $08, $26, $0C, $A4         ; data? 08, &, 0C, A4                     
          db $F0, $A1, $A0, $27         ; data? F0, A1, A0, '                     
          db $06, $A1, $B0, $26         ; data? 06, A1, B0, &                     
          db $0B, $16, $D4, $A6         ; data? 0B, 16, D4, A6                    
          db $20, $CD, $24, $A8         ; data? " ", CD, $, A8                    
          db $AE, $08, $20, $29         ; data? AE, 08, " ", )                    
          db $C6, $02, $67, $2A         ; data? C6, 02, g, *                      
          db $08, $A4, $07, $B7         ; data? 08, A4, 07, B7                    
          db $C8, $AE, $89, $20         ; data? C8, AE, 89, " "                   
          db $1C, $C6, $02, $66         ; data? 1C, C6, 02, f                     
          db $A4, $3F, $27, $E3         ; data? A4, 3F, ', E3                     
          db $00, $D2, $10, $05         ; data? 00, D2, 10, 05                    
          db $D4, $0D, $C6, $02         ; data? D4, 0D, C6, 02                    
          db $64, $A4, $24, $26         ; data? d, A4, $, &                       
          db $06, $AE, $83, $BF         ; data? 06, AE, 83, BF                    
          db $7D, $1C, $94, $AE         ; data? }, 1C, 94, AE                     
          db $C8, $9F, $CC, $23         ; data? C8, 9F, CC, #                     
          db $D9, $CD, $24, $4D         ; data? D9, CD, $, M                      
          db $B6, $C8, $AA, $30         ; data? B6, C8, AA, 0                     
          db $C7, $02, $59, $C6         ; data? C7, 02, Y, C6                     
          db $02, $65, $44, $A4         ; data? 02, e, D, A4                      
          db $03, $AA, $30, $C7         ; data? 03, AA, 0, C7                     
          db $02, $5E, $A6, $C4         ; data? 02, ^, A6, C4                     
          db $CC, $23, $EA, $3F         ; data? CC, #, EA, 3F                     
          db $56, $17, $CB, $04         ; data? V, 17, CB, 04                     
          db $6A, $12, $13, $D4         ; data? j, 12, 13, D4                     
          db $10, $D4, $C6, $02         ; data? 10, D4, C6, 02                    
          db $64, $A5, $12, $26         ; data? d, A5, 12, &                      
          db $02, $11, $D4, $05         ; data? 02, 11, D4, 05                    
          db $D4, $02, $12, $D4         ; data? D4, 02, 12, D4                    
          db $4F, $01, $D4, $02         ; data? O, 01, D4, 02                     
          db $18, $56, $03, $D4         ; data? 18, V, 03, D4                     
          db $02, $A6, $10, $CD         ; data? 02, A6, 10, CD                    
          db $24, $1C, $81              ; data? $, 1C, 81                         
; 
L45DF: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X45F9,x                   ; Load Accumulator with data from  memory at 0x45F9, A <- (0x45F9)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X45F8,x                   ; Load Accumulator with data from  memory at 0x45F8, A <- (0x45F8)
          beq L05F7                     ; Branch to 0x05F7 if Equal Z=1           
          jsr L2797                     ; Jump to Subroutine at 0x2797            
          bne L05E0                     ; Branch to 0x05E0 if Not Equal (Z = 0);  
          ldx X45F7,x                   ; Load Index Register with Memory Byte, X <- (0x45F7)
          jsr L44BC,x ;INFO: index jump ; Jump to Subroutine at 0x44BC            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X45F7: 
          rts                           ; Return from Subroutine                  
; 
X45F8: 
          db $F8                        ; data? F8                                
X45F9: 
          db $2B, $E7, $28, $EF         ; data? +, E7, (, EF                      
          db $2B, $F0, $28, $ED         ; data? +, F0, (, ED                      
          db $5F, $8D, $38, $4D         ; data? _, 8D, 8, M                       
          db $5A, $CD, $54, $F3         ; data? Z, CD, T, F3                      
          db $5F, $93, $35, $53         ; data? _, 93, 5, S                       
          db $5A, $D3, $51, $FD         ; data? Z, D3, Q, FD                      
          db $5F, $9D, $38, $5D         ; data? _, 9D, 8, ]                       
          db $5A, $DD, $54, $FC         ; data? Z, DD, T, FC                      
          db $5F, $9C, $35, $5C         ; data? _, 9C, 5, \                       
          db $5A, $DC, $51, $F1         ; data? Z, DC, Q, F1                      
          db $5F, $91, $38, $51         ; data? _, 91, 8, Q                       
          db $5A, $D1, $54, $F2         ; data? Z, D1, T, F2                      
          db $5F, $92, $35, $52         ; data? _, 92, 5, R                       
          db $5A, $D2, $51, $EC         ; data? Z, D2, Q, EC                      
          db $00, $08, $00, $0B         ; data? 00, 08, 00, 0B                    
          db $19, $E0, $66, $00         ; data? 19, E0, f, 00                     
; 
L4639: 
          rts                           ; Return from Subroutine                  
; 
          db $81                        ; data? 81                                
; 
L463B: 
          brclr 2,STACK_0d2,L0653       ; Branch to 0x0653 if Bit 2 Clear (Mn = 0)
          brclr 4,STACK_0cb,L064A       ; Branch to 0x064A if Bit 4 Clear (Mn = 0)
          bclr 4,STACK_0cb              ; Clear bit 4 at STACK_0cb                
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          brclr 1,RAM1_07c,L064A        ; Branch to 0x064A if Bit 1 Clear (Mn = 0)
          bset 2,STACK_0cb              ; Set Bit 2 at memory STACK_0cb (Mn <- 1 )
          brclr 6,RAM1_05d,L0653        ; Branch to 0x0653 if Bit 6 Clear (Mn = 0)
          brset 7,STACK_0d3,L0653       ; Branch to 0x0653 if Bit 7 is set at STACK_0d3 (Mn=1)
          jmp L4739                     ; Unconditional Jump to 0x4739            
; 
          db $81, $A6, $8B, $C1         ; data? 81, A6, 8B, C1                    
          db $A6, $8A, $14, $CB         ; data? A6, 8A, 14, CB                    
          db $03, $7C, $0B, $A6         ; data? 03, |, 0B, A6                     
          db $88, $0E, $D3, $66         ; data? 88, 0E, D3, f                     
          db $15, $D2, $A6, $80         ; data? 15, D2, A6, 80                    
          db $20, $60, $06, $7F         ; data? " ", `, 06, DEL                   
          db $E7, $0A, $7F, $E4         ; data? E7, 0A, DEL, E4                   
          db $B7, $7B, $13, $6A         ; data? B7, {, 13, j                      
          db $17, $6A, $0B, $D3         ; data? 17, j, 0B, D3                     
          db $55, $17, $7B, $20         ; data? U, 17, {, " "                     
          db $51, $14, $CB, $06         ; data? Q, 14, CB, 06                     
          db $6A, $44, $16, $6A         ; data? j, D, 16, j                       
          db $A6, $89, $20, $42         ; data? A6, 89, " ", B                    
          db $18, $BC, $A6, $40         ; data? 18, BC, A6, @                     
          db $B8, $D3, $B7, $D3         ; data? B8, D3, B7, D3                    
          db $AE, $A5, $CD, $37         ; data? AE, A5, CD, 7                     
          db $9B, $20, $39, $07         ; data? 9B, " ", 9, 07                    
          db $6A, $04, $1A, $D3         ; data? j, 04, 1A, D3                     
          db $20, $06, $A6, $20         ; data? " ", 06, A6, " "                  
          db $B8, $D3, $B7, $D3         ; data? B8, D3, B7, D3                    
          db $AE, $A5, $CD, $37         ; data? AE, A5, CD, 7                     
          db $9B, $03, $7C, $10         ; data? 9B, 03, |, 10                     
          db $A6, $8B, $01, $7C         ; data? A6, 8B, 01, |                     
          db $06, $04, $7C, $BC         ; data? 06, 04, |, BC                     
          db $4A, $20, $B9, $05         ; data? J, " ", B9, 05                    
          db $7C, $B6, $20, $F8         ; data? |, B6, " ", F8                    
          db $07, $6A, $11, $20         ; data? 07, j, 11, " "                    
          db $05, $A6, $8E, $03         ; data? 05, A6, 8E, 03                    
          db $7C, $02, $A6, $8F         ; data? |, 02, A6, 8F                     
          db $17, $6A, $B7, $7B         ; data? 17, j, B7, {                      
          db $13, $6A, $1A, $94         ; data? 13, j, 1A, 94                     
          db $1E, $5D, $81              ; data? 1E, ], 81                         
; 
L46D2: 
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          jsr L2481                     ; Jump to Subroutine at 0x2481            
          lda #$00                      ; Load Accumulator with 0x00, A <- 0x00   
          brclr 3,RAM1_07c,L06ED        ; Branch to 0x06ED if Bit 3 Clear (Mn = 0)
          brset 1,RAM1_07c,L06FC        ; Branch to 0x06FC if Bit 1 is set at RAM1_07c (Mn=1)
          brclr 3,STACK_0d3,L06ED       ; Branch to 0x06ED if Bit 3 Clear (Mn = 0)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          bclr 4,STACK_0d3              ; Clear bit 4 at STACK_0d3                
          brset 0,RAM1_07c,L06ED        ; Branch to 0x06ED if Bit 0 is set at RAM1_07c (Mn=1)
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          bset 4,STACK_0d3              ; Set Bit 4 at memory STACK_0d3 (Mn <- 1 )
          jsr L23D9                     ; Jump to Subroutine at 0x23D9            
          bclr 1,RAM1_06a               ; Clear bit 1 at RAM1_06a                 
          brclr 3,STACK_0d3,L0738       ; Branch to 0x0738 if Bit 3 Clear (Mn = 0)
          lda STACK_0d3                 ; Load Accumulator with value of Memory at STACK_0d3, A <- (STACK_0d3)
          ldx #$A5                      ; Load Index Register with Memory Byte, X <- (0xA5)
          jmp L379B                     ; Unconditional Jump to 0x379B            
; 
          db $0B, $D3, $03, $02         ; data? 0B, D3, 03, 02                    
          db $6A, $36, $01, $7C         ; data? j, 6, 01, |                       
          db $09, $A6, $03, $04         ; data? 09, A6, 03, 04                    
          db $7C, $0B, $A6, $04         ; data? |, 0B, A6, 04                     
          db $20, $07, $A6, $03         ; data? " ", 07, A6, 03                   
          db $05, $7C, $02, $A6         ; data? 05, |, 02, A6                     
          db $04, $13, $6A, $CC         ; data? 04, 13, j, CC                     
          db $23, $EA                   ; data? #, EA                             
; 
L471A: 
          bclr 4,STACK_0cb              ; Clear bit 4 at STACK_0cb                
          clra                          ; Clear byte at clra <- 0x00              
          brclr 7,STACK_0d3,L0725       ; Branch to 0x0725 if Bit 7 Clear (Mn = 0)
          brclr 2,STACK_0d3,L072A       ; Branch to 0x072A if Bit 2 Clear (Mn = 0)
          bra L0728                     ; Branch Always (1 = 1)                   
; 
          db $07, $6A, $02, $AA         ; data? 07, j, 02, AA                     
          db $10, $B7, $56, $B6         ; data? 10, B7, V, B6                     
          db $D3, $A4, $60, $09         ; data? D3, A4, `, 09                     
          db $56, $02, $A4, $40         ; data? V, 02, A4, @                      
          db $CD, $24, $1C, $81         ; data? CD, $, 1C, 81                     
; 
L4739: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X4753,x                   ; Load Accumulator with data from  memory at 0x4753, A <- (0x4753)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X4752,x                   ; Load Accumulator with data from  memory at 0x4752, A <- (0x4752)
          beq L0751                     ; Branch to 0x0751 if Equal Z=1           
          jsr L2797                     ; Jump to Subroutine at 0x2797            
          bne L073A                     ; Branch to 0x073A if Not Equal (Z = 0);  
          ldx X4751,x                   ; Load Index Register with Memory Byte, X <- (0x4751)
          jsr L4654,x ;INFO: index jump ; Jump to Subroutine at 0x4654            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X4751: 
          rts                           ; Return from Subroutine                  
; 
X4752: 
          db $F9                        ; data? F9                                
X4753: 
          db $6C, $0B, $28, $04         ; data? l, 0B, (, 04                      
          db $42, $08, $42, $F3         ; data? B, 08, B, F3                      
          db $00, $ED, $03, $FC         ; data? 00, ED, 03, FC                    
          db $00, $FD, $03, $F2         ; data? 00, FD, 03, F2                    
          db $00, $F1, $03, $05         ; data? 00, F1, 03, 05                    
          db $33, $00                   ; data? 3, 00                             
; 
L4769: 
          jsr L483E                     ; Jump to Subroutine at 0x483E            
          bclr 4,PortA                  ; Set SLAVE_CLOCK#PA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#PA5 LOW
          bset 4,DDRA                   ; Set SLAVE_CLOCK#DDRA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#DDRA5 as OUTPUT
          bclr 5,PortA                  ; Set 5 LOW                               
          bset 5,DDRA                   ; Set 5 as OUTPUT                         
          bclr 3,PortA                  ; Set 3 LOW                               
          bset 3,DDRA                   ; Set 3 as OUTPUT                         
          jsr L253F                     ; Jump to Subroutine at 0x253F            
          bclr 3,DDRA                   ; Set 3 as INPUT                          
          rts                           ; Return from Subroutine                  
; 
L477E: 
          bclr 3,DDRA                   ; Set 3 as INPUT                          
          brclr 5,RAM1_06a,L0786        ; Branch to 0x0786 if Bit 5 Clear (Mn = 0)
          brclr 3,PortA,L07A9           ; Branch to 0x07A9 if 3 is LOW            
          jsr L483E                     ; Jump to Subroutine at 0x483E            
          bclr 5,PortB                  ; Set 5 LOW                               
          jsr L253F                     ; Jump to Subroutine at 0x253F            
          bset 5,PortB                  ; Set 5 HIGH                              
          bset 7,RAM1_094               ; Set Bit 7 at memory RAM1_094 (Mn <- 1 ) 
          bset 0,RAM1_05e               ; Set Bit 0 at memory RAM1_05e (Mn <- 1 ) 
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          sta RAM1_063                  ; Store Accumulator in Memory at RAM1_063 
          jsr L47AA                     ; Jump to Subroutine at 0x47AA            
          tst RAM1_094                  ; Test Memory Byte for Negative or Zero, (RAM1_094) – 0x00
          beq L07A9                     ; Branch to 0x07A9 if Equal Z=1           
          jsr L0789                     ; Jump to Subroutine at 0x0789            
          jsr L253F                     ; Jump to Subroutine at 0x253F            
          tst RAM1_063                  ; Test Memory Byte for Negative or Zero, (RAM1_063) – 0x00
          bne L0798                     ; Branch to 0x0798 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L47AA: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda RAM1_094                  ; Load Accumulator with value of Memory at RAM1_094, A <- (RAM1_094)
          bne L07B5                     ; Branch to 0x07B5 if Not Equal (Z = 0);  
          lda RAM1_095                  ; Load Accumulator with value of Memory at RAM1_095, A <- (RAM1_095)
          beq L07F1                     ; Branch to 0x07F1 if Equal Z=1           
          ldx #$08                      ; Load Index Register with Memory Byte, X <- (0x08)
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          bcc L07B5                     ; Branch to 0x07B5 if C bit is cleared    
          lda X4867,x                   ; Load Accumulator with data from  memory at 0x4867, A <- (0x4867)
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          aslx                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          lda X4870,x                   ; Load Accumulator with data from  memory at 0x4870, A <- (0x4870)
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          lda X4871,x                   ; Load Accumulator with data from  memory at 0x4871, A <- (0x4871)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda #$07                      ; Load Accumulator with 0x07, A <- 0x07   
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          lda X48A8                     ; Load Accumulator with data from  memory at 0x48A8, A <- (0x48A8)
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda X48A7                     ; Load Accumulator with data from  memory at 0x48A7, A <- (0x48A7)
          tsta                          ; Test Memory Byte for Negative or Zero, (tsta) – 0x00
          beq L07DA                     ; Branch to 0x07DA if Equal Z=1           
          bset 0,RAM1_059               ; Set Bit 0 at memory RAM1_059 (Mn <- 1 ) 
          jsr L2587                     ; Jump to Subroutine at 0x2587            
          lda RAM1_050                  ; Load Accumulator with value of Memory at RAM1_050, A <- (RAM1_050)
          jsr L48B3                     ; Jump to Subroutine at 0x48B3            
          brset 0,RAM1_05e,L07F1        ; Branch to 0x07F1 if Bit 0 is set at RAM1_05e (Mn=1)
          brclr 0,RAM1_050,L0000        ; Branch to 0x0000 if Bit 0 Clear (Mn = 0)
          ldx #$94                      ; Load Index Register with Memory Byte, X <- (0x94)
          tst ,x                        ; Test Memory Byte for Negative or Zero, () – 0x00
          bne L07EE                     ; Branch to 0x07EE if Not Equal (Z = 0);  
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          jsr L257C                     ; Jump to Subroutine at 0x257C            
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          rts                           ; Return from Subroutine                  
; 
L47F4: 
          brset 5,PortA,L003D           ; Branch to 0x003D if 5 is HIGH           
          brset 0,RAM1_05e,L003D        ; Branch to 0x003D if Bit 0 is set at RAM1_05e (Mn=1)
          jsr L4917                     ; Jump to Subroutine at 0x4917            
          brset 0,RAM1_05e,L003D        ; Branch to 0x003D if Bit 0 is set at RAM1_05e (Mn=1)
          ldx #$0B                      ; Load Index Register with Memory Byte, X <- (0x0B)
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bmi L003D                     ; Branch to 0x003D if Minus N = 1         
          cmp X4886,x                   ; Compare Accumulator with Memory Byte, (A) - (0x4886)
          bne L0002                     ; Branch to 0x0002 if Not Equal (Z = 0);  
          stx RAM1_050                  ; Store Index Register In Memory at RAM1_050
          jsr L25A3                     ; Jump to Subroutine at 0x25A3            
          stx RAM1_058                  ; Store Index Register In Memory at RAM1_058
          ldx RAM1_050                  ; Load Index Register with Memory Byte, X <- (RAM1_050)
          aslx                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          lda X48A7                     ; Load Accumulator with data from  memory at 0x48A7, A <- (0x48A7)
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          lda X48A8                     ; Load Accumulator with data from  memory at 0x48A8, A <- (0x48A8)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X4892,x                   ; Load Accumulator with data from  memory at 0x4892, A <- (0x4892)
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda X4891,x                   ; Load Accumulator with data from  memory at 0x4891, A <- (0x4891)
          tsta                          ; Test Memory Byte for Negative or Zero, (tsta) – 0x00
          beq L002B                     ; Branch to 0x002B if Equal Z=1           
          bset 0,RAM1_059               ; Set Bit 0 at memory RAM1_059 (Mn <- 1 ) 
          jsr L2587                     ; Jump to Subroutine at 0x2587            
          lda RAM1_050                  ; Load Accumulator with value of Memory at RAM1_050, A <- (RAM1_050)
          beq L003D                     ; Branch to 0x003D if Equal Z=1           
          cmp #$05                      ; Compare Accumulator with Memory Byte, (A) - (0x05)
          beq L003B                     ; Branch to 0x003B if Equal Z=1           
          bhi L003D                     ; Branch to 0x003D if Higher C v Z = 0    
          bset 3,STACK_0cb              ; Set Bit 3 at memory STACK_0cb (Mn <- 1 )
          cmp X18CB                     ; Compare Accumulator with Memory Byte, (A) - (0x18CB)
          rts                           ; Return from Subroutine                  
; 
L483E: 
          clra                          ; Clear byte at clra <- 0x00              
          ldx #$07                      ; Load Index Register with Memory Byte, X <- (0x07)
          sta RAM2_0260,x               ; Store Accumulator in Memory at RAM2_0260
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L0041                     ; Branch to 0x0041 if Not Equal (Z = 0);  
          lda #$80                      ; Load Accumulator with 0x80, A <- 0x80   
          sta RAM2_0260                 ; Store Accumulator in Memory at RAM2_0260
          clr RAM1_06a                  ; Clear byte at RAM1_06a <- 0x00          
          lda RAM1_07c                  ; Load Accumulator with value of Memory at RAM1_07c, A <- (RAM1_07c)
          and #$40                      ; Logical AND between A and constant 0x40, A ← (A) && (0x40)
          ora #$A0                      ; Logical OR Accumulator with Memory at 0xA0, A <- (A) || (0xA0)
          sta RAM1_07c                  ; Store Accumulator in Memory at RAM1_07c 
          brset 5,RAM1_069,L005F        ; Branch to 0x005F if Bit 5 is set at RAM1_069 (Mn=1)
          bset 2,RAM1_069               ; Set Bit 2 at memory RAM1_069 (Mn <- 1 ) 
          bset 6,RAM1_07c               ; Set Bit 6 at memory RAM1_07c (Mn <- 1 ) 
          bset 6,RAM1_06a               ; Set Bit 6 at memory RAM1_06a (Mn <- 1 ) 
          clr RAM1_092                  ; Clear byte at RAM1_092 <- 0x00          
          clr RAM1_091                  ; Clear byte at RAM1_091 <- 0x00          
          clr RAM1_094                  ; Clear byte at RAM1_094 <- 0x00          
          clr RAM1_095                  ; Clear byte at RAM1_095 <- 0x00          
X4867: 
          rts                           ; Return from Subroutine                  
; 
          db $0A, $02, $04, $A2         ; data? 0A, 02, 04, A2                    
          db $82, $A4, $08, $0C         ; data? 82, A4, 08, 0C                    
X4870: 
          db $A6                        ; data? A6                                
X4871: 
          db $0E, $00, $CE, $00         ; data? 0E, 00, CE, 00                    
          db $7D, $00, $7B, $02         ; data? }, 00, {, 02                      
          db $B8, $00, $B7, $02         ; data? B8, 00, B7, 02                    
          db $80, $00, $D5, $00         ; data? 80, 00, D5, 00                    
          db $CE, $02, $B0, $00         ; data? CE, 02, B0, 00                    
          db $6B                        ; data? k                                 
X4886: 
          db $46, $D2, $D4, $D6         ; data? F, D2, D4, D6                     
          db $E2, $48, $E6, $44         ; data? E2, H, E6, D                      
          db $E4, $E8, $42              ; data? E4, E8, B                         
X4891: 
          db $00                        ; data? 00                                
X4892: 
          db $6A, $02, $61, $02         ; data? j, 02, a, 02                      
          db $60, $02, $64, $02         ; data? `, 02, d, 02                      
          db $60, $00, $7C, $02         ; data? `, 00, |, 02                      
          db $B8, $00, $91, $00         ; data? B8, 00, 91, 00                    
          db $A3, $02, $B0, $00         ; data? A3, 02, B0, 00                    
          db $92                        ; data? 92                                
X48A7: 
          db $02                        ; data? 02                                
X48A8: 
          db $68, $02, $5E, $06         ; data? h, 02, ^, 06                      
          db $18, $04, $19, $00         ; data? 18, 04, 19, 00                    
          db $12, $5E, $81              ; data? 12, ^, 81                         
; 
L48B3: 
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          jsr L25A3                     ; Jump to Subroutine at 0x25A3            
          stx RAM1_059                  ; Store Index Register In Memory at RAM1_059
          bset 1,RAM1_05e               ; Set Bit 1 at memory RAM1_05e (Mn <- 1 ) 
          ldx #$0C                      ; Load Index Register with Memory Byte, X <- (0x0C)
          brclr 4,PortA,L010D           ; Branch to 0x010D if SLAVE_CLOCK#PA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#PA5 is LOW
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L00BE                     ; Branch to 0x00BE if Not Equal (Z = 0);  
          bclr 2,RAM1_050               ; Clear bit 2 at RAM1_050                 
          bset 0,RAM1_050               ; Set Bit 0 at memory RAM1_050 (Mn <- 1 ) 
          brclr 5,PortA,L0117           ; Branch to 0x0117 if 5 is LOW            
          jsr L49A8                     ; Jump to Subroutine at 0x49A8            
          lda #$C8                      ; Load Accumulator with 0xC8, A <- 0xC8   
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          jsr L4992                     ; Jump to Subroutine at 0x4992            
          brclr 0,RAM1_05e,L00DD        ; Branch to 0x00DD if Bit 0 Clear (Mn = 0)
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          jsr L499B                     ; Jump to Subroutine at 0x499B            
          jsr L499B                     ; Jump to Subroutine at 0x499B            
          brclr 5,PortA,L0117           ; Branch to 0x0117 if 5 is LOW            
          clr RAM1_051                  ; Clear byte at RAM1_051 <- 0x00          
          lda #$AA                      ; Load Accumulator with 0xAA, A <- 0xAA   
          jsr L49C9                     ; Jump to Subroutine at 0x49C9            
          lda RAM1_057                  ; Load Accumulator with value of Memory at RAM1_057, A <- (RAM1_057)
          jsr L49C9                     ; Jump to Subroutine at 0x49C9            
          jsr L4957                     ; Jump to Subroutine at 0x4957            
          lda RAM1_051                  ; Load Accumulator with value of Memory at RAM1_051, A <- (RAM1_051)
          jsr L49C9                     ; Jump to Subroutine at 0x49C9            
          jsr L499D                     ; Jump to Subroutine at 0x499D            
          jsr L49A8                     ; Jump to Subroutine at 0x49A8            
          jsr L4969                     ; Jump to Subroutine at 0x4969            
          jsr L4982                     ; Jump to Subroutine at 0x4982            
          jsr L4982                     ; Jump to Subroutine at 0x4982            
          jsr L4982                     ; Jump to Subroutine at 0x4982            
          jsr L49C4                     ; Jump to Subroutine at 0x49C4            
          cmp X105E                     ; Compare Accumulator with Memory Byte, (A) - (0x105E)
          bclr 1,RAM1_05e               ; Clear bit 1 at RAM1_05e                 
          bclr 5,DDRA                   ; Set 5 as INPUT                          
          bclr 4,DDRA                   ; Set SLAVE_CLOCK#DDRA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#DDRA5 as INPUT
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
L4917: 
          jsr L499D                     ; Jump to Subroutine at 0x499D            
          ldx #$50                      ; Load Index Register with Memory Byte, X <- (0x50)
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L011C                     ; Branch to 0x011C if Not Equal (Z = 0);  
          clr RAM1_059                  ; Clear byte at RAM1_059 <- 0x00          
          bclr 0,RAM1_050               ; Clear bit 0 at RAM1_050                 
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          bclr 2,RAM1_050               ; Clear bit 2 at RAM1_050                 
          jsr L4982                     ; Jump to Subroutine at 0x4982            
          lda #$56                      ; Load Accumulator with 0x56, A <- 0x56   
          jsr L49C7                     ; Jump to Subroutine at 0x49C7            
          bset 2,RAM1_059               ; Set Bit 2 at memory RAM1_059 (Mn <- 1 ) 
          lda #$56                      ; Load Accumulator with 0x56, A <- 0x56   
          jsr L49C7                     ; Jump to Subroutine at 0x49C7            
          lda RAM1_052                  ; Load Accumulator with value of Memory at RAM1_052, A <- (RAM1_052)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L25A3                     ; Jump to Subroutine at 0x25A3            
          stx RAM1_059                  ; Store Index Register In Memory at RAM1_059
          inc RAM1_059                  ; Increment Byte RAM1_059, Byte = Byte + 1
          bclr 2,RAM1_050               ; Clear bit 2 at RAM1_050                 
          bsr L0157                     ; Branch to Subroutine at 0x0157          
          bsr L0163                     ; Branch to Subroutine at 0x0163          
          dec RAM1_056                  ; Decrement Byte at RAM1_056 Byte = Byte - 1
          bmi L014E                     ; Branch to 0x014E if Minus N = 1         
          brclr 5,PortA,L0147           ; Branch to 0x0147 if 5 is LOW            
          brclr 2,RAM1_050,L010D        ; Branch to 0x010D if Bit 2 Clear (Mn = 0)
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          lda RAM1_058                  ; Load Accumulator with value of Memory at RAM1_058, A <- (RAM1_058)
          bra L010F                     ; Branch Always (1 = 1)                   
; 
L4957: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda RAM2_0268,x               ; Load Accumulator with value of Memory at RAM2_0268, A <- (RAM2_0268)
          bsr L01CB                     ; Branch to Subroutine at 0x01CB          
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          dec RAM1_059                  ; Decrement Byte at RAM1_059 Byte = Byte - 1
          bpl L0158                     ; Branch to 0x0158 if Plus N = 0          
          rts                           ; Return from Subroutine                  
; 
          db $00, $5E, $5E, $01         ; data? 00, ^, ^, 01                      
          db $50, $03                   ; data? P, 03                             
; 
L4969: 
          jsr L4982                     ; Jump to Subroutine at 0x4982            
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 4,DDRA                   ; Set SLAVE_CLOCK#DDRA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#DDRA5 as INPUT
          clr RAM1_056                  ; Clear byte at RAM1_056 <- 0x00          
          bset 7,RAM1_056               ; Set Bit 7 at memory RAM1_056 (Mn <- 1 ) 
          brset 4,PortA,L0182           ; Branch to 0x0182 if SLAVE_CLOCK#PA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#PA5 is HIGH
          dec RAM1_056                  ; Decrement Byte at RAM1_056 Byte = Byte - 1
          bpl L0173                     ; Branch to 0x0173 if Plus N = 0          
          bset 0,RAM1_05e               ; Set Bit 0 at memory RAM1_05e (Mn <- 1 ) 
          jmp L04C4                     ; Unconditional Jump to 0x04C4            
; 
          db $9A, $10, $5E              ; data? 9A, 10, ^                         
; 
L4982: 
          rts                           ; Return from Subroutine                  
; 
          db $00, $5E, $3E, $01         ; data? 00, ^, >, 01                      
          db $50, $05, $CD, $49         ; data? P, 05, CD, I                      
          db $82, $20, $0F, $3F         ; data? 82, " ", 0F, 3F                   
          db $56, $18, $56              ; data? V, 18, V                          
; 
L4992: 
          brclr 4,PortA,L019B           ; Branch to 0x019B if SLAVE_CLOCK#PA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#PA5 is LOW
          dec RAM1_056                  ; Decrement Byte at RAM1_056 Byte = Byte - 1
          bne L0192                     ; Branch to 0x0192 if Not Equal (Z = 0);  
          bra L017A                     ; Branch Always (1 = 1)                   
; 
L499B: 
          bclr 5,DDRA                   ; Set 5 as INPUT                          
L499D: 
          bclr 4,PortA                  ; Set SLAVE_CLOCK#PA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#PA5 LOW
          bset 4,DDRA                   ; Set SLAVE_CLOCK#DDRA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#DDRA5 as OUTPUT
          bclr 4,PortA                  ; Set SLAVE_CLOCK#PA4
                                ;;

                                5)
                                        param1=SLAVE_DATA#PA5 LOW
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
          db $00, $5E, $1C              ; data? 00, ^, 1C                         
; 
L49A8: 
          bclr 5,PortA                  ; Set 5 LOW                               
          bset 5,DDRA                   ; Set 5 as OUTPUT                         
          bclr 5,PortA                  ; Set 5 LOW                               
          rts                           ; Return from Subroutine                  
; 
          db $01, $50, $12, $4D         ; data? 01, P, 12, M                      
          db $2A, $F0, $1B, $04         ; data? *, F0, 1B, 04                     
          db $3F, $56, $18, $56         ; data? 3F, V, 18, V                      
          db $0A, $00, $08, $3A         ; data? 0A, 00, 08, :                     
          db $56, $2A, $F9, $20         ; data? V, *, F9, " "                     
          db $B6                        ; data? B6                                
; 
L49C4: 
          bclr 5,DDRA                   ; Set 5 as INPUT                          
          rts                           ; Return from Subroutine                  
; 
L49C7: 
          sta RAM1_051                  ; Store Accumulator in Memory at RAM1_051 
L49C9: 
          ldx #$09                      ; Load Index Register with Memory Byte, X <- (0x09)
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          clr RAM1_05a                  ; Clear byte at RAM1_05a <- 0x00          
          bset 3,RAM1_05a               ; Set Bit 3 at memory RAM1_05a (Mn <- 1 ) 
          bsr L01AF                     ; Branch to Subroutine at 0x01AF          
          bsr L0163                     ; Branch to Subroutine at 0x0163          
          brset 5,PortA,L01D8           ; Branch to 0x01D8 if 5 is HIGH           
          rola                          ; Rotate Byte at rola Left through Carry Bit, C <- [b7 <<<< b0] <- C
          bsr L0183                     ; Branch to Subroutine at 0x0183          
          dec RAM1_05a                  ; Decrement Byte at RAM1_05a Byte = Byte - 1
          bne L01D1                     ; Branch to 0x01D1 if Not Equal (Z = 0);  
          brset 0,RAM1_050,L01FB        ; Branch to 0x01FB if Bit 0 is set at RAM1_050 (Mn=1)
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          tst RAM1_059                  ; Test Memory Byte for Negative or Zero, (RAM1_059) – 0x00
          bne L01F1                     ; Branch to 0x01F1 if Not Equal (Z = 0);  
          ldx #$51                      ; Load Index Register with Memory Byte, X <- (0x51)
          cmp ,x                        ; Compare Accumulator with Memory Byte, (A) - ()
          bne L0203                     ; Branch to 0x0203 if Not Equal (Z = 0);  
          bset 2,RAM1_050               ; Set Bit 2 at memory RAM1_050 (Mn <- 1 ) 
          bra L01F4                     ; Branch Always (1 = 1)                   
; 
          db $D7, $02, $68, $AD         ; data? D7, 02, h, AD                     
          db $AF, $CD, $49, $63         ; data? AF, CD, I, c                      
          db $20, $0B, $1B, $04         ; data? " ", 0B, 1B, 04                   
          db $CD, $49, $63, $0B         ; data? CD, I, c, 0B                      
          db $00, $03, $10, $5E         ; data? 00, 03, 10, ^                     
          db $9A, $B6, $52, $BB         ; data? 9A, B6, R, BB                     
          db $51, $28, $02, $A0         ; data? Q, (, 02, A0                      
          db $10, $B7, $51, $CD         ; data? 10, B7, Q, CD                     
          db $49, $83, $20, $9A         ; data? I, 83, " ", 9A                    
; 
L4A15: 
          rts                           ; Return from Subroutine                  
; 
          db $04, $8B, $3A, $0D         ; data? 04, 8B, :, 0D                     
          db $5D, $37, $CC, $4A         ; data? ], 7, CC, J                       
          db $C2, $19, $BA, $1E         ; data? C2, 19, BA, 1E                    
          db $5D, $A6, $70, $B7         ; data? ], A6, p, B7                      
          db $77, $81, $0E, $CE         ; data? w, 81, 0E, CE                     
          db $29, $07, $8B, $05         ; data? ), 07, 8B, 05                     
          db $0F, $8B, $1B, $17         ; data? 0F, 8B, 1B, 17                    
          db $8B, $18, $B3, $3F         ; data? 8B, 18, B3, 3F                    
          db $CE, $1E, $CE, $3C         ; data? CE, 1E, CE, <                     
          db $8B, $15, $8B, $A6         ; data? 8B, 15, 8B, A6                    
          db $10, $C7, $02, $9E         ; data? 10, C7, 02, 9E                    
          db $4F, $C7, $02, $9F         ; data? O, C7, 02, 9F                     
          db $A6, $0C, $0F, $8B         ; data? A6, 0C, 0F, 8B                    
          db $4F, $C1, $A6, $0B         ; data? O, C1, A6, 0B                     
          db $12, $CB, $CD, $23         ; data? 12, CB, CD, #                     
          db $F3, $81, $1F, $CE         ; data? F3, 81, 1F, CE                    
          db $CE, $02, $9E, $C3         ; data? CE, 02, 9E, C3                    
          db $01, $01, $26, $0F         ; data? 01, 01, &, 0F                     
          db $C6, $02, $9F, $C1         ; data? C6, 02, 9F, C1                    
          db $01, $02, $26, $07         ; data? 01, 02, &, 07                     
          db $BF, $8C, $B7, $8D         ; data? BF, 8C, B7, 8D                    
          db $CC, $36, $5D, $0E         ; data? CC, 6, ], 0E                      
          db $8B, $C3, $CC, $36         ; data? 8B, C3, CC, 6                     
          db $55, $5F, $C1, $AE         ; data? U, _, C1, AE                      
          db $01, $A6, $70, $DB         ; data? 01, A6, p, DB                     
          db $02, $9E, $25, $11         ; data? 02, 9E, %, 11                     
          db $AB, $A0, $20, $0D         ; data? AB, A0, " ", 0D                   
          db $5F, $C1, $AE, $01         ; data? _, C1, AE, 01                     
          db $A6, $F7, $DB, $02         ; data? A6, F7, DB, 02                    
          db $9E, $29, $02, $AB         ; data? 9E, ), 02, AB                     
          db $0A, $D7, $02, $9E         ; data? 0A, D7, 02, 9E                    
          db $A6, $50, $B7, $77         ; data? A6, P, B7, w                      
          db $14, $CB, $13, $CB         ; data? 14, CB, 13, CB                    
          db $1E, $5D, $81              ; data? 1E, ], 81                         
; 
L4A9D: 
          lda #$0B                      ; Load Accumulator with 0x0B, A <- 0x0B   
          brset 7,STACK_0ce,L02A5       ; Branch to 0x02A5 if Bit 7 is set at STACK_0ce (Mn=1)
          brclr 3,RAM1_08b,L02A7        ; Branch to 0x02A7 if Bit 3 Clear (Mn = 0)
          lda #$C6                      ; Load Accumulator with 0xC6, A <- 0xC6   
          jsr L23D9                     ; Jump to Subroutine at 0x23D9            
          rts                           ; Return from Subroutine                  
; 
          db $06, $8B, $0C, $0E         ; data? 06, 8B, 0C, 0E                    
          db $8B, $09, $A6, $20         ; data? 8B, 09, A6, " "                   
          db $02, $8B, $05, $48         ; data? 02, 8B, 05, H                     
          db $00, $8B, $01, $4F         ; data? 00, 8B, 01, O                     
          db $5F, $CD, $24, $03         ; data? _, CD, $, 03                      
          db $CC, $24, $13, $5F         ; data? CC, $, 13, _                      
          db $0E, $CE, $02, $AE         ; data? 0E, CE, 02, AE                    
          db $10, $D6, $4A, $DF         ; data? 10, D6, J, DF                     
          db $B7, $56, $D6, $4A         ; data? B7, V, D6, J                      
          db $DE, $27, $0B, $CD         ; data? DE, ', 0B, CD                     
          db $27, $97, $26, $F1         ; data? ', 97, &, F1                      
          db $DE, $4A, $DD, $DD         ; data? DE, J, DD, DD                     
          db $4A, $1F, $81, $E1         ; data? J, 1F, 81, E1                     
          db $54, $41, $54, $E2         ; data? T, A, T, E2                       
          db $63, $42, $63, $E3         ; data? c, B, c, E3                       
          db $56, $43, $56, $E4         ; data? V, C, V, E4                       
          db $65, $44, $65, $FE         ; data? e, D, e, FE                       
          db $00, $7E, $09, $00         ; data? 00, ~, 09, 00                     
; 
L4AF3: 
          brset 7,RAM1_096,L0302        ; Branch to 0x0302 if Bit 7 is set at RAM1_096 (Mn=1)
          lda ICL2                      ; Load Accumulator with value of Memory at ICL2, A <- (ICL2)
          sub RAM1_097                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_097)
          sta RAM1_099                  ; Store Accumulator in Memory at RAM1_099 
          lda ICH2                      ; Load Accumulator with value of Memory at ICH2, A <- (ICH2)
          sbc RAM1_096                  ; Subtract Memory Byte RAM1_096 and Carry Bit from Accumulator, A ←  (A) – (RAM1_096) – (C)
          sta RAM1_098                  ; Store Accumulator in Memory at RAM1_098 
          bclr 7,RAM1_096               ; Clear bit 7 at RAM1_096                 
          bset 3,RAM1_05e               ; Set Bit 3 at memory RAM1_05e (Mn <- 1 ) 
          lda ICH2                      ; Load Accumulator with value of Memory at ICH2, A <- (ICH2)
          sta RAM1_096                  ; Store Accumulator in Memory at RAM1_096 
          lda ICL2                      ; Load Accumulator with value of Memory at ICL2, A <- (ICL2)
          sta RAM1_097                  ; Store Accumulator in Memory at RAM1_097 
          rts                           ; Return from Subroutine                  
; 
L4B0F: 
          lda #$40                      ; Load Accumulator with 0x40, A <- 0x40   
          brclr 3,RAM1_05e,L0300        ; Branch to 0x0300 if Bit 3 Clear (Mn = 0)
          bclr 3,RAM1_05e               ; Clear bit 3 at RAM1_05e                 
          rts                           ; Return from Subroutine                  
; 
L4B17: 
          tst RAM1_098                  ; Test Memory Byte for Negative or Zero, (RAM1_098) – 0x00
          beq L034F                     ; Branch to 0x034F if Equal Z=1           
          lsr RAM1_098                  ; Logical Shift Right of RAM1_098, b7 -> [b7 >>>> b0] -> C
          ror RAM1_099                  ; Rotate Byte at RAM1_099 Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lsr RAM1_098                  ; Logical Shift Right of RAM1_098, b7 -> [b7 >>>> b0] -> C
          ror RAM1_099                  ; Rotate Byte at RAM1_099 Right through Carry Bit, C -> [b7 >>>> b0] -> C
          ldx RAM1_09a                  ; Load Index Register with Memory Byte, X <- (RAM1_09a)
          lda RAM1_09b                  ; Load Accumulator with value of Memory at RAM1_09b, A <- (RAM1_09b)
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          nega                          ; Negate Byte of nega (Two’s Complement), nega = 0x00 - (nega)
          add RAM1_09b                  ; Add without Carry, A ← (A) + (RAM1_09b)
          sta RAM1_09b                  ; Store Accumulator in Memory at RAM1_09b 
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          bcs L0338                     ; Branch to 0x0338 if C = 1               
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          nega                          ; Negate Byte of nega (Two’s Complement), nega = 0x00 - (nega)
          add RAM1_09a                  ; Add without Carry, A ← (A) + (RAM1_09a)
          sta RAM1_09a                  ; Store Accumulator in Memory at RAM1_09a 
          lda RAM1_09b                  ; Load Accumulator with value of Memory at RAM1_09b, A <- (RAM1_09b)
          add RAM1_099                  ; Add without Carry, A ← (A) + (RAM1_099)
          sta RAM1_09b                  ; Store Accumulator in Memory at RAM1_09b 
          lda RAM1_09a                  ; Load Accumulator with value of Memory at RAM1_09a, A <- (RAM1_09a)
          adc RAM1_098                  ; ADD with CARRY, A ← (A) + (RAM1_098) + (C) 
          bcc L034B                     ; Branch to 0x034B if C bit is cleared    
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_09a                  ; Store Accumulator in Memory at RAM1_09a 
          clr RAM1_098                  ; Clear byte at RAM1_098 <- 0x00          
          rts                           ; Return from Subroutine                  
; 
L4B50: 
          ldx #$AA                      ; Load Index Register with Memory Byte, X <- (0xAA)
          jsr L37C7                     ; Jump to Subroutine at 0x37C7            
          beq L03A8                     ; Branch to 0x03A8 if Equal Z=1           
          cmp #$05                      ; Compare Accumulator with Memory Byte, (A) - (0x05)
          bhi L03A8                     ; Branch to 0x03A8 if Higher C v Z = 0    
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bclr 6,RAM1_081               ; Clear bit 6 at RAM1_081                 
          lda #$12                      ; Load Accumulator with 0x12, A <- 0x12   
          mul                           ; Unsigned Multiply, X:A <- (X) * (A)     
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda RAM1_09a                  ; Load Accumulator with value of Memory at RAM1_09a, A <- (RAM1_09a)
          sta RAM1_09c                  ; Store Accumulator in Memory at RAM1_09c 
          lda RAM1_09b                  ; Load Accumulator with value of Memory at RAM1_09b, A <- (RAM1_09b)
          sta RAM1_09d                  ; Store Accumulator in Memory at RAM1_09d 
          clr RAM1_056                  ; Clear byte at RAM1_056 <- 0x00          
          lda RAM1_09a                  ; Load Accumulator with value of Memory at RAM1_09a, A <- (RAM1_09a)
          cmp X4C08,x                   ; Compare Accumulator with Memory Byte, (A) - (0x4C08)
          bhi L0383                     ; Branch to 0x0383 if Higher C v Z = 0    
          bne L037D                     ; Branch to 0x037D if Not Equal (Z = 0);  
          lda RAM1_09b                  ; Load Accumulator with value of Memory at RAM1_09b, A <- (RAM1_09b)
          cmp X4C09,x                   ; Compare Accumulator with Memory Byte, (A) - (0x4C09)
          bcc L0383                     ; Branch to 0x0383 if C bit is cleared    
          inc RAM1_056                  ; Increment Byte RAM1_056, Byte = Byte + 1
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          bra L036D                     ; Branch Always (1 = 1)                   
; 
          db $B6, $56, $B1, $84         ; data? B6, V, B1, 84                     
          db $24, $12, $B6, $9C         ; data? $, 12, B6, 9C                     
          db $D1, $4C, $62, $22         ; data? D1, L, b, "                       
          db $0B, $26, $07, $B6         ; data? 0B, &, 07, B6                     
          db $9D, $D1, $4C, $63         ; data? 9D, D1, L, c                      
          db $24, $02, $3C, $56         ; data? $, 02, <, V                       
          db $B6, $56, $B1, $84         ; data? B6, V, B1, 84                     
          db $27, $07, $B7, $84         ; data? ', 07, B7, 84                     
          db $0B, $CE, $02, $1E         ; data? 0B, CE, 02, 1E                    
          db $5D, $81, $4F, $B7         ; data? ], 81, O, B7                      
          db $51, $B7, $53, $A6         ; data? Q, B7, S, A6                      
          db $04, $B7, $52, $3C         ; data? 04, B7, R, <                      
          db $53, $26, $05, $3C         ; data? S, &, 05, <                       
          db $52, $0C, $52, $11         ; data? R, 0C, R, 11                      
          db $AD, $2D, $27, $F3         ; data? AD, -, ', F3                      
          db $B6, $52, $D7, $02         ; data? B6, R, D7, 02                     
          db $C0, $B6, $53, $D7         ; data? C0, B6, S, D7                     
          db $02, $D0, $5D, $26         ; data? 02, D0, ], &                      
          db $E6, $B6, $53, $AB         ; data? E6, B6, S, AB                     
          db $FF, $B7, $53, $25         ; data? FF, B7, S, %                      
          db $06, $3A, $52, $2A         ; data? 06, :, R, *                       
          db $02, $20, $D8, $AD         ; data? 02, " ", D8, AD                   
          db $0E, $27, $EE, $B6         ; data? 0E, ', EE, B6                     
          db $52, $D7, $02, $E0         ; data? R, D7, 02, E0                     
          db $B6, $53, $D7, $02         ; data? B6, S, D7, 02                     
          db $F0, $20, $E2, $A6         ; data? F0, " ", E2, A6                   
          db $50, $B7, $50, $B6         ; data? P, B7, P, B6                      
          db $84, $B7, $51, $B6         ; data? 84, B7, Q, B6                     
          db $52, $B7, $98, $B6         ; data? R, B7, 98, B6                     
          db $53, $B7, $99, $CD         ; data? S, B7, 99, CD                     
          db $4B, $17, $3A, $50         ; data? K, 17, :, P                       
          db $26, $F1, $CD, $4B         ; data? &, F1, CD, K                      
          db $50, $97, $B1, $51         ; data? P, 97, B1, Q                      
          db $81                        ; data? 81                                
X4C08: 
          db $4A                        ; data? J                                 
X4C09: 
          db $04, $3A, $98, $30         ; data? 04, :, 98, 0                      
          db $7E, $29, $5C, $24         ; data? ~, ), \, $                        
          db $0F, $1F, $F6, $1C         ; data? 0F, 1F, F6, 1C                    
          db $B3, $1A, $0B, $00         ; data? B3, 1A, 0B, 00                    
          db $00, $5D, $C0, $46         ; data? 00, ], C0, F                      
          db $50, $38, $40, $2E         ; data? P, 8, @, .                        
          db $E0, $28, $2E, $23         ; data? E0, (, ., #                       
          db $28, $1F, $40, $1C         ; data? (, 1F, @, 1C                      
          db $20, $00, $00, $75         ; data? " ", 00, 00, u                    
          db $30, $52, $B9, $3F         ; data? 0, R, B9, 3F                      
          db $EB, $34, $15, $2B         ; data? EB, 4, 15, +                      
          db $F2, $26, $02, $21         ; data? F2, &, 02, !                      
          db $7C, $1D, $EC, $00         ; data? |, 1D, EC, 00                     
          db $00, $9C, $40, $64         ; data? 00, 9C, @, d                      
          db $72, $4A, $03, $3A         ; data? r, J, 03, :                       
          db $98, $30, $7D, $29         ; data? 98, 0, }, )                       
          db $5C, $24, $0F, $1F         ; data? \, $, 0F, 1F                      
          db $F6, $00, $00, $C8         ; data? F6, 00, 00, C8                    
          db $E4, $75, $30, $52         ; data? E4, u, 0, R                       
          db $B9, $3F, $EB, $34         ; data? B9, 3F, EB, 4                     
          db $15, $2B, $F2, $26         ; data? 15, +, F2, &                      
          db $02, $21, $7C, $00         ; data? 02, !, |, 00                      
          db $00, $52, $B9, $3F         ; data? 00, R, B9, 3F                     
          db $EB, $34, $15, $2B         ; data? EB, 4, 15, +                      
          db $F2, $26, $02, $21         ; data? F2, &, 02, !                      
          db $7C, $1D, $EC, $1B         ; data? |, 1D, EC, 1B                     
          db $0B, $00, $00, $6C         ; data? 0B, 00, 00, l                     
          db $2D, $4E, $20, $3D         ; data? -, N, " ", =                      
          db $24, $32, $39, $2A         ; data? $, 2, 9, *                        
          db $9D, $25, $02, $20         ; data? 9D, %, 02, " "                    
          db $B4, $1D, $4C, $00         ; data? B4, 1D, L, 00                     
          db $00, $8C, $A0, $5D         ; data? 00, 8C, A0, ]                     
          db $C0, $46, $50, $38         ; data? C0, F, P, 8                       
          db $40, $2E, $E0, $28         ; data? @, ., E0, (                       
          db $2E, $23, $28, $1F         ; data? ., #, (, 1F                       
          db $40, $00, $00, $C8         ; data? @, 00, 00, C8                     
          db $E4, $75, $30, $52         ; data? E4, u, 0, R                       
          db $B9, $3F, $EB, $34         ; data? B9, 3F, EB, 4                     
          db $15, $2B, $F2, $26         ; data? 15, +, F2, &                      
          db $02, $21, $7C, $00         ; data? 02, !, |, 00                      
          db $00, $FB, $1D, $8C         ; data? 00, FB, 1D, 8C                    
          db $A0, $5D, $C0, $46         ; data? A0, ], C0, F                      
          db $50, $38, $40, $2E         ; data? P, 8, @, .                        
          db $E0, $28, $2E, $23         ; data? E0, (, ., #                       
          db $28, $00, $00, $00         ; data? (, 00, 00, 00                     
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00, $00         ; data? 00, 00, 00, 00                    
          db $00, $00, $00              ; data? 00, 00, 00                        
