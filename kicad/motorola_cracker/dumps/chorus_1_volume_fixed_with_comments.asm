
; 
; Disassembled by: 
; DASMx object code disassembler 
; (c) Copyright 1996-2003 Conquest Consultants 
; Version 1.40 (Oct 18 2003) 
; 
; File: chorus_1_volume_fixed.bin 
; 
; Size: 31232 bytes 
; Checksum: 48C8 
; CRC-32: 3FA3AF90 
; 
; Date: Tue Jun 19 12:12:22 2018 
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
          jsr L374A                     ; Jump to Subroutine at 0x374A            
          bne L0423                     ; Branch to 0x0423 if Not Equal (Z = 0);  
          lda #$53                      ; Load Accumulator with 0x53, A <- 0x53   
L0410: 
          cmp RAM1_06b                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_06b)
          bne L0423                     ; Branch to 0x0423 if Not Equal (Z = 0);  
          jsr L2141                     ; Jump to Subroutine at 0x2141            
          jsr L2069                     ; Jump to Subroutine at 0x2069            
L041A: 
          clr RAM1_06b                  ; Clear byte at RAM1_06b <- 0x00          
          bclr 3,PortB                  ; Set MUTE_WOOFER LOW                     
          bset 3,DDRB                   ; Set MUTE_WOOFER as OUTPUT               
          jmp L0506                     ; Unconditional Jump to 0x0506            
; 
L0423: 
          db $CD                        ; data?  ,  ,  ,                          
; 
L0424: 
          bra L0457                     ; Branch Always (1 = 1)                   
; 
          db $CC                        ; data?  ,  ,  ,                          
; 
L0427: 
          brset 2,STACK_0f1,L03F7       ; Branch to 0x03F7 if Bit 2 is set at STACK_0f1 (Mn=1)
          asr RAM1_078                  ; Arithmetic Shift Right RAM1_078, b7 -> [b7 >>>> b0] -> C
L042C: 
          lda SCDR                      ; Load Accumulator with value of Memory at SCDR, A <- (SCDR)
          jmp L04B0                     ; Unconditional Jump to 0x04B0            
; 
          db $B6, $13, $B6              ; data?  ,  ,  ,                          
; 
L0434: 
          bclr 4,RAM1_080               ; Clear bit 4 at RAM1_080                 
          brset 7,TSR,L04A3             ; Branch to 0x04A3 if Bit ICF1 is set at TSR (Mn=1)
; 
L0439: 
          db $07, $13                   ; data?  ,  ,  ,                          
; 
L043B: 
          clra                          ; Clear byte at clra <- 0x00              
          lda OCL2                      ; Load Accumulator with value of Memory at OCL2, A <- (OCL2)
          add #$88                      ; A + 0x88 (without CARRY), A ← (A) + 0x88
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
L0441: 
          lda OCH2                      ; Load Accumulator with value of Memory at OCH2, A <- (OCH2)
          adc #$13                      ; A + 0x13 + CARRY, A ← (A) + 0x13 + (C) 
L0445: 
          sta OCH2                      ; Store Accumulator in Memory at OCH2     
          lda TSR                       ; Load Accumulator with value of Memory at TSR, A <- (TSR)
          stx OCL2                      ; Store Index Register In Memory at OCL2  
          bset 3,RAM1_067               ; Set Bit 3 at memory RAM1_067 (Mn <- 1 ) 
          brclr 1,DDRC,L0453            ; Branch to 0x0453 if WDOG_TEL is set to INPUT
          brset 1,PortC,L0455           ; Branch to 0x0455 if WDOG_TEL is HIGH    
L0453: 
          bset 4,RAM1_05d               ; Set Bit 4 at memory RAM1_05d (Mn <- 1 ) 
L0455: 
          bclr 1,PortC                  ; Set WDOG_TEL LOW                        
L0457: 
          tst RAM1_063                  ; Test Memory Byte for Negative or Zero, (RAM1_063) – 0x00
          beq L045D                     ; Branch to 0x045D if Equal Z=1           
          dec RAM1_063                  ; Decrement Byte at RAM1_063 Byte = Byte - 1
L045D: 
          dec RAM1_068                  ; Decrement Byte at RAM1_068 Byte = Byte - 1
          bne L0463                     ; Branch to 0x0463 if Not Equal (Z = 0);  
          bset 7,RAM1_067               ; Set Bit 7 at memory RAM1_067 (Mn <- 1 ) 
L0463: 
          jsr L376B                     ; Jump to Subroutine at 0x376B            
          lda RAM1_068                  ; Load Accumulator with value of Memory at RAM1_068, A <- (RAM1_068)
          bit #$3F                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x3F)
          bne L046E                     ; Branch to 0x046E if Not Equal (Z = 0);  
          bset 6,RAM1_067               ; Set Bit 6 at memory RAM1_067 (Mn <- 1 ) 
L046E: 
          bit #$03                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x03)
          bne L047C                     ; Branch to 0x047C if Not Equal (Z = 0);  
          bset 4,RAM1_067               ; Set Bit 4 at memory RAM1_067 (Mn <- 1 ) 
          jsr L4C73                     ; Jump to Subroutine at 0x4C73            
          jsr L223C                     ; Jump to Subroutine at 0x223C            
          lda RAM1_068                  ; Load Accumulator with value of Memory at RAM1_068, A <- (RAM1_068)
L047C: 
          bit #$0F                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x0F)
          bne L048B                     ; Branch to 0x048B if Not Equal (Z = 0);  
          bset 5,RAM1_067               ; Set Bit 5 at memory RAM1_067 (Mn <- 1 ) 
          brset 2,RAM1_05e,L0489        ; Branch to 0x0489 if Bit 2 is set at RAM1_05e (Mn=1)
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          bra L049A                     ; Branch Always (1 = 1)                   
; 
L0489: 
          bclr 2,RAM1_05e               ; Clear bit 2 at RAM1_05e                 
L048B: 
          brclr 6,TSR,L04B0             ; Branch to 0x04B0 if Bit OCF1 Clear (Mn = 0)
          bset 2,RAM1_05e               ; Set Bit 2 at memory RAM1_05e (Mn <- 1 ) 
          ldx OCL1                      ; Load Index Register with Memory Byte, X <- (OCL1)
L0492: 
          lda OCH1                      ; Load Accumulator with value of Memory at OCH1, A <- (OCH1)
          brclr 0,RAM1_061,L049A        ; Branch to 0x049A if Bit 0 Clear (Mn = 0)
          jsr L0B9E                     ; Jump to Subroutine at 0x0B9E            
L049A: 
          sta OCH1                      ; Store Accumulator in Memory at OCH1     
L049C: 
          stx OCL1                      ; Store Index Register In Memory at OCL1  
          bra L04B0                     ; Branch Always (1 = 1)                   
; 
          db $0F, $13, $05              ; data?  ,  ,  ,                          
; 
L04A3: 
          jsr L21DD                     ; Jump to Subroutine at 0x21DD            
L04A6: 
          bra L04B0                     ; Branch Always (1 = 1)                   
; 
          db $09, $13, $05, $CD         ; data?  ,  ,  ,                          
          db $4C, $57, $B6, $1D         ; data? L, W,  ,                          
; 
L04B0: 
          brclr 7,TSR,L04BE             ; Branch to 0x04BE if Bit ICF1 Clear (Mn = 0)
L04B3: 
          brset 4,RAM1_05e,L04BE        ; Branch to 0x04BE if Bit 4 is set at RAM1_05e (Mn=1)
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
L04C7: 
          brset 4,RAM1_05e,L04D2        ; Branch to 0x04D2 if Bit 4 is set at RAM1_05e (Mn=1)
          bset 4,RAM1_05e               ; Set Bit 4 at memory RAM1_05e (Mn <- 1 ) 
          bclr 1,TCR                    ; Clear bit IEDG1 at TCR                  
L04CE: 
          bset 3,RAM1_076               ; Set Bit 3 at memory RAM1_076 (Mn <- 1 ) 
; 
          db $B6                        ; data?  ,  ,  ,                          
; 
L04D1: 
          bclr 2,RAM1_09a               ; Clear bit 2 at RAM1_09a                 
          rts                           ; Return from Subroutine                  
; 
L04D4: 
          lda #$53                      ; Load Accumulator with 0x53, A <- 0x53   
L04D6: 
          sta RAM1_06b                  ; Store Accumulator in Memory at RAM1_06b 
          bset 0,Miscell                ; Set Bit WDOG at memory Miscell (Mn <- 1 )
L04DA: 
          stop                          ; Stop Oscillator and Enable IRQ Pin      
          bra L04D4                     ; Branch Always (1 = 1)                   
; 
          db $A6, $28                   ; data?  , (,  ,                          
; 
L04DF: 
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
; 
L04E0: 
          db $27                        ; data? ',  ,  ,                          
; 
L04E1: 
          brclr 1,X002E,L04DF           ; Branch to 0x04DF if Bit 1 Clear (Mn = 0)
          rti                           ; Return from Interrupt                   
; 
L04E5: 
          brset 7,RAM1_0ba,L04ED        ; Branch to 0x04ED if Bit 7 is set at RAM1_0ba (Mn=1)
          brset 6,RAM1_0b9,L04ED        ; Branch to 0x04ED if Bit 6 is set at RAM1_0b9 (Mn=1)
L04EB: 
          bset 7,RAM1_061               ; Set Bit 7 at memory RAM1_061 (Mn <- 1 ) 
L04ED: 
          bclr 6,RAM1_0ba               ; Clear bit 6 at RAM1_0ba                 
L04EF: 
          clr STACK_0d6                 ; Clear byte at STACK_0d6 <- 0x00         
L04F1: 
          sei                           ; Set Interrupt Mask, I ← 1);           
L04F2: 
          bclr 4,Miscell                ; Clear bit INTE at Miscell               
          bclr 5,RAM1_0ba               ; Clear bit 5 at RAM1_0ba                 
          bclr 3,RAM1_061               ; Clear bit 3 at RAM1_061                 
          jsr L071F                     ; Jump to Subroutine at 0x071F            
          bset 3,RAM1_061               ; Set Bit 3 at memory RAM1_061 (Mn <- 1 ) 
          bclr 5,PortB                  ; Set RESET_SLAVE LOW                     
          bclr 5,RAM1_06a               ; Clear bit 5 at RAM1_06a                 
L0501: 
          jsr L2643                     ; Jump to Subroutine at 0x2643            
          bset 5,PortB                  ; Set RESET_SLAVE HIGH                    
L0506: 
          rsp                           ; Reset Stack Pointer, SP <- 0x00FF       
          bclr 2,RAM1_05d               ; Clear bit 2 at RAM1_05d                 
          brset 1,Miscell,L04D4         ; Branch to 0x04D4 if Bit SM is set at Miscell (Mn=1)
L050C: 
          sei                           ; Set Interrupt Mask, I ← 1);           
          jsr L2118                     ; Jump to Subroutine at 0x2118            
          cli                           ; Clear Interrupt Mask (I <- 0)           
L0511: 
          brset 0,RAM1_061,L051E        ; Branch to 0x051E if Bit 0 is set at RAM1_061 (Mn=1)
L0514: 
          bclr 7,RAM1_061               ; Clear bit 7 at RAM1_061                 
          brset 6,RAM1_061,L051B        ; Branch to 0x051B if Bit 6 is set at RAM1_061 (Mn=1)
          bclr 6,RAM1_05f               ; Clear bit 6 at RAM1_05f                 
L051B: 
          jmp L08B2                     ; Unconditional Jump to 0x08B2            
; 
L051E: 
          bil L04ED                     ; Branch to 0x04ED if IRQ Pin Low IRQ=0   
          brclr 3,RAM1_061,L04F1        ; Branch to 0x04F1 if Bit 3 Clear (Mn = 0)
          jsr L3815                     ; Jump to Subroutine at 0x3815            
          bclr 3,STACK_0ce              ; Clear bit 3 at STACK_0ce                
          bclr 6,RAM1_05f               ; Clear bit 6 at RAM1_05f                 
; 
          db $04, $12                   ; data?  ,  ,  ,                          
; 
L052C: 
          brset 1,OCL1,L0530            ; Branch to 0x0530 if Bit 1 is set at OCL1 (Mn=1)
          bset 2,TCR                    ; Set Bit OLV2 at memory TCR (Mn <- 1 )   
L0531: 
          bset 4,TCR                    ; Set Bit FOLV2 at memory TCR (Mn <- 1 )  
          bset 0,PortB                  ; Set ENA_12V_ANTENE HIGH                 
          brset 3,RAM1_07f,L0541        ; Branch to 0x0541 if Bit 3 is set at RAM1_07f (Mn=1)
          brset 2,RAM1_07f,L0541        ; Branch to 0x0541 if Bit 2 is set at RAM1_07f (Mn=1)
          brset 7,RAM1_069,L0541        ; Branch to 0x0541 if Bit 7 is set at RAM1_069 (Mn=1)
          jsr L0B8C                     ; Jump to Subroutine at 0x0B8C            
L0541: 
          jsr L2082                     ; Jump to Subroutine at 0x2082            
          jsr L2079                     ; Jump to Subroutine at 0x2079            
L0547: 
          brset 0,RAM1_0a1,L055C        ; Branch to 0x055C if Bit 0 is set at RAM1_0a1 (Mn=1)
          bclr 2,DDRC                   ; Set WR_SP as INPUT                      
          bclr 3,DDRC                   ; Set RD_SP as INPUT                      
          jsr L2643                     ; Jump to Subroutine at 0x2643            
          lda PortC                     ; Load Accumulator with value of Memory at PortC, A <- (PortC)
          and #$0C                      ; Logical AND between A and constant 0x0C, A ← (A) && (0x0C)
          bne L0560                     ; Branch to 0x0560 if Not Equal (Z = 0);  
; 
          db $1B                        ; data?  ,  ,  ,                          
; 
L0558: 
          rol DDRC,x                    ; Rotate Byte at DDRC Left through Carry Bit, C <- [b7 <<<< b0] <- C
          stop                          ; Stop Oscillator and Enable IRQ Pin      
          brset 5,TCH,L05C7             ; Branch to 0x05C7 if Bit 5 is set at TCH (Mn=1)
          bra L0568                     ; Branch Always (1 = 1)                   
; 
L0560: 
          bset 5,RAM1_069               ; Set Bit 5 at memory RAM1_069 (Mn <- 1 ) 
L0562: 
          bclr 1,RAM1_081               ; Clear bit 1 at RAM1_081                 
          bclr 3,RAM1_08e               ; Clear bit 3 at RAM1_08e                 
          bclr 4,RAM1_069               ; Clear bit 4 at RAM1_069                 
L0568: 
          bset 2,DDRC                   ; Set WR_SP as OUTPUT                     
          bset 3,DDRC                   ; Set RD_SP as OUTPUT                     
L056C: 
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brclr 6,RAM1_0ba,L0573        ; Branch to 0x0573 if Bit 6 Clear (Mn = 0)
          brset 5,RAM1_061,L057D        ; Branch to 0x057D if Bit 5 is set at RAM1_061 (Mn=1)
L0573: 
          jsr L1375                     ; Jump to Subroutine at 0x1375            
          bset 5,RAM1_061               ; Set Bit 5 at memory RAM1_061 (Mn <- 1 ) 
; 
          db $CD, $07                   ; data?  ,  ,  ,                          
; 
L057A: 
          bclr 1,ICL1                   ; Clear bit 1 at ICL1                     
; 
          db $9E                        ; data?  ,  ,  ,                          
; 
L057D: 
          brset 6,RAM1_061,L0585        ; Branch to 0x0585 if Bit 6 is set at RAM1_061 (Mn=1)
          jsr L3155                     ; Jump to Subroutine at 0x3155            
L0583: 
          bset 6,RAM1_061               ; Set Bit 6 at memory RAM1_061 (Mn <- 1 ) 
L0585: 
          brset 4,RAM1_061,L0591        ; Branch to 0x0591 if Bit 4 is set at RAM1_061 (Mn=1)
          jsr L2725                     ; Jump to Subroutine at 0x2725            
          jsr L1EF3                     ; Jump to Subroutine at 0x1EF3            
          jsr L48DF                     ; Jump to Subroutine at 0x48DF            
L0591: 
          bset 4,RAM1_061               ; Set Bit 4 at memory RAM1_061 (Mn <- 1 ) 
          brset 2,RAM1_09e,L0599        ; Branch to 0x0599 if Bit 2 is set at RAM1_09e (Mn=1)
L0596: 
          jsr L39C1                     ; Jump to Subroutine at 0x39C1            
L0599: 
          jsr L0713                     ; Jump to Subroutine at 0x0713            
L059C: 
          jsr L36FC                     ; Jump to Subroutine at 0x36FC            
          jsr L3B0A                     ; Jump to Subroutine at 0x3B0A            
          jsr L0B2F                     ; Jump to Subroutine at 0x0B2F            
          clrx                          ; Clear byte at clrx <- 0x00              
L05A6: 
          jsr L2649                     ; Jump to Subroutine at 0x2649            
          brclr 3,RAM1_08b,L05BB        ; Branch to 0x05BB if Bit 3 Clear (Mn = 0)
          lda #$0B                      ; Load Accumulator with 0x0B, A <- 0x0B   
L05AE: 
          brset 4,RAM1_08b,L05B6        ; Branch to 0x05B6 if Bit 4 is set at RAM1_08b (Mn=1)
          lda #$1A                      ; Load Accumulator with 0x1A, A <- 0x1A   
          brclr 1,RAM1_081,L05BB        ; Branch to 0x05BB if Bit 1 Clear (Mn = 0)
L05B6: 
          jsr L24E5                     ; Jump to Subroutine at 0x24E5            
          bset 1,STACK_0cb              ; Set Bit 1 at memory STACK_0cb (Mn <- 1 )
L05BB: 
          clr RAM1_067                  ; Clear byte at RAM1_067 <- 0x00          
          clr RAM1_068                  ; Clear byte at RAM1_068 <- 0x00          
L05BF: 
          brclr 4,RAM1_0bb,L05C4        ; Branch to 0x05C4 if Bit 4 Clear (Mn = 0)
L05C2: 
          bset 2,RAM1_094               ; Set Bit 2 at memory RAM1_094 (Mn <- 1 ) 
L05C4: 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bset 4,Miscell                ; Set Bit INTE at memory Miscell (Mn <- 1 )
L05C7: 
          bset 7,TCR                    ; Set Bit ICIE at memory TCR (Mn <- 1 )   
          cli                           ; Clear Interrupt Mask (I <- 0)           
L05CA: 
          brset 7,RAM1_069,L05D4        ; Branch to 0x05D4 if Bit 7 is set at RAM1_069 (Mn=1)
          brclr 5,RAM1_0bb,L05D4        ; Branch to 0x05D4 if Bit 5 Clear (Mn = 0)
          bset 7,RAM1_069               ; Set Bit 7 at memory RAM1_069 (Mn <- 1 ) 
L05D2: 
          bset 1,RAM1_05d               ; Set Bit 1 at memory RAM1_05d (Mn <- 1 ) 
L05D4: 
          jsr L0785                     ; Jump to Subroutine at 0x0785            
          brset 2,RAM1_05d,L05E3        ; Branch to 0x05E3 if Bit 2 is set at RAM1_05d (Mn=1)
          clra                          ; Clear byte at clra <- 0x00              
L05DB: 
          brclr 3,PortA,L05E6           ; Branch to 0x05E6 if SLAVE_STATUS is LOW 
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
          jsr L22BD                     ; Jump to Subroutine at 0x22BD            
          jsr L3164                     ; Jump to Subroutine at 0x3164            
          jsr L4C7B                     ; Jump to Subroutine at 0x4C7B            
          jsr L142B                     ; Jump to Subroutine at 0x142B            
          jsr L37F4                     ; Jump to Subroutine at 0x37F4            
          jsr L40DD                     ; Jump to Subroutine at 0x40DD            
          jsr L4955                     ; Jump to Subroutine at 0x4955            
          jsr L27CF                     ; Jump to Subroutine at 0x27CF            
; 
          db $CD                        ; data?  ,  ,  ,                          
; 
L0604: 
          beq L05C8                     ; Branch to 0x05C8 if Equal Z=1           
          jsr L1F1C                     ; Jump to Subroutine at 0x1F1C            
          jsr L3A48                     ; Jump to Subroutine at 0x3A48            
          jsr L3B88                     ; Jump to Subroutine at 0x3B88            
          jsr L0614                     ; Jump to Subroutine at 0x0614            
          bra L05C4                     ; Branch Always (1 = 1)                   
; 
L0614: 
          brset 3,RAM1_067,L062D        ; Branch to 0x062D if Bit 3 is set at RAM1_067 (Mn=1)
L0617: 
          brset 2,RAM1_067,L0640        ; Branch to 0x0640 if Bit 2 is set at RAM1_067 (Mn=1)
          brset 1,RAM1_067,L0647        ; Branch to 0x0647 if Bit 1 is set at RAM1_067 (Mn=1)
          brset 0,RAM1_067,L0670        ; Branch to 0x0670 if Bit 0 is set at RAM1_067 (Mn=1)
          brset 4,RAM1_067,L0649        ; Branch to 0x0649 if Bit 4 is set at RAM1_067 (Mn=1)
          brset 5,RAM1_067,L065A        ; Branch to 0x065A if Bit 5 is set at RAM1_067 (Mn=1)
          brset 6,RAM1_067,L0665        ; Branch to 0x0665 if Bit 6 is set at RAM1_067 (Mn=1)
          brset 7,RAM1_067,L066D        ; Branch to 0x066D if Bit 7 is set at RAM1_067 (Mn=1)
L062C: 
          rts                           ; Return from Subroutine                  
; 
L062D: 
          bclr 3,RAM1_067               ; Clear bit 3 at RAM1_067                 
          bset 2,RAM1_067               ; Set Bit 2 at memory RAM1_067 (Mn <- 1 ) 
          jsr L200B                     ; Jump to Subroutine at 0x200B            
          jsr L386E                     ; Jump to Subroutine at 0x386E            
L0637: 
          jsr L274E                     ; Jump to Subroutine at 0x274E            
          jsr L23CE                     ; Jump to Subroutine at 0x23CE            
          jmp L39F4                     ; Unconditional Jump to 0x39F4            
; 
L0640: 
          bclr 2,RAM1_067               ; Clear bit 2 at RAM1_067                 
          bset 1,RAM1_067               ; Set Bit 1 at memory RAM1_067 (Mn <- 1 ) 
; 
          db $CC                        ; data?  ,  ,  ,                          
; 
L0645: 
          brclr 3,TCL,L0668             ; Branch to 0x0668 if Bit 3 Clear (Mn = 0)
          inc TCL,x                     ; Increment Byte TCL, Byte = Byte + 1     
          asr STACK_0cd,x               ; Arithmetic Shift Right STACK_0cd, b7 -> [b7 >>>> b0] -> C
          beq L067E                     ; Branch to 0x067E if Equal Z=1           
          jsr L1EF4                     ; Jump to Subroutine at 0x1EF4            
          jsr L3173                     ; Jump to Subroutine at 0x3173            
          jsr L3CE1                     ; Jump to Subroutine at 0x3CE1            
          jmp L27C3                     ; Unconditional Jump to 0x27C3            
; 
L065A: 
          bclr 5,RAM1_067               ; Clear bit 5 at RAM1_067                 
          jsr L1419                     ; Jump to Subroutine at 0x1419            
          jsr L3D06                     ; Jump to Subroutine at 0x3D06            
L0662: 
          jmp L3730                     ; Unconditional Jump to 0x3730            
; 
L0665: 
          bclr 6,RAM1_067               ; Clear bit 6 at RAM1_067                 
          jsr L3BA2                     ; Jump to Subroutine at 0x3BA2            
          jmp L4CB4                     ; Unconditional Jump to 0x4CB4            
; 
L066D: 
          bclr 7,RAM1_067               ; Clear bit 7 at RAM1_067                 
          rts                           ; Return from Subroutine                  
; 
L0670: 
          bclr 0,RAM1_067               ; Clear bit 0 at RAM1_067                 
          jsr L490B                     ; Jump to Subroutine at 0x490B            
          jsr L316A                     ; Jump to Subroutine at 0x316A            
          jsr L3BFE                     ; Jump to Subroutine at 0x3BFE            
          brset 7,RAM1_060,L06A4        ; Branch to 0x06A4 if Bit 7 is set at RAM1_060 (Mn=1)
L067E: 
          brclr 3,RAM1_08b,L069E        ; Branch to 0x069E if Bit 3 Clear (Mn = 0)
          brset 3,STACK_0ce,L069B       ; Branch to 0x069B if Bit 3 is set at STACK_0ce (Mn=1)
L0684: 
          brclr 6,RAM1_05d,L0692        ; Branch to 0x0692 if Bit 6 Clear (Mn = 0)
          bclr 1,STACK_0cb              ; Clear bit 1 at STACK_0cb                
          jsr L38D0                     ; Jump to Subroutine at 0x38D0            
          jsr L454C                     ; Jump to Subroutine at 0x454C            
L068F: 
          jsr L2174                     ; Jump to Subroutine at 0x2174            
L0692: 
          jsr L34F7                     ; Jump to Subroutine at 0x34F7            
          jsr L479C                     ; Jump to Subroutine at 0x479C            
          jsr L460C                     ; Jump to Subroutine at 0x460C            
L069B: 
          jsr L28B0                     ; Jump to Subroutine at 0x28B0            
L069E: 
          jsr L2D55                     ; Jump to Subroutine at 0x2D55            
          jsr L4B76                     ; Jump to Subroutine at 0x4B76            
L06A4: 
          jsr L4541                     ; Jump to Subroutine at 0x4541            
          jsr L3BD8                     ; Jump to Subroutine at 0x3BD8            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
          brclr 7,RAM1_060,L06B2        ; Branch to 0x06B2 if Bit 7 Clear (Mn = 0)
          jsr L2D55                     ; Jump to Subroutine at 0x2D55            
L06B2: 
          jmp L0BBE                     ; Unconditional Jump to 0x0BBE            
; 
          db $13                        ; data?  ,  ,  ,                          
; 
L06B6: 
          asr SCSR,x                    ; Arithmetic Shift Right SCSR, b7 -> [b7 >>>> b0] -> C
          asr SCCR2,x                   ; Arithmetic Shift Right SCCR2, b7 -> [b7 >>>> b0] -> C
          tstx                          ; Test Memory Byte for Negative or Zero, (tstx) – 0x00
          rorx                          ; Rotate Byte at rorx Right through Carry Bit, C -> [b7 >>>> b0] -> C
          bclr 7,RAM1_05d               ; Clear bit 7 at RAM1_05d                 
          lda STACK_0ca                 ; Load Accumulator with value of Memory at STACK_0ca, A <- (STACK_0ca)
          and #$0F                      ; Logical AND between A and constant 0x0F, A ← (A) && (0x0F)
          ldx #$03                      ; Load Index Register with Memory Byte, X <- (0x03)
          mul                           ; Unsigned Multiply, X:A <- (X) * (A)     
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
cpx #$21 
          bcc L0712                     ; Branch to 0x0712 if C bit is cleared    
          jsr L06E5,x ;INFO: index jump ; Jump to Subroutine at 0x06E5            
          lda STACK_0ca                 ; Load Accumulator with value of Memory at STACK_0ca, A <- (STACK_0ca)
          jsr L2617                     ; Jump to Subroutine at 0x2617            
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          ldx #$03                      ; Load Index Register with Memory Byte, X <- (0x03)
          mul                           ; Unsigned Multiply, X:A <- (X) * (A)     
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
cpx #$0C 
          bcc L0712                     ; Branch to 0x0712 if C bit is cleared    
          jsr L0706,x ;INFO: index jump ; Jump to Subroutine at 0x0706            
          brclr 6,STACK_0ca,L0712       ; Branch to 0x0712 if Bit 6 Clear (Mn = 0)
          jmp L2CD3                     ; Unconditional Jump to 0x2CD3            
; 
L06E5: 
          db $CC, $06, $2C, $CC         ; data?  ,  , ,,                          
          db $2B, $51, $CC, $48         ; data? +, Q,  , H                        
          db $33, $CC, $46, $A7         ; data? 3,  , F,                          
          db $CC, $36, $AB, $CC         ; data?  , 6,  ,                          
          db $39, $4C                   ; data? 9, L,  ,                          
; 
L06F7: 
          jmp L30C1                     ; Unconditional Jump to 0x30C1            
; 
          db $CC, $06, $2C, $CC         ; data?  ,  , ,,                          
          db $4B, $FD, $CC, $45         ; data? K,  ,  , E                        
          db $78, $CC, $45, $42         ; data? x,  , E, B                        
L0706: 
          db $CC, $4C, $0F, $CC         ; data?  , L,  ,                          
; 
L070A: 
          bmc L0742                     ; Branch to 0x0742 if Interrupt Mask Clear I=0
          jmp L487B                     ; Unconditional Jump to 0x487B            
; 
          db $CC                        ; data?  ,  ,  ,                          
; 
L0710: 
          asra                          ; Arithmetic Shift Right asra, b7 -> [b7 >>>> b0] -> C
; 
          db $1A                        ; data?  ,  ,  ,                          
; 
L0712: 
          rts                           ; Return from Subroutine                  
; 
L0713: 
          jsr L142B                     ; Jump to Subroutine at 0x142B            
; 
          db $CD, $37                   ; data?  , 7,  ,                          
; 
L0718: 
          and ,x                        ; Logical AND, A ← (A) && ()            
L0719: 
          jsr L1407                     ; Jump to Subroutine at 0x1407            
          jmp L37B0                     ; Unconditional Jump to 0x37B0            
; 
L071F: 
          clr RAM1_066                  ; Clear byte at RAM1_066 <- 0x00          
          lda RAM1_065                  ; Load Accumulator with value of Memory at RAM1_065, A <- (RAM1_065)
          sta RAM2_02b0                 ; Store Accumulator in Memory at RAM2_02b0
          bclr 7,RAM1_069               ; Clear bit 7 at RAM1_069                 
          brclr 4,RAM1_061,L0733        ; Branch to 0x0733 if Bit 4 Clear (Mn = 0)
          jsr L0B8C                     ; Jump to Subroutine at 0x0B8C            
; 
          db $CD, $48                   ; data?  , H,  ,                          
; 
L0730: 
          ora X1961                     ; Logical OR Accumulator with Memory at 0x1961, A <- (A) || (0x1961)
L0733: 
          lda #$0A                      ; Load Accumulator with 0x0A, A <- 0x0A   
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          bset 2,TCR                    ; Set Bit OLV2 at memory TCR (Mn <- 1 )   
          bset 4,TCR                    ; Set Bit FOLV2 at memory TCR (Mn <- 1 )  
          bih L073F                     ; Branch to 0x073F if IRQ Pin High IRQ=1  
          bclr 6,RAM1_0ba               ; Clear bit 6 at RAM1_0ba                 
L073F: 
          jsr L2631                     ; Jump to Subroutine at 0x2631            
L0742: 
          brset 1,PortC,L0747           ; Branch to 0x0747 if WDOG_TEL is HIGH    
          bset 4,RAM1_05d               ; Set Bit 4 at memory RAM1_05d (Mn <- 1 ) 
L0747: 
          bclr 1,PortC                  ; Set WDOG_TEL LOW                        
L0749: 
          jsr L0785                     ; Jump to Subroutine at 0x0785            
          lda RAM1_065                  ; Load Accumulator with value of Memory at RAM1_065, A <- (RAM1_065)
          sub RAM2_02b0                 ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM2_02b0)
          cmp #$03                      ; Compare Accumulator with Memory Byte, (A) - (0x03)
          bcs L0757                     ; Branch to 0x0757 if C = 1               
          bset 5,RAM1_060               ; Set Bit 5 at memory RAM1_060 (Mn <- 1 ) 
L0757: 
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          jsr L25B7                     ; Jump to Subroutine at 0x25B7            
          cmp #$19                      ; Compare Accumulator with Memory Byte, (A) - (0x19)
          bcs L0772                     ; Branch to 0x0772 if C = 1               
          cmp #$53                      ; Compare Accumulator with Memory Byte, (A) - (0x53)
          bhi L076E                     ; Branch to 0x076E if Higher C v Z = 0    
          bclr 6,RAM1_061               ; Clear bit 6 at RAM1_061                 
          bclr 5,RAM1_061               ; Clear bit 5 at RAM1_061                 
          bclr 7,RAM1_061               ; Clear bit 7 at RAM1_061                 
          bclr 6,RAM1_05f               ; Clear bit 6 at RAM1_05f                 
          bra L073F                     ; Branch Always (1 = 1)                   
; 
L076E: 
          cmp #$73                      ; Compare Accumulator with Memory Byte, (A) - (0x73)
          bcs L0733                     ; Branch to 0x0733 if C = 1               
L0772: 
          bil L0733                     ; Branch to 0x0733 if IRQ Pin Low IRQ=0   
          dec RAM1_050                  ; Decrement Byte at RAM1_050 Byte = Byte - 1
          bne L073F                     ; Branch to 0x073F if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L0779: 
          jsr L0B8C                     ; Jump to Subroutine at 0x0B8C            
L077C: 
          jsr L48CA                     ; Jump to Subroutine at 0x48CA            
          jsr L209E                     ; Jump to Subroutine at 0x209E            
L0782: 
          jmp L0506                     ; Unconditional Jump to 0x0506            
; 
L0785: 
          brset 4,RAM1_05d,L078F        ; Branch to 0x078F if Bit 4 is set at RAM1_05d (Mn=1)
          brclr 1,Miscell,L078E         ; Branch to 0x078E if Bit SM Clear (Mn = 0)
; 
          db $03, $03                   ; data?  ,  ,  ,                          
; 
L078D: 
          bhcs L0710                    ; Branch to 0x0710 if Half-Carry Bit is Set, H=1
L078F: 
          lda #$06                      ; Load Accumulator with 0x06, A <- 0x06   
          brset 1,Miscell,L0796         ; Branch to 0x0796 if Bit SM is set at Miscell (Mn=1)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
L0796: 
          add RAM1_066                  ; Add without Carry, A ← (A) + (RAM1_066)
          sta RAM1_066                  ; Store Accumulator in Memory at RAM1_066 
          bcc L07B7                     ; Branch to 0x07B7 if C bit is cleared    
L079C: 
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          add RAM1_065                  ; Add without Carry, A ← (A) + (RAM1_065)
          sta RAM1_065                  ; Store Accumulator in Memory at RAM1_065 
          bcc L07B7                     ; Branch to 0x07B7 if C bit is cleared    
          brset 7,RAM1_064,L07B7        ; Branch to 0x07B7 if Bit 7 is set at RAM1_064 (Mn=1)
          inc RAM1_064                  ; Increment Byte RAM1_064, Byte = Byte + 1
          bpl L07B7                     ; Branch to 0x07B7 if Plus N = 0          
L07AB: 
          brset 2,RAM1_08b,L07B7        ; Branch to 0x07B7 if Bit 2 is set at RAM1_08b (Mn=1)
          brset 1,RAM1_05f,L07B7        ; Branch to 0x07B7 if Bit 1 is set at RAM1_05f (Mn=1)
          brclr 0,RAM1_061,L07B7        ; Branch to 0x07B7 if Bit 0 Clear (Mn = 0)
L07B4: 
          jmp L08A2                     ; Unconditional Jump to 0x08A2            
; 
L07B7: 
          bclr 4,RAM1_05d               ; Clear bit 4 at RAM1_05d                 
          brclr 1,DDRC,L07C0            ; Branch to 0x07C0 if WDOG_TEL is set to INPUT
L07BC: 
          bclr 1,DDRC                   ; Set WDOG_TEL as INPUT                   
L07BE: 
          bra L07D3                     ; Branch Always (1 = 1)                   
; 
L07C0: 
          lda RAM1_062                  ; Load Accumulator with value of Memory at RAM1_062, A <- (RAM1_062)
          brclr 1,PortC,L07C9           ; Branch to 0x07C9 if WDOG_TEL is LOW     
L07C5: 
          add #$20                      ; A + 0x20 (without CARRY), A ← (A) + 0x20
          bra L07CB                     ; Branch Always (1 = 1)                   
; 
L07C9: 
          sub #$20                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x20)
L07CB: 
          bcs L07CF                     ; Branch to 0x07CF if C = 1               
L07CD: 
          sta RAM1_062                  ; Store Accumulator in Memory at RAM1_062 
L07CF: 
          bset 1,DDRC                   ; Set WDOG_TEL as OUTPUT                  
L07D1: 
          bset 1,PortC                  ; Set WDOG_TEL HIGH                       
L07D3: 
          clra                          ; Clear byte at clra <- 0x00              
          brset 2,PortD,L07D9           ; Branch to 0x07D9 if PANEL_ON_OFF is HIGH
          ora #$01                      ; Logical OR Accumulator with Memory at 0x01, A <- (A) || (0x01)
L07D9: 
          brset 0,PortD,L07DE           ; Branch to 0x07DE if S-KONT is HIGH      
L07DC: 
          ora #$02                      ; Logical OR Accumulator with Memory at 0x02, A <- (A) || (0x02)
L07DE: 
          brclr 7,RAM1_05e,L07E3        ; Branch to 0x07E3 if Bit 7 Clear (Mn = 0)
          ora #$04                      ; Logical OR Accumulator with Memory at 0x04, A <- (A) || (0x04)
L07E3: 
          brclr 1,PortD,L07E8           ; Branch to 0x07E8 if DIAG is LOW         
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
L07E8: 
          tst RAM1_062                  ; Test Memory Byte for Negative or Zero, (RAM1_062) – 0x00
          bpl L07EE                     ; Branch to 0x07EE if Plus N = 0          
L07EC: 
          ora #$08                      ; Logical OR Accumulator with Memory at 0x08, A <- (A) || (0x08)
; 
L07EE: 
          db $0D                        ; data?  ,  ,  ,                          
; 
L07EF: 
          brclr 1,PortC,L079C           ; Branch to 0x079C if WDOG_TEL is LOW     
          rti                           ; Return from Interrupt                   
; 
L07F3: 
          eor RAM1_05f                  ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM1_05f)
          and #$9F                      ; Logical AND between A and constant 0x9F, A ← (A) && (0x9F)
          beq L0067                     ; Branch to 0x0067 if Equal Z=1           
L07F9: 
          sta RAM1_05b                  ; Store Accumulator in Memory at RAM1_05b 
          eor RAM1_05f                  ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM1_05f)
          sta RAM1_05f                  ; Store Accumulator in Memory at RAM1_05f 
          brclr 3,RAM1_05f,L0006        ; Branch to 0x0006 if Bit 3 Clear (Mn = 0)
          bset 5,RAM1_05f               ; Set Bit 5 at memory RAM1_05f (Mn <- 1 ) 
          bra L0010                     ; Branch Always (1 = 1)                   
; 
          db $0F, $5F, $02, $1A         ; data?  , _,  ,                          
          db $5F, $02, $5F, $02         ; data? _,  , _,                          
          db $1B, $5F, $01, $5B         ; data?  , _,  , [                        
          db $0D, $00, $5F, $7F         ; data?  ,  , _, DEL                      
          db $0C, $5F, $03, $01         ; data?  , _,  ,                          
          db $61, $04, $1D, $5F         ; data? a,  ,  , _                        
          db $20, $94, $0F, $60         ; data? SPACE,  ,  , `                    
          db $03, $0A, $5D, $25         ; data?  ,  , ], %                        
          db $1B, $5D, $02, $5F         ; data?  , ],  , _                        
          db $0A, $03, $5B, $1D         ; data?  ,  , [,                          
          db $01, $61, $78, $12         ; data?  , a, x,                          
          db $61, $20, $6D, $00         ; data? a, SPACE, m,                      
          db $61, $08, $03, $5B         ; data? a,  ,  , [                        
          db $10, $00, $5F, $59         ; data?  ,  , _, Y                        
          db $1A, $5F, $13, $61         ; data?  , _,  , a                        
          db $03, $5B, $06, $01         ; data?  , [,  ,                          
          db $5F, $03, $06, $CE         ; data? _,  ,  ,                          
          db $4C, $09, $5B, $13         ; data? L,  , [,                          
          db $00, $61, $03, $03         ; data?  , a,  ,                          
          db $5F, $0D, $07, $60         ; data? _,  ,  , `                        
          db $0A, $17, $60, $08         ; data?  ,  , `,                          
          db $5F, $02, $10, $60         ; data? _,  ,  , `                        
          db $02, $0C, $03, $05         ; data?  ,  ,  ,                          
          db $5B, $03, $01, $61         ; data? [,  ,  , a                        
          db $42, $81, $CD, $20         ; data? B,  ,  , SPACE                    
          db $82, $CD, $20, $79         ; data?  ,  , SPACE, y                    
          db $CD, $48, $DF, $A6         ; data?  , H,  ,                          
          db $C8, $B7, $63, $3D         ; data?  ,  , c, =                        
          db $63, $27, $33, $07         ; data? c, ', 3,                          
          db $67, $05, $17, $67         ; data? g,  ,  , g                        
          db $CD, $49, $0B, $CD         ; data?  , I,  ,                          
          db $49, $55, $CD, $40         ; data? I, U,  , @                        
          db $DD, $0F, $92, $EB         ; data?  ,  ,  ,                          
          db $08, $92, $E8, $10         ; data?  ,  ,  ,                          
          db $61, $1E, $60, $1C         ; data? a,  , `,                          
          db $60, $20, $14, $19         ; data? `, SPACE,  ,                      
          db $61, $10, $61, $3F         ; data? a,  , a,                          
          db $93, $03, $5F, $0B         ; data?  ,  , _,                          
          db $13, $61, $20, $07         ; data?  , a, SPACE,                      
; 
L08A2: 
          bclr 0,RAM1_061               ; Clear bit 0 at RAM1_061                 
          brclr 1,RAM1_05f,L00A9        ; Branch to 0x00A9 if Bit 1 Clear (Mn = 0)
          bset 5,RAM1_05f               ; Set Bit 5 at memory RAM1_05f (Mn <- 1 ) 
          jmp L0506                     ; Unconditional Jump to 0x0506            
; 
          db $A6, $08, $B7, $60         ; data?  ,  ,  , `                        
          db $20, $F7                   ; data? SPACE,  ,  ,                      
; 
L08B2: 
          bclr 7,RAM1_069               ; Clear bit 7 at RAM1_069                 
          brset 4,RAM1_060,L0068        ; Branch to 0x0068 if Bit 4 is set at RAM1_060 (Mn=1)
          brset 0,RAM1_060,L00BE        ; Branch to 0x00BE if Bit 0 is set at RAM1_060 (Mn=1)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          sta RAM1_060                  ; Store Accumulator in Memory at RAM1_060 
          brset 3,RAM1_07f,L00C7        ; Branch to 0x00C7 if Bit 3 is set at RAM1_07f (Mn=1)
          brset 2,RAM1_07f,L00C7        ; Branch to 0x00C7 if Bit 2 is set at RAM1_07f (Mn=1)
          jsr L0B8C                     ; Jump to Subroutine at 0x0B8C            
          brset 5,RAM1_05f,L00D0        ; Branch to 0x00D0 if Bit 5 is set at RAM1_05f (Mn=1)
          jsr L0B8C                     ; Jump to Subroutine at 0x0B8C            
          jsr L48CA                     ; Jump to Subroutine at 0x48CA            
          jsr L22BD                     ; Jump to Subroutine at 0x22BD            
          clr PLMA                      ; Clear byte at PLMA <- 0x00              
          bih L00DA                     ; Branch to 0x00DA if IRQ Pin High IRQ=1  
          jmp L04E5                     ; Unconditional Jump to 0x04E5            
; 
          db $05, $9E, $03, $CD         ; data?  ,  ,  ,                          
          db $39, $A4, $0C, $5F         ; data? 9,  ,  , _                        
          db $03, $CD, $31, $61         ; data?  ,  , 1, a                        
          db $0A, $5F, $03, $CD         ; data?  , _,  ,                          
          db $20, $9E, $CD, $07         ; data? SPACE,  ,  ,                      
          db $85, $0C, $5F, $07         ; data?  ,  , _,                          
          db $11, $01, $AE, $02         ; data?  ,  ,  ,                          
          db $CD, $26, $49, $0A         ; data?  , &, I,                          
          db $5F, $0B, $0D, $5F         ; data? _,  ,  , _                        
          db $21, $0B, $61, $05         ; data? !,  , a,                          
          db $00, $A1, $2D, $20         ; data?  ,  , -, SPACE                    
          db $19, $CD, $20, $82         ; data?  ,  , SPACE,                      
          db $0D, $5F, $1D, $17         ; data?  , _,  ,                          
          db $00, $16, $04, $CD         ; data?  ,  ,  ,                          
          db $13, $75, $A6, $89         ; data?  , u,  ,                          
          db $B7, $B3, $B6, $C4         ; data?  ,  ,  ,                          
          db $B7, $B7, $1A, $61         ; data?  ,  ,  , a                        
          db $20, $12, $0F, $64         ; data? SPACE,  ,  , d                    
          db $07, $1D, $5F, $AE         ; data?  ,  , _,                          
          db $02, $CD, $26, $49         ; data?  ,  , &, I                        
          db $1B, $61, $CD, $31         ; data?  , a,  , 1                        
          db $61, $CD, $13, $C5         ; data? a,  ,  ,                          
          db $0B, $5F, $2F, $13         ; data?  , _, /,                          
          db $81, $14, $12, $18         ; data?  ,  ,  ,                          
          db $12, $16, $8B, $CD         ; data?  ,  ,  ,                          
          db $20, $79, $CD, $48         ; data? SPACE, y,  , H                    
          db $DF, $CD, $0B, $2F         ; data?  ,  ,  , /                        
          db $18, $61, $10, $80         ; data?  , a,  ,                          
          db $A6, $80, $B7, $7D         ; data?  ,  ,  , }                        
          db $B7, $7B, $07, $8E         ; data?  , {,  ,                          
          db $02, $AA, $10, $B7         ; data?  ,  ,  ,                          
          db $D5, $1C, $94, $1A         ; data?  ,  ,  ,                          
          db $94, $12, $94, $19         ; data?  ,  ,  ,                          
          db $6B, $1C, $95, $CC         ; data? k,  ,  ,                          
          db $09, $C6, $15, $12         ; data?  ,  ,  ,                          
          db $0A, $61, $F8, $CD         ; data?  , a,  ,                          
          db $31, $61, $07, $60         ; data? 1, a,  , `                        
          db $31, $04, $5F, $03         ; data? 1,  , _,                          
          db $CC, $0A, $6D, $CD         ; data?  ,  , m,                          
          db $20, $B4, $A6, $FA         ; data? SPACE,  ,  ,                      
          db $B7, $12, $A6, $64         ; data?  ,  ,  , d                        
          db $B7, $63, $CD, $07         ; data?  , c,  ,                          
          db $85, $CD, $40, $DD         ; data?  ,  , @,                          
          db $08, $60, $3A, $0A         ; data?  , `, :,                          
          db $5F, $37, $CD, $22         ; data? _, 7,  , "                        
          db $BD, $07, $67, $05         ; data?  ,  , g,                          
          db $17, $67, $CD, $23         ; data?  , g,  ,  #                       
          db $CE, $0D, $5F, $E6         ; data?  ,  , _,                          
          db $3D, $63, $26, $E2         ; data? =, c, &,                          
          db $20, $23, $CD, $20         ; data? SPACE,  #,  , SPACE               
          db $65, $A6, $5A, $B7         ; data? e,  , Z,                          
          db $12, $A6, $FA, $B7         ; data?  ,  ,  ,                          
          db $63, $CD, $07, $85         ; data? c,  ,  ,                          
          db $CD, $40, $DD, $08         ; data?  , @,  ,                          
          db $60, $0F, $0A, $5F         ; data? `,  ,  , _                        
          db $0C, $06, $60, $09         ; data?  ,  , `,                          
          db $09, $5F, $EA, $3D         ; data?  , _,  , =                        
          db $63, $26, $EA, $16         ; data? c, &,  ,                          
          db $60, $CC, $05, $06         ; data? `,  ,  ,                          
          db $A6, $64, $B7, $63         ; data?  , d,  , c                        
          db $A6, $1E, $B7, $68         ; data?  ,  ,  , h                        
          db $1D, $67, $13, $01         ; data?  , g,  ,                          
          db $A6, $5B, $B7, $A6         ; data?  , [,  ,                          
          db $9A, $0D, $5F, $0E         ; data?  ,  , _,                          
          db $CD, $14, $2B, $CD         ; data?  ,  , +,                          
          db $37, $F4, $CD, $34         ; data? 7,  ,  , 4                        
          db $F7, $CD, $31, $64         ; data?  ,  , 1, d                        
          db $10, $01, $CD, $07         ; data?  ,  ,  ,                          
          db $85, $CD, $40, $DD         ; data?  ,  , @,                          
          db $08, $60, $D2, $2E         ; data?  , `,  , .                        
          db $73, $CD, $4C, $7B         ; data? s,  , L, {                        
          db $CD, $22, $BD, $05         ; data?  , ",  ,                          
          db $12, $03, $CD, $49         ; data?  ,  ,  , I                        
          db $55, $07, $67, $D4         ; data? U,  , g,                          
          db $17, $67, $CD, $23         ; data?  , g,  ,  #                       
          db $CE, $0D, $5F, $11         ; data?  ,  , _,                          
          db $CD, $14, $07, $CD         ; data?  ,  ,  ,                          
          db $37, $B0, $CD, $31         ; data? 7,  ,  , 1                        
          db $6A, $0B, $67, $05         ; data? j,  , g,                          
          db $1B, $67, $CD, $14         ; data?  , g,  ,                          
          db $19, $05, $12, $32         ; data?  ,  ,  , 2                        
          db $0B, $5F, $A2, $CD         ; data?  , _,  ,                          
          db $2D, $55, $CD, $0B         ; data? -, U,  ,                          
          db $BE, $CD, $49, $0B         ; data?  ,  , I,                          
          db $09, $67, $A9, $19         ; data?  , g,  ,                          
          db $67, $3A, $A7, $27         ; data? g, :,  , '                        
          db $15, $0E, $5F, $9C         ; data?  ,  , _,                          
          db $B6, $9A, $A1, $F0         ; data?  ,  ,  ,                          
          db $25, $96, $07, $5F         ; data? %,  ,  , _                        
          db $97, $02, $5F, $94         ; data?  ,  , _,                          
          db $A6, $02, $B7, $A6         ; data?  ,  ,  ,                          
          db $20, $8E, $3A, $A6         ; data? SPACE,  , :,                      
          db $26, $8A, $1B, $5F         ; data? &,  ,  , _                        
          db $20, $86, $0A, $5F         ; data? SPACE,  ,  , _                    
          db $68, $01, $A1, $03         ; data? h,  ,  ,                          
          db $CC, $09, $C6, $0D         ; data?  ,  ,  ,                          
          db $67, $07, $06, $B9         ; data? g,  ,  ,                          
          db $5C, $3D, $63, $27         ; data? \, =, c, '                        
          db $58, $CC, $09, $D6         ; data? X,  ,  ,                          
          db $14, $12, $18, $12         ; data?  ,  ,  ,                          
          db $CC, $04, $E5, $9B         ; data?  ,  ,  ,                          
          db $19, $0C, $CD, $20         ; data?  ,  ,  , SPACE                    
          db $65, $A6, $5A, $B7         ; data? e,  , Z,                          
          db $12, $12, $0C, $A6         ; data?  ,  ,  ,                          
          db $14, $B7, $63, $3F         ; data?  ,  , c,                          
          db $0B, $3F, $76, $3F         ; data?  ,  , v,                          
          db $5E, $3F, $A8, $3F         ; data? ^,  ,  ,                          
          db $A6, $3F, $09, $3F         ; data?  ,  ,  ,                          
          db $0F, $9A, $CD, $07         ; data?  ,  ,  ,                          
          db $85, $A6, $08, $BB         ; data?  ,  ,  ,                          
          db $1A, $B7, $1E, $3F         ; data?  ,  ,  ,                          
          db $1F, $8F, $00, $00         ; data?  ,  ,  ,                          
          db $00, $A6, $27, $B7         ; data?  ,  , ',                          
          db $09, $CD, $22, $3C         ; data?  ,  , ", <                        
          db $0A, $5F, $16, $3D         ; data?  , _,  , =                        
          db $63, $26, $1C, $06         ; data? c, &,  ,                          
          db $00, $0C, $17, $00         ; data?  ,  ,  ,                          
          db $16, $04, $4F, $4A         ; data?  ,  , O, J                        
          db $26, $FD, $17, $04         ; data? &,  ,  ,                          
          db $3F, $6A, $0D, $5F         ; data?  , j,  , _                        
          db $03, $CC, $05, $06         ; data?  ,  ,  ,                          
          db $11, $05, $0F, $64         ; data?  ,  ,  , d                        
          db $02, $1D, $61, $0C         ; data?  ,  , a,                          
          db $5F, $BF, $2E, $9C         ; data? _,  , .,                          
          db $05, $12, $0C, $3D         ; data?  ,  ,  , =                        
          db $63, $26, $B6, $1A         ; data? c, &,  ,                          
          db $01, $17, $00, $16         ; data?  ,  ,  ,                          
          db $04, $20, $9A, $0F         ; data?  , SPACE,  ,                      
          db $09, $FD, $3D, $A8         ; data?  ,  , =,                          
          db $26, $0B, $07, $A6         ; data? &,  ,  ,                          
          db $22, $B6, $A4, $BE         ; data? ",  ,  ,                          
          db $A5, $AD, $3F, $20         ; data?  ,  ,  , SPACE                    
          db $30, $B6, $A8, $B0         ; data? 0,  ,  ,                          
          db $08, $25, $14, $A1         ; data?  , %,  ,                          
          db $03, $25, $10, $14         ; data?  , %,  ,                          
          db $12, $18, $12, $17         ; data?  ,  ,  ,                          
          db $01, $16, $05, $A6         ; data?  ,  ,  ,                          
          db $30, $B7, $63, $1B         ; data? 0,  , c,                          
          db $01, $20, $1A, $B6         ; data?  , SPACE,  ,                      
          db $08, $BB, $A5, $B7         ; data?  ,  ,  ,                          
          db $A5, $24, $02, $3C         ; data?  , $,  , <                        
          db $A4, $3C, $A6, $B6         ; data?  , <,  ,                          
          db $A6, $A5, $3F, $26         ; data?  ,  ,  , &                        
          db $0E, $B6, $A4, $BE         ; data?  ,  ,  ,                          
          db $A5, $AD, $0D, $B7         ; data?  ,  ,  ,                          
          db $A8, $3F, $A5, $3F         ; data?  ,  ,  ,                          
          db $A4, $3F, $A6, $CC         ; data?  ,  ,  ,                          
          db $0A, $87, $59, $49         ; data?  ,  , Y, I                        
          db $59, $49, $59, $49         ; data? Y, I, Y, I                        
          db $81                        ; data?  ,  ,  ,                          
; 
L0B2F: 
          brset 7,RAM1_061,L0355        ; Branch to 0x0355 if Bit 7 is set at RAM1_061 (Mn=1)
          ldx #$A8                      ; Load Index Register with Memory Byte, X <- (0xA8)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          sta RAM1_085                  ; Store Accumulator in Memory at RAM1_085 
          jsr L1296                     ; Jump to Subroutine at 0x1296            
          jsr L12B1                     ; Jump to Subroutine at 0x12B1            
          stx RAM1_057                  ; Store Index Register In Memory at RAM1_057
          ldx #$AB                      ; Load Index Register with Memory Byte, X <- (0xAB)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          add #$FD                      ; A + 0xFD (without CARRY), A ← (A) + 0xFD
          add RAM1_057                  ; Add without Carry, A ← (A) + (RAM1_057)
          bpl L034D                     ; Branch to 0x034D if Plus N = 0          
          clra                          ; Clear byte at clra <- 0x00              
          cmp RAM1_085                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_085)
          bcc L0355                     ; Branch to 0x0355 if C bit is cleared    
          sta RAM1_085                  ; Store Accumulator in Memory at RAM1_085 
          bset 3,RAM1_05c               ; Set Bit 3 at memory RAM1_05c (Mn <- 1 ) 
          bclr 7,RAM1_082               ; Clear bit 7 at RAM1_082                 
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_088                  ; Store Accumulator in Memory at RAM1_088 
          sta RAM1_083                  ; Store Accumulator in Memory at RAM1_083 
          jsr L0FCC                     ; Jump to Subroutine at 0x0FCC            
          clr RAM1_082                  ; Clear byte at RAM1_082 <- 0x00          
          jsr L0F96                     ; Jump to Subroutine at 0x0F96            
          jsr L0F89                     ; Jump to Subroutine at 0x0F89            
          clr RAM1_07e                  ; Clear byte at RAM1_07e <- 0x00          
          clr RAM1_080                  ; Clear byte at RAM1_080 <- 0x00          
          clr RAM1_087                  ; Clear byte at RAM1_087 <- 0x00          
          bset 4,RAM1_07e               ; Set Bit 4 at memory RAM1_07e (Mn <- 1 ) 
          bset 3,RAM1_07e               ; Set Bit 3 at memory RAM1_07e (Mn <- 1 ) 
          brclr 3,RAM1_05f,L0378        ; Branch to 0x0378 if Bit 3 Clear (Mn = 0)
          brset 0,RAM1_081,L039D        ; Branch to 0x039D if Bit 0 is set at RAM1_081 (Mn=1)
          bclr 0,RAM1_081               ; Clear bit 0 at RAM1_081                 
          clrx                          ; Clear byte at clrx <- 0x00              
          brset 0,RAM1_061,L0380        ; Branch to 0x0380 if Bit 0 is set at RAM1_061 (Mn=1)
          ldx #$04                      ; Load Index Register with Memory Byte, X <- (0x04)
          lda X136A,x                   ; Load Accumulator with data from  memory at 0x136A, A <- (0x136A)
          sta RAM1_08a                  ; Store Accumulator in Memory at RAM1_08a 
          bset 6,RAM1_082               ; Set Bit 6 at memory RAM1_082 (Mn <- 1 ) 
          bclr 2,RAM1_06b               ; Clear bit 2 at RAM1_06b                 
          bclr 1,RAM1_06b               ; Clear bit 1 at RAM1_06b                 
          rts                           ; Return from Subroutine                  
; 
L0B8C: 
          brclr 3,PortB,L0396           ; Branch to 0x0396 if MUTE_WOOFER is LOW  
          bclr 3,PortB                  ; Set MUTE_WOOFER LOW                     
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          jsr L2623                     ; Jump to Subroutine at 0x2623            
          jsr L0F96                     ; Jump to Subroutine at 0x0F96            
          bclr 1,PortB                  ; Set ENA_12V_WOOFER LOW                  
          bclr 0,RAM1_081               ; Clear bit 0 at RAM1_081                 
          rts                           ; Return from Subroutine                  
; 
L0B9E: 
          brclr 7,RAM1_087,L03BD        ; Branch to 0x03BD if Bit 7 Clear (Mn = 0)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          eor TCR                       ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (TCR)
          sta TCR                       ; Store Accumulator in Memory at TCR      
          lda OCL1                      ; Load Accumulator with value of Memory at OCL1, A <- (OCL1)
          add #$A0                      ; A + 0xA0 (without CARRY), A ← (A) + 0xA0
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda OCH1                      ; Load Accumulator with value of Memory at OCH1, A <- (OCH1)
          adc #$01                      ; A + 0x01 + CARRY, A ← (A) + 0x01 + (C) 
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bmi L03BA                     ; Branch to 0x03BA if Minus N = 1         
          bne L03BD                     ; Branch to 0x03BD if Not Equal (Z = 0);  
cpx ACL 
          bhi L03BD                     ; Branch to 0x03BD if Higher C v Z = 0    
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          rts                           ; Return from Subroutine                  
; 
L0BBE: 
          tst RAM1_07e                  ; Test Memory Byte for Negative or Zero, (RAM1_07e) – 0x00
          beq L03FD                     ; Branch to 0x03FD if Equal Z=1           
          brclr 2,RAM1_07e,L03CD        ; Branch to 0x03CD if Bit 2 Clear (Mn = 0)
          bclr 2,RAM1_07e               ; Clear bit 2 at RAM1_07e                 
          clr RAM1_08a                  ; Clear byte at RAM1_08a <- 0x00          
          lda #$DD                      ; Load Accumulator with 0xDD, A <- 0xDD   
          sta RAM1_087                  ; Store Accumulator in Memory at RAM1_087 
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          brset 6,RAM1_07e,L03E8        ; Branch to 0x03E8 if Bit 6 is set at RAM1_07e (Mn=1)
          lda #$C8                      ; Load Accumulator with 0xC8, A <- 0xC8   
          brset 7,RAM1_07e,L03E8        ; Branch to 0x03E8 if Bit 7 is set at RAM1_07e (Mn=1)
          brclr 1,RAM1_07e,L03F2        ; Branch to 0x03F2 if Bit 1 Clear (Mn = 0)
          bclr 1,RAM1_07e               ; Clear bit 1 at RAM1_07e                 
          lda RAM1_082                  ; Load Accumulator with value of Memory at RAM1_082, A <- (RAM1_082)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          cmp #$02                      ; Compare Accumulator with Memory Byte, (A) - (0x02)
          bne L03F2                     ; Branch to 0x03F2 if Not Equal (Z = 0);  
          bset 4,RAM1_080               ; Set Bit 4 at memory RAM1_080 (Mn <- 1 ) 
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          bclr 6,RAM1_07e               ; Clear bit 6 at RAM1_07e                 
          bclr 7,RAM1_07e               ; Clear bit 7 at RAM1_07e                 
          jsr L0F96                     ; Jump to Subroutine at 0x0F96            
          jmp L0D0D                     ; Unconditional Jump to 0x0D0D            
; 
          db $0B, $7E, $08, $1B         ; data?  , ~,  ,                          
          db $7E, $0D, $82, $03         ; data? ~,  ,  ,                          
          db $CC, $0C, $F6, $0D         ; data?  ,  ,  ,                          
          db $82, $03, $CC, $0C         ; data?  ,  ,  ,                          
          db $B9, $04, $BE, $03         ; data?  ,  ,  ,                          
          db $06, $7F, $39, $0E         ; data?  , DEL, 9,                        
          db $87, $64, $00, $80         ; data?  , d,  ,                          
          db $33, $0A, $7F, $52         ; data? 3,  , DEL, R                      
          db $0E, $7F, $55, $0C         ; data?  , DEL, U,                        
          db $7F, $46, $08, $82         ; data? DEL, F,  ,                        
          db $0E, $0B, $80, $0B         ; data?  ,  ,  ,                          
          db $B6, $88, $AB, $34         ; data?  ,  ,  , 4                        
          db $24, $05, $1B, $82         ; data? $,  ,  ,                          
          db $CC, $0C, $E2, $B6         ; data?  ,  ,  ,                          
          db $7F, $A4, $03, $26         ; data? DEL,  ,  , &                      
          db $16, $C6, $02, $66         ; data?  ,  ,  , f                        
          db $2A, $0E, $C6, $02         ; data? *,  ,  ,                          
          db $65, $A1, $40, $27         ; data? e,  , @, '                        
          db $04, $A1, $30, $26         ; data?  ,  , 0, &                        
          db $03, $CC, $0C, $EC         ; data?  ,  ,  ,                          
          db $CC, $0C, $D8, $4A         ; data?  ,  ,  , J                        
          db $26, $13, $AE, $AD         ; data? &,  ,  ,                          
          db $CD, $38, $CC, $27         ; data?  , 8,  , '                        
          db $03, $02, $7C, $0C         ; data?  ,  , |,                          
          db $0E, $7C, $ED, $02         ; data?  , |,  ,                          
          db $7C, $EA, $CC, $0C         ; data? |,  ,  ,                          
          db $EC, $4A, $26, $06         ; data?  , J, &,                          
          db $00, $BA, $77, $CC         ; data?  ,  , w,                          
          db $0C, $EC, $0C, $80         ; data?  ,  ,  ,                          
          db $71, $CC, $0C, $EC         ; data? q,  ,  ,                          
          db $A6, $80, $B7, $87         ; data?  ,  ,  ,                          
          db $20, $7C, $3A, $8A         ; data? SPACE, |, :,                      
          db $2A, $63, $B6, $87         ; data? *, c,  ,                          
          db $A4, $1F, $A1, $1F         ; data?  ,  ,  ,                          
          db $26, $04, $13, $87         ; data? &,  ,  ,                          
          db $1D, $87, $3C, $87         ; data?  ,  , <,                          
          db $0C, $87, $03, $01         ; data?  ,  ,  ,                          
          db $87, $23, $CD, $12         ; data?  ,  #,  ,                         
          db $78, $27, $05, $0C         ; data? x, ',  ,                          
          db $87, $7B, $20, $76         ; data?  , {, SPACE, v                    
          db $0B, $7F, $0C, $1F         ; data?  , DEL,  ,                        
          db $7F, $1F, $82, $1D         ; data? DEL,  ,  ,                        
          db $82, $3F, $8A, $11         ; data?  ,  ,  ,                          
          db $82, $20, $67, $01         ; data?  , SPACE, g,                      
          db $87, $07, $CD, $0F         ; data?  ,  ,  ,                          
          db $B1, $A6, $14, $20         ; data?  ,  ,  , SPACE                    
          db $09, $A6, $FE, $B7         ; data?  ,  ,  ,                          
          db $88, $CD, $0F, $96         ; data?  ,  ,  ,                          
          db $A6, $50, $B7, $8A         ; data?  , P,  ,                          
          db $CC, $0D, $A3, $3A         ; data?  ,  ,  , :                        
          db $8A, $26, $1A, $01         ; data?  , &,  ,                          
          db $81, $54, $A6, $02         ; data?  , T,  ,                          
          db $B7, $8A, $CD, $12         ; data?  ,  ,  ,                          
          db $78, $27, $2D, $0F         ; data? x, ', -,                          
          db $82, $19, $B8, $82         ; data?  ,  ,  ,                          
          db $B7, $82, $16, $7E         ; data?  ,  ,  , ~                        
          db $16, $BC, $CD, $0F         ; data?  ,  ,  ,                          
          db $89, $81, $0B, $82         ; data?  ,  ,  ,                          
          db $03, $09, $82, $04         ; data?  ,  ,  ,                          
          db $1A, $82, $20, $D4         ; data?  ,  , SPACE,                      
          db $0E, $82, $D1, $0E         ; data?  ,  ,  ,                          
          db $82, $04, $CD, $0F         ; data?  ,  ,  ,                          
          db $96, $81, $CD, $12         ; data?  ,  ,  ,                          
          db $78, $26, $17, $1B         ; data? x, &,  ,                          
          db $82, $0F, $82, $C0         ; data?  ,  ,  ,                          
          db $1D, $82, $19, $80         ; data?  ,  ,  ,                          
          db $0F, $82, $DA, $3F         ; data?  ,  ,  ,                          
          db $8A, $00, $80, $D5         ; data?  ,  ,  ,                          
          db $CD, $0F, $B1, $CC         ; data?  ,  ,  ,                          
          db $0B, $FD, $0F, $82         ; data?  ,  ,  ,                          
          db $CD, $A6, $02              ; data?  ,  ,  ,                          
; 
L0D0D: 
          sta RAM1_08a                  ; Store Accumulator in Memory at RAM1_08a 
          bset 6,RAM1_082               ; Set Bit 6 at memory RAM1_082 (Mn <- 1 ) 
          jmp L0DA3                     ; Unconditional Jump to 0x0DA3            
; 
          db $03, $81, $4E, $0E         ; data?  ,  , N,                          
          db $60, $4B, $04, $82         ; data? `, K,  ,                          
          db $75, $07, $82, $0E         ; data? u,  ,  ,                          
          db $03, $01, $06, $13         ; data?  ,  ,  ,                          
          db $01, $AE, $04, $20         ; data?  ,  ,  , SPACE                    
          db $65, $0F, $6B, $66         ; data? e,  , k, f                        
          db $20, $5C, $07, $01         ; data? SPACE, \,  ,                      
          db $12, $0E, $82, $03         ; data?  ,  ,  ,                          
          db $04, $BE, $A0, $17         ; data?  ,  ,  ,                          
          db $01, $AE, $01, $0F         ; data?  ,  ,  ,                          
          db $6B, $5D, $03, $01         ; data? k, ],  ,                          
          db $5A, $20, $54, $AE         ; data? Z, SPACE, T,                      
          db $02, $01, $61, $51         ; data?  ,  , a, Q                        
          db $0E, $6B, $06, $1E         ; data?  , k,  ,                          
          db $6B, $1C, $95, $20         ; data? k,  ,  , SPACE                    
          db $4A, $02, $01, $06         ; data? J,  ,  ,                          
          db $12, $01, $AE, $01         ; data?  ,  ,  ,                          
          db $20, $41, $AE, $03         ; data? SPACE, A,  ,                      
          db $03, $90, $3A, $16         ; data?  ,  , :,                          
          db $01, $AE, $06, $20         ; data?  ,  ,  , SPACE                    
          db $36, $00, $61, $0A         ; data? 6,  , a,                          
          db $0E, $5F, $27, $06         ; data?  , _, ',                          
          db $5F, $24, $17, $01         ; data? _, $,  ,                          
          db $20, $25, $06, $5F         ; data? SPACE, %,  , _                    
          db $1D, $02, $01, $1A         ; data?  ,  ,  ,                          
          db $0F, $60, $05, $C6         ; data?  , `,  ,                          
          db $02, $C4, $2B, $12         ; data?  ,  , +,                          
          db $12, $01, $1F, $6B         ; data?  ,  ,  , k                        
          db $1C, $95, $AE, $07         ; data?  ,  ,  ,                          
          db $20, $11, $1F, $6B         ; data? SPACE,  ,  , k                    
          db $1C, $95, $AE, $04         ; data?  ,  ,  ,                          
          db $20, $09, $01, $02         ; data? SPACE,  ,  ,                      
          db $02, $16, $01, $AE         ; data?  ,  ,  ,                          
          db $05, $10, $81, $D6         ; data?  ,  ,  ,                          
          db $13, $6A, $B7, $8A         ; data?  , j,  ,                          
          db $18, $12, $81              ; data?  ,  ,  ,                          
; 
L0DA3: 
          ldx RAM1_085                  ; Load Index Register with Memory Byte, X <- (RAM1_085)
          lda X131A,x                   ; Load Accumulator with data from  memory at 0x131A, A <- (0x131A)
          brclr 1,RAM1_081,L05AE        ; Branch to 0x05AE if Bit 1 Clear (Mn = 0)
          lda X133A,x                   ; Load Accumulator with data from  memory at 0x133A, A <- (0x133A)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          brset 4,RAM1_080,L05C2        ; Branch to 0x05C2 if Bit 4 is set at RAM1_080 (Mn=1)
          brset 6,RAM1_082,L05BF        ; Branch to 0x05BF if Bit 6 is set at RAM1_082 (Mn=1)
          brset 7,RAM1_087,L05C2        ; Branch to 0x05C2 if Bit 7 is set at RAM1_087 (Mn=1)
          brset 7,RAM1_082,L05BF        ; Branch to 0x05BF if Bit 7 is set at RAM1_082 (Mn=1)
          brclr 5,RAM1_082,L05C2        ; Branch to 0x05C2 if Bit 5 Clear (Mn = 0)
          jmp L0E9A                     ; Unconditional Jump to 0x0E9A            
; 
          db $CD, $12, $96, $0E         ; data?  ,  ,  ,                          
          db $87, $1D, $08, $7F         ; data?  ,  ,  , DEL                      
          db $41, $AE, $A9, $CD         ; data? A,  ,  ,                          
          db $12, $A5, $0B, $7F         ; data?  ,  ,  , DEL                      
          db $03, $02, $A1, $09         ; data?  ,  ,  ,                          
          db $0D, $7F, $33, $3D         ; data?  , DEL, 3, =                      
          db $58, $27, $12, $3A         ; data? X, ',  , :                        
          db $58, $BF, $86, $B6         ; data? X,  ,  ,                          
          db $57, $20, $0A, $0D         ; data? W, SPACE,  ,                      
          db $87, $07, $CB, $13         ; data?  ,  ,  ,                          
          db $72, $24, $02, $A6         ; data? r, $,  ,                          
          db $FF, $B1, $58, $22         ; data?  ,  , X, "                        
          db $02, $B7, $58, $0F         ; data?  ,  , X,                          
          db $87, $14, $0C, $87         ; data?  ,  ,  ,                          
          db $11, $B6, $87, $44         ; data?  ,  ,  , D                        
          db $A4, $0F, $97, $B6         ; data?  ,  ,  ,                          
          db $58, $DB, $13, $5A         ; data? X,  ,  , Z                        
          db $24, $02, $A6, $FF         ; data? $,  ,  ,                          
          db $B7, $58, $0C, $81         ; data?  , X,  ,                          
          db $0C, $B6, $84, $27         ; data?  ,  ,  , '                        
          db $08, $48, $40, $BB         ; data?  , H, @,                          
          db $58, $25, $04, $4F         ; data? X, %,  , O                        
          db $C1, $B6, $58, $07         ; data?  ,  , X,                          
          db $81, $04, $A6, $80         ; data?  ,  ,  ,                          
          db $B0, $85, $B7, $58         ; data?  ,  ,  , X                        
          db $04, $BE, $33, $06         ; data?  ,  , 3,                          
          db $82, $6E, $04, $82         ; data?  , n,  ,                          
          db $1A, $04, $6B, $03         ; data?  ,  , k,                          
          db $03, $6B, $06, $15         ; data?  , k,  ,                          
          db $6B, $13, $6B, $1C         ; data? k,  , k,                          
          db $95, $03, $81, $1E         ; data?  ,  ,  ,                          
          db $02, $01, $1B, $08         ; data?  ,  ,  ,                          
          db $82, $18, $CD, $0F         ; data?  ,  ,  ,                          
          db $4A, $20, $51, $AE         ; data? J, SPACE, Q,                      
          db $AE, $CD, $38, $CC         ; data?  ,  , 8,                          
          db $A4, $07, $4A, $48         ; data?  ,  , J, H                        
          db $48, $CB, $13, $73         ; data? H,  ,  , s                        
          db $BB, $58, $25, $40         ; data?  , X, %, @                        
          db $B7, $58, $0E, $81         ; data?  , X,  ,                          
          db $18, $0A, $7F, $15         ; data?  ,  , DEL,                        
          db $0C, $7F, $12, $06         ; data?  , DEL,  ,                        
          db $81, $0F, $AE, $00         ; data?  ,  ,  ,                          
          db $03, $81, $02, $AE         ; data?  ,  ,  ,                          
          db $10, $CD, $12, $C3         ; data?  ,  ,  ,                          
          db $43, $A4, $0F, $20         ; data? C,  ,  , SPACE                    
          db $01, $4F, $B7, $59         ; data?  , O,  , Y                        
          db $B1, $83, $27, $10         ; data?  ,  , ',                          
          db $24, $09, $B6, $83         ; data? $,  ,  ,                          
          db $4A, $A4, $0F, $B7         ; data? J,  ,  ,                          
          db $83, $20, $02, $B7         ; data?  , SPACE,  ,                      
          db $83, $CD, $0F, $BD         ; data?  ,  ,  ,                          
          db $38, $59, $B6, $58         ; data? 8, Y,  , X                        
          db $B0, $59, $24, $01         ; data?  , Y, $,                          
          db $4F, $48, $24, $02         ; data? O, H, $,                          
; 
L0E9A: 
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          brset 6,RAM1_082,L06B2        ; Branch to 0x06B2 if Bit 6 is set at RAM1_082 (Mn=1)
          brset 7,RAM1_087,L06B2        ; Branch to 0x06B2 if Bit 7 is set at RAM1_087 (Mn=1)
          lda RAM1_088                  ; Load Accumulator with value of Memory at RAM1_088, A <- (RAM1_088)
          sub RAM1_058                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_058)
          beq L070A                     ; Branch to 0x070A if Equal Z=1           
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          eor #$7F                      ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (0x7F)
          brclr 4,RAM1_081,L06B6        ; Branch to 0x06B6 if Bit 4 Clear (Mn = 0)
          lda RAM1_058                  ; Load Accumulator with value of Memory at RAM1_058, A <- (RAM1_058)
          bra L06F7                     ; Branch Always (1 = 1)                   
; 
          db $AE, $20, $CD, $12         ; data?  , SPACE,  ,                      
          db $C3, $48, $0A, $82         ; data?  , H,  ,                          
          db $02, $AB, $10, $AB         ; data?  ,  ,  ,                          
          db $00, $97, $D6, $12         ; data?  ,  ,  ,                          
          db $FA, $3A, $8A, $2B         ; data?  , :,  , +                        
          db $1C, $4D, $2B, $0A         ; data?  , M, +,                          
          db $3D, $89, $2B, $1C         ; data? =,  , +,                          
          db $B1, $89, $22, $0A         ; data?  ,  , ",                          
          db $20, $3A, $3D, $89         ; data? SPACE, :, =,                      
          db $2A, $12, $B1, $89         ; data? *,  ,  ,                          
          db $24, $F6, $97, $B0         ; data? $,  ,  ,                          
          db $89, $BF, $89, $20         ; data?  ,  ,  , SPACE                    
          db $0E, $4D, $26, $04         ; data?  , M, &,                          
          db $B6, $58, $B0, $88         ; data?  , X,  ,                          
          db $DE, $12, $FB, $BF         ; data?  ,  ,  ,                          
          db $8A, $B7, $89, $BB         ; data?  ,  ,  ,                          
          db $88, $18, $82, $B1         ; data?  ,  ,  ,                          
          db $59, $26, $02, $19         ; data? Y, &,  ,                          
          db $82, $B1, $88, $27         ; data?  ,  ,  , '                        
          db $09, $B7, $88, $CD         ; data?  ,  ,  ,                          
          db $0F, $CC, $20, $08         ; data?  ,  , SPACE,                      
          db $19, $82, $08, $7E         ; data?  ,  ,  , ~                        
          db $F6, $06, $7E, $F3         ; data?  ,  , ~,                          
          db $B6, $82, $A4, $0C         ; data?  ,  ,  ,                          
          db $97, $01, $80, $03         ; data?  ,  ,  ,                          
          db $00, $61, $02, $B8         ; data?  , a,  ,                          
          db $7F, $A4, $0C, $27         ; data? DEL,  ,  , '                      
          db $59, $0B, $82, $03         ; data? Y,  ,  ,                          
          db $0F, $82, $53, $5D         ; data?  ,  , S, ]                        
          db $27, $01, $9F, $B8         ; data? ',  ,  ,                          
          db $82, $B7, $82, $1C         ; data?  ,  ,  ,                          
          db $95, $15, $6B, $13         ; data?  ,  , k,                          
          db $6B, $03, $81, $19         ; data? k,  ,  ,                          
          db $4F, $AE, $AF, $CD         ; data? O,  ,  ,                          
          db $38, $A0, $06, $82         ; data? 8,  ,  ,                          
          db $05, $05, $82, $04         ; data?  ,  ,  ,                          
          db $14, $6B, $12, $6B         ; data?  , k,  , k                        
          db $11, $81, $A6, $05         ; data?  ,  ,  ,                          
          db $B7, $8A, $1C, $82         ; data?  ,  ,  ,                          
          db $81, $07, $82, $17         ; data?  ,  ,  ,                          
          db $03, $01, $08, $13         ; data?  ,  ,  ,                          
          db $01, $17, $82, $A6         ; data?  ,  ,  ,                          
          db $50, $20, $21, $AE         ; data? P, SPACE, !,                      
          db $AF, $CD, $38, $CC         ; data?  ,  , 8,                          
          db $46, $24, $09, $14         ; data? F, $,  ,                          
          db $6B, $20, $07, $05         ; data? k, SPACE,  ,                      
          db $82, $07, $14, $6B         ; data?  ,  ,  , k                        
          db $12, $6B, $16, $01         ; data?  , k,  ,                          
          db $81, $00, $61, $03         ; data?  ,  , a,                          
          db $17, $01, $81, $02         ; data?  ,  ,  ,                          
          db $01, $FC, $A6, $28         ; data?  ,  ,  , (                        
          db $11, $81, $B7, $8A         ; data?  ,  ,  ,                          
          db $1C, $82, $81              ; data?  ,  ,  ,                          
; 
L0F89: 
          lda RAM1_082                  ; Load Accumulator with value of Memory at RAM1_082, A <- (RAM1_082)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda X11FB,x                   ; Load Accumulator with data from  memory at 0x11FB, A <- (0x11FB)
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          clra                          ; Clear byte at clra <- 0x00              
          bra L07C3                     ; Branch Always (1 = 1)                   
; 
L0F96: 
          bset 7,RAM1_082               ; Set Bit 7 at memory RAM1_082 (Mn <- 1 ) 
          brset 5,RAM1_081,L077C        ; Branch to 0x077C if Bit 5 is set at RAM1_081 (Mn=1)
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          cmp RAM1_088                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_088)
          beq L07A5                     ; Branch to 0x07A5 if Equal Z=1           
          sta RAM1_088                  ; Store Accumulator in Memory at RAM1_088 
          bsr L07D1                     ; Branch to Subroutine at 0x07D1          
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          lda #$03                      ; Load Accumulator with 0x03, A <- 0x03   
          bsr L07C3                     ; Branch to Subroutine at 0x07C3          
          lda #$81                      ; Load Accumulator with 0x81, A <- 0x81   
          bra L07B7                     ; Branch Always (1 = 1)                   
; 
          db $1F, $82, $16, $7E         ; data?  ,  ,  , ~                        
          db $A6, $80, $B7, $50         ; data?  ,  ,  , P                        
          db $A6, $08, $20, $06         ; data?  ,  , SPACE,                      
          db $B6, $83, $B7, $50         ; data?  ,  ,  , P                        
          db $A6, $01, $AE, $88         ; data?  ,  ,  ,                          
          db $01, $02, $03, $CD         ; data?  ,  ,  ,                          
          db $11, $FF, $81              ; data?  ,  ,  ,                          
; 
L0FCC: 
          lda RAM1_088                  ; Load Accumulator with value of Memory at RAM1_088, A <- (RAM1_088)
          brset 7,RAM1_082,L07CB        ; Branch to 0x07CB if Bit 7 is set at RAM1_082 (Mn=1)
          brclr 5,RAM1_07f,L07DC        ; Branch to 0x07DC if Bit 5 Clear (Mn = 0)
          brset 5,RAM1_082,L07DC        ; Branch to 0x07DC if Bit 5 is set at RAM1_082 (Mn=1)
          add #$E0                      ; A + 0xE0 (without CARRY), A ← (A) + 0xE0
          bcs L07DC                     ; Branch to 0x07DC if C = 1               
          clra                          ; Clear byte at clra <- 0x00              
          brclr 1,RAM1_081,L0005        ; Branch to 0x0005 if Bit 1 Clear (Mn = 0)
          brclr 1,RAM1_082,L07EC        ; Branch to 0x07EC if Bit 1 Clear (Mn = 0)
          brset 0,RAM1_082,L07F9        ; Branch to 0x07F9 if Bit 0 is set at RAM1_082 (Mn=1)
          brclr 2,RAM1_0b8,L07F9        ; Branch to 0x07F9 if Bit 2 Clear (Mn = 0)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          bra L07F3                     ; Branch Always (1 = 1)                   
; 
          db $A6, $14, $01, $82         ; data?  ,  ,  ,                          
          db $02, $A6, $0C, $40         ; data?  ,  ,  , @                        
          db $BB, $88, $25, $01         ; data?  ,  , %,                          
          db $4F, $A1, $30, $24         ; data? O,  , 0, $                        
          db $02, $A6, $30, $A1         ; data?  ,  , 0,                          
          db $44, $24, $02, $16         ; data? D, $,  ,                          
          db $7E, $B7, $56, $1F         ; data? ~,  , V,                          
          db $5B, $AE, $A0, $CD         ; data? [,  ,  ,                          
          db $10, $EF, $B7, $59         ; data?  ,  ,  , Y                        
          db $AE, $A1, $CD, $10         ; data?  ,  ,  ,                          
          db $EF, $B7, $58, $0A         ; data?  ,  , X,                          
          db $82, $28, $07, $7E         ; data?  , (,  , ~                        
          db $25, $17, $7E, $2B         ; data? %,  , ~, +                        
          db $02, $43, $C1, $AB         ; data?  , C,  ,                          
          db $07, $A4, $0F, $B7         ; data?  ,  ,  ,                          
          db $50, $B6, $59, $2B         ; data? P,  , Y, +                        
          db $07, $43, $A5, $08         ; data?  , C,  ,                          
          db $26, $04, $A0, $0D         ; data? &,  ,  ,                          
          db $AB, $07, $CD, $26         ; data?  ,  ,  , &                        
          db $1E, $BB, $50, $B7         ; data?  ,  , P,                          
          db $50, $A6, $03, $CD         ; data? P,  ,  ,                          
          db $0F, $C3, $B6, $58         ; data?  ,  ,  , X                        
          db $26, $0C, $B6, $59         ; data? &,  ,  , Y                        
          db $AB, $08, $B7, $57         ; data?  ,  ,  , W                        
          db $97, $D6, $11, $37         ; data?  ,  ,  , 7                        
          db $20, $15, $AB, $08         ; data? SPACE,  ,  ,                      
          db $B7, $57, $B6, $59         ; data?  , W,  , Y                        
          db $2A, $01, $40, $CD         ; data? *,  , @,                          
          db $26, $1E                   ; data? &,  ,  ,                          
X105E: 
          db $BB, $57, $97, $D6         ; data?  , W,  ,                          
          db $11, $37, $0F, $59         ; data?  , 7,  , Y                        
          db $03, $CD, $26, $1E         ; data?  ,  , &,                          
          db $CD, $26, $17, $06         ; data?  , &,  ,                          
          db $57, $0E, $0E, $5B         ; data? W,  ,  , [                        
          db $0A, $40, $27, $07         ; data?  , @, ',                          
          db $BB, $56, $25, $0A         ; data?  , V, %,                          
          db $4F, $20, $07, $4F         ; data? O, SPACE,  , O                    
          db $BB, $56, $24, $02         ; data?  , V, $,                          
          db $A6, $FF, $B7, $50         ; data?  ,  ,  , P                        
          db $A6, $02, $CD, $0F         ; data?  ,  ,  ,                          
          db $C3, $09, $7E, $60         ; data?  ,  , ~, `                        
          db $19, $7E, $A6, $88         ; data?  , ~,  ,                          
          db $B7, $55, $A6, $14         ; data?  , U,  ,                          
          db $B7, $54, $A6, $E0         ; data?  , T,  ,                          
          db $AE, $53, $BF, $57         ; data?  , S,  , W                        
          db $BE, $57, $7F, $B7         ; data?  , W, DEL,                        
          db $56, $AE, $A3, $CD         ; data? V,  ,  ,                          
          db $38, $CC, $0D, $8E         ; data? 8,  ,  ,                          
          db $01, $4F, $B8, $56         ; data?  , O,  , V                        
          db $A5, $20, $26, $0E         ; data?  , SPACE, &,                      
          db $CD, $38, $CC, $0D         ; data?  , 8,  ,                          
          db $8E, $01, $4F, $2A         ; data?  ,  , O, *                        
          db $01, $40, $AB, $10         ; data?  , @,  ,                          
          db $AD, $20, $AE, $A2         ; data?  , SPACE,  ,                      
          db $CD, $38, $CC, $B8         ; data?  , 8,  ,                          
          db $56, $A5, $40, $27         ; data? V,  , @, '                        
          db $08, $CD, $38, $CC         ; data?  ,  , 8,                          
          db $2A, $01, $40, $AD         ; data? *,  , @,                          
          db $0D, $3A, $57, $B6         ; data?  , :, W,                          
          db $56, $A0, $20, $2B         ; data? V,  , SPACE, +                    
          db $C3, $AE, $55, $CC         ; data?  ,  , U,                          
          db $12, $05, $97, $D6         ; data?  ,  ,  ,                          
          db $11, $DB, $BE, $57         ; data?  ,  ,  , W                        
          db $FB, $A1, $1F, $23         ; data?  ,  ,  ,  #                       
          db $02, $A6, $1F, $F7         ; data?  ,  ,  ,                          
          db $81, $4F, $0A, $82         ; data?  , O,  ,                          
          db $09, $0A, $7F, $3F         ; data?  ,  , DEL,                        
          db $0C, $7F, $3C, $06         ; data?  , DEL, <,                        
          db $81, $39, $CD, $38         ; data?  , 9,  , 8                        
          db $CC, $AB, $06, $2A         ; data?  ,  ,  , *                        
          db $02, $A6, $06, $A3         ; data?  ,  ,  ,                          
          db $A0, $26, $02, $AB         ; data?  , &,  ,                          
          db $0D, $03, $81, $02         ; data?  ,  ,  ,                          
          db $AB, $1A, $97, $D6         ; data?  ,  ,  ,                          
          db $11, $A7, $2B, $1F         ; data?  ,  , +,                          
          db $03, $81, $1C, $BE         ; data?  ,  ,  ,                          
          db $56, $A3, $44, $24         ; data? V,  , D, $                        
          db $16, $3F, $53, $A3         ; data?  ,  , S,                          
          db $36, $25, $08, $3C         ; data? 6, %,  , <                        
          db $53, $A3, $3C, $25         ; data? S,  , <, %                        
          db $02, $3C, $53, $B1         ; data?  , <, S,                          
          db $53, $23, $04, $B6         ; data? S,  #,  ,                         
          db $53, $1E, $5B, $4D         ; data? S,  , [, M                        
          db $81, $00, $00, $70         ; data?  ,  ,  , p                        
          db $72, $62, $51, $41         ; data? r, b, Q, A                        
          db $21, $00, $21, $41         ; data? !,  , !, A                        
          db $52, $62, $72, $70         ; data? R, b, r, p                        
          db $00, $00, $00, $78         ; data?  ,  ,  , x                        
          db $67, $57, $56, $35         ; data? g, W, V, 5                        
          db $13, $00, $32, $53         ; data?  ,  , 2, S                        
          db $65, $75, $76, $86         ; data? e, u, v,                          
          db $00, $00, $00, $68         ; data?  ,  ,  , h                        
          db $68, $57, $46, $35         ; data? h, W, F, 5                        
          db $13, $00, $41, $53         ; data?  ,  , A, S                        
          db $74, $75, $85, $86         ; data? t, u,  ,                          
          db $00, $00, $00, $69         ; data?  ,  ,  , i                        
          db $58, $58, $47, $25         ; data? X, X, G, %                        
          db $14, $00, $41, $63         ; data?  ,  , A, c                        
          db $74, $75, $85, $86         ; data? t, u,  ,                          
          db $00, $00, $00, $59         ; data?  ,  ,  , Y                        
          db $58, $48, $47, $26         ; data? X, H, G, &                        
          db $14, $00, $41, $63         ; data?  ,  , A, c                        
          db $74, $84, $85, $95         ; data? t,  ,  ,                          
          db $00, $00, $00, $59         ; data?  ,  ,  , Y                        
          db $58, $48, $47, $25         ; data? X, H, G, %                        
          db $14, $00, $41, $62         ; data?  ,  , A, b                        
          db $74, $84, $85, $95         ; data? t,  ,  ,                          
          db $00, $00, $00, $59         ; data?  ,  ,  , Y                        
          db $58, $48, $47, $25         ; data? X, H, G, %                        
          db $14, $00, $41, $62         ; data?  ,  , A, b                        
          db $74, $84, $85, $95         ; data? t,  ,  ,                          
          db $00, $FA, $FB, $FC         ; data?  ,  ,  ,                          
          db $FD, $FE, $FF, $00         ; data?  ,  ,  ,                          
          db $01, $02, $03, $04         ; data?  ,  ,  ,                          
          db $05, $06, $FB, $FC         ; data?  ,  ,  ,                          
          db $FD, $FD, $FE, $FE         ; data?  ,  ,  ,                          
          db $FF, $00, $01, $01         ; data?  ,  ,  ,                          
          db $02, $03, $03, $FB         ; data?  ,  ,  ,                          
          db $FB, $FC, $FD, $FE         ; data?  ,  ,  ,                          
          db $FF, $00, $01, $01         ; data?  ,  ,  ,                          
          db $02, $02, $03, $03         ; data?  ,  ,  ,                          
          db $FB, $FB, $FC, $FD         ; data?  ,  ,  ,                          
          db $FE, $FF, $00, $01         ; data?  ,  ,  ,                          
          db $01, $02, $02, $03         ; data?  ,  ,  ,                          
          db $03, $00, $01, $02         ; data?  ,  ,  ,                          
          db $03, $04, $05, $06         ; data?  ,  ,  ,                          
          db $07, $08, $09, $0A         ; data?  ,  ,  ,                          
          db $0B, $0C, $0D, $0E         ; data?  ,  ,  ,                          
          db $0F, $00, $01, $02         ; data?  ,  ,  ,                          
          db $03, $04, $05, $06         ; data?  ,  ,  ,                          
          db $07, $08, $09, $0A         ; data?  ,  ,  ,                          
          db $0B, $0C, $0D, $0E         ; data?  ,  ,  ,                          
          db $1F                        ; data?  ,  ,  ,                          
X11FB: 
          db $38, $39, $3A, $2B         ; data? 8, 9, :, +                        
          db $B7, $51, $BF, $52         ; data?  , Q,  , R                        
          db $AE, $52, $BF, $5A         ; data?  , R,  , Z                        
          db $AD, $06, $24, $63         ; data?  ,  , $, c                        
          db $AD, $02, $24, $5F         ; data?  ,  , $, _                        
          db $BE, $5A, $AD, $5C         ; data?  , Z,  , \                        
          db $F6, $AD, $0A, $25         ; data?  ,  ,  , %                        
          db $4C, $5A, $A3, $50         ; data? L, Z,  , P                        
          db $24, $F6, $98, $20         ; data? $,  ,  , SPACE                    
          db $44, $99, $49, $25         ; data? D,  , I, %                        
          db $04, $AD, $14, $20         ; data?  ,  ,  , SPACE                    
          db $04, $1D, $04, $20         ; data?  ,  ,  , SPACE                    
          db $00, $AD, $05, $48         ; data?  ,  ,  , H                        
          db $26, $F1, $1D, $04         ; data? &,  ,  ,                          
          db $1F, $04, $0C, $00         ; data?  ,  ,  ,                          
          db $00, $20, $39, $1C         ; data?  , SPACE, 9,                      
          db $04, $1D, $00, $81         ; data?  ,  ,  ,                          
          db $AD, $2E, $AD, $DD         ; data?  , .,  ,                          
          db $25, $1F, $AD, $2C         ; data? %,  ,  , ,                        
          db $A6, $01, $1D, $04         ; data?  ,  ,  ,                          
          db $1F, $04, $0C, $00         ; data?  ,  ,  ,                          
          db $00, $49, $AD, $20         ; data?  , I,  , SPACE                    
          db $24, $F4, $F7, $3A         ; data? $,  ,  , :                        
          db $59, $2B, $07, $AD         ; data? Y, +,  ,                          
          db $DE, $5A, $1F, $04         ; data?  , Z,  ,                          
          db $20, $E4, $AD, $CE         ; data? SPACE,  ,  ,                      
          db $98, $AD, $0D, $AD         ; data?  ,  ,  ,                          
          db $D2, $1F, $04, $AD         ; data?  ,  ,  ,                          
          db $02, $1D, $04, $81         ; data?  ,  ,  ,                          
          db $AD, $F7, $AD, $C7         ; data?  ,  ,  ,                          
          db $1E, $04, $1F, $00         ; data?  ,  ,  ,                          
          db $81, $A6, $03, $0A         ; data?  ,  ,  ,                          
          db $7F, $12, $0E, $7F         ; data? DEL,  ,  , DEL                    
          db $11, $0C, $87, $0E         ; data?  ,  ,  ,                          
          db $4A, $0C, $7F, $08         ; data? J,  , DEL,                        
          db $01, $7F, $03, $02         ; data?  , DEL,  ,                        
          db $7C, $02, $B6, $7F         ; data? |,  ,  , DEL                      
          db $3F, $87, $B8, $82         ; data?  ,  ,  ,                          
          db $A4, $03, $81              ; data?  ,  ,  ,                          
; 
L1296: 
          ldx #$10                      ; Load Index Register with Memory Byte, X <- (0x10)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          brclr 1,RAM1_081,L02A4        ; Branch to 0x02A4 if Bit 1 Clear (Mn = 0)
          add #$10                      ; A + 0x10 (without CARRY), A ← (A) + 0x10
          bcc L02A4                     ; Branch to 0x02A4 if C bit is cleared    
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          rts                           ; Return from Subroutine                  
; 
          db $B7, $57, $CD, $38         ; data?  , W,  , 8                        
          db $CC, $48, $48, $AB         ; data?  , H, H,                          
          db $F4, $40, $BB, $57         ; data?  , @,  , W                        
; 
L12B1: 
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          clrx                          ; Clear byte at clrx <- 0x00              
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          lda X131A,x                   ; Load Accumulator with data from  memory at 0x131A, A <- (0x131A)
          brclr 1,RAM1_081,L02BE        ; Branch to 0x02BE if Bit 1 Clear (Mn = 0)
          lda X133A,x                   ; Load Accumulator with data from  memory at 0x133A, A <- (0x133A)
          cmp RAM1_057                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_057)
          bhi L02B4                     ; Branch to 0x02B4 if Higher C v Z = 0    
          rts                           ; Return from Subroutine                  
; 
          db $3F, $57, $DB, $12         ; data?  , W,  ,                          
          db $D2, $25, $05, $3C         ; data?  , %,  , <                        
          db $57, $5C, $20, $F6         ; data? W, \, SPACE,                      
          db $B6, $57, $81, $B7         ; data?  , W,  ,                          
          db $04, $04, $04, $04         ; data?  ,  ,  ,                          
          db $04, $04, $04, $04         ; data?  ,  ,  ,                          
          db $FF, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $8F         ; data?  ,  ,  ,                          
          db $06, $06, $06, $06         ; data?  ,  ,  ,                          
          db $06, $06, $06, $06         ; data?  ,  ,  ,                          
          db $06, $06, $06, $06         ; data?  ,  ,  ,                          
          db $06, $06, $FF, $20         ; data?  ,  ,  , SPACE                    
          db $40, $16, $0A, $02         ; data? @,  ,  ,                          
          db $0E, $20, $FF, $20         ; data?  , SPACE,  , SPACE                
          db $00, $10, $00, $08         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $FE, $03, $FC         ; data?  ,  ,  ,                          
          db $00, $F8, $00, $0C         ; data?  ,  ,  ,                          
          db $00, $06, $00, $02         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $FE, $03, $FC         ; data?  ,  ,  ,                          
          db $00, $F8, $00              ; data?  ,  ,  ,                          
X131A: 
          db $9C, $9C, $90, $84         ; data?  ,  ,  ,                          
          db $78, $6C, $64, $5C         ; data? x, l, d, \                        
          db $54, $4E, $48, $44         ; data? T, N, H, D                        
          db $40, $3C, $38, $34         ; data? @, <, 8, 4                        
          db $30, $2C, $28, $26         ; data? 0, ,, (, &                        
          db $24, $22, $20, $1E         ; data? $, ", SPACE,                      
          db $1C, $1A, $18, $16         ; data?  ,  ,  ,                          
          db $14, $12, $10, $10         ; data?  ,  ,  ,                          
X133A: 
          db $9C, $92, $88, $7E         ; data?  ,  ,  , ~                        
          db $74, $6A, $62, $5A         ; data? t, j, b, Z                        
          db $54, $4E, $48, $44         ; data? T, N, H, D                        
          db $40, $3C, $38, $36         ; data? @, <, 8, 6                        
          db $34, $32, $30, $2E         ; data? 4, 2, 0, .                        
          db $2C, $2A, $28, $26         ; data? ,, *, (, &                        
          db $24, $22, $20, $1E         ; data? $, ", SPACE,                      
          db $1C, $1A, $18, $18         ; data?  ,  ,  ,                          
          db $1E, $1C, $1A, $18         ; data?  ,  ,  ,                          
          db $16, $14, $12, $10         ; data?  ,  ,  ,                          
          db $0E, $0C, $0A, $08         ; data?  ,  ,  ,                          
          db $06, $04, $02, $00         ; data?  ,  ,  ,                          
X136A: 
          db $0A, $14, $03, $50         ; data?  ,  ,  , P                        
          db $28, $05, $3C, $46         ; data? (,  , <, F                        
          db $18, $00, $10              ; data?  ,  ,  ,                          
; 
L1375: 
          brclr 6,RAM1_061,L0383        ; Branch to 0x0383 if Bit 6 Clear (Mn = 0)
          brset 6,RAM1_0ba,L0380        ; Branch to 0x0380 if Bit 6 is set at RAM1_0ba (Mn=1)
          brset 5,RAM1_0ba,L0395        ; Branch to 0x0395 if Bit 5 is set at RAM1_0ba (Mn=1)
          bra L0383                     ; Branch Always (1 = 1)                   
; 
          db $0B, $BA, $12, $19         ; data?  ,  ,  ,                          
          db $01, $1D, $BA, $1A         ; data?  ,  ,  ,                          
          db $BA, $3F, $D6, $3F         ; data?  ,  ,  ,                          
          db $C1, $CD, $1E, $7D         ; data?  ,  ,  , }                        
          db $10, $BA, $CD, $26         ; data?  ,  ,  , &                        
          db $40, $18, $01, $AE         ; data? @,  ,  ,                          
          db $B0, $CD, $38, $CC         ; data?  ,  , 8,                          
          db $A4, $62, $AA, $80         ; data?  , b,  ,                          
          db $09, $B5, $02, $AA         ; data?  ,  ,  ,                          
          db $10, $B7, $B5, $3F         ; data?  ,  ,  ,                          
          db $BF, $CD, $26, $31         ; data?  ,  , &, 1                        
          db $01, $61, $13, $3F         ; data?  , a,  ,                          
          db $BC, $14, $BC, $09         ; data?  ,  ,  ,                          
          db $69, $0C, $02, $5F         ; data? i,  ,  , _                        
          db $09, $1D, $B5, $B6         ; data?  ,  ,  ,                          
          db $B5, $AE, $B0, $CD         ; data?  ,  ,  ,                          
          db $38, $A0, $18, $BC         ; data? 8,  ,  ,                          
          db $81, $0D, $61, $08         ; data?  ,  , a,                          
          db $0C, $BA, $05, $A6         ; data?  ,  ,  ,                          
          db $05, $0B, $BA, $02         ; data?  ,  ,  ,                          
          db $A6, $28, $B7, $63         ; data?  , (,  , c                        
          db $1C, $BA, $1A, $BA         ; data?  ,  ,  ,                          
          db $A6, $30, $AE, $01         ; data?  , 0,  ,                          
          db $CD, $1B, $D9, $07         ; data?  ,  ,  ,                          
          db $67, $08, $17, $67         ; data? g,  ,  , g                        
          db $CD, $14, $07, $CD         ; data?  ,  ,  ,                          
          db $37, $B0, $CD, $07         ; data? 7,  ,  ,                          
          db $85, $CD, $37, $F4         ; data?  ,  , 7,                          
          db $CD, $14, $2B, $0D         ; data?  ,  , +,                          
          db $BA, $06, $1D, $D6         ; data?  ,  ,  ,                          
          db $3D, $63, $26, $E3         ; data? =, c, &,                          
          db $CD, $37, $F4, $CD         ; data?  , 7,  ,                          
          db $1E, $7D, $1B, $BA         ; data?  , },  ,                          
          db $1D, $BA, $81              ; data?  ,  ,  ,                          
; 
L1407: 
          brset 7,STACK_0d6,L0445       ; Branch to 0x0445 if Bit 7 is set at STACK_0d6 (Mn=1)
          brset 6,RAM1_0ba,L0410        ; Branch to 0x0410 if Bit 6 is set at RAM1_0ba (Mn=1)
          brclr 5,RAM1_0ba,L0434        ; Branch to 0x0434 if Bit 5 Clear (Mn = 0)
          lda RAM1_0bb                  ; Load Accumulator with value of Memory at RAM1_0bb, A <- (RAM1_0bb)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L1446                     ; Jump to Subroutine at 0x1446            
          bra L043B                     ; Branch Always (1 = 1)                   
; 
L1419: 
          brset 7,STACK_0d6,L0445       ; Branch to 0x0445 if Bit 7 is set at STACK_0d6 (Mn=1)
          brset 6,RAM1_0ba,L0422        ; Branch to 0x0422 if Bit 6 is set at RAM1_0ba (Mn=1)
          brclr 5,RAM1_0ba,L0434        ; Branch to 0x0434 if Bit 5 Clear (Mn = 0)
          lda RAM1_0bb                  ; Load Accumulator with value of Memory at RAM1_0bb, A <- (RAM1_0bb)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L1551                     ; Jump to Subroutine at 0x1551            
          bra L043B                     ; Branch Always (1 = 1)                   
; 
L142B: 
          lda RAM1_0bb                  ; Load Accumulator with value of Memory at RAM1_0bb, A <- (RAM1_0bb)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L15C8                     ; Jump to Subroutine at 0x15C8            
          bra L043B                     ; Branch Always (1 = 1)                   
; 
          db $01, $61, $04, $1B         ; data?  , a,  ,                          
          db $61, $14, $5D, $B6         ; data? a,  , ],                          
          db $BB, $B1, $58, $27         ; data?  ,  , X, '                        
          db $04, $1C, $CB, $1A         ; data?  ,  ,  ,                          
          db $CB, $81                   ; data?  ,  ,  ,                          
; 
L1446: 
          brclr 4,RAM1_0bc,L044E        ; Branch to 0x044E if Bit 4 Clear (Mn = 0)
          bclr 4,RAM1_0bc               ; Clear bit 4 at RAM1_0bc                 
          jmp L1AA5                     ; Unconditional Jump to 0x1AA5            
; 
          db $0E, $C1, $03, $0C         ; data?  ,  ,  ,                          
          db $C1, $06, $07, $BC         ; data?  ,  ,  ,                          
          db $03, $CC, $19, $53         ; data?  ,  ,  , S                        
          db $05, $C0, $03, $CC         ; data?  ,  ,  ,                          
          db $1C, $AD, $B6, $B3         ; data?  ,  ,  ,                          
          db $26, $07, $CD, $14         ; data? &,  ,  ,                          
          db $DF, $CD, $15, $16         ; data?  ,  ,  ,                          
          db $81, $2B, $3F, $08         ; data?  , +,  ,                          
          db $B3, $19, $A5, $60         ; data?  ,  ,  , `                        
          db $27, $05, $CD, $18         ; data? ',  ,  ,                          
          db $9A, $20, $02, $3F         ; data?  , SPACE,  ,                      
          db $B3, $11, $BA, $0E         ; data?  ,  ,  ,                          
          db $B9, $06, $0D, $BA         ; data?  ,  ,  ,                          
          db $03, $0D, $C1, $02         ; data?  ,  ,  ,                          
          db $10, $BA, $81, $B6         ; data?  ,  ,  ,                          
          db $C1, $A4, $86, $A1         ; data?  ,  ,  ,                          
          db $86, $26, $03, $CD         ; data?  , &,  ,                          
          db $1C, $82, $A6, $B4         ; data?  ,  ,  ,                          
          db $0A, $B6, $11, $A6         ; data?  ,  ,  ,                          
          db $88, $0F, $BA, $DB         ; data?  ,  ,  ,                          
          db $05, $B6, $D8, $03         ; data?  ,  ,  ,                          
          db $B6, $06, $0A, $B3         ; data?  ,  ,  ,                          
          db $03, $01, $B6, $CF         ; data?  ,  ,  ,                          
          db $B7, $B3, $1F, $B3         ; data?  ,  ,  ,                          
          db $15, $BB, $A4, $07         ; data?  ,  ,  ,                          
          db $97, $B6, $B4, $2A         ; data?  ,  ,  , *                        
          db $06, $A4, $7F, $B7         ; data?  ,  , DEL,                        
          db $B4, $B7, $B8, $DE         ; data?  ,  ,  ,                          
          db $19, $DD, $DD, $1A         ; data?  ,  ,  ,                          
          db $3D, $0E, $B3, $B5         ; data? =,  ,  ,                          
          db $B6, $B3, $A1, $70         ; data?  ,  ,  , p                        
          db $24, $AD, $17, $BB         ; data? $,  ,  ,                          
          db $08, $B3, $A8, $B7         ; data?  ,  ,  ,                          
          db $B6, $1B, $BC, $A4         ; data?  ,  ,  ,                          
          db $07, $A1, $07, $26         ; data?  ,  ,  , &                        
          db $9E, $18, $B6, $20         ; data?  ,  ,  , SPACE                    
          db $9A, $B6, $C1, $A5         ; data?  ,  ,  ,                          
          db $C0, $27, $11, $A4         ; data?  , ',  ,                          
          db $86, $A1, $86, $26         ; data?  ,  ,  , &                        
          db $29, $1B, $BC, $15         ; data? ),  ,  ,                          
          db $BB, $CD, $1E, $69         ; data?  ,  ,  , i                        
          db $27, $0B, $15, $BA         ; data? ',  ,  ,                          
          db $19, $C0, $A6, $97         ; data?  ,  ,  ,                          
          db $AE, $C0, $CD, $1C         ; data?  ,  ,  ,                          
          db $84, $CD, $1E, $74         ; data?  ,  ,  , t                        
          db $09, $BF, $0B, $04         ; data?  ,  ,  ,                          
          db $BE, $0C, $02, $BE         ; data?  ,  ,  ,                          
          db $09, $0F, $BF, $06         ; data?  ,  ,  ,                          
          db $1F, $BF, $18, $BF         ; data?  ,  ,  ,                          
          db $16, $BC, $81, $81         ; data?  ,  ,  ,                          
          db $08, $C1, $37, $3A         ; data?  ,  , 7, :                        
          db $C3, $26, $33, $B6         ; data?  , &, 3,                          
          db $C1, $A1, $60, $27         ; data?  ,  , `, '                        
          db $08, $07, $BC, $05         ; data?  ,  ,  ,                          
          db $3C, $C3, $CC, $19         ; data? <,  ,  ,                          
          db $53, $0F, $C1, $0F         ; data? S,  ,  ,                          
          db $1F, $C1, $1D, $C1         ; data?  ,  ,  ,                          
          db $B6, $C1, $A4, $07         ; data?  ,  ,  ,                          
          db $97, $DE, $1D, $18         ; data?  ,  ,  ,                          
          db $DC, $1D, $20, $0D         ; data?  ,  , SPACE,                      
          db $C1, $0E, $1D, $C1         ; data?  ,  ,  ,                          
          db $B6, $B6, $A4, $07         ; data?  ,  ,  ,                          
          db $97, $DE, $1C, $0E         ; data?  ,  ,  ,                          
          db $DD, $1C, $16, $C1         ; data?  ,  ,  ,                          
          db $3F, $C1, $81              ; data?  ,  ,  ,                          
; 
L1551: 
          brset 7,RAM1_0ba,L059C        ; Branch to 0x059C if Bit 7 is set at RAM1_0ba (Mn=1)
          jsr L1E4F                     ; Jump to Subroutine at 0x1E4F            
          beq L059C                     ; Branch to 0x059C if Equal Z=1           
          lda RAM1_0be                  ; Load Accumulator with value of Memory at RAM1_0be, A <- (RAM1_0be)
          brset 5,RAM1_0b9,L057E        ; Branch to 0x057E if Bit 5 is set at RAM1_0b9 (Mn=1)
          brset 4,RAM1_0b9,L0574        ; Branch to 0x0574 if Bit 4 is set at RAM1_0b9 (Mn=1)
          brclr 1,RAM1_0be,L0569        ; Branch to 0x0569 if Bit 1 Clear (Mn = 0)
          brclr 3,RAM1_0b9,L056C        ; Branch to 0x056C if Bit 3 Clear (Mn = 0)
          bra L0598                     ; Branch Always (1 = 1)                   
; 
          db $06, $BA, $2C, $A5         ; data?  ,  , ,,                          
          db $F0, $27, $2C, $AA         ; data?  , ', ,,                          
          db $F0, $20, $2C, $03         ; data?  , SPACE, ,,                      
          db $BE, $03, $00, $BE         ; data?  ,  ,  ,                          
          db $15, $A6, $02, $20         ; data?  ,  ,  , SPACE                    
          db $08, $05, $BE, $03         ; data?  ,  ,  ,                          
          db $00, $BE, $0B, $A6         ; data?  ,  ,  ,                          
          db $04, $1E, $BF, $1A         ; data?  ,  ,  ,                          
          db $CB, $16, $BC, $4C         ; data?  ,  ,  , L                        
          db $18, $BA, $A4, $07         ; data?  ,  ,  ,                          
          db $AA, $20, $0D, $B9         ; data?  , SPACE,  ,                      
          db $02, $AA, $C0, $AB         ; data?  ,  ,  ,                          
          db $F0, $25, $04, $CD         ; data?  , %,  ,                          
          db $1E, $87, $4F, $B7         ; data?  ,  , O,                          
          db $BE, $09, $C1, $AB         ; data?  ,  ,  ,                          
          db $CC, $15, $19              ; data?  ,  ,  ,                          
X15A8: 
          db $03, $6C, $AB, $00         ; data?  , l,  ,                          
          db $CD, $F5, $03, $03         ; data?  ,  ,  ,                          
          db $03, $2F, $03, $06         ; data?  , /,  ,                          
          db $B7, $56, $AD, $05         ; data?  , V,  ,                          
          db $B6, $56, $CD, $26         ; data?  , V,  , &                        
          db $1E, $CD, $25, $33         ; data?  ,  , %, 3                        
          db $C1, $A6, $20, $D7         ; data?  ,  , SPACE,                      
          db $02, $88, $5C, $81         ; data?  ,  , \,                          
; 
L15C8: 
          brclr 3,STACK_0d6,L05C7       ; Branch to 0x05C7 if Bit 3 Clear (Mn = 0)
          bclr 3,STACK_0d6              ; Clear bit 3 at STACK_0d6                
          bset 6,RAM1_0ba               ; Set Bit 6 at memory RAM1_0ba (Mn <- 1 ) 
          ldx RAM2_0271                 ; Load Index Register with Memory Byte, X <- (RAM2_0271)
          stx RAM1_05b                  ; Store Index Register In Memory at RAM1_05b
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
cpx #$0C 
          bcc L05E7                     ; Branch to 0x05E7 if C bit is cleared    
          ldx X15A8,x                   ; Load Index Register with Memory Byte, X <- (0x15A8)
          lda RAM2_0272                 ; Load Accumulator with value of Memory at RAM2_0272, A <- (RAM2_0272)
          jmp L15E4,x ;INFO: index jump ; Unconditional Jump to 0x15E4            
; 
L15E4: 
          db $CC, $17, $0D, $CC         ; data?  ,  ,  ,                          
          db $17, $0A, $1C, $BB         ; data?  ,  ,  ,                          
          db $14, $BF, $C1, $02         ; data?  ,  ,  ,                          
          db $73, $25, $02, $15         ; data? s, %,  ,                          
          db $BF, $09, $CE, $EF         ; data?  ,  ,  ,                          
          db $5F, $C6, $02, $74         ; data? _,  ,  , t                        
          db $AD, $BF, $AD, $C1         ; data?  ,  ,  ,                          
          db $C6, $02, $73, $CD         ; data?  ,  , s,                          
          db $15, $BD, $AD, $B9         ; data?  ,  ,  ,                          
          db $00, $BB, $40, $AD         ; data?  ,  , @,                          
          db $B4, $A3, $08, $26         ; data?  ,  ,  , &                        
          db $FA, $20, $38, $03         ; data?  , SPACE, 8,                      
          db $5B, $37, $C6, $02         ; data? [, 7,  ,                          
          db $74, $2B, $13, $B8         ; data? t, +,  ,                          
          db $C5, $A4, $1F, $26         ; data?  ,  ,  , &                        
          db $03, $0E, $C5, $0A         ; data?  ,  ,  ,                          
          db $B8, $C5, $B7, $C5         ; data?  ,  ,  ,                          
          db $1A, $C5, $1C, $C5         ; data?  ,  ,  ,                          
          db $1E, $C5, $09, $CE         ; data?  ,  ,  ,                          
          db $1A, $0C, $BB, $07         ; data?  ,  ,  ,                          
          db $5F, $AD, $8A, $A3         ; data? _,  ,  ,                          
          db $04, $26, $FA, $10         ; data?  , &,  ,                          
          db $BB, $AE, $04, $C6         ; data?  ,  ,  ,                          
          db $02, $73, $CD, $15         ; data?  , s,  ,                          
          db $B4, $C6, $02, $72         ; data?  ,  ,  , r                        
          db $CD, $15, $B4, $1C         ; data?  ,  ,  ,                          
          db $CB, $CC, $17, $0A         ; data?  ,  ,  ,                          
          db $BE, $5B, $A3, $08         ; data?  , [,  ,                          
          db $27, $0D, $A3, $0B         ; data? ',  ,  ,                          
          db $26, $F3, $0D, $CE         ; data? &,  ,  ,                          
          db $03, $CD, $1E, $B3         ; data?  ,  ,  ,                          
          db $C6, $02, $75, $1B         ; data?  ,  , u,                          
          db $BA, $1D, $BA, $4D         ; data?  ,  ,  , M                        
          db $2A, $02, $1C, $BA         ; data? *,  ,  ,                          
          db $17, $BA, $A5, $40         ; data?  ,  ,  , @                        
          db $27, $14, $16, $BA         ; data? ',  ,  ,                          
          db $A5, $20, $27, $0E         ; data?  , SPACE, ',                      
          db $97, $B6, $B8, $A4         ; data?  ,  ,  ,                          
          db $0F, $AA, $80, $B7         ; data?  ,  ,  ,                          
          db $B4, $A6, $CA, $B7         ; data?  ,  ,  ,                          
          db $B3, $9F, $CD, $26         ; data?  ,  ,  , &                        
          db $17, $B8, $B9, $A4         ; data?  ,  ,  ,                          
          db $07, $20, $65, $19         ; data?  , SPACE, e,                      
          db $BB, $05, $5B, $B9         ; data?  ,  , [,                          
          db $AE, $07, $BF, $56         ; data?  ,  ,  , V                        
          db $A6, $07, $B0, $56         ; data?  ,  ,  , V                        
          db $97, $D6, $02, $72         ; data?  ,  ,  , r                        
          db $BE, $56, $D7, $02         ; data?  , V,  ,                          
          db $80, $3A, $56, $2A         ; data?  , :, V, *                        
          db $EF, $18, $BB, $14         ; data?  ,  ,  ,                          
          db $94, $1A, $BB, $20         ; data?  ,  ,  , SPACE                    
          db $9A, $13, $BB, $A5         ; data?  ,  ,  ,                          
          db $10, $27, $02, $12         ; data?  , ',  ,                          
          db $BB, $A4, $87, $2A         ; data?  ,  ,  , *                        
          db $0C, $AA, $10, $0E         ; data?  ,  ,  ,                          
          db $B9, $0E, $19, $BB         ; data?  ,  ,  ,                          
          db $CD, $17, $97, $20         ; data?  ,  ,  , SPACE                    
          db $05, $0F, $B9, $04         ; data?  ,  ,  ,                          
          db $1F, $BA, $1E, $CB         ; data?  ,  ,  ,                          
          db $CD, $26, $1F, $B8         ; data?  , &,  ,                          
          db $B9, $A4, $B8, $20         ; data?  ,  ,  , SPACE                    
          db $1B, $00, $BF, $16         ; data?  ,  ,  ,                          
          db $C6, $02, $71, $A4         ; data?  ,  , q,                          
          db $03, $97, $D6, $02         ; data?  ,  ,  ,                          
          db $72, $B7, $56, $A4         ; data? r,  , V,                          
          db $07, $97, $DE, $17         ; data?  ,  ,  ,                          
          db $6B, $1F, $BA, $DD         ; data? k,  ,  ,                          
          db $17, $71, $20, $16         ; data?  , q, SPACE,                      
          db $1A, $CB, $27, $12         ; data?  ,  , ',                          
          db $B8, $B9, $B7, $B9         ; data?  ,  ,  ,                          
          db $04, $B8, $0B, $07         ; data?  ,  ,  ,                          
          db $B9, $08, $AE, $B2         ; data?  ,  ,  ,                          
          db $CD, $38, $CC, $CD         ; data?  , 8,  ,                          
          db $1E, $45, $1C, $D6         ; data?  , E,  ,                          
          db $81, $00, $BF, $E2         ; data?  ,  ,  ,                          
          db $C6, $02, $73, $06         ; data?  ,  , s,                          
          db $B6, $04, $A1, $FF         ; data?  ,  ,  ,                          
          db $27, $40, $B7, $B7         ; data? ', @,  ,                          
          db $B6, $B6, $A4, $07         ; data?  ,  ,  ,                          
          db $A1, $04, $26, $0B         ; data?  ,  , &,                          
          db $CD, $1E, $8C, $B8         ; data?  ,  ,  ,                          
          db $C0, $A4, $03, $27         ; data?  ,  ,  , '                        
          db $02, $14, $C0, $C6         ; data?  ,  ,  ,                          
          db $02, $72, $2B, $0A         ; data?  , r, +,                          
          db $0D, $B9, $0E, $19         ; data?  ,  ,  ,                          
          db $BB, $CD, $1E, $7F         ; data?  ,  ,  , DEL                      
          db $20, $05, $0C, $B9         ; data? SPACE,  ,  ,                      
          db $04, $1C, $B9, $1A         ; data?  ,  ,  ,                          
          db $CB, $0B, $B6, $17         ; data?  ,  ,  ,                          
          db $B6, $B7, $BE, $C2         ; data?  ,  ,  ,                          
          db $5C, $27, $0E, $0F         ; data? \, ',  ,                          
          db $C1, $0D, $B1, $C2         ; data?  ,  ,  ,                          
          db $26, $09, $1B, $B6         ; data? &,  ,  ,                          
          db $20, $05, $16, $BB         ; data? SPACE,  ,  ,                      
          db $C1, $B7, $C2, $B6         ; data?  ,  ,  ,                          
          db $C3, $A1, $40, $27         ; data?  ,  , @, '                        
          db $04, $1A, $BB, $1C         ; data?  ,  ,  ,                          
          db $CB, $20, $87, $C5         ; data?  , SPACE,  ,                      
          db $27, $44, $44, $00         ; data? ', D, D,                          
          db $26, $0F, $61, $02         ; data? &,  , a,                          
          db $1F, $61, $09, $B6         ; data?  , a,  ,                          
          db $0B, $0E, $B6, $4C         ; data?  ,  ,  , L                        
          db $B6, $C1, $A4, $07         ; data?  ,  ,  ,                          
          db $A1, $02, $27, $46         ; data?  ,  , ', F                        
          db $0A, $BC, $09, $0C         ; data?  ,  ,  ,                          
          db $BC, $06, $B6, $B8         ; data?  ,  ,  ,                          
          db $A4, $70, $26, $04         ; data?  , p, &,                          
          db $AD, $38, $1E, $BB         ; data?  , 8,  ,                          
          db $0E, $56, $00, $81         ; data?  , V,  ,                          
          db $0F, $56, $17, $18         ; data?  , V,  ,                          
          db $B8, $04, $B8, $0D         ; data?  ,  ,  ,                          
          db $11, $B8, $A6, $FF         ; data?  ,  ,  ,                          
          db $AE, $BC, $CD, $38         ; data?  ,  ,  , 8                        
          db $A0, $5C, $CD, $38         ; data?  , \,  , 8                        
          db $A0, $A6, $80, $B7         ; data?  ,  ,  ,                          
          db $B3, $81, $CC, $1D         ; data?  ,  ,  ,                          
          db $8A, $17, $BF, $0F         ; data?  ,  ,  ,                          
          db $56, $7B, $CD, $1C         ; data? V, {,  ,                          
          db $7C, $14, $7E, $B6         ; data? |,  , ~,                          
          db $B8, $B7, $BD, $14         ; data?  ,  ,  ,                          
          db $BB, $1D, $BC, $81         ; data?  ,  ,  ,                          
          db $19, $BB, $0C, $BF         ; data?  ,  ,  ,                          
          db $05, $0C, $56, $0C         ; data?  ,  , V,                          
          db $1D, $BC, $15, $BB         ; data?  ,  ,  ,                          
          db $1D, $B8, $1B, $B8         ; data?  ,  ,  ,                          
          db $19, $B8, $20, $57         ; data?  ,  , SPACE, W                    
          db $B6, $B8, $0C, $BC         ; data?  ,  ,  ,                          
          db $04, $A5, $70, $26         ; data?  ,  , p, &                        
          db $50, $A4, $0C, $B7         ; data? P,  ,  ,                          
          db $BD, $C6, $02, $72         ; data?  ,  ,  , r                        
          db $A0, $06, $27, $09         ; data?  ,  , ',                          
          db $2B, $05, $4A, $3C         ; data? +,  , J, <                        
          db $BD, $20, $F5, $AB         ; data?  , SPACE,  ,                      
          db $07, $CD, $26, $1E         ; data?  ,  , &,                          
          db $BB, $BD, $B7, $BD         ; data?  ,  ,  ,                          
          db $05, $B8, $09, $CD         ; data?  ,  ,  ,                          
          db $26, $1F, $B8, $B8         ; data? &,  ,  ,                          
          db $A4, $08, $20, $0B         ; data?  ,  , SPACE,                      
          db $0B, $69, $04, $A5         ; data?  , i,  ,                          
          db $01, $26, $12, $B8         ; data?  , &,  ,                          
          db $B8, $A4, $03, $27         ; data?  ,  ,  , '                        
          db $10, $0D, $BC, $06         ; data?  ,  ,  ,                          
          db $1D, $B8, $1B, $B8         ; data?  ,  ,  ,                          
          db $19, $B8, $0A, $BC         ; data?  ,  ,  ,                          
          db $9E, $0C, $BC, $AA         ; data?  ,  ,  ,                          
          db $81, $1A, $BB, $B6         ; data?  ,  ,  ,                          
          db $BD, $B7, $B8, $1C         ; data?  ,  ,  ,                          
          db $BC, $15, $BB, $1E         ; data?  ,  ,  ,                          
          db $CB, $81, $0D, $D2         ; data?  ,  ,  ,                          
          db $03, $CC, $17, $98         ; data?  ,  ,  ,                          
          db $0F, $56, $2A, $15         ; data?  , V, *,                          
          db $C0, $CD, $1E, $42         ; data?  ,  ,  , B                        
          db $AD, $84, $0A, $B6         ; data?  ,  ,  ,                          
          db $1A, $0D, $BF, $10         ; data?  ,  ,  ,                          
          db $02, $BA, $04, $12         ; data?  ,  ,  ,                          
          db $BA, $16, $BC, $A6         ; data?  ,  ,  ,                          
          db $E3, $08, $C1, $06         ; data?  ,  ,  ,                          
          db $AE, $01, $20, $04         ; data?  ,  , SPACE,                      
          db $A6, $60, $AE, $28         ; data?  , `,  , (                        
          db $CC, $1C, $84, $05         ; data?  ,  ,  ,                          
          db $C1, $F6, $1A, $C1         ; data?  ,  ,  ,                          
          db $81, $0B, $B6, $05         ; data?  ,  ,  ,                          
          db $CD, $1D, $8A, $20         ; data?  ,  ,  , SPACE                    
          db $1A, $B6, $B6, $A4         ; data?  ,  ,  ,                          
          db $07, $A1, $05, $27         ; data?  ,  ,  , '                        
          db $0B, $A1, $04, $26         ; data?  ,  ,  , &                        
          db $0E, $0D, $B5, $0B         ; data?  ,  ,  ,                          
          db $3F, $C2, $10, $B6         ; data?  ,  ,  ,                          
          db $34, $C2, $26, $03         ; data? 4,  , &,                          
          db $CD, $1D, $4B, $1E         ; data?  ,  , K,                          
          db $BA, $B6, $B6, $AA         ; data?  ,  ,  ,                          
          db $D0, $A5, $20, $27         ; data?  ,  , SPACE, '                    
          db $02, $A4, $A7, $B7         ; data?  ,  ,  ,                          
          db $B3, $81, $B6, $B3         ; data?  ,  ,  ,                          
          db $A5, $0F, $27, $78         ; data?  ,  , ', x                        
          db $A4, $07, $97, $4F         ; data?  ,  ,  , O                        
          db $99, $49, $5A, $2A         ; data?  , I, Z, *                        
          db $FC, $B7, $56, $AE         ; data?  ,  , V,                          
          db $B5, $07, $B3, $02         ; data?  ,  ,  ,                          
          db $AE, $BC, $0D, $B3         ; data?  ,  ,  ,                          
          db $09, $0A, $B3, $04         ; data?  ,  ,  ,                          
          db $43, $F4, $20, $03         ; data? C,  , SPACE,                      
          db $F8, $B1, $FA, $06         ; data?  ,  ,  ,                          
          db $B3, $09, $03, $56         ; data?  ,  ,  , V                        
          db $06, $A5, $02, $27         ; data?  ,  ,  , '                        
          db $02, $AA, $0C              ; data?  ,  ,  ,                          
X18CB: 
          db $07, $8E, $0F, $09         ; data?  ,  ,  ,                          
          db $56, $06, $A5, $10         ; data? V,  ,  ,                          
          db $27, $02, $AA, $08         ; data? ',  ,  ,                          
          db $A5, $08, $26, $02         ; data?  ,  , &,                          
          db $A4, $AF, $F7, $AE         ; data?  ,  ,  ,                          
          db $F3, $06, $B3, $4C         ; data?  ,  ,  , L                        
          db $A4, $62, $AE, $B0         ; data?  , b,  ,                          
          db $CD, $38, $A0, $1A         ; data?  , 8,  ,                          
          db $CB, $0A, $56, $06         ; data?  ,  , V,                          
          db $0D, $56, $57, $04         ; data?  , V, W,                          
          db $B8, $12, $B6, $B6         ; data?  ,  ,  ,                          
          db $A4, $17, $A1, $04         ; data?  ,  ,  ,                          
          db $26, $0A, $0B, $B6         ; data? &,  ,  ,                          
          db $03, $0F, $BA, $04         ; data?  ,  ,  ,                          
          db $AD, $86, $20, $4C         ; data?  ,  , SPACE, L                    
          db $0D, $56, $3F, $AE         ; data?  , V,  ,                          
          db $10, $A1, $05, $27         ; data?  ,  ,  , '                        
          db $3E, $0C, $59, $07         ; data? >,  , Y,                          
          db $AE, $F1, $0C, $B9         ; data?  ,  ,  ,                          
          db $36, $20, $2F, $18         ; data? 6, SPACE, /,                      
          db $C0, $17, $C0, $05         ; data?  ,  ,  ,                          
          db $B8, $11, $16, $C0         ; data?  ,  ,  ,                          
          db $AE, $B2, $CD, $38         ; data?  ,  ,  , 8                        
          db $CC, $B7, $B8, $1B         ; data?  ,  ,  ,                          
          db $BB, $CC, $17, $AD         ; data?  ,  ,  ,                          
          db $CC, $1A, $A5, $0C         ; data?  ,  ,  ,                          
          db $C1, $14, $CD, $1E         ; data?  ,  ,  ,                          
          db $69, $26, $0F, $A6         ; data? i, &,  ,                          
          db $01, $B7, $C3, $B6         ; data?  ,  ,  ,                          
          db $C1, $A1, $95, $27         ; data?  ,  ,  , '                        
          db $05, $A6, $86, $CD         ; data?  ,  ,  ,                          
          db $1C, $82, $B6, $B3         ; data?  ,  ,  ,                          
          db $A4, $10, $97, $BF         ; data?  ,  ,  ,                          
          db $B3, $16, $BC, $81         ; data?  ,  ,  ,                          
          db $A6, $C8, $0C, $5F         ; data?  ,  ,  , _                        
          db $27, $CD, $1E, $5A         ; data? ',  ,  , Z                        
          db $0E, $61, $30, $03         ; data?  , a, 0,                          
          db $BA, $02                   ; data?  ,  ,  ,                          
X1961: 
          db $A4, $BF, $AA, $08         ; data?  ,  ,  ,                          
          db $AA, $04, $A4, $4E         ; data?  ,  ,  , N                        
          db $0F, $B5, $05, $06         ; data?  ,  ,  ,                          
          db $B5, $02, $A4, $4A         ; data?  ,  ,  , J                        
          db $0D, $CE, $02, $AA         ; data?  ,  ,  ,                          
          db $30, $08, $CE, $03         ; data? 0,  ,  ,                          
          db $07, $CE, $02, $AA         ; data?  ,  ,  ,                          
          db $10, $4C, $A5, $04         ; data?  , L,  ,                          
          db $27, $0D, $06, $5D         ; data? ',  ,  , ]                        
          db $03, $07, $BF, $02         ; data?  ,  ,  ,                          
          db $A4, $F3, $0F, $BF         ; data?  ,  ,  ,                          
          db $02, $A4, $FB, $AE         ; data?  ,  ,  ,                          
          db $01, $07, $8E, $06         ; data?  ,  ,  ,                          
          db $AA, $02, $A4, $BB         ; data?  ,  ,  ,                          
          db $AE, $09, $01, $61         ; data?  ,  ,  , a                        
          db $0F, $03, $82, $07         ; data?  ,  ,  ,                          
          db $00, $82, $04, $AA         ; data?  ,  ,  ,                          
          db $80, $20, $05, $09         ; data?  , SPACE,  ,                      
          db $69, $02, $AA, $40         ; data? i,  ,  , @                        
          db $C7, $02, $7C, $9F         ; data?  ,  , |,                          
          db $0D, $5F, $02, $AA         ; data?  , _,  ,                          
          db $40, $13, $BC, $AA         ; data? @,  ,  ,                          
          db $80, $09, $BF, $07         ; data?  ,  ,  ,                          
          db $0E, $B5, $04, $12         ; data?  ,  ,  ,                          
          db $BC, $A4, $7F, $C7         ; data?  ,  , DEL,                        
          db $02, $7D, $A6, $20         ; data?  , },  , SPACE                    
          db $05, $B8, $05, $0C         ; data?  ,  ,  ,                          
          db $5F, $02, $A6, $02         ; data? _,  ,  ,                          
          db $AA, $10, $14, $B5         ; data?  ,  ,  ,                          
          db $97, $17, $BC, $A6         ; data?  ,  ,  ,                          
          db $0A, $CC, $1A, $75         ; data?  ,  ,  , u                        
          db $7E, $7B, $00, $5E         ; data? ~, {,  , ^                        
          db $DC, $C1, $D0, $F5         ; data?  ,  ,  ,                          
          db $17, $5D, $B6, $B8         ; data?  , ],  ,                          
          db $A4, $74, $A1, $60         ; data?  , t,  , `                        
          db $27, $3C, $AE, $02         ; data? ', <,  ,                          
          db $A1, $10, $26, $04         ; data?  ,  , &,                          
          db $16, $BF, $20, $2E         ; data?  ,  , SPACE, .                    
          db $AE, $83, $A1, $50         ; data?  ,  ,  , P                        
          db $27, $28, $5F, $05         ; data? ', (, _,                          
          db $B8, $05, $07, $B8         ; data?  ,  ,  ,                          
          db $07, $20, $03, $03         ; data?  , SPACE,  ,                      
          db $B8, $02, $AE, $04         ; data?  ,  ,  ,                          
          db $A4, $70, $A1, $20         ; data?  , p,  , SPACE                    
          db $27, $0E, $04, $B8         ; data? ',  ,  ,                          
          db $0A, $5C, $A1, $30         ; data?  , \,  , 0                        
          db $27, $06, $5C, $A1         ; data? ',  , \,                          
          db $40, $27, $01, $81         ; data? @, ',  ,                          
          db $58, $58, $99, $59         ; data? X, X,  , Y                        
          db $99, $59, $A6, $18         ; data?  , Y,  ,                          
          db $20, $4A, $B6, $88         ; data? SPACE, J,  ,                      
          db $44, $B7, $56, $B6         ; data? D,  , V,                          
          db $83, $48, $BB, $56         ; data?  , H,  , V                        
          db $AE, $70, $CD, $38         ; data?  , p,  , 8                        
          db $8B, $CC, $17, $BA         ; data?  ,  ,  ,                          
          db $07, $B3, $A5, $3F         ; data?  ,  ,  ,                          
          db $B6, $0D, $B3, $0F         ; data?  ,  ,  ,                          
          db $0B, $B3, $06, $AE         ; data?  ,  ,  ,                          
          db $09, $3F, $B3, $20         ; data?  ,  ,  , SPACE                    
          db $24, $AE, $EA, $BF         ; data? $,  ,  ,                          
          db $B3, $20, $19, $1B         ; data?  , SPACE,  ,                      
          db $BC, $1D, $BC, $16         ; data?  ,  ,  ,                          
          db $94, $CD, $1D, $F2         ; data?  ,  ,  ,                          
          db $AA, $80, $06, $B5         ; data?  ,  ,  ,                          
          db $04, $43, $B4, $56         ; data?  , C,  , V                        
          db $C1, $BA, $56, $BE         ; data?  ,  , V,                          
          db $57, $CD, $38, $A0         ; data? W,  , 8,                          
          db $CD, $1E, $29, $AE         ; data?  ,  , ),                          
          db $89, $CD, $1E, $06         ; data?  ,  ,  ,                          
          db $B7, $50, $BF, $51         ; data?  , P,  , Q                        
          db $0F, $D6, $10, $CD         ; data?  ,  ,  ,                          
          db $07, $85, $CD, $22         ; data?  ,  ,  , "                        
          db $BD, $07, $67, $F4         ; data?  ,  , g,                          
          db $17, $67, $CD, $1E         ; data?  , g,  ,                          
          db $E2, $20, $ED, $B6         ; data?  , SPACE,  ,                      
          db $50, $BE, $51, $C7         ; data? P,  , Q,                          
          db $02, $7A, $CF, $02         ; data?  , z,  ,                          
          db $7B, $1E, $D6, $3F         ; data? {,  ,  ,                          
          db $D9, $81, $07, $B3         ; data?  ,  ,  ,                          
          db $07, $0E, $BA, $F9         ; data?  ,  ,  ,                          
          db $AE, $0A, $20, $82         ; data?  ,  , SPACE,                      
; 
L1AA5: 
          brset 3,RAM1_0bf,L029A        ; Branch to 0x029A if Bit 3 is set at RAM1_0bf (Mn=1)
          bset 0,RAM1_0bc               ; Set Bit 0 at memory RAM1_0bc (Mn <- 1 ) 
          brset 6,STACK_0d3,L02AF       ; Branch to 0x02AF if Bit 6 is set at STACK_0d3 (Mn=1)
          bclr 0,RAM1_0bc               ; Clear bit 0 at RAM1_0bc                 
          lda RAM1_0bc                  ; Load Accumulator with value of Memory at RAM1_0bc, A <- (RAM1_0bc)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda #$20                      ; Load Accumulator with 0x20, A <- 0x20   
          bra L0275                     ; Branch Always (1 = 1)                   
; 
          db $CC, $1B, $81, $17         ; data?  ,  ,  ,                          
          db $BF, $1B, $BB, $19         ; data?  ,  ,  ,                          
          db $BB, $07, $B3, $16         ; data?  ,  ,  ,                          
          db $AE, $B1, $CD, $38         ; data?  ,  ,  , 8                        
          db $CC, $0B, $B6, $07         ; data?  ,  ,  ,                          
          db $A5, $70, $26, $05         ; data?  , p, &,                          
          db $CC, $1D, $A5, $AA         ; data?  ,  ,  ,                          
          db $70, $B7, $B8, $04         ; data? p,  ,  ,                          
          db $B8, $00, $1F, $BF         ; data?  ,  ,  ,                          
          db $B6, $B8, $A4, $70         ; data?  ,  ,  , p                        
          db $A1, $70, $26, $03         ; data?  , p, &,                          
          db $CD, $1D, $CA, $CD         ; data?  ,  ,  ,                          
          db $1D, $F2, $10, $56         ; data?  ,  ,  , V                        
          db $B4, $56, $16, $B5         ; data?  , V,  ,                          
          db $26, $04, $17, $B5         ; data? &,  ,  ,                          
          db $19, $B5, $16, $BC         ; data?  ,  ,  ,                          
          db $13, $BA, $12, $BF         ; data?  ,  ,  ,                          
          db $10, $BF, $A6, $40         ; data?  ,  ,  , @                        
          db $AE, $0C, $0D, $5F         ; data?  ,  ,  , _                        
          db $02, $AE, $01, $CD         ; data?  ,  ,  ,                          
          db $1E, $7D, $CC, $1C         ; data?  , },  ,                          
          db $84, $04, $B8, $05         ; data?  ,  ,  ,                          
          db $12, $B8, $11, $B8         ; data?  ,  ,  ,                          
          db $C1, $16, $B8, $20         ; data?  ,  ,  , SPACE                    
          db $DD, $0A, $B3, $79         ; data?  ,  ,  , y                        
          db $07, $BF, $04, $10         ; data?  ,  ,  ,                          
          db $B3, $12, $B3, $0C         ; data?  ,  ,  ,                          
          db $B3, $0C, $09, $B3         ; data?  ,  ,  ,                          
          db $46, $03, $BA, $40         ; data? F,  ,  , @                        
          db $13, $BA, $16, $BC         ; data?  ,  ,  ,                          
          db $20, $3A, $0D, $B3         ; data? SPACE, :,  ,                      
          db $08, $09, $B3, $05         ; data?  ,  ,  ,                          
          db $19, $B3, $1D, $BF         ; data?  ,  ,  ,                          
          db $C1, $1C, $BF, $1D         ; data?  ,  ,  ,                          
          db $B3, $B6, $B6, $A4         ; data?  ,  ,  ,                          
          db $07, $A1, $06, $26         ; data?  ,  ,  , &                        
          db $0B, $AE, $B1, $CD         ; data?  ,  ,  ,                          
          db $38, $CC, $B7, $B8         ; data? 8,  ,  ,                          
          db $1F, $BF, $20, $15         ; data?  ,  , SPACE,                      
          db $A1, $04, $26, $11         ; data?  ,  , &,                          
          db $08, $B3, $0E, $B6         ; data?  ,  ,  ,                          
          db $B6, $B8, $B3, $A5         ; data?  ,  ,  ,                          
          db $08, $27, $06, $CD         ; data?  , ',  ,                          
          db $1A, $FE, $CC, $1A         ; data?  ,  ,  ,                          
          db $6D, $09, $B3, $03         ; data? m,  ,  ,                          
          db $1D, $BF, $81, $0E         ; data?  ,  ,  ,                          
          db $BF, $8C, $06, $BF         ; data?  ,  ,  ,                          
          db $89, $1E, $BF, $CD         ; data?  ,  ,  ,                          
          db $1A, $E4, $A6, $48         ; data?  ,  ,  , H                        
          db $20, $82, $CC, $1A         ; data? SPACE,  ,  ,                      
          db $FE, $07, $B3, $05         ; data?  ,  ,  ,                          
          db $1E, $BF, $CC, $1A         ; data?  ,  ,  ,                          
          db $F6, $0D, $B9, $E2         ; data?  ,  ,  ,                          
          db $CD, $1E, $81, $A6         ; data?  ,  ,  ,                          
          db $48, $5F, $CC, $1A         ; data? H, _,  ,                          
          db $75, $1D, $BF, $08         ; data? u,  ,  ,                          
          db $B3, $0B, $0A, $B6         ; data?  ,  ,  ,                          
          db $E1, $AD, $2A, $A6         ; data?  ,  , *,                          
          db $FF, $B7, $C2, $20         ; data?  ,  ,  , SPACE                    
          db $D0, $B6, $BD, $B8         ; data?  ,  ,  ,                          
          db $B8, $A4, $07, $26         ; data?  ,  ,  , &                        
          db $04, $B6, $BD, $B7         ; data?  ,  ,  ,                          
          db $B8, $3F, $C3, $CD         ; data?  ,  ,  ,                          
          db $1E, $74, $B6, $C1         ; data?  , t,  ,                          
          db $A1, $95, $26, $07         ; data?  ,  , &,                          
          db $3F, $C1, $16, $BC         ; data?  ,  ,  ,                          
          db $CC, $1E, $29, $CD         ; data?  ,  , ),                          
          db $17, $AD, $CC, $1A         ; data?  ,  ,  ,                          
          db $DA, $B6, $B8, $B7         ; data?  ,  ,  ,                          
          db $BD, $BE, $C1, $CC         ; data?  ,  ,  ,                          
          db $1E, $38, $A6, $64         ; data?  , 8,  , d                        
          db $C7, $02, $7C, $A6         ; data?  ,  , |,                          
          db $19, $1D, $B8, $1B         ; data?  ,  ,  ,                          
          db $B8, $19, $B8, $1A         ; data?  ,  ,  ,                          
          db $BC, $16, $B5, $17         ; data?  ,  ,  ,                          
          db $BB, $01, $B6, $06         ; data?  ,  ,  ,                          
          db $02, $B6, $03, $04         ; data?  ,  ,  ,                          
          db $B6, $02, $15, $BA         ; data?  ,  ,  ,                          
          db $05, $C0, $03, $15         ; data?  ,  ,  ,                          
          db $C0, $C1, $3F, $BB         ; data?  ,  ,  ,                          
          db $3F, $C5, $CD, $1E         ; data?  ,  ,  ,                          
          db $7D, $1E, $BA, $1E         ; data? },  ,  ,                          
          db $CB, $1D, $BC, $06         ; data?  ,  ,  ,                          
          db $C0, $02, $19, $C0         ; data?  ,  ,  ,                          
          db $17, $C0, $1E, $B5         ; data?  ,  ,  ,                          
          db $20, $84, $A8, $11         ; data? SPACE,  ,  ,                      
          db $43, $43, $75, $44         ; data? C, C, u, D                        
          db $00, $1B, $CD, $1D         ; data?  ,  ,  ,                          
          db $84, $AE, $C7, $06         ; data?  ,  ,  ,                          
          db $8E, $03, $0B, $69         ; data?  ,  ,  , i                        
          db $02, $AE, $E7, $1E         ; data?  ,  ,  ,                          
          db $BF, $20, $AB, $BE         ; data?  , SPACE,  ,                      
          db $B7, $4F, $C7, $02         ; data?  , O,  ,                          
          db $7C, $A6, $11, $20         ; data? |,  ,  , SPACE                    
          db $B4, $06, $C1, $19         ; data?  ,  ,  ,                          
          db $AE, $50, $10, $5B         ; data?  , P,  , [                        
          db $C1, $11, $5B, $A6         ; data?  ,  , [,                          
          db $C1, $AD, $45, $AE         ; data?  ,  , E,                          
          db $86, $07, $B6, $02         ; data?  ,  ,  ,                          
          db $AE, $06, $A6, $18         ; data?  ,  ,  ,                          
          db $01, $5B, $A5, $20         ; data?  , [,  , SPACE                    
          db $8C, $A6, $40, $AE         ; data?  ,  , @,                          
          db $02, $AD, $31, $CD         ; data?  ,  , 1,                          
          db $1D, $CA, $CC, $1C         ; data?  ,  ,  ,                          
          db $F7, $81, $0A, $C1         ; data?  ,  ,  ,                          
          db $19, $1E, $BF, $CD         ; data?  ,  ,  ,                          
          db $1D, $84, $AE, $A0         ; data?  ,  ,  ,                          
          db $04, $C2, $07, $A6         ; data?  ,  ,  ,                          
          db $6C, $02, $C2, $04         ; data? l,  ,  ,                          
          db $AE, $20, $A6, $64         ; data?  , SPACE,  , d                    
          db $CC, $1B, $D4, $CC         ; data?  ,  ,  ,                          
          db $1D, $11, $0A, $B6         ; data?  ,  ,  ,                          
          db $FA, $CD, $1E, $74         ; data?  ,  ,  , t                        
          db $A6, $92, $AE, $10         ; data?  ,  ,  ,                          
          db $20, $02, $AE, $C8         ; data? SPACE,  ,  ,                      
          db $B7, $C1, $BF, $C3         ; data?  ,  ,  ,                          
          db $CC, $14, $7B, $06         ; data?  ,  , {,                          
          db $C1, $BF, $0A, $C1         ; data?  ,  ,  ,                          
          db $E5, $A6, $C4, $AE         ; data?  ,  ,  ,                          
          db $64, $0A, $B6, $04         ; data? d,  ,  ,                          
          db $A6, $D3, $AE, $FF         ; data?  ,  ,  ,                          
          db $AD, $E6, $1B, $B5         ; data?  ,  ,  ,                          
          db $06, $CE, $0A, $AE         ; data?  ,  ,  ,                          
          db $AC, $CD, $38, $CC         ; data?  ,  , 8,                          
          db $46, $24, $02, $1A         ; data? F, $,  ,                          
          db $B5, $CD, $1E, $8C         ; data?  ,  ,  ,                          
          db $B8, $C0, $A4, $03         ; data?  ,  ,  ,                          
          db $B8, $C0, $B7, $C0         ; data?  ,  ,  ,                          
          db $B6, $5B, $5F, $CC         ; data?  , [, _,                          
          db $1B, $D4, $A6, $60         ; data?  ,  ,  , `                        
          db $0B, $C1, $30, $AE         ; data?  ,  , 0,                          
          db $02, $0E, $B9, $05         ; data?  ,  ,  ,                          
          db $0E, $BA, $B9, $1A         ; data?  ,  ,  ,                          
          db $BB, $03, $BA, $07         ; data?  ,  ,  ,                          
          db $13, $BA, $0D, $B5         ; data?  ,  ,  ,                          
          db $02, $16, $BC, $07         ; data?  ,  ,  ,                          
          db $5D, $06, $17, $5D         ; data? ],  ,  , ]                        
          db $A6, $82, $B7, $B3         ; data?  ,  ,  ,                          
          db $A6, $C0, $06, $BB         ; data?  ,  ,  ,                          
          db $9D, $CD, $1E, $29         ; data?  ,  ,  , )                        
          db $08, $BF, $04, $AE         ; data?  ,  ,  ,                          
          db $2D, $20, $24, $A6         ; data? -, SPACE, $,                      
          db $C7, $20, $8F, $AE         ; data?  , SPACE,  ,                      
          db $1E, $AD, $8D, $CD         ; data?  ,  ,  ,                          
          db $1E, $06, $BE, $B7         ; data?  ,  ,  ,                          
          db $CF, $02, $7D, $27         ; data?  ,  , }, '                        
          db $08, $0F, $61, $05         ; data?  ,  , a,                          
          db $AE, $29, $A6, $1A         ; data?  , ),  ,                          
          db $C1, $AE, $09, $CC         ; data?  ,  ,  ,                          
          db $1B, $E5, $CD, $17         ; data?  ,  ,  ,                          
          db $BF, $AE, $23, $A6         ; data?  ,  ,  #,                         
          db $95, $CC, $1C, $84         ; data?  ,  ,  ,                          
          db $6A, $6F, $36, $9C         ; data? j, o, 6,                          
          db $5E, $47, $00, $16         ; data? ^, G,  ,                          
          db $A6, $86, $04, $CE         ; data?  ,  ,  ,                          
          db $50, $0E, $B9, $4D         ; data? P,  ,  , M                        
          db $CD, $1E, $4F, $27         ; data?  ,  , O, '                        
          db $08, $A6, $85, $B7         ; data?  ,  ,  ,                          
          db $B3, $A6, $04, $B7         ; data?  ,  ,  ,                          
          db $C2, $81, $A6, $87         ; data?  ,  ,  ,                          
          db $3F, $BE, $04, $CE         ; data?  ,  ,  ,                          
          db $38, $0E, $B9, $35         ; data? 8,  ,  , 5                        
          db $0A, $80, $DD, $B6         ; data?  ,  ,  ,                          
          db $7F, $A4, $2B, $A1         ; data? DEL,  , +,                        
          db $02, $26, $D5, $04         ; data?  , &,  ,                          
          db $B8, $E7, $08, $C0         ; data?  ,  ,  ,                          
          db $CF, $14, $BA, $19         ; data?  ,  ,  ,                          
          db $BA, $81, $3F, $C1         ; data?  ,  ,  ,                          
          db $19, $B6, $15, $BB         ; data?  ,  ,  ,                          
          db $A6, $87, $01, $BA         ; data?  ,  ,  ,                          
          db $02, $A6, $D7, $AE         ; data?  ,  ,  ,                          
          db $10, $20, $AE, $05         ; data?  , SPACE,  ,                      
          db $BE, $03, $08, $BA         ; data?  ,  ,  ,                          
          db $0B, $0A, $B6, $0B         ; data?  ,  ,  ,                          
          db $08, $BF, $C2, $A6         ; data?  ,  ,  ,                          
          db $86, $CC, $1C, $82         ; data?  ,  ,  ,                          
          db $1B, $B6, $81, $CC         ; data?  ,  ,  ,                          
          db $1B, $7A, $0B, $C1         ; data?  , z,  ,                          
          db $03, $CC, $18, $5C         ; data?  ,  ,  , \                        
          db $A6, $D3, $AE, $FF         ; data?  ,  ,  ,                          
          db $20, $DB, $A6, $88         ; data? SPACE,  ,  ,                      
          db $B7, $B3, $81, $0D         ; data?  ,  ,  ,                          
          db $BF, $09, $AE, $06         ; data?  ,  ,  ,                          
          db $05, $B8, $01, $58         ; data?  ,  ,  , X                        
          db $CC, $1C, $39, $0A         ; data?  ,  , 9,                          
          db $C1, $07, $A6, $A1         ; data?  ,  ,  ,                          
          db $AE, $30, $CC, $1C         ; data?  , 0,  ,                          
          db $84, $15, $BB, $B6         ; data?  ,  ,  ,                          
          db $B8, $A4, $70, $26         ; data?  ,  , p, &                        
          db $09, $06, $BF, $06         ; data?  ,  ,  ,                          
          db $0E, $B6, $03, $CD         ; data?  ,  ,  ,                          
          db $1A, $54, $CD, $1E         ; data?  , T,  ,                          
          db $29, $CC, $1C, $7C         ; data? ),  ,  , |                        
          db $0C, $BF, $06, $0B         ; data?  ,  ,  ,                          
          db $C1, $03, $CC, $18         ; data?  ,  ,  ,                          
          db $5C, $A6, $C3, $CC         ; data? \,  ,  ,                          
          db $1C, $9A, $AD, $09         ; data?  ,  ,  ,                          
          db $B8, $B8, $A4, $70         ; data?  ,  ,  , p                        
          db $B8, $B8, $B7, $B8         ; data?  ,  ,  ,                          
          db $81, $AD, $0D, $AB         ; data?  ,  ,  ,                          
          db $B3, $CD, $38, $CB         ; data?  ,  , 8,                          
          db $A4, $70, $A1, $70         ; data?  , p,  , p                        
          db $26, $01, $4F, $81         ; data? &,  , O,                          
          db $B6, $B8, $A4, $03         ; data?  ,  ,  ,                          
          db $05, $B8, $06, $A6         ; data?  ,  ,  ,                          
          db $04, $07, $B8, $01         ; data?  ,  ,  ,                          
          db $4C, $81, $AD, $F0         ; data? L,  ,  ,                          
          db $AB, $BA, $B7, $57         ; data?  ,  ,  , W                        
          db $CD, $38, $CB, $B7         ; data?  , 8,  ,                          
          db $56, $B6, $B8, $CD         ; data? V,  ,  ,                          
          db $26, $17, $CD, $26         ; data? &,  ,  , &                        
          db $64, $81, $B6, $B8         ; data? d,  ,  ,                          
          db $48, $CD, $26, $16         ; data? H,  , &,                          
          db $26, $02, $A6, $07         ; data? &,  ,  ,                          
          db $4A, $05, $B8, $05         ; data? J,  ,  ,                          
          db $07, $B8, $0C, $20         ; data?  ,  ,  , SPACE                    
          db $08, $03, $B8, $02         ; data?  ,  ,  ,                          
          db $AB, $0E, $01, $B8         ; data?  ,  ,  ,                          
          db $02, $AB, $07, $C7         ; data?  ,  ,  ,                          
          db $02, $7C, $A6, $19         ; data?  , |,  ,                          
          db $81, $3F, $BD, $15         ; data?  ,  ,  ,                          
          db $BB, $AE, $B1, $CD         ; data?  ,  ,  ,                          
          db $38, $CC, $B8, $B8         ; data? 8,  ,  ,                          
          db $A4, $0F, $27, $0A         ; data?  ,  , ',                          
          db $AE, $B1, $CD, $38         ; data?  ,  ,  , 8                        
          db $CC, $04, $B8, $00         ; data?  ,  ,  ,                          
          db $AD, $06, $CD, $1D         ; data?  ,  ,  ,                          
          db $D5, $0E, $BB, $E0         ; data?  ,  ,  ,                          
          db $B6, $B8, $A4, $7F         ; data?  ,  ,  , DEL                      
          db $CC, $38, $A0              ; data?  , 8,  ,                          
; 
L1E4F: 
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          brset 2,RAM1_0b8,L0666        ; Branch to 0x0666 if Bit 2 is set at RAM1_0b8 (Mn=1)
          brset 2,RAM1_0be,L0668        ; Branch to 0x0668 if Bit 2 is set at RAM1_0be (Mn=1)
          brset 5,RAM1_0b9,L0668        ; Branch to 0x0668 if Bit 5 is set at RAM1_0b9 (Mn=1)
          lda RAM1_0b5                  ; Load Accumulator with value of Memory at RAM1_0b5, A <- (RAM1_0b5)
          and #$4E                      ; Logical AND between A and constant 0x4E, A ← (A) && (0x4E)
          brset 3,RAM1_08e,L0664        ; Branch to 0x0664 if Bit 3 is set at RAM1_08e (Mn=1)
          brclr 6,RAM1_05f,L0666        ; Branch to 0x0666 if Bit 6 Clear (Mn = 0)
          and #$BF                      ; Logical AND between A and constant 0xBF, A ← (A) && (0xBF)
          bit #$40                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x40)
          rts                           ; Return from Subroutine                  
; 
          db $AD, $E4, $26, $02         ; data?  ,  , &,                          
          db $43, $81, $B6, $B9         ; data? C,  ,  ,                          
          db $A4, $38, $81, $B6         ; data?  , 8,  ,                          
          db $B6, $27, $04, $3F         ; data?  , ',  ,                          
          db $B6, $1C, $CB, $81         ; data?  ,  ,  ,                          
          db $3F, $B9, $1D, $B9         ; data?  ,  ,  ,                          
          db $1A, $CB, $1B, $B9         ; data?  ,  ,  ,                          
          db $19, $B9, $3F, $BE         ; data?  ,  ,  ,                          
          db $19, $BA, $81, $3F         ; data?  ,  ,  ,                          
          db $5B, $06, $B6, $02         ; data? [,  ,  ,                          
          db $1A, $5B, $0B, $B5         ; data?  , [,  ,                          
          db $02, $14, $5B, $05         ; data?  ,  , [,                          
          db $B8, $04, $1E, $5B         ; data?  ,  ,  , [                        
          db $20, $11, $1C, $5B         ; data? SPACE,  ,  , [                    
          db $B6, $B7, $A1, $41         ; data?  ,  ,  , A                        
          db $22, $07, $A1, $12         ; data? ",  ,  ,                          
          db $25, $05, $10, $5B         ; data? %,  ,  , [                        
          db $C1, $12, $5B, $B6         ; data?  ,  , [,                          
          db $5B, $81, $5F, $C6         ; data? [,  , _,                          
          db $02, $74, $AD, $17         ; data?  , t,  ,                          
          db $C6, $02, $73, $AD         ; data?  ,  , s,                          
          db $12, $C6, $02, $72         ; data?  ,  ,  , r                        
          db $AD, $0D, $A6, $2E         ; data?  ,  ,  , .                        
          db $B7, $DE, $A6, $20         ; data?  ,  ,  , SPACE                    
          db $B7, $E0, $A6, $52         ; data?  ,  ,  , R                        
          db $B7, $E1, $81, $B7         ; data?  ,  ,  ,                          
          db $5B, $AD, $05, $B6         ; data? [,  ,  ,                          
          db $5B, $CD, $26, $1E         ; data? [,  , &,                          
          db $CD, $26, $17, $AB         ; data?  , &,  ,                          
          db $30, $E7, $DA, $5C         ; data? 0,  ,  , \                        
          db $81, $4F, $05, $5F         ; data?  , O,  , _                        
          db $08, $C6, $02, $A5         ; data?  ,  ,  ,                          
          db $BE, $0B, $CD, $24         ; data?  ,  ,  , $                        
          db $6E, $B7, $0B, $CC         ; data? n,  ,  ,                          
          db $37, $B0                   ; data? 7,  ,  ,                          
; 
L1EF3: 
          rts                           ; Return from Subroutine                  
; 
L1EF4: 
          ldx #$CD                      ; Load Index Register with Memory Byte, X <- (0xCD)
          jsr L265E                     ; Jump to Subroutine at 0x265E            
          bne L0709                     ; Branch to 0x0709 if Not Equal (Z = 0);  
          clra                          ; Clear byte at clra <- 0x00              
          sta RAM2_0254                 ; Store Accumulator in Memory at RAM2_0254
          sta RAM2_0255                 ; Store Accumulator in Memory at RAM2_0255
          sta RAM2_0256                 ; Store Accumulator in Memory at RAM2_0256
          bset 4,RAM1_09e               ; Set Bit 4 at memory RAM1_09e (Mn <- 1 ) 
          bra L0719                     ; Branch Always (1 = 1)                   
; 
          db $AE, $CC, $CD, $26         ; data?  ,  ,  , &                        
          db $5E, $2A, $02, $13         ; data? ^, *,  ,                          
          db $CB, $26, $07, $7A         ; data?  , &,  , z                        
          db $1B, $C5, $13, $CB         ; data?  ,  ,  ,                          
          db $1E, $5D, $81              ; data?  , ],  ,                          
; 
L1F1C: 
          brset 6,STACK_0c6,L0731       ; Branch to 0x0731 if Bit 6 is set at STACK_0c6 (Mn=1)
          brset 5,STACK_0c6,L0733       ; Branch to 0x0733 if Bit 5 is set at STACK_0c6 (Mn=1)
          brclr 7,STACK_0c6,L071B       ; Branch to 0x071B if Bit 7 Clear (Mn = 0)
          brset 2,STACK_0cb,L0731       ; Branch to 0x0731 if Bit 2 is set at STACK_0cb (Mn=1)
          lda STACK_0cc                 ; Load Accumulator with value of Memory at STACK_0cc, A <- (STACK_0cc)
          cmp #$FF                      ; Compare Accumulator with Memory Byte, (A) - (0xFF)
          beq L0731                     ; Branch to 0x0731 if Equal Z=1           
          bclr 7,STACK_0c6              ; Clear bit 7 at STACK_0c6                
          rts                           ; Return from Subroutine                  
; 
          db $1E, $50, $B6, $9E         ; data?  , P,  ,                          
          db $A4, $F0, $26, $73         ; data?  ,  , &, s                        
          db $B6, $C6, $A4, $1F         ; data?  ,  ,  ,                          
          db $48, $B7, $56, $48         ; data? H,  , V, H                        
          db $BB, $56, $A1, $BA         ; data?  , V,  ,                          
          db $26, $02, $A6, $FF         ; data? &,  ,  ,                          
          db $0B, $C6, $07, $18         ; data?  ,  ,  ,                          
          db $9E, $1A, $9E, $1B         ; data?  ,  ,  ,                          
          db $C6, $81, $4D, $2B         ; data?  ,  , M, +                        
          db $02, $26, $05, $02         ; data?  , &,  ,                          
          db $CB, $51, $27, $02         ; data?  , Q, ',                          
          db $B7, $CC, $3F, $C6         ; data?  ,  ,  ,                          
          db $B6, $C7, $2A, $48         ; data?  ,  , *, H                        
          db $0D, $C7, $5C, $A4         ; data?  ,  , \,                          
          db $0E, $97, $D6, $1F         ; data?  ,  ,  ,                          
          db $EB, $B7, $59, $D6         ; data?  ,  , Y,                          
          db $1F, $EC, $B7, $56         ; data?  ,  ,  , V                        
          db $54, $D6, $1F, $FB         ; data? T,  ,  ,                          
          db $C7, $02, $56, $A4         ; data?  ,  , V,                          
          db $0F, $27, $13, $4A         ; data?  , ',  , J                        
          db $B7, $58, $CE, $1F         ; data?  , X,  ,                          
          db $EA, $BF, $57, $C6         ; data?  ,  , W,                          
          db $1F, $E9, $4D, $27         ; data?  ,  , M, '                        
          db $02, $10, $59, $CD         ; data?  ,  , Y,                          
          db $26, $79, $0B, $C7         ; data? &, y,  ,                          
          db $03, $1C, $9E, $C1         ; data?  ,  ,  ,                          
          db $1E, $9E, $0F, $50         ; data?  ,  ,  , P                        
          db $0E, $15, $CB, $B6         ; data?  ,  ,  ,                          
          db $CE, $A4, $07, $A1         ; data?  ,  ,  ,                          
          db $06, $26, $04, $B8         ; data?  , &,  ,                          
          db $CE, $B7, $CE, $81         ; data?  ,  ,  ,                          
          db $AE, $61, $CF, $02         ; data?  , a,  ,                          
          db $56, $C7, $02, $57         ; data? V,  ,  , W                        
          db $A1, $70, $25, $E0         ; data?  , p, %,                          
          db $A4, $07, $97, $D6         ; data?  ,  ,  ,                          
          db $20, $03, $C7, $02         ; data? SPACE,  ,  ,                      
          db $57, $20, $D2, $BE         ; data? W, SPACE,  ,                      
          db $C8, $A4, $0F, $A5         ; data?  ,  ,  ,                          
          db $08, $26, $07, $1F         ; data?  , &,  ,                          
          db $50, $5D, $2A, $02         ; data? P, ], *,                          
          db $50, $4C, $CD, $26         ; data? P, L,  , &                        
          db $1E, $C7, $02, $57         ; data?  ,  ,  , W                        
          db $9F, $A4, $0F, $CB         ; data?  ,  ,  ,                          
          db $02, $57, $C7, $02         ; data?  , W,  ,                          
          db $57, $A6, $71, $C7         ; data? W,  , q,                          
          db $02, $56, $20, $AA         ; data?  , V, SPACE,                      
          db $02, $57, $00, $C8         ; data?  , W,  ,                          
          db $02, $80, $02, $57         ; data?  ,  ,  , W                        
          db $02, $9E, $02, $60         ; data?  ,  ,  , `                        
          db $00, $00, $00, $6C         ; data?  ,  ,  , l                        
          db $02, $88, $32, $48         ; data?  ,  , 2, H                        
          db $58, $92, $A2, $B0         ; data? X,  ,  ,                          
          db $E1, $48, $15, $0E         ; data?  , H,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00                   ; data?  ,  ,  ,                          
; 
L200B: 
          brset 6,RAM1_069,L0011        ; Branch to 0x0011 if Bit 6 is set at RAM1_069 (Mn=1)
          brset 0,RAM1_080,L0030        ; Branch to 0x0030 if Bit 0 is set at RAM1_080 (Mn=1)
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          jsr L25B7                     ; Jump to Subroutine at 0x25B7            
          cmp #$19                      ; Compare Accumulator with Memory Byte, (A) - (0x19)
          bcs L001C                     ; Branch to 0x001C if C = 1               
          bclr 3,RAM1_05d               ; Clear bit 3 at RAM1_05d                 
          cmp #$D5                      ; Compare Accumulator with Memory Byte, (A) - (0xD5)
          bcs L0025                     ; Branch to 0x0025 if C = 1               
          bset 0,RAM1_080               ; Set Bit 0 at memory RAM1_080 (Mn <- 1 ) 
          bset 6,RAM1_069               ; Set Bit 6 at memory RAM1_069 (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
          db $A1, $D2, $22, $07         ; data?  ,  , ",                          
          db $0D, $69, $04, $1D         ; data?  , i,  ,                          
          db $69, $11, $80, $81         ; data? i,  ,  ,                          
          db $CD, $21, $36, $0F         ; data?  , !, 6,                          
          db $0C, $23, $CD, $21         ; data?  ,  #,  , !                       
          db $0B, $AE, $14, $CD         ; data?  ,  ,  ,                          
          db $20, $D2, $15, $06         ; data? SPACE,  ,  ,                      
          db $17, $06, $CD, $26         ; data?  ,  ,  , &                        
          db $43, $1A, $69, $B6         ; data? C,  , i,                          
          db $02, $A4, $0C, $26         ; data?  ,  ,  , &                        
          db $02, $1B, $69, $14         ; data?  ,  , i,                          
          db $06, $16, $06, $1F         ; data?  ,  ,  ,                          
          db $0C, $A6, $FF, $B7         ; data?  ,  ,  ,                          
          db $8C                        ; data?  ,  ,  ,                          
; 
L205A: 
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          add #$14                      ; A + 0x14 (without CARRY), A ← (A) + 0x14
          sta OCH2                      ; Store Accumulator in Memory at OCH2     
          lda TSR                       ; Load Accumulator with value of Memory at TSR, A <- (TSR)
          clr OCL2                      ; Clear byte at OCL2 <- 0x00              
          rts                           ; Return from Subroutine                  
; 
          db $AD, $37, $AD, $4B         ; data?  , 7,  , K                        
; 
L2069: 
          lda #$30                      ; Load Accumulator with 0x30, A <- 0x30   
          brclr 6,RAM1_05f,L0072        ; Branch to 0x0072 if Bit 6 Clear (Mn = 0)
          lda #$31                      ; Load Accumulator with 0x31, A <- 0x31   
          bset 0,PortB                  ; Set ENA_12V_ANTENE HIGH                 
          sta DDRB                      ; Store Accumulator in Memory at DDRB     
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          sta DDRC                      ; Store Accumulator in Memory at DDRC     
          rts                           ; Return from Subroutine                  
; 
L2079: 
          brset 2,PortB,L0090           ; Branch to 0x0090 if ENA_12V_CDC is HIGH 
          bset 2,PortB                  ; Set ENA_12V_CDC HIGH                    
          ldx #$08                      ; Load Index Register with Memory Byte, X <- (0x08)
          bra L008E                     ; Branch Always (1 = 1)                   
; 
L2082: 
          brset 0,PortC,L0090           ; Branch to 0x0090 if ENA_8V is HIGH      
          bset 0,PortC                  ; Set ENA_8V HIGH                         
          brset 6,RAM1_05f,L0090        ; Branch to 0x0090 if Bit 6 is set at RAM1_05f (Mn=1)
          bclr 3,PortB                  ; Set MUTE_WOOFER LOW                     
          ldx #$06                      ; Load Index Register with Memory Byte, X <- (0x06)
          bsr L00D2                     ; Branch to Subroutine at 0x00D2          
          lda #$2C                      ; Load Accumulator with 0x2C, A <- 0x2C   
          sta SCCR2                     ; Store Accumulator in Memory at SCCR2    
          lda X215B                     ; Load Accumulator with data from  memory at 0x215B, A <- (0x215B)
          sta BAUD                      ; Store Accumulator in Memory at BAUD     
          lda SCSR                      ; Load Accumulator with value of Memory at SCSR, A <- (SCSR)
          lda SCDR                      ; Load Accumulator with value of Memory at SCDR, A <- (SCDR)
          rts                           ; Return from Subroutine                  
; 
L209E: 
          bclr 4,RAM1_061               ; Clear bit 4 at RAM1_061                 
          bclr 0,RAM1_081               ; Clear bit 0 at RAM1_081                 
          brset 2,TCR,L00A8             ; Branch to 0x00A8 if Bit OLV2 is set at TCR (Mn=1)
          brclr 2,PortB,L00B2           ; Branch to 0x00B2 if ENA_12V_CDC is LOW  
          ldx #$32                      ; Load Index Register with Memory Byte, X <- (0x32)
          bsr L00D2                     ; Branch to Subroutine at 0x00D2          
          bclr 2,PortB                  ; Set ENA_12V_CDC LOW                     
          ldx #$05                      ; Load Index Register with Memory Byte, X <- (0x05)
          bsr L00D2                     ; Branch to Subroutine at 0x00D2          
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
          db $A6, $04, $CD, $26         ; data?  ,  ,  , &                        
          db $33, $3F, $0F, $A6         ; data? 3,  ,  ,                          
          db $07, $B7, $04, $3F         ; data?  ,  ,  ,                          
          db $00, $1D, $01, $1B         ; data?  ,  ,  ,                          
          db $61, $01, $02, $EA         ; data? a,  ,  ,                          
          db $11, $02, $09, $0C         ; data?  ,  ,  ,                          
          db $3D, $AE, $32, $AD         ; data? =,  , 2,                          
          db $01, $81, $9B, $1F         ; data?  ,  ,  ,                          
          db $8F, $03, $02, $03         ; data?  ,  ,  ,                          
          db $13, $02, $C1, $12         ; data?  ,  ,  ,                          
          db $02, $9F, $A4, $03         ; data?  ,  ,  ,                          
          db $26, $12, $BF, $57         ; data? &,  ,  , W                        
          db $4F, $05, $5F, $08         ; data? O,  , _,                          
          db $C6, $02, $A5, $BE         ; data?  ,  ,  ,                          
          db $0B, $CD, $24, $6E         ; data?  ,  , $, n                        
          db $B7, $0B, $BE, $57         ; data?  ,  ,  , W                        
          db $CD, $26, $31, $5A         ; data?  , &, 1, Z                        
          db $2A, $DB, $14, $D6         ; data? *,  ,  ,                          
          db $18, $5E, $1E, $96         ; data?  , ^,  ,                          
          db $01, $02, $06, $0F         ; data?  ,  ,  ,                          
          db $8F, $03, $CC, $04         ; data?  ,  ,  ,                          
          db $ED, $9A, $81, $AE         ; data?  ,  ,  ,                          
          db $90, $A6, $00, $6F         ; data?  ,  ,  , o                        
          db $4F, $D7, $02, $4F         ; data? O,  ,  , O                        
          db $5A, $26, $F8, $81         ; data? Z, &,  ,                          
; 
L2118: 
          brclr 5,DDRB,L0136            ; Branch to 0x0136 if RESET_SLAVE is set to INPUT
          lda X2152                     ; Load Accumulator with data from  memory at 0x2152, A <- (0x2152)
          sta DDRA                      ; Store Accumulator in Memory at DDRA     
          lda X2153                     ; Load Accumulator with data from  memory at 0x2153, A <- (0x2153)
          sta DDRB                      ; Store Accumulator in Memory at DDRB     
          lda X2154                     ; Load Accumulator with data from  memory at 0x2154, A <- (0x2154)
          sta DDRC                      ; Store Accumulator in Memory at DDRC     
          bset 7,TCR                    ; Set Bit ICIE at memory TCR (Mn <- 1 )   
          bset 6,TCR                    ; Set Bit OCIE at memory TCR (Mn <- 1 )   
          bset 5,TCR                    ; Set Bit TOIE at memory TCR (Mn <- 1 )   
          lda X215A                     ; Load Accumulator with data from  memory at 0x215A, A <- (0x215A)
          sta Miscell                   ; Store Accumulator in Memory at Miscell  
          rts                           ; Return from Subroutine                  
; 
          db $5F, $D6, $21, $4E         ; data? _,  , !, N                        
          db $F7, $5C, $A3, $13         ; data?  , \,  ,                          
          db $2B, $F7, $81              ; data? +,  ,  ,                          
; 
L2141: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X2161,x                   ; Load Accumulator with data from  memory at 0x2161, A <- (0x2161)
          sta ,x                        ; Store Accumulator in Memory at          
          incx                          ; Increment Byte incx, Byte = Byte + 1    
cpx #$13 
          bmi L0142                     ; Branch to 0x0142 if Minus N = 1         
          jmp L205A                     ; Unconditional Jump to 0x205A            
; 
          db $FF, $B0, $FC, $00         ; data?  ,  ,  ,                          
X2152: 
          db $04                        ; data?  ,  ,  ,                          
X2153: 
          db $FF                        ; data?  ,  ,  ,                          
X2154: 
          db $0F, $40, $00, $20         ; data?  , @,  , SPACE                    
          db $00, $00                   ; data?  ,  ,  ,                          
X215A: 
          db $BC                        ; data?  ,  ,  ,                          
X215B: 
          db $C0, $00, $2C, $00         ; data?  ,  , ,,                          
          db $00, $FA                   ; data?  ,  ,  ,                          
X2161: 
          db $F8, $B8, $FE, $00         ; data?  ,  ,  ,                          
          db $07, $31, $02, $40         ; data?  , 1,  , @                        
          db $00, $20, $00, $00         ; data?  , SPACE,  ,                      
          db $BC, $C0, $00, $2C         ; data?  ,  ,  , ,                        
          db $00, $00, $FA              ; data?  ,  ,  ,                          
; 
L2174: 
          brclr 6,RAM1_05d,L01AE        ; Branch to 0x01AE if Bit 6 Clear (Mn = 0)
          brclr 2,STACK_0ce,L01AE       ; Branch to 0x01AE if Bit 2 Clear (Mn = 0)
          brset 1,STACK_0ce,L01AE       ; Branch to 0x01AE if Bit 1 is set at STACK_0ce (Mn=1)
          brclr 0,STACK_0ce,L01AE       ; Branch to 0x01AE if Bit 0 Clear (Mn = 0)
          jmp L21BB                     ; Unconditional Jump to 0x21BB            
; 
L2183: 
          db $B6, $78, $A4, $07         ; data?  , x,  ,                          
          db $AE, $81, $A1, $04         ; data?  ,  ,  ,                          
          db $24, $21, $A1, $01         ; data? $, !,  ,                          
          db $26, $03, $18, $CE         ; data? &,  ,  ,                          
          db $81, $AE, $02, $A1         ; data?  ,  ,  ,                          
          db $02, $26, $03, $1A         ; data?  , &,  ,                          
          db $CE, $81, $16, $BC         ; data?  ,  ,  ,                          
          db $AE, $08, $C1, $AE         ; data?  ,  ,  ,                          
          db $01, $10, $80, $BF         ; data?  ,  ,  ,                          
          db $D0, $1C, $CE, $1E         ; data?  ,  ,  ,                          
          db $94, $1D, $B5, $81         ; data?  ,  ,  ,                          
          db $A6, $48, $B7, $9F         ; data?  , H,  ,                          
          db $AE, $71, $A6, $41         ; data?  , q,  , A                        
          db $B7, $CE, $20, $E9         ; data?  ,  , SPACE,                      
; 
L21BB: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X21D5,x                   ; Load Accumulator with data from  memory at 0x21D5, A <- (0x21D5)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X21D4,x                   ; Load Accumulator with data from  memory at 0x21D4, A <- (0x21D4)
          beq L01D3                     ; Branch to 0x01D3 if Equal Z=1           
          jsr L2889                     ; Jump to Subroutine at 0x2889            
          bne L01BC                     ; Branch to 0x01BC if Not Equal (Z = 0);  
          ldx X21D3,x                   ; Load Index Register with Memory Byte, X <- (0x21D3)
          jsr L2183,x ;INFO: index jump ; Jump to Subroutine at 0x2183            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X21D3: 
          rts                           ; Return from Subroutine                  
; 
X21D4: 
          db $E0                        ; data?  ,  ,  ,                          
X21D5: 
          db $00, $EB, $1F, $E8         ; data?  ,  ,  ,                          
          db $2C, $07, $2C, $00         ; data? ,,  , ,,                          
; 
L21DD: 
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          eor TCR                       ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (TCR)
          sta TCR                       ; Store Accumulator in Memory at TCR      
          bset 3,RAM1_076               ; Set Bit 3 at memory RAM1_076 (Mn <- 1 ) 
          lda ICH1                      ; Load Accumulator with value of Memory at ICH1, A <- (ICH1)
          sta RAM1_06d                  ; Store Accumulator in Memory at RAM1_06d 
          lda ICL1                      ; Load Accumulator with value of Memory at ICL1, A <- (ICL1)
          sta RAM1_06e                  ; Store Accumulator in Memory at RAM1_06e 
          brclr 4,RAM1_05e,L01F5        ; Branch to 0x01F5 if Bit 4 Clear (Mn = 0)
          brset 1,TCR,L0224             ; Branch to 0x0224 if Bit IEDG1 is set at TCR (Mn=1)
          bra L0211                     ; Branch Always (1 = 1)                   
; 
          db $B0, $70, $97, $B6         ; data?  , p,  ,                          
          db $6D, $B2, $6F, $A5         ; data? m,  , o,                          
          db $E0, $26, $11, $02         ; data?  , &,  ,                          
          db $0C, $0B, $03, $12         ; data?  ,  ,  ,                          
          db $08, $B7, $71, $BF         ; data?  ,  , q,                          
          db $72, $11, $76, $20         ; data? r,  , v, SPACE                    
          db $0E, $CD, $22, $7E         ; data?  ,  , ", ~                        
          db $B6, $6E, $B7, $70         ; data?  , n,  , p                        
          db $B6, $6D, $B7, $6F         ; data?  , m,  , o                        
          db $08, $5E, $06, $0A         ; data?  , ^,  ,                          
          db $03, $06, $03, $12         ; data?  ,  ,  ,                          
          db $06, $19, $5E, $81         ; data?  ,  , ^,                          
          db $03, $12, $FC, $A6         ; data?  ,  ,  ,                          
          db $02, $B8, $12, $B7         ; data?  ,  ,  ,                          
          db $12, $A6, $10, $BB         ; data?  ,  ,  ,                          
          db $6E, $B7, $6E, $24         ; data? n,  , n, $                        
          db $02, $3C, $6D, $B6         ; data?  , <, m,                          
          db $15, $20, $B1              ; data?  , SPACE,  ,                      
; 
L223C: 
          brclr 3,RAM1_076,L0242        ; Branch to 0x0242 if Bit 3 Clear (Mn = 0)
          bclr 3,RAM1_076               ; Clear bit 3 at RAM1_076                 
          rts                           ; Return from Subroutine                  
; 
          db $18, $5E, $13, $12         ; data?  , ^,  ,                          
          db $B6, $15, $A6, $20         ; data?  ,  ,  , SPACE                    
          db $BB, $76, $AA, $40         ; data?  , v,  , @                        
          db $A4, $DF, $B7, $76         ; data?  ,  ,  , v                        
          db $0B, $03, $1D, $0E         ; data?  ,  ,  ,                          
          db $01, $0E, $B6, $5E         ; data?  ,  ,  , ^                        
          db $A0, $20, $25, $02         ; data?  , SPACE, %,                      
          db $B7, $5E, $2B, $32         ; data?  , ^, +, 2                        
          db $1D, $5E, $20, $09         ; data?  , ^, SPACE,                      
          db $04, $76, $1E, $14         ; data?  , v,  ,                          
          db $76, $12, $76, $20         ; data? v,  , v, SPACE                    
          db $18, $01, $61, $22         ; data?  ,  , a, "                        
          db $A6, $14, $5F, $BF         ; data?  ,  , _,                          
          db $71, $B7, $72, $10         ; data? q,  , r,                          
          db $76, $01, $61, $05         ; data? v,  , a,                          
          db $0F, $01, $02, $15         ; data?  ,  ,  ,                          
          db $76, $B7, $73, $BF         ; data? v,  , s,                          
          db $74, $18, $76, $0E         ; data? t,  , v,                          
          db $01, $08, $A6, $20         ; data?  ,  ,  , SPACE                    
          db $BB, $5E, $25, $02         ; data?  , ^, %,                          
          db $B7, $5E, $A6, $20         ; data?  , ^,  , SPACE                    
          db $BB, $76, $B7, $76         ; data?  , v,  , v                        
          db $A4, $60, $A1, $60         ; data?  , `,  , `                        
          db $26, $1C, $0E, $76         ; data? &,  ,  , v                        
          db $05, $00, $61, $07         ; data?  ,  , a,                          
          db $1D, $76, $1F, $01         ; data?  , v,  ,                          
          db $18, $5E, $81, $A6         ; data?  , ^,  ,                          
          db $24, $B7, $09, $0F         ; data? $,  ,  ,                          
          db $09, $FD, $B6, $08         ; data?  ,  ,  ,                          
          db $B7, $75, $1E, $01         ; data?  , u,  ,                          
          db $18, $5E, $81              ; data?  , ^,  ,                          
; 
L22BD: 
          clra                          ; Clear byte at clra <- 0x00              
          brset 0,RAM1_061,L02C4        ; Branch to 0x02C4 if Bit 0 is set at RAM1_061 (Mn=1)
          brclr 2,RAM1_05f,L02CA        ; Branch to 0x02CA if Bit 2 Clear (Mn = 0)
          brset 4,RAM1_076,L02CF        ; Branch to 0x02CF if Bit 4 is set at RAM1_076 (Mn=1)
          brset 2,RAM1_05f,L032B        ; Branch to 0x032B if Bit 2 is set at RAM1_05f (Mn=1)
          sta RAM2_02a4                 ; Store Accumulator in Memory at RAM2_02a4
          bra L0329                     ; Branch Always (1 = 1)                   
; 
          db $19, $76, $9B, $B6         ; data?  , v,  ,                          
          db $73, $B7, $50, $B6         ; data? s,  , P,                          
          db $74, $B7, $51, $B6         ; data? t,  , Q,                          
          db $71, $B7, $52, $B6         ; data? q,  , R,                          
          db $72, $B7, $53, $9A         ; data? r,  , S,                          
          db $0E, $76, $78, $4F         ; data?  , v, x, O                        
          db $05, $5F, $3F, $5F         ; data?  , _,  , _                        
          db $CD, $24, $8F, $CD         ; data?  , $,  ,                          
          db $24, $8D, $AE, $03         ; data? $,  ,  ,                          
          db $E6, $50, $DB, $02         ; data?  , P,  ,                          
          db $A0, $D7, $02, $A0         ; data?  ,  ,  ,                          
          db $E7, $56, $E6, $4F         ; data?  , V,  , O                        
          db $D9, $02, $9F, $D7         ; data?  ,  ,  ,                          
          db $02, $9F, $E7, $55         ; data?  ,  ,  , U                        
          db $5A, $5A, $2A, $E8         ; data? Z, Z, *,                          
          db $CD, $25, $E4, $5F         ; data?  , %,  , _                        
          db $CD, $24, $B3, $25         ; data?  , $,  , %                        
          db $0D, $AE, $09, $CD         ; data?  ,  ,  ,                          
          db $24, $1E, $A6, $1A         ; data? $,  ,  ,                          
          db $CD, $24, $3F, $C7         ; data?  , $,  ,                          
          db $02, $A5, $C6, $02         ; data?  ,  ,  ,                          
          db $A5, $BE, $0B, $CD         ; data?  ,  ,  ,                          
          db $24, $6E, $B7, $0B         ; data? $, n,  ,                          
          db $81, $4F, $C7, $02         ; data?  , O,  ,                          
          db $AA, $AE, $0D, $CD         ; data?  ,  ,  ,                          
          db $24, $8F, $B6, $75         ; data? $,  ,  , u                        
          db $CB, $02, $AE, $C7         ; data?  ,  ,  ,                          
          db $02, $AE, $4F, $C9         ; data?  ,  , O,                          
          db $02, $AD, $C7, $02         ; data?  ,  ,  ,                          
          db $AD, $C6, $02, $AE         ; data?  ,  ,  ,                          
          db $CE, $02, $AD, $56         ; data?  ,  ,  , V                        
          db $46, $56, $46, $56         ; data? F, V, F, V                        
          db $46, $AE, $0B, $CD         ; data? F,  ,  ,                          
          db $24, $B4, $25, $4B         ; data? $,  , %, K                        
          db $AE, $19, $CD, $24         ; data?  ,  ,  , $                        
          db $1E, $20, $34, $04         ; data?  , SPACE, 4,                      
          db $76, $CB, $AE, $06         ; data? v,  ,  ,                          
          db $CD, $24, $8F, $CD         ; data?  , $,  ,                          
          db $24, $8D, $AE, $03         ; data? $,  ,  ,                          
          db $E6, $50, $DB, $02         ; data?  , P,  ,                          
          db $A6, $D7, $02, $A6         ; data?  ,  ,  ,                          
          db $E7, $56, $E6, $4F         ; data?  , V,  , O                        
          db $D9, $02, $A5, $D7         ; data?  ,  ,  ,                          
          db $02, $A5, $E7, $55         ; data?  ,  ,  , U                        
          db $5A, $5A, $2A, $E8         ; data? Z, Z, *,                          
          db $CD, $25, $E4, $AE         ; data?  , %,  ,                          
          db $06, $CD, $24, $B3         ; data?  ,  , $,                          
          db $25, $15, $AE, $0F         ; data? %,  ,  ,                          
          db $CD, $24, $1E, $A6         ; data?  , $,  ,                          
          db $24, $CD, $24, $3F         ; data? $,  , $,                          
          db $C7, $02, $AB, $A6         ; data?  ,  ,  ,                          
          db $2A, $CD, $24, $3F         ; data? *,  , $,                          
          db $C7, $02, $AC, $01         ; data?  ,  ,  ,                          
          db $61, $28, $C6, $02         ; data? a, (,  ,                          
          db $AB, $BE, $0A, $CD         ; data?  ,  ,  ,                          
          db $24, $6E, $B7, $0A         ; data? $, n,  ,                          
          db $C6, $02, $AC, $BE         ; data?  ,  ,  ,                          
          db $6C, $CD, $24, $6E         ; data? l,  , $, n                        
          db $97, $02, $76, $0C         ; data?  ,  , v,                          
          db $C6, $02, $AC, $B0         ; data?  ,  ,  ,                          
          db $6C, $24, $01, $40         ; data? l, $,  , @                        
          db $A4, $FC, $27, $06         ; data?  ,  , ',                          
          db $13, $76, $BF, $6C         ; data?  , v,  , l                        
          db $12, $5D, $81              ; data?  , ],  ,                          
; 
L23CE: 
          brclr 2,RAM1_05f,L03DB        ; Branch to 0x03DB if Bit 2 Clear (Mn = 0)
          lda RAM2_02a5                 ; Load Accumulator with value of Memory at RAM2_02a5, A <- (RAM2_02a5)
          ldx PLMB                      ; Load Index Register with Memory Byte, X <- (PLMB)
          jsr L2402                     ; Jump to Subroutine at 0x2402            
          sta PLMB                      ; Store Accumulator in Memory at PLMB     
          brclr 0,RAM1_061,L03CD        ; Branch to 0x03CD if Bit 0 Clear (Mn = 0)
          lda RAM2_02ab                 ; Load Accumulator with value of Memory at RAM2_02ab, A <- (RAM2_02ab)
          ldx PLMA                      ; Load Index Register with Memory Byte, X <- (PLMA)
          jsr L2402                     ; Jump to Subroutine at 0x2402            
          sta PLMA                      ; Store Accumulator in Memory at PLMA     
          lda RAM2_02ac                 ; Load Accumulator with value of Memory at RAM2_02ac, A <- (RAM2_02ac)
          ldx RAM1_06c                  ; Load Index Register with Memory Byte, X <- (RAM1_06c)
          jsr L2402                     ; Jump to Subroutine at 0x2402            
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda RAM2_02ac                 ; Load Accumulator with value of Memory at RAM2_02ac, A <- (RAM2_02ac)
          sub RAM1_06c                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_06c)
          bcc L03F9                     ; Branch to 0x03F9 if C bit is cleared    
          nega                          ; Negate Byte of nega (Two’s Complement), nega = 0x00 - (nega)
          and #$FC                      ; Logical AND between A and constant 0xFC, A ← (A) && (0xFC)
          beq L03CD                     ; Branch to 0x03CD if Equal Z=1           
          stx RAM1_06c                  ; Store Index Register In Memory at RAM1_06c
          bset 1,RAM1_05d               ; Set Bit 1 at memory RAM1_05d (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
L2402: 
          stx RAM1_056                  ; Store Index Register In Memory at RAM1_056
          sub RAM1_056                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_056)
          beq L041B                     ; Branch to 0x041B if Equal Z=1           
          bcs L0413                     ; Branch to 0x0413 if C = 1               
          clrx                          ; Clear byte at clrx <- 0x00              
          cmp #$10                      ; Compare Accumulator with Memory Byte, (A) - (0x10)
          bcs L041A                     ; Branch to 0x041A if C = 1               
          ldx #$02                      ; Load Index Register with Memory Byte, X <- (0x02)
          bra L041A                     ; Branch Always (1 = 1)                   
; 
          db $5F, $A1, $F0, $22         ; data? _,  ,  , "                        
          db $02, $AE, $FE, $9F         ; data?  ,  ,  ,                          
          db $BB, $56, $81, $A6         ; data?  , V,  ,                          
          db $05, $B7, $50, $3F         ; data?  ,  , P,                          
          db $56, $D6, $01, $00         ; data? V,  ,  ,                          
          db $B1, $52, $24, $09         ; data?  , R, $,                          
          db $B7, $56, $5A, $3A         ; data?  , V, Z, :                        
          db $50, $2A, $F2, $A6         ; data? P, *,  ,                          
          db $FF, $B0, $56, $B7         ; data?  ,  , V,                          
          db $51, $B6, $52, $B0         ; data? Q,  , R,                          
          db $56, $B7, $52, $81         ; data? V,  , R,                          
          db $BB, $50, $97, $3F         ; data?  , P,  ,                          
          db $5A, $B6, $50, $A1         ; data? Z,  , P,                          
          db $05, $27, $0B, $D6         ; data?  , ',  ,                          
          db $01, $01, $B7, $5A         ; data?  ,  ,  , Z                        
          db $A6, $FF, $3D, $50         ; data?  ,  , =, P                        
          db $2B, $03, $D6, $01         ; data? +,  ,  ,                          
          db $00, $B0, $5A, $97         ; data?  ,  , Z,                          
          db $B6, $52, $42, $B7         ; data?  , R, B,                          
          db $59, $BF, $58, $3F         ; data? Y,  , X,                          
          db $57, $B6, $51, $B7         ; data? W,  , Q,                          
          db $56, $CD, $25, $E4         ; data? V,  , %,                          
          db $BB, $5A, $81, $BF         ; data?  , Z,  ,                          
          db $56, $B0, $56, $27         ; data? V,  , V, '                        
          db $15, $25, $0A, $AE         ; data?  , %,  ,                          
          db $01, $A1, $10, $25         ; data?  ,  ,  , %                        
          db $0C, $AE, $08, $20         ; data?  ,  ,  , SPACE                    
          db $08, $AE, $FF, $A1         ; data?  ,  ,  ,                          
          db $F0, $22, $02, $AE         ; data?  , ",  ,                          
          db $F8, $9F, $BB, $56         ; data?  ,  ,  , V                        
          db $81, $81, $5C, $5C         ; data?  ,  , \, \                        
          db $D6, $02, $A0, $B7         ; data?  ,  ,  ,                          
          db $56, $D6, $02, $A1         ; data? V,  ,  ,                          
          db $34, $56, $46, $34         ; data? 4, V, F, 4                        
          db $56, $46, $34, $56         ; data? V, F, 4, V                        
          db $46, $B7, $57, $D6         ; data? F,  , W,                          
          db $02, $A1, $B0, $57         ; data?  ,  ,  , W                        
          db $D7, $02, $A1, $D6         ; data?  ,  ,  ,                          
          db $02, $A0, $B2, $56         ; data?  ,  ,  , V                        
          db $D7, $02, $A0, $81         ; data?  ,  ,  ,                          
          db $43, $B7, $52, $02         ; data? C,  , R,                          
          db $76, $0A, $D0, $02         ; data? v,  ,  ,                          
          db $A4, $24, $01, $40         ; data?  , $,  , @                        
          db $A1, $02, $25, $07         ; data?  ,  , %,                          
          db $B6, $52, $D7, $02         ; data?  , R,  ,                          
          db $A4, $A1, $00, $81         ; data?  ,  ,  ,                          
          db $BE, $CC, $A3, $FF         ; data?  ,  ,  ,                          
          db $26, $02, $1B, $C5         ; data? &,  ,  ,                          
          db $AE, $80, $00, $CB         ; data?  ,  ,  ,                          
          db $04, $0D, $C6, $13         ; data?  ,  ,  ,                          
          db $81, $AE, $5F, $C1         ; data?  ,  , _,                          
          db $AE, $20, $1B, $C5         ; data?  , SPACE,  ,                      
          db $20, $09                   ; data? SPACE,  ,  ,                      
; 
L24E5: 
          ldx #$4C                      ; Load Index Register with Memory Byte, X <- (0x4C)
          cmp XAE50                     ; Compare Accumulator with Memory Byte, (A) - (0xAE50)
          clr STACK_0cc                 ; Clear byte at STACK_0cc <- 0x00         
          bset 3,STACK_0cc              ; Set Bit 3 at memory STACK_0cc (Mn <- 1 )
          bclr 0,STACK_0cb              ; Clear bit 0 at STACK_0cb                
          stx STACK_0c6                 ; Store Index Register In Memory at STACK_0c6
          sta STACK_0c7                 ; Store Accumulator in Memory at STACK_0c7
          rts                           ; Return from Subroutine                  
; 
          db $D8, $02, $50, $27         ; data?  ,  , P, '                        
          db $08, $D8, $02, $50         ; data?  ,  ,  , P                        
          db $D7, $02, $50, $1A         ; data?  ,  , P,                          
          db $C6, $5C, $81              ; data?  , \,  ,                          
; 
L2504: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda #$00                      ; Load Accumulator with 0x00, A <- 0x00   
          bsr L04F5                     ; Branch to Subroutine at 0x04F5          
cpx #$06 
          bne L0505                     ; Branch to 0x0505 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
          db $AE, $01, $AD, $E3         ; data?  ,  ,  ,                          
          db $B6, $56, $AA, $40         ; data?  , V,  , @                        
          db $0B, $69, $01, $4F         ; data?  , i,  , O                        
          db $04, $B8, $05, $0D         ; data?  ,  ,  ,                          
          db $B5, $02, $AA, $04         ; data?  ,  ,  ,                          
          db $AD, $E3, $5F, $A6         ; data?  ,  , _,                          
          db $00, $20, $CC, $B7         ; data?  , SPACE,  ,                      
          db $56, $AD, $06, $97         ; data? V,  ,  ,                          
          db $B6, $56, $CD, $26         ; data?  , V,  , &                        
          db $1E, $CD, $26, $17         ; data?  ,  , &,                          
          db $A1, $0A, $25, $02         ; data?  ,  , %,                          
          db $AB, $07, $AB, $30         ; data?  ,  ,  , 0                        
          db $81, $A6, $68, $C1         ; data?  ,  , h,                          
          db $A6, $70, $C1, $A6         ; data?  , p,  ,                          
          db $60, $C1, $A6, $78         ; data? `,  ,  , x                        
          db $C1, $A6, $80, $4A         ; data?  ,  ,  , J                        
          db $B7, $56, $AE, $07         ; data?  , V,  ,                          
          db $BF, $57, $BE, $56         ; data?  , W,  , V                        
          db $D6, $26, $A5, $3A         ; data?  , &,  , :                        
          db $56, $BE, $57, $D7         ; data? V,  , W,                          
          db $02, $57, $3A, $57         ; data?  , W, :, W                        
          db $2A, $F0, $81, $02         ; data? *,  ,  ,                          
          db $CB, $0B, $3C, $CC         ; data?  ,  , <,                          
          db $3D, $CC, $27, $03         ; data? =,  , ',                          
          db $3A, $CC, $81, $3A         ; data? :,  ,  , :                        
          db $CC, $A1, $03, $26         ; data?  ,  ,  , &                        
          db $09, $A6, $39, $0D         ; data?  ,  , 9,                          
          db $D2, $1E, $A6, $36         ; data?  ,  ,  , 6                        
          db $20, $1A, $A1, $01         ; data? SPACE,  ,  ,                      
          db $26, $05, $0B, $BB         ; data? &,  ,  ,                          
          db $2F, $16, $94, $0D         ; data? /,  ,  ,                          
          db $B5, $05, $04, $B8         ; data?  ,  ,  ,                          
          db $02, $AA, $08              ; data?  ,  ,  ,                          
; 
L2591: 
          brclr 3,RAM1_08e,L0596        ; Branch to 0x0596 if Bit 3 Clear (Mn = 0)
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
          sta STACK_0d5                 ; Store Accumulator in Memory at STACK_0d5
          bra L05A6                     ; Branch Always (1 = 1)                   
; 
          db $AA, $40, $B8, $D5         ; data?  , @,  ,                          
          db $A4, $7F, $27, $14         ; data?  , DEL, ',                        
          db $B8, $D5, $B7, $D5         ; data?  ,  ,  ,                          
; 
L25A6: 
          brclr 0,RAM1_061,L05AD        ; Branch to 0x05AD if Bit 0 Clear (Mn = 0)
          brclr 3,STACK_0ce,L05B2       ; Branch to 0x05B2 if Bit 3 Clear (Mn = 0)
          clra                          ; Clear byte at clra <- 0x00              
          brclr 3,RAM1_08e,L05B2        ; Branch to 0x05B2 if Bit 3 Clear (Mn = 0)
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
          bset 7,STACK_0d5              ; Set Bit 7 at memory STACK_0d5 (Mn <- 1 )
          bset 1,RAM1_094               ; Set Bit 1 at memory RAM1_094 (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
L25B7: 
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          clr RAM1_057                  ; Clear byte at RAM1_057 <- 0x00          
          clra                          ; Clear byte at clra <- 0x00              
          bms L05CA                     ; Branch to 0x05CA if Interrupt Mask Set (I=1)
          sei                           ; Set Interrupt Mask, I ← 1);           
          stx ADSTAT                    ; Store Index Register In Memory at ADSTAT
          brclr 7,ADSTAT,L05C4          ; Branch to 0x05C4 if Bit COCO Clear (Mn = 0)
          cli                           ; Clear Interrupt Mask (I <- 0)           
          bra L05CF                     ; Branch Always (1 = 1)                   
; 
          db $BF, $09, $0F, $09         ; data?  ,  ,  ,                          
          db $FD, $BB, $08, $24         ; data?  ,  ,  , $                        
          db $02, $3C, $57, $3A         ; data?  , <, W, :                        
          db $56, $26, $E6, $34         ; data? V, &,  , 4                        
          db $57, $46, $34, $57         ; data? W, F, 4, W                        
          db $46, $A9, $00, $B7         ; data? F,  ,  ,                          
          db $56, $81, $5F, $99         ; data? V,  , _,                          
          db $59, $25, $2A, $34         ; data? Y, %, *, 4                        
          db $56, $36, $57, $B6         ; data? V, 6, W,                          
          db $59, $B0, $57, $B7         ; data? Y,  , W,                          
          db $59, $B6, $58, $B2         ; data? Y,  , X,                          
          db $56, $B7, $58, $24         ; data? V,  , X, $                        
          db $EA, $98, $59, $25         ; data?  ,  , Y, %                        
          db $14, $34, $56, $36         ; data?  , 4, V, 6                        
          db $57, $B6, $59, $BB         ; data? W,  , Y,                          
          db $57, $B7, $59, $B6         ; data? W,  , Y,                          
          db $58, $B9, $56, $B7         ; data? X,  , V,                          
          db $58, $24, $EA, $20         ; data? X, $,  , SPACE                    
          db $D2, $9F, $81, $44         ; data?  ,  ,  , D                        
; 
L2616: 
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
L2617: 
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          rts                           ; Return from Subroutine                  
; 
          db $48, $48, $48, $48         ; data? H, H, H, H                        
          db $48, $48, $81              ; data? H, H,  ,                          
; 
L2623: 
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          bra L062C                     ; Branch Always (1 = 1)                   
; 
          db $CD, $07, $85, $AD         ; data?  ,  ,  ,                          
          db $05, $3A, $50, $2A         ; data?  , :, P, *                        
          db $F7, $81                   ; data?  ,  ,  ,                          
; 
L2631: 
          lda #$14                      ; Load Accumulator with 0x14, A <- 0x14   
          add ACH                       ; Add without Carry, A ← (A) + (ACH)    
          tst ACL                       ; Test Memory Byte for Negative or Zero, (ACL) – 0x00
          bih L063B                     ; Branch to 0x063B if IRQ Pin High IRQ=1  
          bset 7,RAM1_08f               ; Set Bit 7 at memory RAM1_08f (Mn <- 1 ) 
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bpl L0637                     ; Branch to 0x0637 if Plus N = 0          
          rts                           ; Return from Subroutine                  
; 
L2640: 
          lda #$85                      ; Load Accumulator with 0x85, A <- 0x85   
; 
          db $C1                        ; data?  ,  ,  ,                          
; 
L2643: 
          lda #$21                      ; Load Accumulator with 0x21, A <- 0x21   
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bne L0645                     ; Branch to 0x0645 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L2649: 
          lda X2656,x                   ; Load Accumulator with data from  memory at 0x2656, A <- (0x2656)
          sta RAM1_064                  ; Store Accumulator in Memory at RAM1_064 
          lda X2657,x                   ; Load Accumulator with data from  memory at 0x2657, A <- (0x2657)
          sta RAM1_065                  ; Store Accumulator in Memory at RAM1_065 
          clr RAM1_066                  ; Clear byte at RAM1_066 <- 0x00          
          rts                           ; Return from Subroutine                  
; 
X2656: 
          db $7C                        ; data? |,  ,  ,                          
X2657: 
          db $52, $69, $EB, $2C         ; data? R, i,  , ,                        
          db $00, $7F, $E0              ; data?  , DEL,  ,                        
; 
L265E: 
          inc ,x                        ; Increment Byte , Byte = Byte + 1        
          beq L0662                     ; Branch to 0x0662 if Equal Z=1           
          dec ,x                        ; Decrement Byte at  Byte = Byte - 1      
          dec ,x                        ; Decrement Byte at  Byte = Byte - 1      
          rts                           ; Return from Subroutine                  
; 
          db $A4, $07, $97, $4F         ; data?  ,  ,  , O                        
          db $99, $49, $5A, $2A         ; data?  , I, Z, *                        
          db $FC, $81                   ; data?  ,  ,  ,                          
; 
L266E: 
          lda #$80                      ; Load Accumulator with 0x80, A <- 0x80   
          bit ,x                        ; Bit Test Accumulator with Memory Byte (A) ∧ ()
          bne L0676                     ; Branch to 0x0676 if Not Equal (Z = 0);  
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          bne L0670                     ; Branch to 0x0670 if Not Equal (Z = 0);  
          eor ,x                        ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X ()
          sta ,x                        ; Store Accumulator in Memory at          
          rts                           ; Return from Subroutine                  
; 
L2679: 
          ldx RAM1_056                  ; Load Index Register with Memory Byte, X <- (RAM1_056)
          inc RAM1_056                  ; Increment Byte RAM1_056, Byte = Byte + 1
          lda ,x                        ; Load Accumulator with value of Memory at , A <- ()
          brclr 1,RAM1_059,L0684        ; Branch to 0x0684 if Bit 1 Clear (Mn = 0)
          lda BOT1_0200,x               ; Load Accumulator with value of Memory at BOT1_0200, A <- (BOT1_0200)
          ldx RAM1_057                  ; Load Index Register with Memory Byte, X <- (RAM1_057)
          inc RAM1_057                  ; Increment Byte RAM1_057, Byte = Byte + 1
          brclr 0,RAM1_059,L068F        ; Branch to 0x068F if Bit 0 Clear (Mn = 0)
          sta BOT1_0200,x               ; Store Accumulator in Memory at BOT1_0200
          cmp STACK_0f7                 ; Compare Accumulator with Memory Byte, (A) - (STACK_0f7)
          dec RAM1_058                  ; Decrement Byte at RAM1_058 Byte = Byte - 1
          bpl L0679                     ; Branch to 0x0679 if Plus N = 0          
          rts                           ; Return from Subroutine                  
; 
L2695: 
          clrx                          ; Clear byte at clrx <- 0x00              
          tsta                          ; Test Memory Byte for Negative or Zero, (tsta) – 0x00
          bpl L06A4                     ; Branch to 0x06A4 if Plus N = 0          
          ldx #$07                      ; Load Index Register with Memory Byte, X <- (0x07)
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          bmi L06A4                     ; Branch to 0x06A4 if Minus N = 1         
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          bmi L06A4                     ; Branch to 0x06A4 if Minus N = 1         
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rts                           ; Return from Subroutine                  
; 
          db $54, $41, $20, $20         ; data? T, A, SPACE, SPACE                
          db $20, $31, $20, $20         ; data? SPACE, 1, SPACE, SPACE            
          db $47, $41, $4C, $41         ; data? G, A, L, A                        
          db $20, $31, $20, $20         ; data? SPACE, 1, SPACE, SPACE            
          db $56, $4F, $4C, $20         ; data? V, O, L, SPACE                    
          db $20, $31, $20, $20         ; data? SPACE, 1, SPACE, SPACE            
          db $53, $45, $4E, $53         ; data? S, E, N, S                        
          db $20, $44, $58, $20         ; data? SPACE, D, X, SPACE                
          db $52, $4D, $20, $20         ; data? R, M, SPACE, SPACE                
          db $20, $4F, $4E, $20         ; data? SPACE, O, N, SPACE                
          db $4E, $41, $56, $20         ; data? N, A, V, SPACE                    
          db $20, $31, $20, $20         ; data? SPACE, 1, SPACE, SPACE            
          db $54, $45, $4C, $20         ; data? T, E, L, SPACE                    
          db $20, $52, $20, $20         ; data? SPACE, R, SPACE, SPACE            
          db $47, $41, $4C, $41         ; data? G, A, L, A                        
          db $20, $4F, $46, $46         ; data? SPACE, O, F, F                    
          db $53, $45, $4E, $53         ; data? S, E, N, S                        
          db $20, $4C, $4F, $20         ; data? SPACE, L, O, SPACE                
          db $52, $4D, $20, $20         ; data? R, M, SPACE, SPACE                
          db $20, $4F, $46, $46         ; data? SPACE, O, F, F                    
          db $54, $45, $4C, $20         ; data? T, E, L, SPACE                    
          db $20, $4C, $20, $20         ; data? SPACE, L, SPACE, SPACE            
          db $45, $31, $20, $50         ; data? E, 1, SPACE, P                    
          db $33, $3A, $30, $30         ; data? 3, :, 0, 0                        
          db $43, $44, $31, $20         ; data? C, D, 1, SPACE                    
          db $45, $52, $52, $31         ; data? E, R, R, 1                        
          db $4E, $4F, $20, $43         ; data? N, O, SPACE, C                    
          db $4F, $44, $45, $20         ; data? O, D, E, SPACE                    
          db $52, $30, $20, $30         ; data? R, 0, SPACE, 0                    
          db $30, $3A, $20, $20         ; data? 0, :, SPACE, SPACE                
          db $46, $41, $44, $20         ; data? F, A, D, SPACE                    
          db $4F, $46, $46, $20         ; data? O, F, F, SPACE                    
; 
L2725: 
          clr STACK_0ca                 ; Clear byte at STACK_0ca <- 0x00         
          lda #$0A                      ; Load Accumulator with 0x0A, A <- 0x0A   
          sta STACK_0cf                 ; Store Accumulator in Memory at STACK_0cf
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          sta STACK_0ce                 ; Store Accumulator in Memory at STACK_0ce
          rts                           ; Return from Subroutine                  
; 
          db $AE, $D1, $CD, $26         ; data?  ,  ,  , &                        
          db $5E, $26, $02, $1F         ; data? ^, &,  ,                          
          db $D2, $AE, $CF, $CD         ; data?  ,  ,  ,                          
          db $26, $5E, $26, $EF         ; data? &, ^, &,                          
          db $07, $CE, $02, $1E         ; data?  ,  ,  ,                          
          db $5D, $05, $CE, $79         ; data? ],  ,  , y                        
          db $B6, $CE, $A4, $F8         ; data?  ,  ,  ,                          
          db $B7, $CE                   ; data?  ,  ,  ,                          
; 
L274E: 
          lda #$0A                      ; Load Accumulator with 0x0A, A <- 0x0A   
          brset 7,RAM1_060,L07B7        ; Branch to 0x07B7 if Bit 7 is set at RAM1_060 (Mn=1)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          brclr 3,RAM1_08b,L07B7        ; Branch to 0x07B7 if Bit 3 Clear (Mn = 0)
          tst STACK_0ce                 ; Test Memory Byte for Negative or Zero, (STACK_0ce) – 0x00
          beq L078D                     ; Branch to 0x078D if Equal Z=1           
          brset 7,STACK_0ce,L07B7       ; Branch to 0x07B7 if Bit 7 is set at STACK_0ce (Mn=1)
          brset 2,STACK_0ce,L0782       ; Branch to 0x0782 if Bit 2 is set at STACK_0ce (Mn=1)
          brclr 1,STACK_0ce,L076E       ; Branch to 0x076E if Bit 1 Clear (Mn = 0)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          brclr 0,STACK_0ce,L07A8       ; Branch to 0x07A8 if Bit 0 Clear (Mn = 0)
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          bra L07A8                     ; Branch Always (1 = 1)                   
; 
          db $0A, $CE, $08, $0D         ; data?  ,  ,  ,                          
          db $CE, $19, $A6, $05         ; data?  ,  ,  ,                          
          db $00, $CE, $3E, $A6         ; data?  ,  , >,                          
          db $09, $0D, $67, $2A         ; data?  ,  , g, *                        
          db $1E, $5D, $20, $26         ; data?  , ], SPACE, &                    
          db $03, $CE, $08, $04         ; data?  ,  ,  ,                          
          db $CB, $05, $A6, $06         ; data?  ,  ,  ,                          
          db $01, $CE, $19, $A6         ; data?  ,  ,  ,                          
          db $01, $06, $CE, $16         ; data?  ,  ,  ,                          
          db $A6, $06, $0C, $7F         ; data?  ,  ,  , DEL                      
          db $11, $06, $7F, $0E         ; data?  ,  , DEL,                        
          db $A6, $04, $0A, $7F         ; data?  ,  ,  , DEL                      
          db $07, $B6, $7F, $43         ; data?  ,  , DEL, C                      
          db $A4, $03, $27, $02         ; data?  ,  , ',                          
          db $AA, $40, $0A, $7F         ; data?  , @,  , DEL                      
          db $0C, $B7, $56, $B6         ; data?  ,  , V,                          
          db $7F, $43, $A4, $03         ; data? DEL, C,  ,                        
          db $CD, $26, $1E, $BB         ; data?  , &,  ,                          
          db $56, $B8, $CA, $27         ; data? V,  ,  , '                        
          db $06, $B8, $CA, $B7         ; data?  ,  ,  ,                          
          db $CA, $1E, $5D, $81         ; data?  ,  , ],                          
          db $81                        ; data?  ,  ,  ,                          
; 
L27C3: 
          lda RAM1_07a                  ; Load Accumulator with value of Memory at RAM1_07a, A <- (RAM1_07a)
          beq L0027                     ; Branch to 0x0027 if Equal Z=1           
          dec RAM1_079                  ; Decrement Byte at RAM1_079 Byte = Byte - 1
          bne L0027                     ; Branch to 0x0027 if Not Equal (Z = 0);  
          clr RAM1_07a                  ; Clear byte at RAM1_07a <- 0x00          
          bra L001F                     ; Branch Always (1 = 1)                   
; 
L27CF: 
          brset 1,RAM1_077,L07EF        ; Branch to 0x07EF if Bit 1 is set at RAM1_077 (Mn=1)
          brclr 4,RAM1_077,L07F3        ; Branch to 0x07F3 if Bit 4 Clear (Mn = 0)
          lda RAM1_078                  ; Load Accumulator with value of Memory at RAM1_078, A <- (RAM1_078)
          and #$1F                      ; Logical AND between A and constant 0x1F, A ← (A) && (0x1F)
          beq L07EF                     ; Branch to 0x07EF if Equal Z=1           
          sta RAM1_07a                  ; Store Accumulator in Memory at RAM1_07a 
          lda RAM1_077                  ; Load Accumulator with value of Memory at RAM1_077, A <- (RAM1_077)
          and #$E0                      ; Logical AND between A and constant 0xE0, A ← (A) && (0xE0)
          add RAM1_07a                  ; Add without Carry, A ← (A) + (RAM1_07a)
          sta RAM1_07a                  ; Store Accumulator in Memory at RAM1_07a 
          jsr L2616                     ; Jump to Subroutine at 0x2616            
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda X2827,x                   ; Load Accumulator with data from  memory at 0x2827, A <- (0x2827)
          sta RAM1_079                  ; Store Accumulator in Memory at RAM1_079 
          cmp X3F7A                     ; Compare Accumulator with Memory Byte, (A) - (0x3F7A)
          clr RAM1_077                  ; Clear byte at RAM1_077 <- 0x00          
          brclr 6,RAM1_09f,L0027        ; Branch to 0x0027 if Bit 6 Clear (Mn = 0)
          brset 6,RAM1_05d,L0027        ; Branch to 0x0027 if Bit 6 is set at RAM1_05d (Mn=1)
          lda RAM1_07a                  ; Load Accumulator with value of Memory at RAM1_07a, A <- (RAM1_07a)
          beq L000B                     ; Branch to 0x000B if Equal Z=1           
          brclr 7,RAM1_09f,L0003        ; Branch to 0x0003 if Bit 7 Clear (Mn = 0)
          bclr 6,RAM1_09f               ; Clear bit 6 at RAM1_09f                 
          rts                           ; Return from Subroutine                  
; 
          db $3F, $7A, $A4, $1F         ; data?  , z,  ,                          
          db $AA, $C0, $20, $14         ; data?  ,  , SPACE,                      
          db $1D, $9F, $B6, $9F         ; data?  ,  ,  ,                          
          db $2A, $04, $A8, $90         ; data? *,  ,  ,                          
          db $20, $0A, $97, $D6         ; data? SPACE,  ,  ,                      
          db $28, $5B, $0B, $69         ; data? (, [,  , i                        
          db $03, $D6, $28, $2D         ; data?  ,  , (, -                        
          db $B7, $78, $A1, $01         ; data?  , x,  ,                          
          db $27, $02, $1C, $5D         ; data? ',  ,  , ]                        
X2827: 
          db $81, $19, $0A, $4B         ; data?  ,  ,  , K                        
          db $25, $32, $00, $E1         ; data? %, 2,  ,                          
          db $E2, $E3, $E4, $E5         ; data?  ,  ,  ,                          
          db $E6, $E7, $07, $E9         ; data?  ,  ,  ,                          
          db $01, $01, $01, $ED         ; data?  ,  ,  ,                          
          db $0D, $09, $0A, $F6         ; data?  ,  ,  ,                          
          db $01, $F3, $0C, $F5         ; data?  ,  ,  ,                          
          db $01, $F7, $F8, $F9         ; data?  ,  ,  ,                          
          db $FA, $FB, $FC, $FD         ; data?  ,  ,  ,                          
          db $FE, $06, $EA, $01         ; data?  ,  ,  ,                          
          db $02, $0F, $0F, $03         ; data?  ,  ,  ,                          
          db $FF, $F4, $08, $EE         ; data?  ,  ,  ,                          
          db $EF, $F0, $F1, $F2         ; data?  ,  ,  ,                          
          db $00, $E1, $E2, $E3         ; data?  ,  ,  ,                          
          db $E4, $E5, $E6, $E7         ; data?  ,  ,  ,                          
          db $E8, $E9, $04, $EB         ; data?  ,  ,  ,                          
          db $EC, $ED, $0D, $09         ; data?  ,  ,  ,                          
          db $0A, $F6, $05, $F3         ; data?  ,  ,  ,                          
          db $0C, $F5, $0B, $F7         ; data?  ,  ,  ,                          
          db $F8, $F9, $FA, $FB         ; data?  ,  ,  ,                          
          db $FC, $FD, $FE, $06         ; data?  ,  ,  ,                          
          db $EA, $01, $02, $0F         ; data?  ,  ,  ,                          
          db $0F, $03, $FF, $F4         ; data?  ,  ,  ,                          
          db $08, $EE, $EF, $F0         ; data?  ,  ,  ,                          
          db $F1, $F2                   ; data?  ,  ,  ,                          
; 
L2889: 
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          cmp RAM1_078                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_078)
          beq L00AF                     ; Branch to 0x00AF if Equal Z=1           
          cmp #$1F                      ; Compare Accumulator with Memory Byte, (A) - (0x1F)
          bne L0099                     ; Branch to 0x0099 if Not Equal (Z = 0);  
          eor RAM1_078                  ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM1_078)
          and #$F0                      ; Logical AND between A and constant 0xF0, A ← (A) && (0xF0)
          bra L00AF                     ; Branch Always (1 = 1)                   
; 
          db $A5, $E0, $27, $0F         ; data?  ,  , ',                          
          db $A5, $1F, $26, $0B         ; data?  ,  , &,                          
          db $B8, $78, $27, $07         ; data?  , x, ',                          
          db $A1, $06, $22, $03         ; data?  ,  , ",                          
          db $A5, $00, $81, $A6         ; data?  ,  ,  ,                          
          db $01, $81, $81              ; data?  ,  ,  ,                          
; 
L28B0: 
          brset 6,RAM1_05f,L0132        ; Branch to 0x0132 if Bit 6 is set at RAM1_05f (Mn=1)
          brclr 1,RAM1_0bc,L00CB        ; Branch to 0x00CB if Bit 1 Clear (Mn = 0)
          brset 7,RAM1_0b9,L00CB        ; Branch to 0x00CB if Bit 7 is set at RAM1_0b9 (Mn=1)
          brset 7,RAM1_0b3,L00CB        ; Branch to 0x00CB if Bit 7 is set at RAM1_0b3 (Mn=1)
          brclr 2,STACK_0ce,L00C5       ; Branch to 0x00C5 if Bit 2 Clear (Mn = 0)
          brset 1,STACK_0ce,L00C5       ; Branch to 0x00C5 if Bit 1 is set at STACK_0ce (Mn=1)
          brclr 0,STACK_0ce,L00CB       ; Branch to 0x00CB if Bit 0 Clear (Mn = 0)
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          sta RAM1_0b3                  ; Store Accumulator in Memory at RAM1_0b3 
          bclr 1,RAM1_0bc               ; Clear bit 1 at RAM1_0bc                 
          brclr 5,STACK_0cb,L00F5       ; Branch to 0x00F5 if Bit 5 Clear (Mn = 0)
          lda STACK_0d5                 ; Load Accumulator with value of Memory at STACK_0d5, A <- (STACK_0d5)
          and #$70                      ; Logical AND between A and constant 0x70, A ← (A) && (0x70)
          bne L00F5                     ; Branch to 0x00F5 if Not Equal (Z = 0);  
          lda STACK_0d5                 ; Load Accumulator with value of Memory at STACK_0d5, A <- (STACK_0d5)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          beq L00F5                     ; Branch to 0x00F5 if Equal Z=1           
          cmp #$06                      ; Compare Accumulator with Memory Byte, (A) - (0x06)
          bcc L00F5                     ; Branch to 0x00F5 if C bit is cleared    
          clra                          ; Clear byte at clra <- 0x00              
          brset 3,STACK_0ce,L00E8       ; Branch to 0x00E8 if Bit 3 is set at STACK_0ce (Mn=1)
          brclr 6,RAM1_0b5,L00EA        ; Branch to 0x00EA if Bit 6 Clear (Mn = 0)
          brset 2,RAM1_0b8,L00EA        ; Branch to 0x00EA if Bit 2 is set at RAM1_0b8 (Mn=1)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          eor STACK_0d5                 ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (STACK_0d5)
          and #$08                      ; Logical AND between A and constant 0x08, A ← (A) && (0x08)
          beq L00F5                     ; Branch to 0x00F5 if Equal Z=1           
          eor STACK_0d5                 ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (STACK_0d5)
          jsr L2591                     ; Jump to Subroutine at 0x2591            
          bclr 6,STACK_0d2              ; Clear bit 6 at STACK_0d2                
          lda RAM1_0b6                  ; Load Accumulator with value of Memory at RAM1_0b6, A <- (RAM1_0b6)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          cmp #$06                      ; Compare Accumulator with Memory Byte, (A) - (0x06)
          bne L0101                     ; Branch to 0x0101 if Not Equal (Z = 0);  
          bset 6,STACK_0d2              ; Set Bit 6 at memory STACK_0d2 (Mn <- 1 )
          lda RAM1_07f                  ; Load Accumulator with value of Memory at RAM1_07f, A <- (RAM1_07f)
          and #$2B                      ; Logical AND between A and constant 0x2B, A ← (A) && (0x2B)
          cmp #$02                      ; Compare Accumulator with Memory Byte, (A) - (0x02)
          bne L0132                     ; Branch to 0x0132 if Not Equal (Z = 0);  
          brset 5,STACK_0ce,L0118       ; Branch to 0x0118 if Bit 5 is set at STACK_0ce (Mn=1)
          lda STACK_0ca                 ; Load Accumulator with value of Memory at STACK_0ca, A <- (STACK_0ca)
          and #$0F                      ; Logical AND between A and constant 0x0F, A ← (A) && (0x0F)
          cmp #$01                      ; Compare Accumulator with Memory Byte, (A) - (0x01)
          beq L0118                     ; Branch to 0x0118 if Equal Z=1           
          cmp #$06                      ; Compare Accumulator with Memory Byte, (A) - (0x06)
          bne L0132                     ; Branch to 0x0132 if Not Equal (Z = 0);  
          brset 5,STACK_0cb,L0123       ; Branch to 0x0123 if Bit 5 is set at STACK_0cb (Mn=1)
          brset 6,STACK_0cb,L0123       ; Branch to 0x0123 if Bit 6 is set at STACK_0cb (Mn=1)
          brclr 7,STACK_0cb,L0129       ; Branch to 0x0129 if Bit 7 Clear (Mn = 0)
          bset 2,STACK_0cb              ; Set Bit 2 at memory STACK_0cb (Mn <- 1 )
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          bclr 5,STACK_0cb              ; Clear bit 5 at STACK_0cb                
          bclr 6,STACK_0cb              ; Clear bit 6 at STACK_0cb                
          brset 6,STACK_0ce,L0132       ; Branch to 0x0132 if Bit 6 is set at STACK_0ce (Mn=1)
          brclr 6,RAM1_05d,L0132        ; Branch to 0x0132 if Bit 6 Clear (Mn = 0)
          jmp L2CD4                     ; Unconditional Jump to 0x2CD4            
; 
          db $81, $B6, $B8, $A4         ; data?  ,  ,  ,                          
          db $60, $A1, $60, $26         ; data? `,  , `, &                        
          db $08, $B6, $B8, $A4         ; data?  ,  ,  ,                          
          db $0F, $AA, $10, $20         ; data?  ,  ,  , SPACE                    
          db $16, $A6, $10, $20         ; data?  ,  ,  , SPACE                    
          db $08, $B6, $B8, $A4         ; data?  ,  ,  ,                          
          db $60, $27, $06, $A6         ; data? `, ',  ,                          
          db $F0, $BB, $B8, $20         ; data?  ,  ,  , SPACE                    
          db $0B, $B6, $B8, $A4         ; data?  ,  ,  ,                          
          db $0F, $AA, $60, $04         ; data?  ,  , `,                          
          db $B8, $02, $A8, $01         ; data?  ,  ,  ,                          
          db $AA, $80, $20, $2B         ; data?  ,  , SPACE, +                    
          db $B6, $B8, $04, $B8         ; data?  ,  ,  ,                          
          db $05, $A4, $03, $4C         ; data?  ,  ,  , L                        
          db $20, $1F, $A6, $08         ; data? SPACE,  ,  ,                      
          db $07, $B8, $18, $4F         ; data?  ,  ,  , O                        
          db $20, $17, $B6, $B8         ; data? SPACE,  ,  ,                      
          db $04, $B8, $08, $48         ; data?  ,  ,  , H                        
          db $48, $B8, $B8, $A4         ; data? H,  ,  ,                          
          db $08, $20, $06, $44         ; data?  , SPACE,  , D                    
          db $44, $B8, $B8, $A4         ; data? D,  ,  ,                          
          db $02, $AA, $04, $B8         ; data?  ,  ,  ,                          
          db $B8, $AA, $F0, $B7         ; data?  ,  ,  ,                          
          db $B4, $A6, $80, $20         ; data?  ,  ,  , SPACE                    
          db $57, $20, $B2, $20         ; data? W, SPACE,  , SPACE                
          db $9C, $20, $C9, $20         ; data?  , SPACE,  , SPACE                
          db $D9, $04, $B8, $FB         ; data?  ,  ,  ,                          
          db $0A, $69, $20, $A6         ; data?  , i, SPACE,                      
          db $01, $20, $E4, $05         ; data?  , SPACE,  ,                      
          db $B8, $05, $18, $B3         ; data?  ,  ,  ,                          
          db $1A, $B3, $81, $09         ; data?  ,  ,  ,                          
          db $CE, $E9, $A6, $30         ; data?  ,  ,  , 0                        
          db $CC, $2A, $6B, $CC         ; data?  , *, k,                          
          db $2B, $14, $04, $B6         ; data? +,  ,  ,                          
          db $06, $06, $8E, $13         ; data?  ,  ,  ,                          
          db $05, $B8, $17, $81         ; data?  ,  ,  ,                          
          db $A6, $19, $02, $B5         ; data?  ,  ,  ,                          
          db $02, $A6, $18, $CD         ; data?  ,  ,  ,                          
          db $24, $E5, $A6, $61         ; data? $,  ,  , a                        
          db $CC, $2A, $57, $1C         ; data?  , *, W,                          
          db $C5, $A6, $63, $CC         ; data?  ,  , c,                          
          db $2A, $59, $CC, $2A         ; data? *, Y,  , *                        
          db $91, $1E, $D2, $AE         ; data?  ,  ,  ,                          
          db $FA, $BF, $D1, $20         ; data?  ,  ,  , SPACE                    
          db $34, $A6, $A4, $0B         ; data? 4,  ,  ,                          
          db $B6, $02, $A6, $B4         ; data?  ,  ,  ,                          
          db $1F, $D2, $20, $69         ; data?  ,  , SPACE, i                    
          db $A6, $86, $B7, $B3         ; data?  ,  ,  ,                          
          db $1F, $D2, $14, $CB         ; data?  ,  ,  ,                          
          db $81, $A6, $08, $04         ; data?  ,  ,  ,                          
          db $B8, $12, $AE, $9F         ; data?  ,  ,  ,                          
          db $CD, $38, $CC, $B7         ; data?  , 8,  ,                          
          db $5B, $B6, $B8, $CD         ; data? [,  ,  ,                          
          db $38, $A0, $B8, $5B         ; data? 8,  ,  , [                        
          db $A4, $01, $AA, $02         ; data?  ,  ,  ,                          
          db $CC, $29, $89, $1E         ; data?  , ),  ,                          
          db $D2, $20, $05, $1E         ; data?  , SPACE,  ,                      
          db $D2, $A6, $C4, $C1         ; data?  ,  ,  ,                          
          db $A6, $CC, $0F, $D2         ; data?  ,  ,  ,                          
          db $B9, $AE, $FA, $BF         ; data?  ,  ,  ,                          
          db $D1, $20, $17, $0E         ; data?  , SPACE,  ,                      
          db $D2, $2D, $A6, $D4         ; data?  , -,  ,                          
          db $20, $05, $0E, $D2         ; data? SPACE,  ,  ,                      
          db $26, $A6, $DC, $19         ; data? &,  ,  ,                          
          db $BB, $1B, $BB, $20         ; data?  ,  ,  , SPACE                    
          db $20, $A6, $C4, $C1         ; data? SPACE,  ,  ,                      
          db $A6, $CC, $06, $5D         ; data?  ,  ,  , ]                        
          db $2E, $19, $BB, $1B         ; data? .,  ,  ,                          
          db $BB, $0F, $D2, $02         ; data?  ,  ,  ,                          
          db $AA, $07, $B7, $B3         ; data?  ,  ,  ,                          
          db $14, $CB, $0F, $D2         ; data?  ,  ,  ,                          
          db $1A, $AE, $FA, $BF         ; data?  ,  ,  ,                          
          db $D1, $20, $14, $A6         ; data?  , SPACE,  ,                      
          db $94, $14, $CB, $1A         ; data?  ,  ,  ,                          
          db $D2, $B7, $B3, $CC         ; data?  ,  ,  ,                          
          db $2B, $0A, $A6, $8A         ; data? +,  ,  ,                          
          db $CD, $2B, $36, $1B         ; data?  , +, 6,                          
          db $D2, $1E, $7E, $A6         ; data?  ,  , ~,                          
          db $90, $B7, $77, $81         ; data?  ,  , w,                          
          db $1A, $7E, $0B, $D2         ; data?  , ~,  ,                          
          db $FA, $13, $CB, $A6         ; data?  ,  ,  ,                          
          db $80, $CD, $2B, $36         ; data?  ,  , +, 6                        
          db $20, $25, $5F, $1A         ; data? SPACE, %, _,                      
          db $D2, $04, $BA, $0C         ; data?  ,  ,  ,                          
          db $06, $CE, $09, $08         ; data?  ,  ,  ,                          
          db $B6, $09, $0F, $BA         ; data?  ,  ,  ,                          
          db $06, $05, $B6, $03         ; data?  ,  ,  ,                          
          db $CC, $2A, $FB, $0B         ; data?  , *,  ,                          
          db $B6, $03, $A6, $B4         ; data?  ,  ,  ,                          
          db $C1, $A6, $42, $B7         ; data?  ,  , B,                          
          db $B3, $18, $CC, $A6         ; data?  ,  ,  ,                          
          db $B0, $20, $CA, $A6         ; data?  , SPACE,  ,                      
          db $27, $CD, $25, $B7         ; data? ',  , %,                          
          db $A1, $19, $24, $0A         ; data?  ,  , $,                          
          db $16, $5D, $B6, $B4         ; data?  , ],  ,                          
          db $A4, $74, $A1, $60         ; data?  , t,  , `                        
          db $27, $11, $07, $81         ; data? ',  ,  ,                          
          db $09, $17, $81, $AE         ; data?  ,  ,  ,                          
          db $A8, $CD, $38, $CC         ; data?  ,  , 8,                          
          db $B7, $85, $07, $5D         ; data?  ,  ,  , ]                        
          db $16, $20, $3B, $AE         ; data?  , SPACE, ;,                      
          db $82, $B8, $B8, $A4         ; data?  ,  ,  ,                          
          db $74, $27, $2A, $17         ; data? t, ', *,                          
          db $5D, $16, $7E, $16         ; data? ],  , ~,                          
          db $81, $B6, $88, $40         ; data?  ,  ,  , @                        
          db $44, $B7, $85, $06         ; data? D,  ,  ,                          
          db $8E, $24, $B6, $B4         ; data?  , $,  ,                          
          db $A4, $7F, $B1, $B8         ; data?  , DEL,  ,                        
          db $26, $1C, $05, $CE         ; data? &,  ,  ,                          
          db $19, $02, $CE, $16         ; data?  ,  ,  ,                          
          db $00, $CE, $13, $CD         ; data?  ,  ,  ,                          
          db $1D, $F2, $B4, $56         ; data?  ,  ,  , V                        
          db $27, $0C, $1F, $B5         ; data? ',  ,  ,                          
          db $C1, $BF, $B3, $20         ; data?  ,  ,  , SPACE                    
          db $05, $A6, $80, $CD         ; data?  ,  ,  ,                          
          db $2B, $36, $14, $CE         ; data? +, 6,  ,                          
          db $13, $CE, $11, $CE         ; data?  ,  ,  ,                          
          db $A6, $7D, $B7, $CF         ; data?  , },  ,                          
          db $07, $CE, $06, $13         ; data?  ,  ,  ,                          
          db $CE, $A6, $32, $B7         ; data?  ,  , 2,                          
          db $CF, $81, $0A, $D2         ; data?  ,  ,  ,                          
          db $0E, $1A, $D2, $09         ; data?  ,  ,  ,                          
          db $BB, $04, $A6, $C2         ; data?  ,  ,  ,                          
          db $20, $13, $A6, $01         ; data? SPACE,  ,  ,                      
          db $B7, $CC, $81, $B6         ; data?  ,  ,  ,                          
          db $CC, $A1, $FF, $26         ; data?  ,  ,  , &                        
          db $F5, $1B, $D2, $B6         ; data?  ,  ,  ,                          
          db $B7, $B7, $C8, $A6         ; data?  ,  ,  ,                          
          db $C0, $CC, $24, $E8         ; data?  ,  , $,                          
          db $B7, $B3, $14, $CB         ; data?  ,  ,  ,                          
          db $1F, $D2, $B6, $78         ; data?  ,  ,  , x                        
          db $CD, $26, $1E, $B8         ; data?  , &,  ,                          
          db $B8, $A4, $70, $B8         ; data?  ,  , p,                          
          db $B8, $AA, $80, $B7         ; data?  ,  ,  ,                          
          db $B4, $0B, $69, $02         ; data?  ,  , i,                          
          db $11, $B4, $81, $07         ; data?  ,  ,  ,                          
          db $CE, $03, $CC, $2B         ; data?  ,  ,  , +                        
          db $D8, $0E, $B9, $26         ; data?  ,  ,  , &                        
          db $0F, $BA, $03, $04         ; data?  ,  ,  ,                          
          db $B6, $20, $07, $8E         ; data?  , SPACE,  ,                      
          db $1D, $0F, $C5, $1A         ; data?  ,  ,  ,                          
          db $09, $B5, $17, $0D         ; data?  ,  ,  ,                          
          db $C5, $14, $1D, $C5         ; data?  ,  ,  ,                          
          db $1A, $C5, $B6, $C5         ; data?  ,  ,  ,                          
          db $A4, $1F, $CD, $25         ; data?  ,  ,  , %                        
          db $9A, $B6, $C5, $A4         ; data?  ,  ,  ,                          
          db $1F, $AB, $23, $CC         ; data?  ,  ,  #,                         
          db $24, $E8, $A6, $01         ; data? $,  ,  ,                          
          db $09, $BB, $04, $07         ; data?  ,  ,  ,                          
          db $B5, $01, $4C, $0E         ; data?  ,  , L,                          
          db $B9, $06, $0F, $BA         ; data?  ,  ,  ,                          
          db $05, $05, $B6, $02         ; data?  ,  ,  ,                          
          db $A6, $03, $CD, $25         ; data?  ,  ,  , %                        
          db $65, $A6, $13, $0C         ; data? e,  ,  ,                          
          db $D2, $32, $07, $B5         ; data?  , 2,  ,                          
          db $19, $0F, $BA, $03         ; data?  ,  ,  ,                          
          db $04, $B6, $13, $09         ; data?  ,  ,  ,                          
          db $CE, $0B, $0C, $BB         ; data?  ,  ,  ,                          
          db $03, $01, $BB, $0A         ; data?  ,  ,  ,                          
          db $A6, $CE, $CC, $24         ; data?  ,  ,  , $                        
          db $CB, $A6, $C2, $08         ; data?  ,  ,  ,                          
          db $BB, $F8, $0B, $BB         ; data?  ,  ,  ,                          
          db $1C, $4F, $05, $B8         ; data?  , O,  ,                          
          db $07, $AA, $10, $07         ; data?  ,  ,  ,                          
          db $8E, $02, $AA, $20         ; data?  ,  ,  , SPACE                    
          db $B7, $C9, $B6, $B7         ; data?  ,  ,  ,                          
          db $B7, $C8, $A6, $C0         ; data?  ,  ,  ,                          
          db $0F, $CB, $03, $CC         ; data?  ,  ,  ,                          
          db $24, $DC, $CC, $24         ; data? $,  ,  , $                        
          db $CB, $81, $0C, $5F         ; data?  ,  ,  , _                        
          db $4E, $05, $B6, $07         ; data? N,  ,  ,                          
          db $CD, $2B, $0A, $A6         ; data?  , +,  ,                          
          db $70, $20, $E9, $B6         ; data? p, SPACE,  ,                      
          db $CF, $4A, $02, $CE         ; data?  , J,  ,                          
          db $28, $01, $B9, $08         ; data? (,  ,  ,                          
          db $0C, $BB, $02, $2B         ; data?  ,  ,  , +                        
          db $18, $04, $BF, $15         ; data?  ,  ,  ,                          
          db $2A, $0E, $A6, $32         ; data? *,  ,  , 2                        
          db $B7, $CF, $A6, $D4         ; data?  ,  ,  ,                          
          db $07, $B6, $02, $A6         ; data?  ,  ,  ,                          
          db $DC, $CC, $2A, $57         ; data?  ,  , *, W                        
          db $0B, $D2, $96, $20         ; data?  ,  ,  , SPACE                    
          db $D6, $A6, $0A, $B7         ; data?  ,  ,  ,                          
          db $CE, $A6, $7D, $B7         ; data?  ,  , },                          
          db $CF, $2A, $8A, $A6         ; data?  , *,  ,                          
          db $4B, $B7, $CF, $AE         ; data? K,  ,  ,                          
          db $04, $CD, $26, $49         ; data?  ,  , &, I                        
          db $1C, $5F, $B6, $B7         ; data?  , _,  ,                          
          db $B7, $C4, $A6, $15         ; data?  ,  ,  ,                          
          db $CC, $24, $DC, $B6         ; data?  , $,  ,                          
          db $CF, $4A, $2A, $F6         ; data?  , J, *,                          
          db $11, $61, $14, $5D         ; data?  , a,  , ]                        
          db $81, $CC, $25, $04         ; data?  ,  , %,                          
          db $1F, $CB, $0C, $5F         ; data?  ,  ,  , _                        
          db $F8, $0F, $69, $F5         ; data?  ,  , i,                          
          db $B6, $B8, $04, $B8         ; data?  ,  ,  ,                          
          db $20, $A4, $07, $97         ; data? SPACE,  ,  ,                      
          db $D6, $2C, $CF, $0B         ; data?  , ,,  ,                          
          db $69, $02, $A4, $0C         ; data? i,  ,  ,                          
          db $0F, $BA, $03, $04         ; data?  ,  ,  ,                          
          db $B6, $03, $07, $B5         ; data?  ,  ,  ,                          
          db $02, $AA, $02, $06         ; data?  ,  ,  ,                          
          db $8E, $0E, $03, $BB         ; data?  ,  ,  ,                          
          db $0B, $AA, $01, $20         ; data?  ,  ,  , SPACE                    
          db $07, $A6, $18, $07         ; data?  ,  ,  ,                          
          db $B8, $02, $A6, $1C         ; data?  ,  ,  ,                          
          db $5F, $CD, $24, $F5         ; data? _,  , $,                          
          db $06, $CE, $05, $B6         ; data?  ,  ,  ,                          
          db $BD, $04, $BB, $02         ; data?  ,  ,  ,                          
          db $B6, $B8, $A4, $70         ; data?  ,  ,  , p                        
          db $0F, $B9, $01, $4F         ; data?  ,  ,  , O                        
          db $CD, $26, $17, $CD         ; data?  , &,  ,                          
          db $24, $F5, $A6, $02         ; data? $,  ,  ,                          
          db $04, $B8, $24, $A6         ; data?  ,  , $,                          
          db $08, $0F, $BA, $03         ; data?  ,  ,  ,                          
          db $04, $B6, $03, $07         ; data?  ,  ,  ,                          
          db $B5, $02, $AA, $01         ; data?  ,  ,  ,                          
          db $06, $CE, $03, $0D         ; data?  ,  ,  ,                          
          db $B5, $02, $AA, $04         ; data?  ,  ,  ,                          
          db $07, $8E, $05, $09         ; data?  ,  ,  ,                          
          db $B5, $02, $AA, $04         ; data?  ,  ,  ,                          
          db $03, $B8, $09, $AA         ; data?  ,  ,  ,                          
          db $20, $20, $05, $07         ; data? SPACE, SPACE,  ,                  
          db $B8, $02, $AA, $20         ; data?  ,  ,  , SPACE                    
          db $0B, $B6, $02, $AA         ; data?  ,  ,  ,                          
          db $10, $0B, $69, $02         ; data?  ,  , i,                          
          db $A4, $2F, $CD, $24         ; data?  , /,  , $                        
          db $F5, $4F, $5C, $05         ; data?  , O, \,                          
          db $BB, $07, $B6, $BD         ; data?  ,  ,  ,                          
          db $A4, $70, $CD, $26         ; data?  , p,  , &                        
          db $17, $CD, $24, $F5         ; data?  ,  , $,                          
          db $81, $48, $28, $4C         ; data?  , H, (, L                        
          db $2C                        ; data? ,,  ,  ,                          
; 
L2CD3: 
          rts                           ; Return from Subroutine                  
; 
L2CD4: 
          clrx                          ; Clear byte at clrx <- 0x00              
          brclr 3,STACK_0ce,L04DA       ; Branch to 0x04DA if Bit 3 Clear (Mn = 0)
          ldx #$52                      ; Load Index Register with Memory Byte, X <- (0x52)
          lda X2CF1,x                   ; Load Accumulator with data from  memory at 0x2CF1, A <- (0x2CF1)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X2CF0,x                   ; Load Accumulator with data from  memory at 0x2CF0, A <- (0x2CF0)
          beq L04EF                     ; Branch to 0x04EF if Equal Z=1           
          jsr L2889                     ; Jump to Subroutine at 0x2889            
          bne L04DA                     ; Branch to 0x04DA if Not Equal (Z = 0);  
          ldx X2CEF,x                   ; Load Index Register with Memory Byte, X <- (0x2CEF)
          jsr L2993,x ;INFO: index jump ; Jump to Subroutine at 0x2993            
X2CEF: 
          rts                           ; Return from Subroutine                  
; 
X2CF0: 
          db $E0                        ; data?  ,  ,  ,                          
X2CF1: 
          db $E9, $A0, $CD, $80         ; data?  ,  ,  ,                          
          db $D2, $C0, $DB, $FF         ; data?  ,  ,  ,                          
          db $00, $F4, $02, $E9         ; data?  ,  ,  ,                          
          db $25, $A9, $2F, $C9         ; data? %,  , /,                          
          db $3E, $E7, $84, $F8         ; data? >,  ,  ,                          
          db $87, $87, $B9, $98         ; data?  ,  ,  ,                          
          db $B9, $A7, $82, $B8         ; data?  ,  ,  ,                          
          db $7E, $C7, $92, $D8         ; data? ~,  ,  ,                          
          db $99, $FC, $84, $FD         ; data?  ,  ,  ,                          
          db $87, $9C, $B9, $9D         ; data?  ,  ,  ,                          
          db $B9, $BC, $82, $BD         ; data?  ,  ,  ,                          
          db $7E, $DC, $92, $DD         ; data? ~,  ,  ,                          
          db $99, $F0, $84, $EF         ; data?  ,  ,  ,                          
          db $87, $90, $B9, $8F         ; data?  ,  ,  ,                          
          db $B9, $B0, $82, $AF         ; data?  ,  ,  ,                          
          db $7E, $D0, $92, $CF         ; data? ~,  ,  ,                          
          db $99, $0B, $50, $F5         ; data?  ,  , P,                          
          db $45, $B5, $5B, $D5         ; data? E,  , [,                          
          db $64, $08, $04, $F6         ; data? d,  ,  ,                          
          db $12, $D6, $22, $36         ; data?  ,  , ", 6                        
          db $06, $E7, $95, $F8         ; data?  ,  ,  ,                          
          db $9C, $FC, $95, $FD         ; data?  ,  ,  ,                          
          db $9C, $F0, $95, $EF         ; data?  ,  ,  ,                          
          db $9C, $F5, $64, $E0         ; data?  ,  , d,                          
          db $E2, $F7, $08, $00         ; data?  ,  ,  ,                          
; 
L2D55: 
          brset 7,RAM1_060,L0577        ; Branch to 0x0577 if Bit 7 is set at RAM1_060 (Mn=1)
          brclr 3,RAM1_08b,L0577        ; Branch to 0x0577 if Bit 3 Clear (Mn = 0)
          lda #$48                      ; Load Accumulator with 0x48, A <- 0x48   
          brset 2,RAM1_0be,L0562        ; Branch to 0x0562 if Bit 2 is set at RAM1_0be (Mn=1)
          lda #$08                      ; Load Accumulator with 0x08, A <- 0x08   
          brset 3,RAM1_05f,L057A        ; Branch to 0x057A if Bit 3 is set at RAM1_05f (Mn=1)
          lda #$40                      ; Load Accumulator with 0x40, A <- 0x40   
          brset 4,RAM1_0ba,L057A        ; Branch to 0x057A if Bit 4 is set at RAM1_0ba (Mn=1)
          brset 2,RAM1_0be,L057A        ; Branch to 0x057A if Bit 2 is set at RAM1_0be (Mn=1)
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          brset 7,RAM1_05f,L0581        ; Branch to 0x0581 if Bit 7 is set at RAM1_05f (Mn=1)
          lda #$80                      ; Load Accumulator with 0x80, A <- 0x80   
          brset 2,RAM1_0ba,L0581        ; Branch to 0x0581 if Bit 2 is set at RAM1_0ba (Mn=1)
          clra                          ; Clear byte at clra <- 0x00              
          bra L0581                     ; Branch Always (1 = 1)                   
; 
          db $0B, $CB, $04, $1B         ; data?  ,  ,  ,                          
          db $CB, $1E, $5D, $B8         ; data?  ,  , ],                          
          db $7F, $A4, $CC, $B7         ; data? DEL,  ,  ,                        
          db $5B, $B8, $7F, $B7         ; data? [,  , DEL,                        
          db $7F, $A4, $60, $26         ; data? DEL,  , `, &                      
          db $0F, $06, $81, $0C         ; data?  ,  ,  ,                          
          db $09, $7F, $09, $19         ; data?  , DEL,  ,                        
          db $7F, $AE, $A8, $CD         ; data? DEL,  ,  ,                        
          db $38, $CC, $B7, $85         ; data? 8,  ,  ,                          
          db $01, $61, $5D, $3D         ; data?  , a, ], =                        
          db $5B, $27, $27, $1E         ; data? [, ', ',                          
          db $5D, $10, $CB, $16         ; data? ],  ,  ,                          
          db $7E, $14, $CB, $06         ; data? ~,  ,  ,                          
          db $CE, $4F, $07, $5B         ; data?  , O,  , [                        
          db $08, $1E, $5D, $10         ; data?  ,  , ],                          
          db $CB, $18, $B3, $1F         ; data?  ,  ,  ,                          
          db $D2, $0D, $5B, $0E         ; data?  ,  , [,                          
          db $1E, $5D, $0C, $7F         ; data?  , ],  , DEL                      
          db $09, $AE, $A8, $CD         ; data?  ,  ,  ,                          
          db $38, $CC, $B7, $85         ; data? 8,  ,  ,                          
          db $20, $00, $0B, $7C         ; data? SPACE,  ,  , |                    
          db $30, $0C, $7C, $19         ; data? 0,  , |,                          
          db $05, $69, $2A, $15         ; data?  , i, *,                          
          db $69, $15, $D2, $19         ; data? i,  ,  ,                          
          db $D3, $AE, $A5, $CD         ; data?  ,  ,  ,                          
          db $38, $A0, $02, $7F         ; data? 8,  ,  , DEL                      
          db $1C, $01, $7F, $19         ; data?  ,  , DEL,                        
          db $04, $81, $12, $20         ; data?  ,  ,  , SPACE                    
          db $2E, $04, $69, $11         ; data? .,  , i,                          
          db $14, $69, $14, $81         ; data?  , i,  ,                          
          db $03, $7F, $02, $15         ; data?  , DEL,  ,                        
          db $81, $14, $CB, $18         ; data?  ,  ,  ,                          
          db $B3, $CC, $2F, $57         ; data?  ,  , /, W                        
          db $81, $B6, $7F, $00         ; data?  ,  , DEL,                        
          db $80, $04, $A5, $EA         ; data?  ,  ,  ,                          
          db $27, $4A, $A5, $03         ; data? ', J,  ,                          
          db $26, $10, $03, $D2         ; data? &,  ,  ,                          
          db $52, $00, $D2, $4F         ; data? R,  ,  , O                        
          db $10, $D2, $AE, $88         ; data?  ,  ,  ,                          
          db $CC, $2E, $C7, $CC         ; data?  , .,  ,                          
          db $2F, $12, $01, $7F         ; data? /,  ,  , DEL                      
          db $3F, $05, $D2, $7E         ; data?  ,  ,  , ~                        
          db $0A, $7F, $39, $07         ; data?  , DEL, 9,                        
          db $5F, $03, $02, $7C         ; data? _,  ,  , |                        
          db $75, $0E, $D3, $72         ; data? u,  ,  , r                        
          db $1E, $D3, $15, $D3         ; data?  ,  ,  ,                          
          db $07, $6A, $02, $14         ; data?  , j,  ,                          
          db $D3, $13, $D3, $03         ; data?  ,  ,  ,                          
          db $7C, $11, $12, $D3         ; data? |,  ,  ,                          
          db $10, $D3, $01, $7C         ; data?  ,  ,  , |                        
          db $05, $04, $7C, $07         ; data?  ,  , |,                          
          db $20, $03, $05, $7C         ; data? SPACE,  ,  , |                    
          db $02, $11, $D3, $A6         ; data?  ,  ,  ,                          
          db $88, $CC, $2F, $06         ; data?  ,  , /,                          
          db $07, $8B, $09, $0E         ; data?  ,  ,  ,                          
          db $60, $06, $B6, $CE         ; data? `,  ,  ,                          
          db $A4, $C8, $27, $0C         ; data?  ,  , ',                          
          db $02, $D2, $62, $04         ; data?  ,  , b,                          
          db $D2, $03, $07, $7C         ; data?  ,  ,  , |                        
          db $39, $CC, $2F, $00         ; data? 9,  , /,                          
          db $01, $7F, $14, $02         ; data?  , DEL,  ,                        
          db $D2, $53, $0D, $7C         ; data?  , S,  , |                        
          db $2D, $08, $7C, $2A         ; data? -,  , |, *                        
          db $05, $D2, $54, $0E         ; data?  ,  , T,                          
          db $D3, $51, $20, $22         ; data?  , Q, SPACE, "                    
          db $CC, $2D, $D5, $04         ; data?  , -,  ,                          
          db $D2, $7C, $06, $7C         ; data?  , |,  , |                        
          db $79, $0D, $6A, $8F         ; data? y,  , j,                          
          db $C6, $02, $65, $A4         ; data?  ,  , e,                          
          db $F0, $A1, $B0, $27         ; data?  ,  ,  , '                        
          db $07, $07, $D4, $04         ; data?  ,  ,  ,                          
          db $17, $D4, $20, $1A         ; data?  ,  , SPACE,                      
          db $03, $D2, $17, $00         ; data?  ,  ,  ,                          
          db $D2, $14, $1B, $80         ; data?  ,  ,  ,                          
          db $B6, $85, $26, $02         ; data?  ,  , &,                          
          db $1A, $80, $0D, $5D         ; data?  ,  ,  , ]                        
          db $75, $07, $8B, $72         ; data? u,  ,  , r                        
          db $00, $80, $6F, $CC         ; data?  ,  , o,                          
          db $31, $0A, $12, $D2         ; data? 1,  ,  ,                          
          db $11, $D2, $18, $B3         ; data?  ,  ,  ,                          
          db $AE, $8D, $05, $D4         ; data?  ,  ,  ,                          
          db $08, $AE, $83, $20         ; data?  ,  ,  , SPACE                    
          db $04, $AE, $80, $13         ; data?  ,  ,  ,                          
          db $D2, $BF, $7D, $1C         ; data?  ,  , },                          
          db $94, $20, $49, $14         ; data?  , SPACE, I,                      
          db $D2, $18, $B3, $13         ; data?  ,  ,  ,                          
          db $7F, $10, $7F, $06         ; data? DEL,  , DEL,                      
          db $D3, $0D, $16, $D3         ; data?  ,  ,  ,                          
          db $A6, $8C, $08, $D3         ; data?  ,  ,  ,                          
          db $27, $A6, $8D, $10         ; data? ',  ,  ,                          
          db $7C, $20, $21, $A6         ; data? |, SPACE, !,                      
          db $8F, $0F, $D3, $1C         ; data?  ,  ,  ,                          
          db $1F, $D3, $B6, $D3         ; data?  ,  ,  ,                          
          db $A4, $07, $0B, $D3         ; data?  ,  ,  ,                          
          db $02, $AA, $08, $97         ; data?  ,  ,  ,                          
          db $D6, $30, $FA, $05         ; data?  , 0,  ,                          
          db $D3, $0A, $16, $6A         ; data?  ,  ,  , j                        
          db $20, $08, $A6, $80         ; data? SPACE,  ,  ,                      
          db $15, $D2, $17, $7C         ; data?  ,  ,  , |                        
          db $17, $6A, $B7, $7B         ; data?  , j,  , {                        
          db $1A, $94, $A1, $81         ; data?  ,  ,  ,                          
          db $27, $0A, $20, $04         ; data? ',  , SPACE,                      
          db $12, $7F, $11, $7F         ; data?  , DEL,  , DEL                    
          db $1F, $D2, $14, $CB         ; data?  ,  ,  ,                          
          db $18, $5C, $1E, $5D         ; data?  , \,  , ]                        
          db $16, $BC, $81, $0D         ; data?  ,  ,  ,                          
          db $7C, $14, $0A, $7F         ; data? |,  ,  , DEL                      
          db $11, $A6, $81, $20         ; data?  ,  ,  , SPACE                    
          db $DB, $06, $8E, $1C         ; data?  ,  ,  ,                          
          db $03, $A1, $03, $07         ; data?  ,  ,  ,                          
          db $D2, $04, $A6, $B0         ; data?  ,  ,  ,                          
          db $B7, $77, $81, $0B         ; data?  , w,  ,                          
          db $7F, $0E, $1B, $7F         ; data? DEL,  ,  , DEL                    
          db $13, $CE, $11, $CE         ; data?  ,  ,  ,                          
          db $A6, $80, $B7, $A0         ; data?  ,  ,  ,                          
          db $17, $D2, $20, $CC         ; data?  ,  , SPACE,                      
          db $06, $7F, $EB, $15         ; data?  , DEL,  ,                        
          db $81, $1C, $C5, $00         ; data?  ,  ,  ,                          
          db $7F, $19, $03, $7F         ; data? DEL,  ,  , DEL                    
          db $BB, $0A, $7C, $08         ; data?  ,  , |,                          
          db $A6, $84, $B7, $7B         ; data?  ,  ,  , {                        
          db $1A, $94, $20, $0B         ; data?  ,  , SPACE,                      
          db $05, $69, $08, $10         ; data?  , i,  ,                          
          db $7F, $19, $7C, $17         ; data? DEL,  , |,                        
          db $6A, $20, $0B, $0D         ; data? j, SPACE,  ,                      
          db $6A, $A2, $4F, $C7         ; data? j,  , O,                          
          db $02, $64, $11, $D4         ; data?  , d,  ,                          
          db $11, $7F, $13, $7F         ; data?  , DEL,  , DEL                    
          db $15, $BA, $20, $98         ; data?  ,  , SPACE,                      
          db $AE, $00, $C1, $AE         ; data?  ,  ,  ,                          
          db $06, $20, $18, $AE         ; data?  , SPACE,  ,                      
          db $06, $0D, $8E, $13         ; data?  ,  ,  ,                          
          db $B6, $CE, $A4, $F8         ; data?  ,  ,  ,                          
          db $B7, $CE, $CD, $25         ; data?  ,  ,  , %                        
          db $4B, $A6, $C4, $CC         ; data? K,  ,  ,                          
          db $24, $E8, $AE, $04         ; data? $,  ,  ,                          
          db $C1, $AE, $02, $0A         ; data?  ,  ,  ,                          
          db $7F, $98, $05, $CE         ; data? DEL,  ,  ,                        
          db $11, $03, $CE, $0E         ; data?  ,  ,  ,                          
          db $00, $CE, $0B, $B3         ; data?  ,  ,  ,                          
          db $D0, $26, $07, $3F         ; data?  , &,  ,                          
          db $CF, $10, $CF, $3F         ; data?  ,  ,  ,                          
          db $CC, $81, $0E, $7F         ; data?  ,  ,  , DEL                      
          db $FC, $0A, $80, $F9         ; data?  ,  ,  ,                          
          db $B6, $82, $A4, $8F         ; data?  ,  ,  ,                          
          db $27, $25, $A1, $01         ; data? ', %,  ,                          
          db $27, $21, $A4, $0F         ; data? ', !,  ,                          
          db $27, $1D, $A1, $02         ; data? ',  ,  ,                          
          db $26, $E7, $0E, $B9         ; data? &,  ,  ,                          
          db $E4, $05, $B6, $13         ; data?  ,  ,  ,                          
          db $B6, $B6, $A1, $05         ; data?  ,  ,  ,                          
          db $27, $DB, $0E, $B5         ; data? ',  ,  ,                          
          db $04, $1E, $B5, $16         ; data?  ,  ,  ,                          
          db $BC, $18, $B3, $1A         ; data?  ,  ,  ,                          
          db $B3, $1F, $D2, $BF         ; data?  ,  ,  ,                          
          db $D0, $14, $CE, $12         ; data?  ,  ,  ,                          
          db $CE, $11, $CE, $A6         ; data?  ,  ,  ,                          
          db $96, $B7, $CF, $CC         ; data?  ,  ,  ,                          
          db $30, $C1, $A6, $01         ; data? 0,  ,  ,                          
          db $C1, $A6, $FF, $AE         ; data?  ,  ,  ,                          
          db $50, $20, $07, $A6         ; data? P, SPACE,  ,                      
          db $01, $C1, $A6, $FF         ; data?  ,  ,  ,                          
          db $AE, $30, $BF, $77         ; data?  , 0,  , w                        
          db $20, $62, $B6, $78         ; data? SPACE, b,  , x                    
          db $A4, $0F, $AB, $F9         ; data?  ,  ,  ,                          
          db $40, $27, $A2, $05         ; data? @, ',  ,                          
          db $CE, $56, $03, $CE         ; data?  , V,  ,                          
          db $53, $00, $CE, $50         ; data? S,  ,  , P                        
          db $B7, $57, $CD, $30         ; data?  , W,  , 0                        
          db $C1, $AD, $37, $22         ; data?  ,  , 7, "                        
          db $26, $CD, $30, $E2         ; data? &,  , 0,                          
          db $26, $08, $3D, $63         ; data? &,  , =, c                        
          db $26, $C1, $BB, $57         ; data? &,  ,  , W                        
          db $20, $13, $2A, $0B         ; data? SPACE,  , *,                      
          db $BB, $57, $2B, $0D         ; data?  , W, +,                          
          db $A6, $28, $B7, $63         ; data?  , (,  , c                        
          db $4F, $20, $06, $BB         ; data? O, SPACE,  ,                      
          db $57, $2B, $F5, $27         ; data? W, +,  , '                        
          db $F3, $AD, $13, $22         ; data?  ,  ,  , "                        
          db $A6, $20, $02, $3F         ; data?  , SPACE,  ,                      
          db $56, $AD, $74, $B6         ; data? V,  , t,                          
          db $56, $CD, $38, $A0         ; data? V,  , 8,                          
          db $18, $7E, $16, $7E         ; data?  , ~,  , ~                        
          db $20, $95, $BE, $D0         ; data? SPACE,  ,  ,                      
          db $58, $B7, $56, $2A         ; data? X,  , V, *                        
          db $02, $40, $5C, $03         ; data?  , @, \,                          
          db $81, $02, $5C, $5C         ; data?  ,  , \, \                        
          db $D1, $30, $B1, $81         ; data?  , 0,  ,                          
          db $0A, $82, $43, $0E         ; data?  ,  , C,                          
          db $87, $40, $0C, $7F         ; data?  , @,  , DEL                      
          db $03, $0B, $7F, $0D         ; data?  ,  , DEL,                        
          db $08, $7F, $0D, $BE         ; data?  , DEL,  ,                        
          db $86, $B3, $85, $23         ; data?  ,  ,  ,  #                       
          db $07, $BF, $85, $20         ; data?  ,  ,  , SPACE                    
          db $03, $06, $82, $2A         ; data?  ,  ,  , *                        
          db $18, $7F, $BB, $85         ; data?  , DEL,  ,                        
          db $2B, $13, $06, $81         ; data? +,  ,  ,                          
          db $06, $A1, $1E, $23         ; data?  ,  ,  ,  #                       
          db $02, $A6, $1E, $0F         ; data?  ,  ,  ,                          
          db $82, $08, $3D, $85         ; data?  ,  , =,                          
          db $26, $14, $A6, $01         ; data? &,  ,  ,                          
          db $B1, $4F, $B7, $85         ; data?  , O,  ,                          
          db $0C, $7F, $0B, $0E         ; data?  , DEL,  ,                        
          db $7F, $08, $0A, $7F         ; data? DEL,  ,  , DEL                    
          db $05, $06, $81, $02         ; data?  ,  ,  ,                          
          db $16, $5C, $81, $06         ; data?  , \,  ,                          
          db $06, $05, $05, $06         ; data?  ,  ,  ,                          
          db $06, $05, $05, $0F         ; data?  ,  ,  ,                          
          db $0F, $0F, $0F, $0F         ; data?  ,  ,  ,                          
          db $0F, $0F, $0F              ; data?  ,  ,  ,                          
; 
L30C1: 
          brclr 6,RAM1_07f,L00D4        ; Branch to 0x00D4 if Bit 6 Clear (Mn = 0)
          ldx #$0E                      ; Load Index Register with Memory Byte, X <- (0x0E)
          lda #$2B                      ; Load Accumulator with 0x2B, A <- 0x2B   
          brset 2,RAM1_0be,L00F3        ; Branch to 0x00F3 if Bit 2 is set at RAM1_0be (Mn=1)
          brset 5,RAM1_0b9,L00F3        ; Branch to 0x00F3 if Bit 5 is set at RAM1_0b9 (Mn=1)
          ldx #$10                      ; Load Index Register with Memory Byte, X <- (0x10)
          lda #$2A                      ; Load Accumulator with 0x2A, A <- 0x2A   
          bra L00F3                     ; Branch Always (1 = 1)                   
; 
          db $AE, $12, $A6, $38         ; data?  ,  ,  , 8                        
          db $06, $8E, $04, $AE         ; data?  ,  ,  ,                          
          db $11, $A6, $37, $06         ; data?  ,  , 7,                          
          db $7F, $11, $B6, $D0         ; data? DEL,  ,  ,                        
          db $B7, $C7, $1E, $C7         ; data?  ,  ,  ,                          
          db $44, $AB, $A0, $CD         ; data? D,  ,  ,                          
          db $38, $CB, $B7, $C8         ; data? 8,  ,  ,                          
          db $1C, $C6, $81, $CD         ; data?  ,  ,  ,                          
          db $25, $9A, $9F, $CC         ; data? %,  ,  ,                          
          db $24, $CB, $8F, $8F         ; data? $,  ,  ,                          
          db $8A, $8B, $90, $90         ; data?  ,  ,  ,                          
          db $89, $89, $8F, $8F         ; data?  ,  ,  ,                          
          db $82, $83, $90, $90         ; data?  ,  ,  ,                          
          db $89, $89, $5F, $07         ; data?  ,  , _,                          
          db $CE, $02, $AE, $22         ; data?  ,  ,  , "                        
          db $D6, $31, $27, $B7         ; data?  , 1, ',                          
          db $56, $D6, $31, $26         ; data? V,  , 1, &                        
          db $27, $0B, $CD, $28         ; data? ',  ,  , (                        
          db $89, $26, $F1, $DE         ; data?  , &,  ,                          
          db $31, $25, $DD, $2F         ; data? 1, %,  , /                        
          db $21, $81, $0D, $64         ; data? !,  ,  , d                        
          db $09, $77, $0A, $5D         ; data?  , w,  , ]                        
          db $0C, $7A, $1F, $E7         ; data?  , z,  ,                          
          db $FA, $DC, $3A, $D3         ; data?  ,  , :,                          
          db $5A, $D3, $DA, $92         ; data? Z,  ,  ,                          
          db $FB, $DF, $3B, $D6         ; data?  ,  , ;,                          
          db $5B, $D6, $DB, $92         ; data? [,  ,  ,                          
          db $EB, $0A, $CB, $18         ; data?  ,  ,  ,                          
          db $EE, $0A, $CE, $18         ; data?  ,  ,  ,                          
          db $06, $00, $00              ; data?  ,  ,  ,                          
; 
L314B: 
          jmp L2631                     ; Unconditional Jump to 0x2631            
; 
L314E: 
          lda #$C8                      ; Load Accumulator with 0xC8, A <- 0xC8   
          nop                           ; No Operation                            
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bne L0150                     ; Branch to 0x0150 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L3155: 
          clr RAM1_0a1                  ; Clear byte at RAM1_0a1 <- 0x00          
          clr RAM1_0a2                  ; Clear byte at RAM1_0a2 <- 0x00          
          clr RAM1_0b2                  ; Clear byte at RAM1_0b2 <- 0x00          
          brclr 4,RAM1_069,L0170        ; Branch to 0x0170 if Bit 4 Clear (Mn = 0)
          jmp L3199                     ; Unconditional Jump to 0x3199            
; 
          db $CC, $32, $2B              ; data?  , 2, +,                          
; 
L3164: 
          brclr 4,RAM1_069,L0170        ; Branch to 0x0170 if Bit 4 Clear (Mn = 0)
          jmp L31DA                     ; Unconditional Jump to 0x31DA            
; 
L316A: 
          brclr 4,RAM1_069,L0170        ; Branch to 0x0170 if Bit 4 Clear (Mn = 0)
          jmp L31FE                     ; Unconditional Jump to 0x31FE            
; 
          db $1F, $A0, $81              ; data?  ,  ,  ,                          
; 
L3173: 
          jmp L3176                     ; Unconditional Jump to 0x3176            
; 
L3176: 
          brclr 1,RAM1_0a1,L0197        ; Branch to 0x0197 if Bit 1 Clear (Mn = 0)
          dec RAM1_0af                  ; Decrement Byte at RAM1_0af Byte = Byte - 1
          bpl L0197                     ; Branch to 0x0197 if Plus N = 0          
          brset 7,RAM1_0a1,L0183        ; Branch to 0x0183 if Bit 7 is set at RAM1_0a1 (Mn=1)
          jmp L322B                     ; Unconditional Jump to 0x322B            
; 
          db $04, $A1, $11, $A6         ; data?  ,  ,  ,                          
          db $14, $B7, $AF, $CD         ; data?  ,  ,  ,                          
          db $34, $53, $A1, $03         ; data? 4, S,  ,                          
          db $23, $06, $3C, $B1         ; data?  #,  , <,                         
          db $26, $02, $12, $B1         ; data? &,  ,  ,                          
          db $99, $81                   ; data?  ,  ,  ,                          
; 
L3199: 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 3,PortC                  ; Set RD_SP LOW                           
          bclr 2,PortC                  ; Set WR_SP LOW                           
          cli                           ; Clear Interrupt Mask (I <- 0)           
          jsr L314B                     ; Jump to Subroutine at 0x314B            
          sei                           ; Set Interrupt Mask, I ← 1);           
          bset 2,PortC                  ; Set WR_SP HIGH                          
          bset 3,PortC                  ; Set RD_SP HIGH                          
          cli                           ; Clear Interrupt Mask (I <- 0)           
          bsr L01BC                     ; Branch to Subroutine at 0x01BC          
          ldx #$A3                      ; Load Index Register with Memory Byte, X <- (0xA3)
          clr PortB,x                   ; Clear byte at PortB <- 0x00             
          jsr L3395                     ; Jump to Subroutine at 0x3395            
          jsr L33DB                     ; Jump to Subroutine at 0x33DB            
          inc RAM1_0b2                  ; Increment Byte RAM1_0b2, Byte = Byte + 1
          brclr 4,RAM1_0b2,L01AA        ; Branch to 0x01AA if Bit 4 Clear (Mn = 0)
          bclr 4,RAM1_0b2               ; Clear bit 4 at RAM1_0b2                 
          rts                           ; Return from Subroutine                  
; 
          db $00, $A1, $FC, $CD         ; data?  ,  ,  ,                          
          db $32, $5E, $A6, $4C         ; data? 2, ^,  , L                        
          db $AD, $0E, $A6, $A6         ; data?  ,  ,  ,                          
          db $AD, $0A, $A6, $07         ; data?  ,  ,  ,                          
          db $AD, $06, $4F, $CD         ; data?  ,  , O,                          
          db $33, $4F, $A6, $0E         ; data? 3, O,  ,                          
          db $AE, $50, $F7, $CC         ; data?  , P,  ,                          
          db $32, $F3                   ; data? 2,  ,  ,                          
; 
L31DA: 
          brclr 7,RAM1_0a0,L0209        ; Branch to 0x0209 if Bit 7 Clear (Mn = 0)
          brclr 0,RAM1_0a1,L01E6        ; Branch to 0x01E6 if Bit 0 Clear (Mn = 0)
          lda RAM1_0a0                  ; Load Accumulator with value of Memory at RAM1_0a0, A <- (RAM1_0a0)
          and #$08                      ; Logical AND between A and constant 0x08, A ← (A) && (0x08)
          bne L0209                     ; Branch to 0x0209 if Not Equal (Z = 0);  
          lda RAM1_0a0                  ; Load Accumulator with value of Memory at RAM1_0a0, A <- (RAM1_0a0)
          and #$0F                      ; Logical AND between A and constant 0x0F, A ← (A) && (0x0F)
          bsr L01F7                     ; Branch to Subroutine at 0x01F7          
          bclr 7,RAM1_0a0               ; Clear bit 7 at RAM1_0a0                 
          lda RAM1_0a0                  ; Load Accumulator with value of Memory at RAM1_0a0, A <- (RAM1_0a0)
          jsr L2616                     ; Jump to Subroutine at 0x2616            
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          beq L0209                     ; Branch to 0x0209 if Equal Z=1           
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          ldx X3418,x                   ; Load Index Register with Memory Byte, X <- (0x3418)
          jmp L33DB,x ;INFO: index jump ; Unconditional Jump to 0x33DB            
; 
L31FE: 
          brset 0,RAM1_0a1,L020A        ; Branch to 0x020A if Bit 0 is set at RAM1_0a1 (Mn=1)
          brset 2,RAM1_0a1,L0209        ; Branch to 0x0209 if Bit 2 is set at RAM1_0a1 (Mn=1)
          brset 1,RAM1_0a1,L020A        ; Branch to 0x020A if Bit 1 is set at RAM1_0a1 (Mn=1)
          clr RAM1_0a1                  ; Clear byte at RAM1_0a1 <- 0x00          
          rts                           ; Return from Subroutine                  
; 
          db $CD, $33, $38, $A4         ; data?  , 3, 8,                          
          db $20, $26, $F8, $02         ; data? SPACE, &,  ,                      
          db $A1, $10, $B6, $AE         ; data?  ,  ,  ,                          
          db $A1, $02, $27, $03         ; data?  ,  , ',                          
          db $09, $A1, $03, $1A         ; data?  ,  ,  ,                          
          db $A1, $81, $A6, $91         ; data?  ,  ,  ,                          
          db $20, $2F, $07, $A1         ; data? SPACE, /,  ,                      
          db $E0, $A6, $92, $20         ; data?  ,  ,  , SPACE                    
          db $5D                        ; data? ],  ,  ,                          
; 
L322B: 
          bsr L0257                     ; Branch to Subroutine at 0x0257          
          brclr 0,RAM1_0a1,L0209        ; Branch to 0x0209 if Bit 0 Clear (Mn = 0)
          bsr L025E                     ; Branch to Subroutine at 0x025E          
          jmp L3477                     ; Unconditional Jump to 0x3477            
; 
          db $00, $A1, $D1, $AD         ; data?  ,  ,  ,                          
          db $1D, $B6, $A2, $A4         ; data?  ,  ,  ,                          
          db $0F, $B7, $A2, $CD         ; data?  ,  ,  ,                          
          db $34, $EA, $B6, $AD         ; data? 4,  ,  ,                          
          db $27, $04, $AB, $01         ; data? ',  ,  ,                          
          db $24, $02, $A6, $02         ; data? $,  ,  ,                          
          db $B7, $AE, $B7, $B1         ; data?  ,  ,  ,                          
          db $A6, $89, $B7, $A1         ; data?  ,  ,  ,                          
          db $20, $33, $03, $A1         ; data? SPACE, 3,  ,                      
          db $AF, $3F, $A1, $AD         ; data?  ,  ,  ,                          
          db $00, $A6, $05, $CC         ; data?  ,  ,  ,                          
          db $33, $4F, $B6, $A2         ; data? 3, O,  ,                          
          db $A4, $0F, $27, $71         ; data?  ,  , ', q                        
          db $AD, $EC, $AE, $AD         ; data?  ,  ,  ,                          
          db $CD, $33, $91, $0D         ; data?  , 3,  ,                          
          db $A0, $05, $AE, $A3         ; data?  ,  ,  ,                          
          db $CD, $33, $B5, $CD         ; data?  , 3,  ,                          
          db $33, $DB, $BE, $AE         ; data? 3,  ,  ,                          
          db $BF, $B1, $B3, $AD         ; data?  ,  ,  ,                          
          db $25, $03, $A6, $8A         ; data? %,  ,  ,                          
          db $C1, $A6, $82, $B7         ; data?  ,  ,  ,                          
          db $A1, $A6, $08, $AD         ; data?  ,  ,  ,                          
          db $D2, $B6, $AD, $05         ; data?  ,  ,  ,                          
          db $A1, $04, $B6, $B1         ; data?  ,  ,  ,                          
          db $1C, $A1, $B7, $58         ; data?  ,  ,  , X                        
          db $4F, $07, $A1, $03         ; data? O,  ,  ,                          
          db $4A, $B7, $58, $AE         ; data? J,  , X,                          
          db $56, $B7, $57, $A6         ; data? V,  , W,                          
          db $00, $F7, $AD, $32         ; data?  ,  ,  , 2                        
          db $AE, $56, $A6, $7F         ; data?  , V,  , DEL                      
          db $F7, $B6, $B1, $A1         ; data?  ,  ,  ,                          
          db $02, $25, $03, $09         ; data?  , %,  ,                          
          db $A1, $02, $A6, $02         ; data?  ,  ,  ,                          
          db $E7, $01, $7F, $AD         ; data?  ,  , DEL,                        
          db $1F, $A6, $03, $00         ; data?  ,  ,  ,                          
          db $A1, $02, $A6, $02         ; data?  ,  ,  ,                          
          db $AD, $99, $A6, $04         ; data?  ,  ,  ,                          
          db $AD, $95, $CD, $34         ; data?  ,  ,  , 4                        
          db $F2, $5F, $AD, $67         ; data?  , _,  , g                        
          db $A4, $20, $26, $05         ; data?  , SPACE, &,                      
          db $5A, $26, $F7, $3F         ; data? Z, &,  ,                          
          db $A1, $81, $AD, $16         ; data?  ,  ,  ,                          
          db $64, $01, $76, $64         ; data? d,  , v, d                        
          db $01, $76, $64, $01         ; data?  , v, d,                          
          db $76, $64, $01, $76         ; data? v, d,  , v                        
          db $0D, $A1, $05, $7C         ; data?  ,  ,  , |                        
          db $7C, $7C, $1D, $A1         ; data? |, |,  ,                          
          db $AD, $00, $F6, $AD         ; data?  ,  ,  ,                          
          db $59, $F6, $CD, $26         ; data? Y,  ,  , &                        
          db $17, $5C, $20, $52         ; data?  , \, SPACE, R                    
; 
L32FD: 
          lda #$09                      ; Load Accumulator with 0x09, A <- 0x09   
          bsr L034F                     ; Branch to Subroutine at 0x034F          
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          jsr L314E                     ; Jump to Subroutine at 0x314E            
          ldx #$50                      ; Load Index Register with Memory Byte, X <- (0x50)
          bsr L0320                     ; Branch to Subroutine at 0x0320          
          sta ,x                        ; Store Accumulator in Memory at          
          incx                          ; Increment Byte incx, Byte = Byte + 1    
cpx #$54 
          bls L0308                     ; Branch to 0x0308 if Lower or Same C v Z = 1
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
          db $AD, $0C, $CD, $26         ; data?  ,  ,  , &                        
          db $17, $B7, $59, $AD         ; data?  ,  , Y,                          
          db $0A, $A4, $F0, $BA         ; data?  ,  ,  ,                          
          db $59, $81, $A6, $31         ; data? Y,  ,  , 1                        
          db $4A, $26, $FD, $A6         ; data? J, &,  ,                          
          db $1B, $4A, $26, $FD         ; data?  , J, &,                          
          db $9B, $B6, $06, $A4         ; data?  ,  ,  ,                          
          db $03, $AB, $0C, $B7         ; data?  ,  ,  ,                          
          db $06, $9A, $14, $02         ; data?  ,  ,  ,                          
          db $17, $02, $AD, $45         ; data?  ,  ,  , E                        
          db $B6, $02, $16, $02         ; data?  ,  ,  ,                          
          db $81, $A6, $03, $3F         ; data?  ,  ,  ,                          
          db $5A, $16, $02, $3A         ; data? Z,  ,  , :                        
          db $5A, $26, $03, $CC         ; data? Z, &,  ,                          
          db $32, $D8, $AD, $31         ; data? 2,  ,  , 1                        
          db $17, $02, $CD, $34         ; data?  ,  ,  , 4                        
          db $F2, $08, $02, $ED         ; data?  ,  ,  ,                          
          db $A1, $05, $27, $06         ; data?  ,  , ',                          
          db $0A, $02, $E6, $C1         ; data?  ,  ,  ,                          
          db $A6, $02, $CD, $26         ; data?  ,  ,  , &                        
          db $1E, $AA, $0F, $9B         ; data?  ,  ,  ,                          
          db $B7, $02, $B6, $06         ; data?  ,  ,  ,                          
          db $A4, $03, $AB, $FC         ; data?  ,  ,  ,                          
          db $B7, $06, $9A, $15         ; data?  ,  ,  ,                          
          db $02, $AD, $0A, $14         ; data?  ,  ,  ,                          
          db $02, $B6, $06, $A4         ; data?  ,  ,  ,                          
          db $03, $AB, $0C, $B7         ; data?  ,  ,  ,                          
          db $06, $CD, $34, $F2         ; data?  ,  , 4,                          
          db $81, $11, $58, $20         ; data?  ,  , X, SPACE                    
          db $04                        ; data?  ,  ,  ,                          
; 
L3395: 
          bset 0,RAM1_058               ; Set Bit 0 at memory RAM1_058 (Mn <- 1 ) 
          bclr 1,RAM1_058               ; Clear bit 1 at RAM1_058                 
          stx RAM1_057                  ; Store Index Register In Memory at RAM1_057
          lda RAM1_0a2                  ; Load Accumulator with value of Memory at RAM1_0a2, A <- (RAM1_0a2)
          jsr L2617                     ; Jump to Subroutine at 0x2617            
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          lda RAM1_0b2                  ; Load Accumulator with value of Memory at RAM1_0b2, A <- (RAM1_0b2)
          and #$0F                      ; Logical AND between A and constant 0x0F, A ← (A) && (0x0F)
          sub RAM1_052                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_052)
          bpl L03AC                     ; Branch to 0x03AC if Plus N = 0          
          add #$0A                      ; A + 0x0A (without CARRY), A ← (A) + 0x0A
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          ldx RAM1_057                  ; Load Index Register with Memory Byte, X <- (RAM1_057)
          lda #$04                      ; Load Accumulator with 0x04, A <- 0x04   
          cmp XA608                     ; Compare Accumulator with Memory Byte, (A) - (0xA608)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          brclr 0,RAM1_058,L03CA        ; Branch to 0x03CA if Bit 0 Clear (Mn = 0)
          lda ,x                        ; Load Accumulator with value of Memory at , A <- ()
          stx RAM1_05a                  ; Store Index Register In Memory at RAM1_05a
          ldx RAM1_059                  ; Load Index Register with Memory Byte, X <- (RAM1_059)
          sta RAM2_02d8,x               ; Store Accumulator in Memory at RAM2_02d8
          ldx RAM1_05a                  ; Load Index Register with Memory Byte, X <- (RAM1_05a)
          inc RAM1_059                  ; Increment Byte RAM1_059, Byte = Byte + 1
          bra L03D6                     ; Branch Always (1 = 1)                   
; 
          db $BF, $5A, $BE, $59         ; data?  , Z,  , Y                        
          db $3C, $59, $D6, $02         ; data? <, Y,  ,                          
          db $D8, $BE, $5A, $F7         ; data?  ,  , Z,                          
          db $5C, $3A, $56, $26         ; data? \, :, V, &                        
          db $DE                        ; data?  ,  ,  ,                          
; 
L33DB: 
          rts                           ; Return from Subroutine                  
; 
          db $B6, $A2, $A1, $0F         ; data?  ,  ,  ,                          
          db $27, $2B, $AB, $10         ; data? ', +,  ,                          
          db $A1, $A0, $24, $25         ; data?  ,  , $, %                        
          db $97, $CD, $26, $17         ; data?  ,  , &,                          
          db $B7, $56, $B6, $A2         ; data?  , V,  ,                          
          db $A4, $0F, $B1, $56         ; data?  ,  ,  , V                        
          db $25, $17, $9F, $20         ; data? %,  ,  , SPACE                    
          db $0C, $B6, $A2, $A1         ; data?  ,  ,  ,                          
          db $0F, $27, $0E, $A4         ; data?  , ',  ,                          
          db $F0, $27, $0A, $A0         ; data?  , ',  ,                          
          db $10, $B8, $A2, $A4         ; data?  ,  ,  ,                          
          db $F0, $B8, $A2, $20         ; data?  ,  ,  , SPACE                    
          db $06, $4F, $81, $B6         ; data?  , O,  ,                          
          db $A2, $A4, $0F, $B7         ; data?  ,  ,  ,                          
          db $A2, $A4, $0F, $81         ; data?  ,  ,  ,                          
X3418: 
          db $6B, $00, $00, $00         ; data? k,  ,  ,                          
          db $50, $54, $58, $00         ; data? P, T, X,                          
          db $5C, $4D, $81, $81         ; data? \, M,  ,                          
          db $82, $68, $60, $64         ; data?  , h, `, d                        
          db $CC, $32, $35, $AD         ; data?  , 2, 5,                          
          db $AF, $20, $17, $AD         ; data?  , SPACE,  ,                      
          db $C8, $20, $13, $AD         ; data?  , SPACE,  ,                      
          db $DA, $20, $0F, $AD         ; data?  , SPACE,  ,                      
          db $D6, $20, $06, $AD         ; data?  , SPACE,  ,                      
          db $9F, $20, $02, $AD         ; data?  , SPACE,  ,                      
          db $B8, $27, $98, $CC         ; data?  , ',  ,                          
          db $32, $63, $02, $A1         ; data? 2, c,  ,                          
          db $03, $CC, $31, $61         ; data?  ,  , 1, a                        
          db $1F, $A1, $A6, $01         ; data?  ,  ,  ,                          
          db $B7, $AF, $81, $B6         ; data?  ,  ,  ,                          
          db $AD, $B0, $B1, $24         ; data?  ,  ,  , $                        
          db $02, $A0, $02, $81         ; data?  ,  ,  ,                          
          db $81, $CD, $32, $57         ; data?  ,  , 2, W                        
          db $15, $A1, $AE, $50         ; data?  ,  ,  , P                        
          db $CD, $33, $91, $CD         ; data?  , 3,  ,                          
          db $33, $DB, $B6, $52         ; data? 3,  ,  , R                        
          db $B7, $AB, $B6, $53         ; data?  ,  ,  , S                        
          db $B7, $AC, $BE, $B1         ; data?  ,  ,  ,                          
          db $CC, $32, $7F              ; data?  , 2, DEL,                        
; 
L3477: 
          jsr L32FD                     ; Jump to Subroutine at 0x32FD            
          lda ,x                        ; Load Accumulator with value of Memory at , A <- ()
          sta RAM1_0ad                  ; Store Accumulator in Memory at RAM1_0ad 
          brset 5,RAM1_0a1,L048A        ; Branch to 0x048A if Bit 5 is set at RAM1_0a1 (Mn=1)
          sub RAM1_0ae                  ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM1_0ae)
          bcc L0486                     ; Branch to 0x0486 if C bit is cleared    
          sub #$02                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x02)
          sub #$02                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x02)
          bcs L04E7                     ; Branch to 0x04E7 if C = 1               
          lda RAM1_0b2                  ; Load Accumulator with value of Memory at RAM1_0b2, A <- (RAM1_0b2)
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          cmp #$09                      ; Compare Accumulator with Memory Byte, (A) - (0x09)
          bls L0492                     ; Branch to 0x0492 if Lower or Same C v Z = 1
          clra                          ; Clear byte at clra <- 0x00              
          sta RAM1_0b2                  ; Store Accumulator in Memory at RAM1_0b2 
          ldx #$AD                      ; Load Index Register with Memory Byte, X <- (0xAD)
          jsr L3395                     ; Jump to Subroutine at 0x3395            
          ldx #$A3                      ; Load Index Register with Memory Byte, X <- (0xA3)
          jsr L33DB                     ; Jump to Subroutine at 0x33DB            
          lda RAM1_0ad                  ; Load Accumulator with value of Memory at RAM1_0ad, A <- (RAM1_0ad)
          add #$01                      ; A + 0x01 (without CARRY), A ← (A) + 0x01
          bcc L04A6                     ; Branch to 0x04A6 if C bit is cleared    
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          sta RAM1_0b1                  ; Store Accumulator in Memory at RAM1_0b1 
          clr RAM1_0a2                  ; Clear byte at RAM1_0a2 <- 0x00          
          lda RAM1_0ae                  ; Load Accumulator with value of Memory at RAM1_0ae, A <- (RAM1_0ae)
          cmp RAM1_0b1                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_0b1)
          bcc L04CE                     ; Branch to 0x04CE if C bit is cleared    
          sta RAM1_0ae                  ; Store Accumulator in Memory at RAM1_0ae 
          beq L04DA                     ; Branch to 0x04DA if Equal Z=1           
          brset 5,RAM1_0a1,L04E1        ; Branch to 0x04E1 if Bit 5 is set at RAM1_0a1 (Mn=1)
          lda RAM1_0a2                  ; Load Accumulator with value of Memory at RAM1_0a2, A <- (RAM1_0a2)
          cmp #$90                      ; Compare Accumulator with Memory Byte, (A) - (0x90)
          bcc L04E7                     ; Branch to 0x04E7 if C bit is cleared    
          add #$11                      ; A + 0x11 (without CARRY), A ← (A) + 0x11
          sta RAM1_0a2                  ; Store Accumulator in Memory at RAM1_0a2 
          ldx #$50                      ; Load Index Register with Memory Byte, X <- (0x50)
          bsr L04EC                     ; Branch to Subroutine at 0x04EC          
          lda RAM1_051                  ; Load Accumulator with value of Memory at RAM1_051, A <- (RAM1_051)
          brset 1,RAM1_0a1,L04D2        ; Branch to 0x04D2 if Bit 1 is set at RAM1_0a1 (Mn=1)
          cmp RAM1_0ae                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_0ae)
          bcs L04B0                     ; Branch to 0x04B0 if C = 1               
          bset 1,RAM1_0a1               ; Set Bit 1 at memory RAM1_0a1 (Mn <- 1 ) 
          bra L04D6                     ; Branch Always (1 = 1)                   
; 
          db $B1, $AE, $24, $04         ; data?  ,  , $,                          
          db $B1, $B1, $24, $D6         ; data?  ,  , $,                          
          db $B6, $A2, $27, $09         ; data?  ,  , ',                          
          db $0B, $A1, $02, $AA         ; data?  ,  ,  ,                          
          db $0F, $A4, $0F, $B7         ; data?  ,  ,  ,                          
          db $A2, $3F, $A1, $81         ; data?  ,  ,  ,                          
          db $AE, $AD, $CD, $33         ; data?  ,  ,  , 3                        
          db $91, $CC, $33, $DB         ; data?  ,  , 3,                          
          db $6D, $FF, $6D, $FF         ; data? m,  , m,                          
          db $81                        ; data?  ,  ,  ,                          
; 
L34F7: 
          brset 7,RAM1_0a0,L0500        ; Branch to 0x0500 if Bit 7 is set at RAM1_0a0 (Mn=1)
          lda STACK_0ce                 ; Load Accumulator with value of Memory at STACK_0ce, A <- (STACK_0ce)
          and #$C0                      ; Logical AND between A and constant 0xC0, A ← (A) && (0xC0)
          beq L0501                     ; Branch to 0x0501 if Equal Z=1           
          rts                           ; Return from Subroutine                  
; 
          db $0A, $CE, $3C, $03         ; data?  ,  , <,                          
          db $A1, $05, $0F, $A1         ; data?  ,  ,  ,                          
          db $02, $1A, $7F, $0B         ; data?  ,  , DEL,                        
          db $7F, $0F, $06, $7F         ; data? DEL,  ,  , DEL                    
          db $09, $0A, $B9, $06         ; data?  ,  ,  ,                          
          db $00, $5D, $06, $09         ; data?  , ],  ,                          
          db $BA, $03, $CC, $35         ; data?  ,  ,  , 5                        
          db $ED, $01, $A1, $09         ; data?  ,  ,  ,                          
          db $0B, $7F, $06, $10         ; data?  , DEL,  ,                        
          db $5D, $A6, $80, $20         ; data? ],  ,  , SPACE                    
          db $14, $0A, $B9, $0C         ; data?  ,  ,  ,                          
          db $09, $B9, $12, $02         ; data?  ,  ,  ,                          
          db $A1, $14, $0A, $7F         ; data?  ,  ,  , DEL                      
          db $11, $00, $5D, $0E         ; data?  ,  , ],                          
          db $00, $A1, $4C, $A6         ; data?  ,  , L,                          
          db $89, $B7, $A0, $20         ; data?  ,  ,  , SPACE                    
          db $46, $11, $5D, $00         ; data? F,  , ],                          
          db $A1, $DF, $0B, $7F         ; data?  ,  ,  , DEL                      
          db $3E, $19, $BA, $06         ; data? >,  ,  ,                          
          db $CE, $39, $03, $A1         ; data?  , 9,  ,                          
          db $06, $14, $CE, $1A         ; data?  ,  ,  ,                          
          db $CF, $20, $30, $BE         ; data?  , SPACE, 0,                      
          db $CF, $05, $CE, $1E         ; data?  ,  ,  ,                          
          db $07, $D2, $09, $B6         ; data?  ,  ,  ,                          
          db $A2, $A4, $F0, $26         ; data?  ,  ,  , &                        
          db $0E, $CC, $36, $86         ; data?  ,  , 6,                          
          db $5C, $26, $AF, $1F         ; data? \, &,  ,                          
          db $CF, $A6, $88, $10         ; data?  ,  ,  ,                          
          db $5D, $20, $0F, $CD         ; data? ], SPACE,  ,                      
          db $36, $A5, $A6, $85         ; data? 6,  ,  ,                          
          db $20, $0A, $5C, $26         ; data? SPACE,  , \, &                    
          db $0A, $07, $D2, $6C         ; data?  ,  ,  , l                        
          db $A6, $8D, $1D, $80         ; data?  ,  ,  ,                          
          db $CC, $36, $3B, $0D         ; data?  , 6, ;,                          
          db $5D, $35, $06, $7F         ; data? ], 5,  , DEL                      
          db $32, $CC, $36, $CD         ; data? 2,  , 6,                          
          db $A6, $44, $1C, $C5         ; data?  , D,  ,                          
          db $20, $3A, $B6, $7F         ; data? SPACE, :,  , DEL                  
          db $A4, $2B, $A1, $02         ; data?  , +,  ,                          
          db $26, $21, $A6, $30         ; data? &, !,  , 0                        
          db $20, $1B, $06, $CE         ; data? SPACE,  ,  ,                      
          db $1A, $06, $8E, $17         ; data?  ,  ,  ,                          
          db $06, $D2, $74, $0A         ; data?  ,  , t,                          
          db $7F, $44, $81, $06         ; data? DEL, D,  ,                        
          db $CE, $0D, $06, $8E         ; data?  ,  ,  ,                          
          db $E1, $03, $A1, $03         ; data?  ,  ,  ,                          
          db $07, $D2, $1A, $A6         ; data?  ,  ,  ,                          
          db $B0, $B7, $77, $81         ; data?  ,  , w,                          
          db $09, $BA, $06, $19         ; data?  ,  ,  ,                          
          db $BA, $A6, $F1, $20         ; data?  ,  ,  , SPACE                    
          db $07, $A6, $66, $05         ; data?  ,  , f,                          
          db $B8, $02, $A6, $26         ; data?  ,  ,  , &                        
          db $B7, $B3, $CC, $36         ; data?  ,  ,  , 6                        
          db $6A, $A6, $24, $06         ; data? j,  , $,                          
          db $8E, $B8, $06, $D2         ; data?  ,  ,  ,                          
          db $42, $0A, $7F, $06         ; data? B,  , DEL,                        
          db $0D, $B5, $E6, $04         ; data?  ,  ,  ,                          
          db $B8, $E3, $04, $BE         ; data?  ,  ,  ,                          
          db $D6, $03, $A1, $06         ; data?  ,  ,  ,                          
          db $A6, $80, $B7, $A0         ; data?  ,  ,  ,                          
          db $20, $77, $B6, $A2         ; data? SPACE, w,  ,                      
          db $A4, $0F, $0B, $7F         ; data?  ,  ,  , DEL                      
          db $07, $27, $6E, $CD         ; data?  , ', n,                          
          db $36, $A5, $20, $35         ; data? 6,  , SPACE, 5                    
          db $00, $A1, $02, $27         ; data?  ,  ,  , '                        
          db $0D, $19, $BA, $A6         ; data?  ,  ,  ,                          
          db $FF, $B7, $CF, $14         ; data?  ,  ,  ,                          
          db $CE, $A6, $80, $CC         ; data?  ,  ,  ,                          
          db $35, $83, $3F, $C8         ; data? 5,  ,  ,                          
          db $A6, $8A, $CD, $24         ; data?  ,  ,  , $                        
          db $E5, $A6, $2C, $CD         ; data?  ,  , ,,                          
          db $25, $9A, $81, $CD         ; data? %,  ,  ,                          
          db $36, $A5, $A6, $80         ; data? 6,  ,  ,                          
          db $02, $A1, $13, $B6         ; data?  ,  ,  ,                          
          db $A2, $A1, $0F, $27         ; data?  ,  ,  , '                        
          db $08, $4A, $CD, $26         ; data?  , J,  , &                        
          db $1E, $B1, $A2, $24         ; data?  ,  ,  , $                        
          db $03, $A6, $86, $C1         ; data?  ,  ,  ,                          
          db $A6, $84, $1A, $7F         ; data?  ,  ,  , DEL                      
          db $B7, $A0, $20, $57         ; data?  ,  , SPACE, W                    
          db $03, $5F, $03, $CC         ; data?  , _,  ,                          
          db $35, $CA, $0A, $7F         ; data? 5,  ,  , DEL                      
          db $5A, $14, $7E, $10         ; data? Z,  , ~,                          
          db $80, $A6, $02, $B7         ; data?  ,  ,  ,                          
          db $7F, $AE, $06, $CD         ; data? DEL,  ,  ,                        
          db $26, $49, $A6, $08         ; data? &, I,  ,                          
          db $B7, $CE, $A6, $26         ; data?  ,  ,  , &                        
          db $B7, $B3, $1B, $D2         ; data?  ,  ,  ,                          
          db $A6, $14, $AD, $31         ; data?  ,  ,  , 1                        
          db $19, $B3, $1B, $B6         ; data?  ,  ,  ,                          
          db $81, $1B, $7F, $13         ; data?  ,  , DEL,                        
          db $CE, $11, $CE, $17         ; data?  ,  ,  ,                          
          db $D2, $20, $2A, $0A         ; data?  , SPACE, *,                      
          db $7F, $2D, $08, $BA         ; data? DEL, -,  ,                        
          db $2A, $B6, $A2, $A4         ; data? *,  ,  ,                          
          db $0F, $27, $93, $A6         ; data?  , ',  ,                          
          db $86, $B7, $A0, $19         ; data?  ,  ,  ,                          
          db $BA, $17, $D2, $A6         ; data?  ,  ,  ,                          
          db $7D, $1C, $80, $15         ; data? },  ,  ,                          
          db $CE, $B7, $CF, $12         ; data?  ,  ,  ,                          
          db $CE, $10, $CE, $1A         ; data?  ,  ,  ,                          
          db $7F, $B7, $CF, $18         ; data? DEL,  ,  ,                        
          db $B3, $1A, $B3, $1F         ; data?  ,  ,  ,                          
          db $D2, $14, $CB, $16         ; data?  ,  ,  ,                          
          db $7E, $1E, $5D, $81         ; data? ~,  , ],                          
          db $16, $D2, $A6, $32         ; data?  ,  ,  , 2                        
          db $20, $DF, $B6, $A2         ; data? SPACE,  ,  ,                      
          db $A1, $0F, $26, $04         ; data?  ,  , &,                          
          db $A6, $01, $20, $0B         ; data?  ,  , SPACE,                      
          db $CD, $26, $17, $B7         ; data?  , &,  ,                          
          db $5B, $B6, $A2, $B0         ; data? [,  ,  ,                          
          db $5B, $A4, $0F, $B7         ; data? [,  ,  ,                          
          db $C8, $AB, $2C, $CD         ; data?  ,  , ,,                          
          db $25, $9A, $A6, $8A         ; data? %,  ,  ,                          
          db $CD, $24, $DC, $81         ; data?  , $,  ,                          
          db $5F, $0B, $CE, $02         ; data? _,  ,  ,                          
          db $AE, $0E, $D6, $36         ; data?  ,  ,  , 6                        
          db $EA, $B7, $56, $D6         ; data?  ,  , V,                          
          db $36, $E9, $27, $0B         ; data? 6,  , ',                          
          db $CD, $28, $89, $26         ; data?  , (,  , &                        
          db $F1, $DE, $36, $E8         ; data?  ,  , 6,                          
          db $DD, $35, $91, $81         ; data?  , 5,  ,                          
          db $E8, $1F, $C8, $45         ; data?  ,  ,  , E                        
          db $A8, $B0, $28, $00         ; data?  ,  , (,                          
          db $AB, $E3, $AE, $E3         ; data?  ,  ,  ,                          
          db $08, $12, $07, $30         ; data?  ,  ,  , 0                        
          db $E8, $30, $00              ; data?  , 0,  ,                          
; 
L36FC: 
          bsr L074A                     ; Branch to Subroutine at 0x074A          
          beq L070E                     ; Branch to 0x070E if Equal Z=1           
          lda #$81                      ; Load Accumulator with 0x81, A <- 0x81   
          sta RAM1_07b                  ; Store Accumulator in Memory at RAM1_07b 
          bset 5,RAM1_094               ; Set Bit 5 at memory RAM1_094 (Mn <- 1 ) 
          bset 2,RAM1_069               ; Set Bit 2 at memory RAM1_069 (Mn <- 1 ) 
          bset 1,RAM1_07f               ; Set Bit 1 at memory RAM1_07f (Mn <- 1 ) 
          bclr 0,RAM1_07f               ; Clear bit 0 at RAM1_07f                 
          bset 4,RAM1_05c               ; Set Bit 4 at memory RAM1_05c (Mn <- 1 ) 
          lda SEC_MODE                  ; Load Accumulator with value of Memory at SEC_MODE, A <- (SEC_MODE)
          and #$EF                      ; Logical AND between A and constant 0xEF, A ← (A) && (0xEF)
          brclr 7,RAM1_08b,L0718        ; Branch to 0x0718 if Bit 7 Clear (Mn = 0)
          ora #$10                      ; Logical OR Accumulator with Memory at 0x10, A <- (A) || (0x10)
          sta RAM1_08b                  ; Store Accumulator in Memory at RAM1_08b 
          bclr 7,RAM1_08b               ; Clear bit 7 at RAM1_08b                 
          and #$E0                      ; Logical AND between A and constant 0xE0, A ← (A) && (0xE0)
          cmp #$A0                      ; Compare Accumulator with Memory Byte, (A) - (0xA0)
          bne L0730                     ; Branch to 0x0730 if Not Equal (Z = 0);  
          lda SEC_CODE1                 ; Load Accumulator with value of Memory at SEC_CODE1, A <- (SEC_CODE1)
          sta RAM1_08c                  ; Store Accumulator in Memory at RAM1_08c 
          lda SEC_CODE2                 ; Load Accumulator with value of Memory at SEC_CODE2, A <- (SEC_CODE2)
          sta RAM1_08d                  ; Store Accumulator in Memory at RAM1_08d 
          lda #$A8                      ; Load Accumulator with 0xA8, A <- 0xA8   
          sta RAM1_08b                  ; Store Accumulator in Memory at RAM1_08b 
L3730: 
          bsr L074A                     ; Branch to Subroutine at 0x074A          
          beq L0736                     ; Branch to 0x0736 if Equal Z=1           
          bclr 3,RAM1_08b               ; Clear bit 3 at RAM1_08b                 
          brset 3,RAM1_08b,L0749        ; Branch to 0x0749 if Bit 3 is set at RAM1_08b (Mn=1)
          bset 0,RAM1_080               ; Set Bit 0 at memory RAM1_080 (Mn <- 1 ) 
          brclr 2,RAM1_08b,L0749        ; Branch to 0x0749 if Bit 2 Clear (Mn = 0)
          brclr 7,RAM1_064,L0749        ; Branch to 0x0749 if Bit 7 Clear (Mn = 0)
          clr RAM1_08b                  ; Clear byte at RAM1_08b <- 0x00          
          clra                          ; Clear byte at clra <- 0x00              
          jsr L3761                     ; Jump to Subroutine at 0x3761            
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
L374A: 
          lda SEC_CODE1                 ; Load Accumulator with value of Memory at SEC_CODE1, A <- (SEC_CODE1)
          cmp RAM1_08c                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_08c)
          bne L0749                     ; Branch to 0x0749 if Not Equal (Z = 0);  
          lda SEC_CODE2                 ; Load Accumulator with value of Memory at SEC_CODE2, A <- (SEC_CODE2)
          cmp RAM1_08d                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_08d)
          rts                           ; Return from Subroutine                  
; 
          db $03, $8B, $02, $14         ; data?  ,  ,  ,                          
          db $8B, $B6, $8B, $C1         ; data?  ,  ,  ,                          
          db $A6, $08                   ; data?  ,  ,  ,                          
; 
L3761: 
          ldx #$63                      ; Load Index Register with Memory Byte, X <- (0x63)
          jsr L388B                     ; Jump to Subroutine at 0x388B            
          bset 2,RAM1_05d               ; Set Bit 2 at memory RAM1_05d (Mn <- 1 ) 
          jmp L2725                     ; Unconditional Jump to 0x2725            
; 
L376B: 
          brclr 0,STACK_0d6,L0773       ; Branch to 0x0773 if Bit 0 Clear (Mn = 0)
          brclr 1,STACK_0d6,L0775       ; Branch to 0x0775 if Bit 1 Clear (Mn = 0)
          bclr 0,STACK_0d6              ; Clear bit 0 at STACK_0d6                
          bclr 2,STACK_0d6              ; Clear bit 2 at STACK_0d6                
          bset 1,STACK_0d6              ; Set Bit 1 at memory STACK_0d6 (Mn <- 1 )
          rts                           ; Return from Subroutine                  
; 
          db $13, $D6, $06, $10         ; data?  ,  ,  ,                          
          db $2E, $04, $D6, $2B         ; data? .,  ,  , +                        
          db $B6, $11, $0C, $BA         ; data?  ,  ,  ,                          
          db $03, $0B, $BA, $23         ; data?  ,  ,  ,  #                       
          db $00, $D6, $0F, $2B         ; data?  ,  ,  , +                        
          db $1B, $06, $D6, $1B         ; data?  ,  ,  ,                          
          db $C7, $02, $71, $10         ; data?  ,  , q,                          
          db $D6, $A4, $07, $B7         ; data?  ,  ,  ,                          
          db $D7, $81, $BE, $D7         ; data?  ,  ,  ,                          
          db $D7, $02, $72, $3A         ; data?  ,  , r, :                        
          db $D7, $2A, $04, $16         ; data?  , *,  ,                          
          db $D6, $11, $D6, $81         ; data?  ,  ,  ,                          
          db $B7, $D8, $81, $14         ; data?  ,  ,  ,                          
          db $D6, $10, $D6, $81         ; data?  ,  ,  ,                          
; 
L37B0: 
          brclr 7,STACK_0d6,L07F3       ; Branch to 0x07F3 if Bit 7 Clear (Mn = 0)
          brset 2,STACK_0d6,L07F3       ; Branch to 0x07F3 if Bit 2 is set at STACK_0d6 (Mn=1)
          lda STACK_0d9                 ; Load Accumulator with value of Memory at STACK_0d9, A <- (STACK_0d9)
          bne L07BC                     ; Branch to 0x07BC if Not Equal (Z = 0);  
          clr STACK_0d8                 ; Clear byte at STACK_0d8 <- 0x00         
          lda RAM2_027a                 ; Load Accumulator with value of Memory at RAM2_027a, A <- (RAM2_027a)
          ora #$80                      ; Logical OR Accumulator with Memory at 0x80, A <- (A) || (0x80)
          cmp STACK_0d8                 ; Compare Accumulator with Memory Byte, (A) - (STACK_0d8)
          beq L07E9                     ; Branch to 0x07E9 if Equal Z=1           
          lda STACK_0d9                 ; Load Accumulator with value of Memory at STACK_0d9, A <- (STACK_0d9)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          bne L07DA                     ; Branch to 0x07DA if Not Equal (Z = 0);  
          clrx                          ; Clear byte at clrx <- 0x00              
          bsr L0008                     ; Branch to Subroutine at 0x0008          
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bmi L07CC                     ; Branch to 0x07CC if Minus N = 1         
          eor RAM2_027a                 ; "EXCLUSIVE OR" Accumulator with Memory Byte, (A) X (RAM2_027a)
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          bne L07CC                     ; Branch to 0x07CC if Not Equal (Z = 0);  
          inc STACK_0d9                 ; Increment Byte STACK_0d9, Byte = Byte + 1
          bne L07F3                     ; Branch to 0x07F3 if Not Equal (Z = 0);  
          brclr 0,RAM1_061,L07E3        ; Branch to 0x07E3 if Bit 0 Clear (Mn = 0)
          bset 2,RAM1_05d               ; Set Bit 2 at memory RAM1_05d (Mn <- 1 ) 
          bclr 6,RAM1_0ba               ; Clear bit 6 at RAM1_0ba                 
          bclr 5,RAM1_0ba               ; Clear bit 5 at RAM1_0ba                 
          bclr 5,RAM1_061               ; Clear bit 5 at RAM1_061                 
          bclr 7,STACK_0d6              ; Clear bit 7 at STACK_0d6                
          brclr 1,RAM1_0bf,L07F1        ; Branch to 0x07F1 if Bit 1 Clear (Mn = 0)
          bclr 1,RAM1_0bf               ; Clear bit 1 at RAM1_0bf                 
          rts                           ; Return from Subroutine                  
; 
          db $11, $BF, $81              ; data?  ,  ,  ,                          
; 
L37F4: 
          brclr 6,STACK_0d6,L0014       ; Branch to 0x0014 if Bit 6 Clear (Mn = 0)
          bclr 6,STACK_0d6              ; Clear bit 6 at STACK_0d6                
          clra                          ; Clear byte at clra <- 0x00              
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          beq L0000                     ; Branch to 0x0000 if Equal Z=1           
          brclr 7,SCSR,L07FA            ; Branch to 0x07FA if Bit TDRE Clear (Mn = 0)
          lda RAM2_0271                 ; Load Accumulator with value of Memory at RAM2_0271, A <- (RAM2_0271)
          ora #$80                      ; Logical OR Accumulator with Memory at 0x80, A <- (A) || (0x80)
          sta SCDR                      ; Store Accumulator in Memory at SCDR     
          rts                           ; Return from Subroutine                  
; 
          db $4F, $4A, $27, $03         ; data? O, J, ',                          
          db $0F, $10, $FA, $D6         ; data?  ,  ,  ,                          
          db $02, $7A, $B7, $11         ; data?  , z,  ,                          
          db $81                        ; data?  ,  ,  ,                          
; 
L3815: 
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
          jsr L2504                     ; Jump to Subroutine at 0x2504            
          ldx #$A7                      ; Load Index Register with Memory Byte, X <- (0xA7)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          and #$03                      ; Logical AND between A and constant 0x03, A ← (A) && (0x03)
          sta RAM1_07f                  ; Store Accumulator in Memory at RAM1_07f 
          bset 7,RAM1_07f               ; Set Bit 7 at memory RAM1_07f (Mn <- 1 ) 
          ldx #$A5                      ; Load Index Register with Memory Byte, X <- (0xA5)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          and #$71                      ; Logical AND between A and constant 0x71, A ← (A) && (0x71)
          sta STACK_0d3                 ; Store Accumulator in Memory at STACK_0d3
          bset 7,RAM1_07c               ; Set Bit 7 at memory RAM1_07c (Mn <- 1 ) 
          ldx #$A6                      ; Load Index Register with Memory Byte, X <- (0xA6)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          and #$06                      ; Logical AND between A and constant 0x06, A ← (A) && (0x06)
          sta STACK_0d4                 ; Store Accumulator in Memory at STACK_0d4
          lda RAM1_081                  ; Load Accumulator with value of Memory at RAM1_081, A <- (RAM1_081)
          and #$01                      ; Logical AND between A and constant 0x01, A ← (A) && (0x01)
          sta RAM1_081                  ; Store Accumulator in Memory at RAM1_081 
          bset 6,RAM1_081               ; Set Bit 6 at memory RAM1_081 (Mn <- 1 ) 
          jsr L400D                     ; Jump to Subroutine at 0x400D            
          brclr 5,RAM1_069,L006C        ; Branch to 0x006C if Bit 5 Clear (Mn = 0)
          bclr 5,STACK_0d3              ; Clear bit 5 at STACK_0d3                
          bclr 6,STACK_0d3              ; Clear bit 6 at STACK_0d3                
          brset 0,RAM1_07f,L006C        ; Branch to 0x006C if Bit 0 is set at RAM1_07f (Mn=1)
          lda #$02                      ; Load Accumulator with 0x02, A <- 0x02   
          sta RAM1_07f                  ; Store Accumulator in Memory at RAM1_07f 
          rts                           ; Return from Subroutine                  
; 
          db $81                        ; data?  ,  ,  ,                          
; 
L386E: 
          tst RAM1_05c                  ; Test Memory Byte for Negative or Zero, (RAM1_05c) – 0x00
          beq L008A                     ; Branch to 0x008A if Equal Z=1           
          lda RAM1_07f                  ; Load Accumulator with value of Memory at RAM1_07f, A <- (RAM1_07f)
          ldx #$A7                      ; Load Index Register with Memory Byte, X <- (0xA7)
          brset 4,RAM1_05c,L007F        ; Branch to 0x007F if Bit 4 is set at RAM1_05c (Mn=1)
          lda RAM1_085                  ; Load Accumulator with value of Memory at RAM1_085, A <- (RAM1_085)
          ldx #$A8                      ; Load Index Register with Memory Byte, X <- (0xA8)
          bclr 3,RAM1_05c               ; Clear bit 3 at RAM1_05c                 
          bclr 4,RAM1_05c               ; Clear bit 4 at RAM1_05c                 
          brclr 0,RAM1_061,L008A        ; Branch to 0x008A if Bit 0 Clear (Mn = 0)
          brset 0,RAM1_080,L008A        ; Branch to 0x008A if Bit 0 is set at RAM1_080 (Mn=1)
          jsr L38A0                     ; Jump to Subroutine at 0x38A0            
          rts                           ; Return from Subroutine                  
; 
L388B: 
cpx #$90 
          bcc L00BB                     ; Branch to 0x00BB if C bit is cleared    
cpx #$63 
          bcs L00BB                     ; Branch to 0x00BB if C = 1               
          bsr L00A4                     ; Branch to Subroutine at 0x00A4          
          bsr L0097                     ; Branch to Subroutine at 0x0097          
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          sub #$30                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x30)
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda EEPROM_0130,x             ; Load Accumulator with value of Memory at EEPROM_0130, A <- (EEPROM_0130)
          bra L00A4                     ; Branch Always (1 = 1)                   
; 
L38A0: 
cpx #$90 
          bcs L00BB                     ; Branch to 0x00BB if C = 1               
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          cmp OPTR,x                    ; Compare Accumulator with Memory Byte, (A) - (OPTR)
          beq L00BB                     ; Branch to 0x00BB if Equal Z=1           
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 4,Miscell                ; Clear bit INTE at Miscell               
          bset 1,EEPROM_ECLK_control    ; Set Bit E1LAT at memory EEPROM_ECLK_control (Mn <- 1 )
          bset 2,EEPROM_ECLK_control    ; Set Bit E1ERA at memory EEPROM_ECLK_control (Mn <- 1 )
          bsr L00BC                     ; Branch to Subroutine at 0x00BC          
          bset 1,EEPROM_ECLK_control    ; Set Bit E1LAT at memory EEPROM_ECLK_control (Mn <- 1 )
          bsr L00BC                     ; Branch to Subroutine at 0x00BC          
          bset 4,Miscell                ; Set Bit INTE at memory Miscell (Mn <- 1 )
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
          db $D7, $01, $00, $10         ; data?  ,  ,  ,                          
          db $07, $9A, $CD, $26         ; data?  ,  ,  , &                        
          db $31, $9B, $B6, $59         ; data? 1,  ,  , Y                        
          db $13, $07, $81, $97         ; data?  ,  ,  ,                          
; 
L38CC: 
          lda OPTR,x                    ; Load Accumulator with value of Memory at OPTR, A <- (OPTR)
          rts                           ; Return from Subroutine                  
; 
L38D0: 
          brclr 6,STACK_0ce,L013D       ; Branch to 0x013D if Bit 6 Clear (Mn = 0)
          lda STACK_0d0                 ; Load Accumulator with value of Memory at STACK_0d0, A <- (STACK_0d0)
          and #$F0                      ; Logical AND between A and constant 0xF0, A ← (A) && (0xF0)
          beq L013D                     ; Branch to 0x013D if Equal Z=1           
          jmp L397F                     ; Unconditional Jump to 0x397F            
; 
L38DC: 
          db $B6, $D0, $2B, $5D         ; data?  ,  , +, ]                        
          db $A4, $70, $A1, $60         ; data?  , p,  , `                        
          db $22, $05, $03, $81         ; data? ",  ,  ,                          
          db $08, $26, $06, $4F         ; data?  , &,  , O                        
          db $07, $8E, $02, $AB         ; data?  ,  ,  ,                          
          db $10, $AB, $10, $B7         ; data?  ,  ,  ,                          
          db $D0, $CD, $26, $17         ; data?  ,  , &,                          
          db $AB, $A8, $CD, $38         ; data?  ,  ,  , 8                        
          db $CB, $A4, $07, $BB         ; data?  ,  ,  ,                          
          db $D0, $20, $28, $B6         ; data?  , SPACE, (,                      
          db $D0, $CD, $26, $17         ; data?  ,  , &,                          
          db $97, $B6, $78, $A1         ; data?  ,  , x,                          
          db $17, $27, $2E, $22         ; data?  , ', ., "                        
          db $0C, $B6, $D0, $D1         ; data?  ,  ,  ,                          
          db $39, $3D, $22, $0E         ; data? 9, =, ",                          
          db $27, $11, $4C, $20         ; data? ',  , L, SPACE                    
          db $0E, $B6, $D0, $D1         ; data?  ,  ,  ,                          
          db $39, $44, $22, $06         ; data? 9, D, ",                          
          db $27, $05, $D6, $39         ; data? ',  ,  , 9                        
          db $3D, $B1, $4A, $B7         ; data? =,  , J,                          
          db $D0, $CD, $26, $17         ; data?  ,  , &,                          
          db $AB, $A8, $97, $B6         ; data?  ,  ,  ,                          
          db $D0, $A4, $07, $CD         ; data?  ,  ,  ,                          
          db $38, $A0, $CC, $39         ; data? 8,  ,  , 9                        
          db $4C, $81, $15, $25         ; data? L,  ,  , %                        
          db $35, $41, $51, $65         ; data? 5, A, Q, e                        
          db $71, $11, $20, $31         ; data? q,  , SPACE, 1                    
          db $40, $50, $61, $70         ; data? @, P, a, p                        
          db $A6, $00, $CD, $25         ; data?  ,  ,  , %                        
          db $73, $B6, $D0, $2A         ; data? s,  ,  , *                        
          db $01, $81, $A4, $70         ; data?  ,  ,  , p                        
          db $44, $CD, $25, $4D         ; data? D,  , %, M                        
          db $B6, $D0, $A4, $07         ; data?  ,  ,  ,                          
          db $A1, $01, $27, $16         ; data?  ,  , ',                          
          db $25, $07, $AA, $30         ; data? %,  ,  , 0                        
          db $C7, $02, $5C, $20         ; data?  ,  , \, SPACE                    
          db $0D, $B6, $D0, $A0         ; data?  ,  ,  ,                          
          db $10, $44, $44, $A4         ; data?  , D, D,                          
          db $18, $AB, $40, $CD         ; data?  ,  , @,                          
          db $25, $4D, $A6, $C4         ; data? %, M,  ,                          
          db $CC, $24, $DC              ; data?  , $,  ,                          
; 
L397F: 
          clrx                          ; Clear byte at clrx <- 0x00              
          brset 7,STACK_0d0,L0185       ; Branch to 0x0185 if Bit 7 is set at STACK_0d0 (Mn=1)
          ldx #$00                      ; Load Index Register with Memory Byte, X <- (0x00)
          lda X399E,x                   ; Load Accumulator with data from  memory at 0x399E, A <- (0x399E)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X399D,x                   ; Load Accumulator with data from  memory at 0x399D, A <- (0x399D)
          beq L019C                     ; Branch to 0x019C if Equal Z=1           
          jsr L2889                     ; Jump to Subroutine at 0x2889            
          bne L0185                     ; Branch to 0x0185 if Not Equal (Z = 0);  
          ldx X399C,x                   ; Load Index Register with Memory Byte, X <- (0x399C)
          jsr L38DC,x ;INFO: index jump ; Jump to Subroutine at 0x38DC            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X399C: 
          rts                           ; Return from Subroutine                  
; 
X399D: 
          db $E8                        ; data?  ,  ,  ,                          
X399E: 
          db $00, $07, $00, $1F         ; data?  ,  ,  ,                          
          db $27, $00, $A6, $05         ; data? ',  ,  ,                          
          db $B7, $63, $A6, $80         ; data?  , c,  ,                          
          db $CD, $3A, $7E, $27         ; data?  , :, ~, '                        
          db $0A, $CD, $07, $85         ; data?  ,  ,  ,                          
          db $CD, $26, $31, $3D         ; data?  , &, 1, =                        
          db $63, $26, $EF, $CD         ; data? c, &,  ,                          
          db $26, $31, $1D, $01         ; data? &, 1,  ,                          
          db $3F, $9E, $81              ; data?  ,  ,  ,                          
; 
L39C1: 
          bset 1,RAM1_05d               ; Set Bit 1 at memory RAM1_05d (Mn <- 1 ) 
          lda #$07                      ; Load Accumulator with 0x07, A <- 0x07   
          cmp XA607                     ; Compare Accumulator with Memory Byte, (A) - (0xA607)
          sta RAM1_09e                  ; Store Accumulator in Memory at RAM1_09e 
          jsr L3AA2                     ; Jump to Subroutine at 0x3AA2            
          bclr 6,PortB                  ; Set PANEL_RESET LOW                     
          jsr L2640                     ; Jump to Subroutine at 0x2640            
          bset 6,PortB                  ; Set PANEL_RESET HIGH                    
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          sta RAM1_063                  ; Store Accumulator in Memory at RAM1_063 
          brclr 0,PortA,L01E4           ; Branch to 0x01E4 if PANEL_STATUS is LOW 
          tst RAM1_063                  ; Test Memory Byte for Negative or Zero, (RAM1_063) – 0x00
          bne L01D8                     ; Branch to 0x01D8 if Not Equal (Z = 0);  
          bclr 2,RAM1_09e               ; Clear bit 2 at RAM1_09e                 
          jmp L0779                     ; Unconditional Jump to 0x0779            
; 
          db $CD, $26, $31, $CD         ; data?  , &, 1,                          
          db $26, $31, $AD, $5C         ; data? &, 1,  , \                        
          db $3F, $9F, $CD, $25         ; data?  ,  ,  , %                        
          db $04, $81, $20, $EB         ; data?  ,  , SPACE,                      
; 
L39F4: 
          lda RAM1_09e                  ; Load Accumulator with value of Memory at RAM1_09e, A <- (RAM1_09e)
          and #$F0                      ; Logical AND between A and constant 0xF0, A ← (A) && (0xF0)
          bne L020E                     ; Branch to 0x020E if Not Equal (Z = 0);  
          brclr 1,RAM1_05d,L0224        ; Branch to 0x0224 if Bit 1 Clear (Mn = 0)
          lda RAM1_06c                  ; Load Accumulator with value of Memory at RAM1_06c, A <- (RAM1_06c)
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          ldx #$07                      ; Load Index Register with Memory Byte, X <- (0x07)
          sta RAM2_0250,x               ; Store Accumulator in Memory at RAM2_0250
          lda #$E1                      ; Load Accumulator with 0xE1, A <- 0xE1   
          bsr L027E                     ; Branch to Subroutine at 0x027E          
          bne L0224                     ; Branch to 0x0224 if Not Equal (Z = 0);  
          bclr 1,RAM1_05d               ; Clear bit 1 at RAM1_05d                 
          rts                           ; Return from Subroutine                  
; 
          db $05, $9E, $13, $C6         ; data?  ,  ,  ,                          
          db $02, $56, $AE, $07         ; data?  , V,  ,                          
          db $0F, $9E, $0C, $07         ; data?  ,  ,  ,                          
          db $9E, $22, $A6, $D0         ; data?  , ",  ,                          
          db $AD, $5E, $26, $02         ; data?  , ^, &,                          
          db $17, $9E, $81, $0D         ; data?  ,  ,  ,                          
          db $9E, $0C, $06, $9E         ; data?  ,  ,  ,                          
          db $13, $A6, $C0, $AD         ; data?  ,  ,  ,                          
          db $4F, $26, $F3, $16         ; data? O, &,  ,                          
          db $9E, $81, $A6, $13         ; data?  ,  ,  ,                          
          db $5F, $0A, $9E, $04         ; data? _,  ,  ,                          
          db $A6, $23, $AE, $03         ; data?  ,  #,  ,                         
          db $CD, $3A, $7E, $26         ; data?  , :, ~, &                        
          db $E1, $AE, $9E, $CC         ; data?  ,  ,  ,                          
          db $26, $6E                   ; data? &, n,  ,                          
; 
L3A48: 
          brclr 2,RAM1_09e,L01F2        ; Branch to 0x01F2 if Bit 2 Clear (Mn = 0)
          brset 0,PortA,L02A8           ; Branch to 0x02A8 if PANEL_STATUS is HIGH
          brset 6,RAM1_09f,L02A8        ; Branch to 0x02A8 if Bit 6 is set at RAM1_09f (Mn=1)
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda #$25                      ; Load Accumulator with 0x25, A <- 0x25   
          jsr L3AA9                     ; Jump to Subroutine at 0x3AA9            
          beq L02A0                     ; Branch to 0x02A0 if Equal Z=1           
          bclr 1,DDRA                   ; Set PANEL_DATA as INPUT                 
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          bset 2,PortA                  ; Set PANEL_CLOCK HIGH                    
          brset 1,PortA,L0265           ; Branch to 0x0265 if PANEL_DATA is HIGH  
          rola                          ; Rotate Byte at rola Left through Carry Bit, C <- [b7 <<<< b0] <- C
          bclr 2,PortA                  ; Set PANEL_CLOCK LOW                     
          bcc L0260                     ; Branch to 0x0260 if C bit is cleared    
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          sei                           ; Set Interrupt Mask, I ← 1);           
          bsr L02E7                     ; Branch to Subroutine at 0x02E7          
          beq L02A0                     ; Branch to 0x02A0 if Equal Z=1           
          brset 6,RAM1_056,L02A2        ; Branch to 0x02A2 if Bit 6 is set at RAM1_056 (Mn=1)
          lda RAM1_056                  ; Load Accumulator with value of Memory at RAM1_056, A <- (RAM1_056)
          beq L0299                     ; Branch to 0x0299 if Equal Z=1           
          sta RAM1_09f                  ; Store Accumulator in Memory at RAM1_09f 
          bset 6,RAM1_09f               ; Set Bit 6 at memory RAM1_09f (Mn <- 1 ) 
          bra L0299                     ; Branch Always (1 = 1)                   
; 
          db $B7, $56, $A4, $0F         ; data?  , V,  ,                          
          db $4C, $B7, $57, $A6         ; data? L,  , W,                          
          db $9A, $AD, $20, $27         ; data?  ,  , SPACE, '                    
          db $15, $B6, $56, $AD         ; data?  ,  , V,                          
          db $39, $27, $0F, $D6         ; data? 9, ',  ,                          
          db $02, $50, $5C, $3D         ; data?  , P, \, =                        
          db $57, $2A, $F4, $12         ; data? W, *,  ,                          
          db $9E, $10, $9E, $4F         ; data?  ,  ,  , O                        
          db $20, $02, $3A, $9E         ; data? SPACE,  , :,                      
; 
L3AA2: 
          bclr 1,DDRA                   ; Set PANEL_DATA as INPUT                 
          bset 2,PortA                  ; Set PANEL_CLOCK HIGH                    
          bset 2,DDRA                   ; Set PANEL_CLOCK as OUTPUT               
          rts                           ; Return from Subroutine                  
; 
L3AA9: 
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          bclr 1,DDRA                   ; Set PANEL_DATA as INPUT                 
          bclr 2,PortA                  ; Set PANEL_CLOCK LOW                     
          lda ACH                       ; Load Accumulator with value of Memory at ACH, A <- (ACH)
          add #$14                      ; A + 0x14 (without CARRY), A ← (A) + 0x14
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bmi L02C4                     ; Branch to 0x02C4 if Minus N = 1         
          brset 1,PortA,L02B3           ; Branch to 0x02B3 if PANEL_DATA is HIGH  
          brset 0,PortA,L02B3           ; Branch to 0x02B3 if PANEL_STATUS is HIGH
          brset 0,PortA,L02C6           ; Branch to 0x02C6 if PANEL_STATUS is HIGH
          cmp ACH                       ; Compare Accumulator with Memory Byte, (A) - (ACH)
          bpl L02BD                     ; Branch to 0x02BD if Plus N = 0          
          clra                          ; Clear byte at clra <- 0x00              
          rts                           ; Return from Subroutine                  
; 
          db $B6, $58, $99, $49         ; data?  , X,  , I                        
          db $15, $00, $13, $00         ; data?  ,  ,  ,                          
          db $24, $04, $13, $04         ; data? $,  ,  ,                          
          db $20, $02, $12, $04         ; data? SPACE,  ,  ,                      
          db $14, $00, $48, $26         ; data?  ,  , H, &                        
          db $EF, $15, $00, $CD         ; data?  ,  ,  ,                          
          db $3B, $09, $13, $04         ; data? ;,  ,  ,                          
          db $3D, $57, $26, $01         ; data? =, W, &,                          
          db $9B, $A6, $38, $01         ; data?  ,  , 8,                          
          db $00, $05, $4A, $26         ; data?  ,  , J, &                        
          db $FA, $9A, $81, $14         ; data?  ,  ,  ,                          
          db $00, $9A, $3A, $57         ; data?  ,  , :, W                        
          db $2B, $11, $CD, $26         ; data? +,  ,  , &                        
          db $40, $4F, $00, $00         ; data? @, O,  ,                          
          db $0A, $A6, $38, $15         ; data?  ,  , 8,                          
          db $00, $00, $00, $03         ; data?  ,  ,  ,                          
          db $4A, $26, $FA, $81         ; data? J, &,  ,                          
; 
L3B0A: 
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
          bpl L031A                     ; Branch to 0x031A if Plus N = 0          
          lda #$40                      ; Load Accumulator with 0x40, A <- 0x40   
          sta RAM2_02ca                 ; Store Accumulator in Memory at RAM2_02ca
          sta RAM2_02cb                 ; Store Accumulator in Memory at RAM2_02cb
          lda #$10                      ; Load Accumulator with 0x10, A <- 0x10   
          sta RAM2_02c2                 ; Store Accumulator in Memory at RAM2_02c2
          brset 7,RAM1_061,L0387        ; Branch to 0x0387 if Bit 7 is set at RAM1_061 (Mn=1)
          brclr 3,RAM1_08e,L0335        ; Branch to 0x0335 if Bit 3 Clear (Mn = 0)
          bset 4,STACK_0d5              ; Set Bit 4 at memory STACK_0d5 (Mn <- 1 )
          bset 5,STACK_0d5              ; Set Bit 5 at memory STACK_0d5 (Mn <- 1 )
          jsr L25A6                     ; Jump to Subroutine at 0x25A6            
          bset 5,RAM1_08f               ; Set Bit 5 at memory RAM1_08f (Mn <- 1 ) 
          brset 3,RAM1_05f,L0341        ; Branch to 0x0341 if Bit 3 is set at RAM1_05f (Mn=1)
          bset 0,RAM1_090               ; Set Bit 0 at memory RAM1_090 (Mn <- 1 ) 
          ldx #$2F                      ; Load Index Register with Memory Byte, X <- (0x2F)
          bclr 0,RAM1_05b               ; Clear bit 0 at RAM1_05b                 
          lda OPTR,x                    ; Load Accumulator with value of Memory at OPTR, A <- (OPTR)
          cmp EEPROM_0130,x             ; Compare Accumulator with Memory Byte, (A) - (EEPROM_0130)
          bne L0352                     ; Branch to 0x0352 if Not Equal (Z = 0);  
          cmp EEPROM_0160,x             ; Compare Accumulator with Memory Byte, (A) - (EEPROM_0160)
          beq L036F                     ; Branch to 0x036F if Equal Z=1           
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
          jsr L388B                     ; Jump to Subroutine at 0x388B            
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bpl L0345                     ; Branch to 0x0345 if Plus N = 0          
          lda #$03                      ; Load Accumulator with 0x03, A <- 0x03   
          bsr L03C4                     ; Branch to Subroutine at 0x03C4          
          ldx #$12                      ; Load Index Register with Memory Byte, X <- (0x12)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          ldx #$0E                      ; Load Index Register with Memory Byte, X <- (0x0E)
          cmp #$5A                      ; Compare Accumulator with Memory Byte, (A) - (0x5A)
          beq L0382                     ; Branch to 0x0382 if Equal Z=1           
          clra                          ; Clear byte at clra <- 0x00              
          add #$FF                      ; A + 0xFF (without CARRY), A ← (A) + 0xFF
          jsr L3DFF                     ; Jump to Subroutine at 0x3DFF            
          rts                           ; Return from Subroutine                  
; 
L3B88: 
          brclr 6,RAM1_09f,L03A1        ; Branch to 0x03A1 if Bit 6 Clear (Mn = 0)
          clrx                          ; Clear byte at clrx <- 0x00              
          lda RAM1_09f                  ; Load Accumulator with value of Memory at RAM1_09f, A <- (RAM1_09f)
          bmi L039E                     ; Branch to 0x039E if Minus N = 1         
          and #$3F                      ; Logical AND between A and constant 0x3F, A ← (A) && (0x3F)
          cmp #$21                      ; Compare Accumulator with Memory Byte, (A) - (0x21)
          beq L039E                     ; Branch to 0x039E if Equal Z=1           
          bcs L039C                     ; Branch to 0x039C if C = 1               
          cmp #$25                      ; Compare Accumulator with Memory Byte, (A) - (0x25)
          bcs L039E                     ; Branch to 0x039E if C = 1               
          ldx #$BC                      ; Load Index Register with Memory Byte, X <- (0xBC)
          stx RAM2_02d6                 ; Store Index Register In Memory at RAM2_02d6
          rts                           ; Return from Subroutine                  
; 
L3BA2: 
          lda RAM2_02d6                 ; Load Accumulator with value of Memory at RAM2_02d6, A <- (RAM2_02d6)
          beq L03B3                     ; Branch to 0x03B3 if Equal Z=1           
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          sta RAM2_02d6                 ; Store Accumulator in Memory at RAM2_02d6
          bne L03B3                     ; Branch to 0x03B3 if Not Equal (Z = 0);  
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          bset 0,RAM1_05b               ; Set Bit 0 at memory RAM1_05b (Mn <- 1 ) 
          bra L03C4                     ; Branch Always (1 = 1)                   
; 
          db $09, $7C, $EB, $AE         ; data?  , |,  ,                          
          db $0D, $CD, $3D, $D2         ; data?  ,  , =,                          
          db $C6, $02, $CD, $2A         ; data?  ,  ,  , *                        
          db $E1, $A6, $04, $20         ; data?  ,  ,  , SPACE                    
          db $0F, $B7, $50, $AE         ; data?  ,  , P,                          
          db $0D, $01, $5B, $00         ; data?  ,  , [,                          
          db $CD, $3D, $E0, $01         ; data?  , =,  ,                          
          db $5B, $D0, $B6, $50         ; data? [,  ,  , P                        
          db $AE, $CF, $CC, $38         ; data?  ,  ,  , 8                        
          db $A0                        ; data?  ,  ,  ,                          
; 
L3BD8: 
          brclr 7,RAM1_060,L03FD        ; Branch to 0x03FD if Bit 7 Clear (Mn = 0)
          brclr 6,RAM1_05d,L03FD        ; Branch to 0x03FD if Bit 6 Clear (Mn = 0)
          ldx #$23                      ; Load Index Register with Memory Byte, X <- (0x23)
          lda X40B0,x                   ; Load Accumulator with data from  memory at 0x40B0, A <- (0x40B0)
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          cmp RAM1_078                  ; Compare Accumulator with Memory Byte, (A) - (RAM1_078)
          bne L03FA                     ; Branch to 0x03FA if Not Equal (Z = 0);  
          lda X40B0,x                   ; Load Accumulator with data from  memory at 0x40B0, A <- (0x40B0)
          sta RAM2_02d3                 ; Store Accumulator in Memory at RAM2_02d3
          lda X40B1,x                   ; Load Accumulator with data from  memory at 0x40B1, A <- (0x40B1)
          sta RAM2_02d4                 ; Store Accumulator in Memory at RAM2_02d4
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM2_02d5                 ; Store Accumulator in Memory at RAM2_02d5
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L03E0                     ; Branch to 0x03E0 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L3BFE: 
          brclr 2,RAM1_091,L0439        ; Branch to 0x0439 if Bit 2 Clear (Mn = 0)
          sei                           ; Set Interrupt Mask, I ← 1);           
          brclr 7,PortB,L0427           ; Branch to 0x0427 if CONTROL is LOW      
          brclr 1,RAM1_090,L0427        ; Branch to 0x0427 if Bit 1 Clear (Mn = 0)
          brset 3,PortB,L0427           ; Branch to 0x0427 if MUTE_WOOFER is HIGH 
          lda #$24                      ; Load Accumulator with 0x24, A <- 0x24   
          jsr L25B7                     ; Jump to Subroutine at 0x25B7            
          cmp #$1F                      ; Compare Accumulator with Memory Byte, (A) - (0x1F)
          bls L0416                     ; Branch to 0x0416 if Lower or Same C v Z = 1
          lda #$1F                      ; Load Accumulator with 0x1F, A <- 0x1F   
          sta RAM2_02c7                 ; Store Accumulator in Memory at RAM2_02c7
          lda #$23                      ; Load Accumulator with 0x23, A <- 0x23   
          jsr L25B7                     ; Jump to Subroutine at 0x25B7            
          cmp #$1F                      ; Compare Accumulator with Memory Byte, (A) - (0x1F)
          bls L0424                     ; Branch to 0x0424 if Lower or Same C v Z = 1
          lda #$1F                      ; Load Accumulator with 0x1F, A <- 0x1F   
          sta RAM2_02c8                 ; Store Accumulator in Memory at RAM2_02c8
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brclr 3,PortB,L048A           ; Branch to 0x048A if MUTE_WOOFER is LOW  
          brclr 1,RAM1_090,L048A        ; Branch to 0x048A if Bit 1 Clear (Mn = 0)
          bclr 1,RAM1_090               ; Clear bit 1 at RAM1_090                 
          lda RAM2_02c7                 ; Load Accumulator with value of Memory at RAM2_02c7, A <- (RAM2_02c7)
          beq L048A                     ; Branch to 0x048A if Equal Z=1           
          bset 4,RAM1_06b               ; Set Bit 4 at memory RAM1_06b (Mn <- 1 ) 
          bset 6,RAM1_095               ; Set Bit 6 at memory RAM1_095 (Mn <- 1 ) 
          lda RAM1_090                  ; Load Accumulator with value of Memory at RAM1_090, A <- (RAM1_090)
          add #$04                      ; A + 0x04 (without CARRY), A ← (A) + 0x04
          sta RAM1_090                  ; Store Accumulator in Memory at RAM1_090 
          bcs L0484                     ; Branch to 0x0484 if C = 1               
          bpl L048A                     ; Branch to 0x048A if Plus N = 0          
          sei                           ; Set Interrupt Mask, I ← 1);           
          brclr 7,PortB,L048A           ; Branch to 0x048A if CONTROL is LOW      
          lda #$24                      ; Load Accumulator with 0x24, A <- 0x24   
          jsr L25B7                     ; Jump to Subroutine at 0x25B7            
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brset 5,RAM1_08e,L0456        ; Branch to 0x0456 if Bit 5 is set at RAM1_08e (Mn=1)
          cmp #$64                      ; Compare Accumulator with Memory Byte, (A) - (0x64)
          bhi L0456                     ; Branch to 0x0456 if Higher C v Z = 0    
          lda #$64                      ; Load Accumulator with 0x64, A <- 0x64   
          sub RAM2_02c7                 ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM2_02c7)
          bcc L045C                     ; Branch to 0x045C if C bit is cleared    
          clra                          ; Clear byte at clra <- 0x00              
          jsr L3FAE                     ; Jump to Subroutine at 0x3FAE            
          brset 1,RAM1_08f,L0484        ; Branch to 0x0484 if Bit 1 is set at RAM1_08f (Mn=1)
          brset 0,RAM1_08f,L0484        ; Branch to 0x0484 if Bit 0 is set at RAM1_08f (Mn=1)
          sei                           ; Set Interrupt Mask, I ← 1);           
          brclr 7,PortB,L048A           ; Branch to 0x048A if CONTROL is LOW      
          lda #$23                      ; Load Accumulator with 0x23, A <- 0x23   
          jsr L25B7                     ; Jump to Subroutine at 0x25B7            
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brclr 5,RAM1_08e,L0475        ; Branch to 0x0475 if Bit 5 Clear (Mn = 0)
          brclr 7,RAM1_08e,L047B        ; Branch to 0x047B if Bit 7 Clear (Mn = 0)
          cmp #$64                      ; Compare Accumulator with Memory Byte, (A) - (0x64)
          bhi L047B                     ; Branch to 0x047B if Higher C v Z = 0    
          lda #$64                      ; Load Accumulator with 0x64, A <- 0x64   
          sub RAM2_02c8                 ; Subtract Memory Byte from Accumulator , A ← (A) – (RAM2_02c8)
          bcc L0481                     ; Branch to 0x0481 if C bit is cleared    
          clra                          ; Clear byte at clra <- 0x00              
          jsr L3FAE                     ; Jump to Subroutine at 0x3FAE            
          bclr 4,RAM1_06b               ; Clear bit 4 at RAM1_06b                 
          bset 6,RAM1_095               ; Set Bit 6 at memory RAM1_095 (Mn <- 1 ) 
          clr RAM1_090                  ; Clear byte at RAM1_090 <- 0x00          
          cli                           ; Clear Interrupt Mask (I <- 0)           
          brset 4,RAM1_0bc,L04C7        ; Branch to 0x04C7 if Bit 4 is set at RAM1_0bc (Mn=1)
          brset 2,RAM1_0bc,L04A6        ; Branch to 0x04A6 if Bit 2 is set at RAM1_0bc (Mn=1)
          brset 3,RAM1_0bf,L04C7        ; Branch to 0x04C7 if Bit 3 is set at RAM1_0bf (Mn=1)
          brclr 5,RAM1_08f,L04C7        ; Branch to 0x04C7 if Bit 5 Clear (Mn = 0)
          bclr 5,RAM1_08f               ; Clear bit 5 at RAM1_08f                 
          bclr 6,RAM1_08f               ; Clear bit 6 at RAM1_08f                 
          bset 2,RAM1_0bc               ; Set Bit 2 at memory RAM1_0bc (Mn <- 1 ) 
          bset 4,RAM1_0bc               ; Set Bit 4 at memory RAM1_0bc (Mn <- 1 ) 
          lda #$60                      ; Load Accumulator with 0x60, A <- 0x60   
          sta RAM2_02d1                 ; Store Accumulator in Memory at RAM2_02d1
          bra L04C7                     ; Branch Always (1 = 1)                   
; 
          db $C6, $02, $D1, $A5         ; data?  ,  ,  ,                          
          db $08, $26, $06, $4C         ; data?  , &,  , L                        
          db $C7, $02, $D1, $20         ; data?  ,  ,  , SPACE                    
          db $14, $9B, $0E, $01         ; data?  ,  ,  ,                          
          db $10, $A6, $23, $CD         ; data?  ,  ,  #,                         
          db $25, $B7, $C7, $02         ; data? %,  ,  ,                          
          db $D2, $C6, $02, $D1         ; data?  ,  ,  ,                          
          db $AA, $80, $C7, $02         ; data?  ,  ,  ,                          
          db $D1, $9A, $0F, $60         ; data?  ,  ,  , `                        
          db $15, $10, $80, $C6         ; data?  ,  ,  ,                          
          db $02, $D5, $27, $0E         ; data?  ,  , ',                          
          db $4A, $C7, $02, $D5         ; data? J,  ,  ,                          
          db $26, $08, $A6, $20         ; data? &,  ,  , SPACE                    
          db $C7, $02, $D3, $C7         ; data?  ,  ,  ,                          
          db $02, $D4, $81              ; data?  ,  ,  ,                          
; 
L3CE1: 
          lda RAM2_02d7                 ; Load Accumulator with value of Memory at RAM2_02d7, A <- (RAM2_02d7)
          brclr 4,RAM1_06a,L04EB        ; Branch to 0x04EB if Bit 4 Clear (Mn = 0)
          add #$0C                      ; A + 0x0C (without CARRY), A ← (A) + 0x0C
          bcs L04F2                     ; Branch to 0x04F2 if C = 1               
          beq L04F2                     ; Branch to 0x04F2 if Equal Z=1           
          sub #$04                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x04)
          sta RAM2_02d7                 ; Store Accumulator in Memory at RAM2_02d7
          brclr 2,RAM1_091,L04E0        ; Branch to 0x04E0 if Bit 2 Clear (Mn = 0)
          brclr 0,RAM1_090,L04E0        ; Branch to 0x04E0 if Bit 0 Clear (Mn = 0)
          bclr 0,RAM1_090               ; Clear bit 0 at RAM1_090                 
          brset 3,RAM1_091,L0501        ; Branch to 0x0501 if Bit 3 is set at RAM1_091 (Mn=1)
          jsr L3FBC                     ; Jump to Subroutine at 0x3FBC            
          rts                           ; Return from Subroutine                  
; 
          db $A6, $32, $B7, $90         ; data?  , 2,  ,                          
          db $81                        ; data?  ,  ,  ,                          
; 
L3D06: 
          clrx                          ; Clear byte at clrx <- 0x00              
          brset 1,RAM1_05f,L0511        ; Branch to 0x0511 if Bit 1 is set at RAM1_05f (Mn=1)
          lda RAM1_09c                  ; Load Accumulator with value of Memory at RAM1_09c, A <- (RAM1_09c)
          cmp #$F4                      ; Compare Accumulator with Memory Byte, (A) - (0xF4)
          bhi L0514                     ; Branch to 0x0514 if Higher C v Z = 0    
          clc                           ; Clear Carry Bit (C <- 0)                
          jsr L3DCF                     ; Jump to Subroutine at 0x3DCF            
          brclr 5,RAM1_060,L051E        ; Branch to 0x051E if Bit 5 Clear (Mn = 0)
          bclr 5,RAM1_060               ; Clear bit 5 at RAM1_060                 
          ldx #$01                      ; Load Index Register with Memory Byte, X <- (0x01)
          jsr L3E02                     ; Jump to Subroutine at 0x3E02            
          lda #$27                      ; Load Accumulator with 0x27, A <- 0x27   
          jsr L25B7                     ; Jump to Subroutine at 0x25B7            
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          add #$78                      ; A + 0x78 (without CARRY), A ← (A) + 0x78
          bcs L052C                     ; Branch to 0x052C if C = 1               
          add #$14                      ; A + 0x14 (without CARRY), A ← (A) + 0x14
          bcs L0531                     ; Branch to 0x0531 if C = 1               
          ldx #$01                      ; Load Index Register with Memory Byte, X <- (0x01)
          jsr L3DD2                     ; Jump to Subroutine at 0x3DD2            
          brclr 2,RAM1_0bc,L0583        ; Branch to 0x0583 if Bit 2 Clear (Mn = 0)
          lda RAM2_02d1                 ; Load Accumulator with value of Memory at RAM2_02d1, A <- (RAM2_02d1)
          bpl L0583                     ; Branch to 0x0583 if Plus N = 0          
          ldx #$03                      ; Load Index Register with Memory Byte, X <- (0x03)
          brset 6,RAM1_08f,L0547        ; Branch to 0x0547 if Bit 6 is set at RAM1_08f (Mn=1)
          bclr 4,RAM1_08f               ; Clear bit 4 at RAM1_08f                 
          brclr 0,RAM1_091,L0547        ; Branch to 0x0547 if Bit 0 Clear (Mn = 0)
          bset 4,RAM1_08f               ; Set Bit 4 at memory RAM1_08f (Mn <- 1 ) 
          bset 6,RAM1_08f               ; Set Bit 6 at memory RAM1_08f (Mn <- 1 ) 
          jsr L3DD2                     ; Jump to Subroutine at 0x3DD2            
          bclr 3,RAM1_08f               ; Clear bit 3 at RAM1_08f                 
          ldx #$02                      ; Load Index Register with Memory Byte, X <- (0x02)
          lda RAM2_02d2                 ; Load Accumulator with value of Memory at RAM2_02d2, A <- (RAM2_02d2)
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          add #$66                      ; A + 0x66 (without CARRY), A ← (A) + 0x66
          bcc L0558                     ; Branch to 0x0558 if C bit is cleared    
          bset 3,RAM1_08f               ; Set Bit 3 at memory RAM1_08f (Mn <- 1 ) 
          bsr L05D2                     ; Branch to Subroutine at 0x05D2          
          lda RAM2_02c3                 ; Load Accumulator with value of Memory at RAM2_02c3, A <- (RAM2_02c3)
          bmi L057F                     ; Branch to 0x057F if Minus N = 1         
          lda RAM2_02c2                 ; Load Accumulator with value of Memory at RAM2_02c2, A <- (RAM2_02c2)
          bpl L0567                     ; Branch to 0x0567 if Plus N = 0          
          brclr 2,RAM1_08f,L057F        ; Branch to 0x057F if Bit 2 Clear (Mn = 0)
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          bne L056C                     ; Branch to 0x056C if Not Equal (Z = 0);  
          bset 2,RAM1_08f               ; Set Bit 2 at memory RAM1_08f (Mn <- 1 ) 
          brclr 6,RAM1_08f,L0583        ; Branch to 0x0583 if Bit 6 Clear (Mn = 0)
          lda RAM2_02d1                 ; Load Accumulator with value of Memory at RAM2_02d1, A <- (RAM2_02d1)
          bit #$70                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0x70)
          beq L057D                     ; Branch to 0x057D if Equal Z=1           
          sub #$10                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x10)
          sta RAM2_02d1                 ; Store Accumulator in Memory at RAM2_02d1
          bra L0583                     ; Branch Always (1 = 1)                   
; 
          db $1A, $8F, $15, $BC         ; data?  ,  ,  ,                          
          db $18, $BC, $AE, $04         ; data?  ,  ,  ,                          
          db $03, $01, $0C, $0A         ; data?  ,  ,  ,                          
          db $91, $00, $AD, $45         ; data?  ,  ,  , E                        
          db $C6, $02, $C4, $2A         ; data?  ,  ,  , *                        
          db $02, $13, $01, $AE         ; data?  ,  ,  ,                          
          db $05, $06, $91, $00         ; data?  ,  ,  ,                          
          db $AD, $34, $AE, $09         ; data?  , 4,  ,                          
          db $01, $01, $0C, $08         ; data?  ,  ,  ,                          
          db $91, $00, $AD, $2D         ; data?  ,  ,  , -                        
          db $C6, $02, $C9, $2A         ; data?  ,  ,  , *                        
          db $02, $11, $01, $05         ; data?  ,  ,  ,                          
          db $8E, $14, $08, $6A         ; data?  ,  ,  , j                        
          db $09, $03, $5F, $0E         ; data?  ,  , _,                          
          db $B6, $9C, $A1, $F4         ; data?  ,  ,  ,                          
          db $22, $08, $AE, $0A         ; data? ",  ,  ,                          
          db $09, $6A, $00, $CD         ; data?  , j,  ,                          
          db $3D, $CF, $03, $8E         ; data? =,  ,  ,                          
          db $08, $AE, $0B, $0D         ; data?  ,  ,  ,                          
          db $6A, $00, $CD, $3D         ; data? j,  ,  , =                        
          db $CF, $81                   ; data?  ,  ,  ,                          
; 
L3DCF: 
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          coma                          ; Complement Byte (One’s Complement), 0xFF - coma
          rola                          ; Rotate Byte at rola Left through Carry Bit, C <- [b7 <<<< b0] <- C
L3DD2: 
          lda RAM2_02c0,x               ; Load Accumulator with value of Memory at RAM2_02c0, A <- (RAM2_02c0)
          bcs L05F5                     ; Branch to 0x05F5 if C = 1               
          sub #$02                      ; Subtract Memory Byte from Accumulator , A ← (A) – (0x02)
          bcc L05F9                     ; Branch to 0x05F9 if C bit is cleared    
          bra L05E5                     ; Branch Always (1 = 1)                   
; 
          db $46, $43, $49              ; data? F, C, I,                          
; 
L3DE0: 
          lda RAM2_02c0,x               ; Load Accumulator with value of Memory at RAM2_02c0, A <- (RAM2_02c0)
          bcs L0602                     ; Branch to 0x0602 if C = 1               
          lsra                          ; Logical Shift Right of lsra, b7 -> [b7 >>>> b0] -> C
          bcs L0617                     ; Branch to 0x0617 if C = 1               
          lda #$01                      ; Load Accumulator with 0x01, A <- 0x01   
          sta RAM2_02c0,x               ; Store Accumulator in Memory at RAM2_02c0
          lda EEPROM_01c0,x             ; Load Accumulator with value of Memory at EEPROM_01c0, A <- (EEPROM_01c0)
          beq L0617                     ; Branch to 0x0617 if Equal Z=1           
          deca                          ; Decrement Byte at deca Byte = Byte - 1  
          bra L0604                     ; Branch Always (1 = 1)                   
; 
          db $2B, $20, $AB, $02         ; data? +, SPACE,  ,                      
          db $D7, $02, $C0, $2B         ; data?  ,  ,  , +                        
          db $04, $81                   ; data?  ,  ,  ,                          
; 
L3DFF: 
          clra                          ; Clear byte at clra <- 0x00              
          bcs L0604                     ; Branch to 0x0604 if C = 1               
L3E02: 
          lda #$33                      ; Load Accumulator with 0x33, A <- 0x33   
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          txa                           ; Transfer Index Register to Accumulator, A ← (X)
          add #$C0                      ; A + 0xC0 (without CARRY), A ← (A) + 0xC0
          tax                           ; Transfer Accumulator to Index Register, X ← (A))
          lda RAM1_056                  ; Load Accumulator with value of Memory at RAM1_056, A <- (RAM1_056)
          brset 0,RAM1_08e,L0614        ; Branch to 0x0614 if Bit 0 is set at RAM1_08e (Mn=1)
cpx #$C2 
          bne L0614                     ; Branch to 0x0614 if Not Equal (Z = 0);  
          clra                          ; Clear byte at clra <- 0x00              
          jsr L38A0                     ; Jump to Subroutine at 0x38A0            
          rts                           ; Return from Subroutine                  
; 
          db $C6, $02, $B3, $A1         ; data?  ,  ,  ,                          
          db $03, $26, $11, $C6         ; data?  , &,  ,                          
          db $02, $B4, $A1, $53         ; data?  ,  ,  , S                        
          db $26, $03, $10, $90         ; data? &,  ,  ,                          
          db $81, $A6, $06, $CD         ; data?  ,  ,  ,                          
          db $25, $91, $1F, $5D         ; data? %,  ,  , ]                        
          db $81, $DE, $3E, $37         ; data?  ,  , >, 7                        
          db $DC, $3E, $3F, $00         ; data?  , >,  ,                          
          db $00, $20, $32, $4F         ; data?  , SPACE, 2, O                    
          db $6D, $72, $84, $4F         ; data? m, r,  , O                        
          db $0E, $91, $02, $A6         ; data?  ,  ,  ,                          
          db $08, $C7, $02, $B5         ; data?  ,  ,  ,                          
          db $A6, $27, $CD, $25         ; data?  , ',  , %                        
          db $B7, $C7, $02, $B8         ; data?  ,  ,  ,                          
          db $4F, $05, $5F, $03         ; data? O,  , _,                          
          db $C6, $02, $A4, $C7         ; data?  ,  ,  ,                          
          db $02, $BB, $02, $5F         ; data?  ,  ,  , _                        
          db $46, $20, $44, $10         ; data? F, SPACE, D,                      
          db $90, $A6, $F3, $00         ; data?  ,  ,  ,                          
          db $8F, $07, $A6, $F2         ; data?  ,  ,  ,                          
          db $02, $8F, $02, $A6         ; data?  ,  ,  ,                          
          db $C2, $C7, $02, $B8         ; data?  ,  ,  ,                          
          db $81, $1A, $8F, $01         ; data?  ,  ,  ,                          
          db $8E, $05, $A6, $12         ; data?  ,  ,  ,                          
          db $C7, $02, $B5, $A6         ; data?  ,  ,  ,                          
          db $F2, $08, $8F, $0A         ; data?  ,  ,  ,                          
          db $A6, $C2, $07, $8F         ; data?  ,  ,  ,                          
          db $05, $01, $8E, $02         ; data?  ,  ,  ,                          
          db $A6, $F3, $C7, $02         ; data?  ,  ,  ,                          
          db $BB, $81, $C6, $02         ; data?  ,  ,  ,                          
          db $C4, $A4, $61, $C7         ; data?  ,  , a,                          
          db $02, $C4, $4F, $12         ; data?  ,  , O,                          
          db $01, $0B, $91, $01         ; data?  ,  ,  ,                          
          db $4C, $C7, $02, $B5         ; data? L,  ,  ,                          
          db $06, $5F, $00, $A6         ; data?  , _,  ,                          
          db $87, $25, $01, $4C         ; data?  , %,  , L                        
          db $C7, $02, $BE, $81         ; data?  ,  ,  ,                          
          db $0C, $6A, $0B, $20         ; data?  , j,  , SPACE                    
          db $09, $1A, $D5, $CD         ; data?  ,  ,  ,                          
          db $25, $A6, $C6, $02         ; data? %,  ,  ,                          
          db $D7, $49, $A6, $C2         ; data?  , I,  ,                          
          db $25, $01, $4C, $C7         ; data? %,  , L,                          
          db $02, $B8, $81, $C6         ; data?  ,  ,  ,                          
          db $02, $D3, $C7, $02         ; data?  ,  ,  ,                          
          db $B4, $C6, $02, $D4         ; data?  ,  ,  ,                          
          db $C7, $02, $B5, $81         ; data?  ,  ,  ,                          
          db $3F, $5B, $07, $8E         ; data?  , [,  ,                          
          db $02, $3C, $5B, $C6         ; data?  , <, [,                          
          db $02, $B3, $AE, $80         ; data?  ,  ,  ,                          
          db $CD, $38, $8B, $C6         ; data?  , 8,  ,                          
          db $02, $B4, $AE, $81         ; data?  ,  ,  ,                          
          db $CD, $38, $8B, $C6         ; data?  , 8,  ,                          
          db $02, $B5, $AE, $82         ; data?  ,  ,  ,                          
          db $CD, $38, $8B, $C6         ; data?  , 8,  ,                          
          db $02, $B6, $AE, $83         ; data?  ,  ,  ,                          
          db $CD, $38, $8B, $A6         ; data?  , 8,  ,                          
          db $5A, $AE, $72, $CD         ; data? Z,  , r,                          
          db $38, $8B, $CD, $40         ; data? 8,  ,  , @                        
          db $0D, $07, $8E, $2E         ; data?  ,  ,  , .                        
          db $3D, $5B, $26, $2A         ; data? =, [, &, *                        
          db $AE, $12, $CD, $3F         ; data?  ,  ,  ,                          
          db $D1, $AE, $00, $CD         ; data?  ,  ,  ,                          
          db $3F, $DF, $A6, $0D         ; data?  ,  ,  ,                          
          db $CD, $3F, $E7, $C6         ; data?  ,  ,  ,                          
          db $02, $7C, $4A, $2A         ; data?  , |, J, *                        
          db $F7, $AE, $30, $CD         ; data?  ,  , 0,                          
          db $3F, $D1, $AE, $02         ; data?  ,  ,  ,                          
          db $CD, $3F, $DF, $A6         ; data?  ,  ,  ,                          
          db $1B, $CD, $3F, $E7         ; data?  ,  ,  ,                          
          db $C6, $02, $7C, $4A         ; data?  ,  , |, J                        
          db $2A, $F7, $81, $A6         ; data? *,  ,  ,                          
          db $81, $B7, $D0, $A6         ; data?  ,  ,  ,                          
          db $41, $B7, $CE, $10         ; data? A,  ,  ,                          
          db $80, $1E, $94, $1F         ; data?  ,  ,  ,                          
          db $60, $1D, $60, $1E         ; data? `,  , `,                          
          db $5D, $81, $AE, $CF         ; data? ],  ,  ,                          
          db $4F, $A3, $BE, $22         ; data? O,  ,  , "                        
          db $03, $D6, $3E, $EE         ; data?  ,  , >,                          
          db $CD, $38, $A0, $CD         ; data?  , 8,  ,                          
          db $07, $85, $5A, $A3         ; data?  ,  , Z,                          
          db $A0, $24, $ED, $AE         ; data?  , $,  ,                          
          db $80, $A6, $03, $CD         ; data?  ,  ,  ,                          
          db $38, $8B, $AE, $81         ; data? 8,  ,  ,                          
          db $A6, $22, $CD, $38         ; data?  , ",  , 8                        
          db $8B, $A6, $00, $AE         ; data?  ,  ,  ,                          
          db $72, $CD, $38, $8B         ; data? r,  , 8,                          
          db $A6, $46, $CD, $24         ; data?  , F,  , $                        
          db $DC, $CD, $1F, $1C         ; data?  ,  ,  ,                          
          db $CD, $39                   ; data?  , 9,  ,                          
X3F7A: 
          db $F4, $CD, $07, $85         ; data?  ,  ,  ,                          
          db $20, $FB, $AE, $63         ; data? SPACE,  ,  , c                    
          db $A6, $A0, $CD, $38         ; data?  ,  ,  , 8                        
          db $8B, $CD, $25, $42         ; data?  ,  , %, B                        
          db $A6, $C4, $20, $E4         ; data?  ,  , SPACE,                      
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $02         ; data?  ,  ,  ,                          
          db $08, $03, $03, $03         ; data?  ,  ,  ,                          
          db $00, $00, $03, $00         ; data?  ,  ,  ,                          
          db $02, $00, $00, $10         ; data?  ,  ,  ,                          
          db $10, $10, $10, $10         ; data?  ,  ,  ,                          
          db $10, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
; 
L3FAE: 
          bclr 1,RAM1_08f               ; Clear bit 1 at RAM1_08f                 
          cmp #$A9                      ; Compare Accumulator with Memory Byte, (A) - (0xA9)
          bhi L07BC                     ; Branch to 0x07BC if Higher C v Z = 0    
          cmp #$0B                      ; Compare Accumulator with Memory Byte, (A) - (0x0B)
          bhi L07BE                     ; Branch to 0x07BE if Higher C v Z = 0    
          bset 0,RAM1_08f               ; Set Bit 0 at memory RAM1_08f (Mn <- 1 ) 
          bra L07C0                     ; Branch Always (1 = 1)                   
; 
L3FBC: 
          bset 1,RAM1_08f               ; Set Bit 1 at memory RAM1_08f (Mn <- 1 ) 
          bclr 0,RAM1_08f               ; Clear bit 0 at RAM1_08f                 
          ldx #$05                      ; Load Index Register with Memory Byte, X <- (0x05)
          brclr 1,RAM1_08f,L07C5        ; Branch to 0x07C5 if Bit 1 Clear (Mn = 0)
          jsr L3DE0                     ; Jump to Subroutine at 0x3DE0            
          ldx #$06                      ; Load Index Register with Memory Byte, X <- (0x06)
          brclr 0,RAM1_08f,L07CD        ; Branch to 0x07CD if Bit 0 Clear (Mn = 0)
          jsr L3DE0                     ; Jump to Subroutine at 0x3DE0            
          rts                           ; Return from Subroutine                  
; 
          db $A6, $89, $C7, $02         ; data?  ,  ,  ,                          
          db $7D, $A6, $8A, $C7         ; data? },  ,  ,                          
          db $02, $7C, $A6, $0A         ; data?  , |,  ,                          
          db $20, $0F, $4F, $C7         ; data? SPACE,  , O,                      
          db $02, $7C, $A6, $11         ; data?  , |,  ,                          
          db $20, $07, $C7, $02         ; data? SPACE,  ,  ,                      
          db $7C, $A6, $19, $AE         ; data? |,  ,  ,                          
          db $89, $C7, $02, $7A         ; data?  ,  ,  , z                        
          db $CF, $02, $7B, $1E         ; data?  ,  , {,                          
          db $D6, $3F, $D9, $CD         ; data?  ,  ,  ,                          
          db $07, $85, $CD, $49         ; data?  ,  ,  , I                        
          db $55, $07, $67, $F7         ; data? U,  , g,                          
          db $17, $67, $CD, $37         ; data?  , g,  , 7                        
          db $B0, $CD, $49, $0B         ; data?  ,  , I,                          
          db $0E, $D6, $EC, $81         ; data?  ,  ,  ,                          
; 
L400D: 
          ldx EEPROM_0120               ; Load Index Register with Memory Byte, X <- (EEPROM_0120)
          lda EEPROM_0121               ; Load Accumulator with value of Memory at EEPROM_0121, A <- (EEPROM_0121)
          lsrx                          ; Logical Shift Right of lsrx, b7 -> [b7 >>>> b0] -> C
          rora                          ; Rotate Byte at rora Right through Carry Bit, C -> [b7 >>>> b0] -> C
          bsr L004C                     ; Branch to Subroutine at 0x004C          
          lda RAM1_058                  ; Load Accumulator with value of Memory at RAM1_058, A <- (RAM1_058)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          sta RAM1_08e                  ; Store Accumulator in Memory at RAM1_08e 
          brclr 0,RAM1_056,L0022        ; Branch to 0x0022 if Bit 0 Clear (Mn = 0)
          bset 3,RAM1_08e               ; Set Bit 3 at memory RAM1_08e (Mn <- 1 ) 
          brclr 4,RAM1_058,L0027        ; Branch to 0x0027 if Bit 4 Clear (Mn = 0)
          bset 4,RAM1_08e               ; Set Bit 4 at memory RAM1_08e (Mn <- 1 ) 
          lda RAM1_057                  ; Load Accumulator with value of Memory at RAM1_057, A <- (RAM1_057)
          and #$07                      ; Logical AND between A and constant 0x07, A ← (A) && (0x07)
          beq L003B                     ; Branch to 0x003B if Equal Z=1           
          bset 5,RAM1_08e               ; Set Bit 5 at memory RAM1_08e (Mn <- 1 ) 
          cmp #$05                      ; Compare Accumulator with Memory Byte, (A) - (0x05)
          bne L0035                     ; Branch to 0x0035 if Not Equal (Z = 0);  
          bset 6,RAM1_08e               ; Set Bit 6 at memory RAM1_08e (Mn <- 1 ) 
          cmp #$01                      ; Compare Accumulator with Memory Byte, (A) - (0x01)
          bne L003B                     ; Branch to 0x003B if Not Equal (Z = 0);  
          bset 7,RAM1_08e               ; Set Bit 7 at memory RAM1_08e (Mn <- 1 ) 
          brclr 5,RAM1_069,L0044        ; Branch to 0x0044 if Bit 5 Clear (Mn = 0)
          bclr 4,RAM1_08e               ; Clear bit 4 at RAM1_08e                 
          bclr 3,RAM1_08e               ; Clear bit 3 at RAM1_08e                 
          bclr 1,RAM1_08e               ; Clear bit 1 at RAM1_08e                 
          bclr 1,RAM1_081               ; Clear bit 1 at RAM1_081                 
          brclr 4,RAM1_08e,L004B        ; Branch to 0x004B if Bit 4 Clear (Mn = 0)
          bset 1,RAM1_081               ; Set Bit 1 at memory RAM1_081 (Mn <- 1 ) 
          rts                           ; Return from Subroutine                  
; 
          db $BF, $50, $B7, $51         ; data?  , P,  , Q                        
          db $A4, $0F, $A1, $09         ; data?  ,  ,  ,                          
          db $23, $02, $AB, $06         ; data?  #,  ,  ,                         
          db $B7, $58, $3F, $57         ; data?  , X,  , W                        
          db $3F, $56, $5F, $B6         ; data?  , V, _,                          
          db $51, $AD, $0B, $B6         ; data? Q,  ,  ,                          
          db $50, $AD, $04, $B6         ; data? P,  ,  ,                          
          db $50, $20, $03, $CD         ; data? P, SPACE,  ,                      
          db $26, $1E, $CD, $26         ; data? &,  ,  , &                        
          db $17, $B7, $52, $27         ; data?  ,  , R, '                        
          db $32, $1E, $59, $D6         ; data? 2,  , Y,                          
          db $40, $AB, $BB, $58         ; data? @,  ,  , X                        
          db $25, $04, $1F, $59         ; data? %,  ,  , Y                        
          db $A0, $60, $29, $02         ; data?  , `, ),                          
          db $A0, $06, $B7, $58         ; data?  ,  ,  , X                        
          db $39, $59, $1E, $59         ; data? 9, Y,  , Y                        
          db $D6, $40, $AA, $B9         ; data?  , @,  ,                          
          db $57, $25, $04, $1F         ; data? W, %,  ,                          
          db $59, $A0, $60, $29         ; data? Y,  , `, )                        
          db $02, $A0, $06, $B7         ; data?  ,  ,  ,                          
          db $57, $39, $59, $24         ; data? W, 9, Y, $                        
          db $02, $3C, $56, $3A         ; data?  , <, V, :                        
          db $52, $26, $CE, $5C         ; data? R, &,  , \                        
          db $5C, $81, $66, $7C         ; data? \,  , f, |                        
          db $68, $BC, $A6, $FC         ; data? h,  ,  ,                          
X40B0: 
          db $30                        ; data? 0,  ,  ,                          
X40B1: 
          db $30, $FB, $30, $31         ; data? 0,  , 0, 1                        
          db $FA, $30, $32, $FF         ; data?  , 0, 2,                          
          db $30, $33, $F4, $30         ; data? 0, 3,  , 0                        
          db $34, $08, $30, $35         ; data? 4,  , 0, 5                        
          db $EE, $30, $36, $EF         ; data?  , 0, 6,                          
          db $30, $37, $F0, $30         ; data? 0, 7,  , 0                        
          db $38, $F1, $30, $39         ; data? 8,  , 0, 9                        
          db $F2, $31, $30, $FD         ; data?  , 1, 0,                          
          db $31, $31, $FC, $A6         ; data? 1, 1,  ,                          
          db $1F, $B7, $90, $19         ; data?  ,  ,  ,                          
          db $6B, $1C, $95, $81         ; data? k,  ,  ,                          
; 
L40DD: 
          brclr 7,RAM1_060,L00F8        ; Branch to 0x00F8 if Bit 7 Clear (Mn = 0)
          brset 7,RAM1_092,L00F8        ; Branch to 0x00F8 if Bit 7 is set at RAM1_092 (Mn=1)
          bclr 7,RAM1_060               ; Clear bit 7 at RAM1_060                 
          bclr 7,RAM1_093               ; Clear bit 7 at RAM1_093                 
          bset 2,RAM1_05d               ; Set Bit 2 at memory RAM1_05d (Mn <- 1 ) 
          brclr 6,RAM1_060,L00F3        ; Branch to 0x00F3 if Bit 6 Clear (Mn = 0)
          bclr 6,RAM1_060               ; Clear bit 6 at RAM1_060                 
          brset 0,RAM1_05f,L00F3        ; Branch to 0x00F3 if Bit 0 is set at RAM1_05f (Mn=1)
          bclr 0,RAM1_061               ; Clear bit 0 at RAM1_061                 
          bclr 3,PortB                  ; Set MUTE_WOOFER LOW                     
          bclr 1,PortB                  ; Set ENA_12V_WOOFER LOW                  
          rts                           ; Return from Subroutine                  
; 
          db $06, $60, $6B, $00         ; data?  , `, k,                          
          db $60, $5B, $08, $60         ; data? `, [,  , `                        
          db $06, $0F, $93, $06         ; data?  ,  ,  ,                          
          db $CC, $41, $8E, $CC         ; data?  , A,  ,                          
          db $41, $A1, $CD, $43         ; data? A,  ,  , C                        
          db $F6, $27, $58, $CD         ; data?  , ', X,                          
          db $43, $F6, $27, $53         ; data? C,  , ', S                        
          db $B8, $93, $B7, $93         ; data?  ,  ,  ,                          
          db $07, $93, $08, $09         ; data?  ,  ,  ,                          
          db $93, $41, $0B, $93         ; data?  , A,  ,                          
          db $38, $20, $3C, $0A         ; data? 8, SPACE, <,                      
          db $93, $00, $4F, $49         ; data?  ,  , O, I                        
          db $B8, $93, $46, $24         ; data?  ,  , F, $                        
          db $1B, $A4, $03, $97         ; data?  ,  ,  ,                          
          db $C6, $02, $B1, $B0         ; data?  ,  ,  ,                          
          db $68, $A1, $11, $25         ; data? h,  ,  , %                        
          db $0F, $A1, $17, $25         ; data?  ,  ,  , %                        
          db $11, $A1, $22, $25         ; data?  ,  , ", %                        
          db $07, $A1, $2B, $22         ; data?  ,  , +, "                        
          db $03, $5D, $27, $0D         ; data?  , ], ',                          
          db $A6, $08, $B7, $93         ; data?  ,  ,  ,                          
          db $20, $11, $5D, $27         ; data? SPACE,  , ], '                    
          db $F7, $A3, $04, $22         ; data?  ,  ,  , "                        
          db $F3, $3C, $93, $20         ; data?  , <,  , SPACE                    
          db $06, $11, $60, $19         ; data?  ,  , `,                          
          db $60, $3F, $93, $B6         ; data? `,  ,  ,                          
          db $68, $C7, $02, $B1         ; data? h,  ,  ,                          
          db $3F, $92, $81, $C6         ; data?  ,  ,  ,                          
          db $02, $B1, $B0, $68         ; data?  ,  ,  , h                        
          db $A1, $C8, $25, $03         ; data?  ,  , %,                          
          db $16, $60, $81, $0B         ; data?  , `,  ,                          
          db $93, $F0, $08, $93         ; data?  ,  ,  ,                          
          db $ED, $A1, $3C, $25         ; data?  ,  , <, %                        
          db $E9, $07, $93, $05         ; data?  ,  ,  ,                          
          db $A6, $38, $B7, $93         ; data?  , 8,  ,                          
          db $81, $B6, $93, $A1         ; data?  ,  ,  ,                          
          db $25, $26, $DB, $18         ; data? %, &,  ,                          
          db $60, $81, $0E, $95         ; data? `,  ,  ,                          
          db $0F, $08, $94, $0C         ; data?  ,  ,  ,                          
          db $0F, $92, $B1, $08         ; data?  ,  ,  ,                          
          db $92, $06, $06, $92         ; data?  ,  ,  ,                          
          db $0C, $0C, $93, $39         ; data?  ,  ,  , 9                        
          db $81, $19, $60, $15         ; data?  ,  , `,                          
          db $60, $13, $60, $20         ; data? `,  , `, SPACE                    
          db $4C, $17, $92, $5F         ; data? L,  ,  , _                        
          db $D6, $44, $01, $27         ; data?  , D,  , '                        
          db $22, $C1, $02, $B0         ; data? ",  ,  ,                          
          db $26, $08, $D6, $44         ; data? &,  ,  , D                        
          db $02, $C1, $02, $B2         ; data?  ,  ,  ,                          
          db $27, $05, $5C, $5C         ; data? ',  , \, \                        
          db $5C, $20, $E9, $A1         ; data? \, SPACE,  ,                      
          db $04, $27, $00, $1D         ; data?  , ',  ,                          
          db $93, $B6, $93, $A4         ; data?  ,  ,  ,                          
          db $1F, $DE, $44, $03         ; data?  ,  , D,                          
          db $DC, $41, $F5, $AE         ; data?  , A,  ,                          
          db $47, $CD, $43, $C0         ; data? G,  , C,                          
          db $81, $1D, $93, $B6         ; data?  ,  ,  ,                          
          db $93, $4C, $A4, $1F         ; data?  , L,  ,                          
          db $A1, $02, $27, $F9         ; data?  ,  , ',                          
          db $A1, $03, $27, $14         ; data?  ,  , ',                          
          db $A1, $04, $27, $10         ; data?  ,  , ',                          
          db $A1, $05, $27, $26         ; data?  ,  , ', &                        
          db $A0, $14, $24, $51         ; data?  ,  , $, Q                        
          db $81, $A6, $01, $0B         ; data?  ,  ,  ,                          
          db $69, $02, $A6, $02         ; data? i,  ,  ,                          
          db $CD, $43, $B6, $18         ; data?  , C,  ,                          
          db $94, $1C, $93, $CD         ; data?  ,  ,  ,                          
          db $45, $07, $0E, $92         ; data? E,  ,  ,                          
          db $36, $A6, $90, $B7         ; data? 6,  ,  ,                          
          db $92, $C6, $02, $B0         ; data?  ,  ,  ,                          
          db $AA, $20, $C7, $02         ; data?  , SPACE,  ,                      
          db $B0, $81, $CD, $43         ; data?  ,  ,  , C                        
          db $B6, $18, $94, $C6         ; data?  ,  ,  ,                          
          db $01, $20, $C7, $02         ; data?  , SPACE,  ,                      
          db $B4, $C6, $01, $21         ; data?  ,  ,  , !                        
          db $C7, $02, $B5, $C6         ; data?  ,  ,  ,                          
          db $01, $22, $C7, $02         ; data?  , ",  ,                          
          db $B6, $C6, $01, $23         ; data?  ,  ,  ,  #                       
          db $C7, $02, $B7, $1E         ; data?  ,  ,  ,                          
          db $60, $1E, $5D, $11         ; data? `,  , ],                          
          db $81, $A6, $02, $B7         ; data?  ,  ,  ,                          
          db $8A, $1C, $82, $81         ; data?  ,  ,  ,                          
          db $A6, $13, $B7, $93         ; data?  ,  ,  ,                          
          db $4F, $B7, $50, $AE         ; data? O,  , P,                          
          db $95, $CD, $43, $C0         ; data?  ,  , C,                          
          db $3F, $57, $CC, $43         ; data?  , W,  , C                        
          db $3F, $AE, $CE, $4F         ; data?  ,  ,  , O                        
          db $CD, $38, $A0, $5A         ; data?  , 8,  , Z                        
          db $A3, $C0, $24, $F7         ; data?  ,  , $,                          
          db $20, $E2, $A1, $06         ; data? SPACE,  ,  ,                      
          db $25, $09, $A1, $08         ; data? %,  ,  ,                          
          db $25, $07, $26, $03         ; data? %,  , &,                          
          db $CC, $43, $45, $A6         ; data?  , C, E,                          
          db $05, $4C, $CD, $43         ; data?  , L,  , C                        
          db $B6, $1E, $5D, $CD         ; data?  ,  , ],                          
          db $3E, $18, $81, $CE         ; data? >,  ,  ,                          
          db $02, $B3, $27, $13         ; data?  ,  , ',                          
          db $A3, $07, $22, $10         ; data?  ,  , ",                          
          db $BF, $5B, $DE, $44         ; data?  , [,  , D                        
          db $26, $CD, $43, $C0         ; data? &,  , C,                          
          db $18, $94, $BE, $5B         ; data?  ,  ,  , [                        
          db $CD, $3E, $31, $81         ; data?  , >, 1,                          
          db $A3, $19, $26, $FB         ; data?  ,  , &,                          
          db $05, $60, $F8, $12         ; data?  , `,  ,                          
          db $60, $81, $CD, $3E         ; data? `,  ,  , >                        
          db $D0, $CC, $41, $F5         ; data?  ,  , A,                          
          db $05, $8B, $03, $CC         ; data?  ,  ,  ,                          
          db $41, $D3, $CE, $02         ; data? A,  ,  ,                          
          db $B3, $C6, $02, $B4         ; data?  ,  ,  ,                          
          db $CD, $40, $4C, $B6         ; data?  , @, L,                          
          db $57, $C1, $01, $01         ; data? W,  ,  ,                          
          db $26, $0F, $B6, $58         ; data? &,  ,  , X                        
          db $C1, $01, $02, $26         ; data?  ,  ,  , &                        
          db $08, $CD, $37, $5F         ; data?  ,  , 7, _                        
          db $15, $5D, $14, $60         ; data?  , ],  , `                        
          db $81, $3C, $8B, $CD         ; data?  , <,  ,                          
          db $37, $57, $A6, $FF         ; data? 7, W,  ,                          
          db $B7, $8C, $CC, $40         ; data?  ,  ,  , @                        
          db $E3, $20, $41, $03         ; data?  , SPACE, A,                      
          db $60, $3D, $C6, $02         ; data? `, =,  ,                          
          db $B3, $B7, $50, $C6         ; data?  ,  , P,                          
          db $02, $B5, $B7, $51         ; data?  ,  ,  , Q                        
          db $A6, $12, $CD, $43         ; data?  ,  ,  , C                        
          db $B6, $A6, $03, $B7         ; data?  ,  ,  ,                          
          db $52, $BE, $51, $9F         ; data? R,  , Q,                          
          db $A4, $FC, $27, $0B         ; data?  ,  , ',                          
          db $A0, $30, $27, $07         ; data?  , 0, ',                          
          db $A0, $30, $27, $03         ; data?  , 0, ',                          
          db $CD, $38, $CC, $3C         ; data?  , 8,  , <                        
          db $51, $BE, $52, $D7         ; data? Q,  , R,                          
          db $02, $B0, $3C, $52         ; data?  ,  , <, R                        
          db $C6, $02, $B0, $4C         ; data?  ,  ,  , L                        
          db $C7, $02, $B0, $A1         ; data?  ,  ,  ,                          
          db $0F, $27, $04, $3A         ; data?  , ',  , :                        
          db $50, $26, $D6, $81         ; data? P, &,  ,                          
          db $C6, $02, $B3, $A1         ; data?  ,  ,  ,                          
          db $AB, $26, $0A, $C6         ; data?  , &,  ,                          
          db $02, $B4, $A1, $CD         ; data?  ,  ,  ,                          
          db $26, $03, $CC, $3F         ; data? &,  ,  ,                          
          db $46, $03, $60, $EB         ; data? F,  , `,                          
          db $C6, $02, $B3, $C1         ; data?  ,  ,  ,                          
          db $01, $01, $26, $E3         ; data?  ,  , &,                          
          db $C6, $02, $B4, $C1         ; data?  ,  ,  ,                          
          db $01, $02, $26, $DB         ; data?  ,  , &,                          
          db $CC, $3F, $80, $3C         ; data?  ,  ,  , <                        
          db $50, $3C, $93, $BE         ; data? P, <,  ,                          
          db $50, $A3, $0E, $23         ; data? P,  ,  ,  #                       
          db $05, $3F, $93, $1E         ; data?  ,  ,  ,                          
          db $93, $81, $D6, $01         ; data?  ,  ,  ,                          
          db $C0, $27, $EC, $A3         ; data?  , ',  ,                          
          db $02, $27, $14, $A3         ; data?  , ',  ,                          
          db $03, $27, $08, $A3         ; data?  , ',  ,                          
          db $05, $27, $0C, $A3         ; data?  , ',  ,                          
          db $06, $26, $0D, $5A         ; data?  , &,  , Z                        
          db $D1, $01, $C0, $25         ; data?  ,  ,  , %                        
          db $D6, $20, $05, $D1         ; data?  , SPACE,  ,                      
          db $01, $C1, $23, $CF         ; data?  ,  ,  #,                         
          db $A1, $33, $26, $01         ; data?  , 3, &,                          
          db $4F, $B7, $51, $BE         ; data? O,  , Q,                          
          db $57, $5C, $5C, $5C         ; data? W, \, \, \                        
          db $A3, $0C, $23, $03         ; data?  ,  ,  #,                         
          db $1C, $93, $81, $BF         ; data?  ,  ,  ,                          
          db $57, $9F, $AB, $03         ; data? W,  ,  ,                          
          db $C7, $02, $B0, $B6         ; data?  ,  ,  ,                          
          db $50, $48, $BB, $50         ; data? P, H,  , P                        
          db $B7, $58, $BE, $58         ; data?  , X,  , X                        
          db $D6, $44, $D9, $BE         ; data?  , D,  ,                          
          db $57, $D7, $02, $B0         ; data? W,  ,  ,                          
          db $BE, $58, $D6, $44         ; data?  , X,  , D                        
          db $DA, $BE, $57, $D7         ; data?  ,  , W,                          
          db $02, $B1, $BE, $58         ; data?  ,  ,  , X                        
          db $D6, $44, $DB, $3D         ; data?  , D,  , =                        
          db $51, $26, $02, $A4         ; data? Q, &,  ,                          
          db $7F, $BE, $57, $D7         ; data? DEL,  , W,                        
          db $02, $B2, $18, $94         ; data?  ,  ,  ,                          
          db $20, $85, $B7, $93         ; data? SPACE,  ,  ,                      
          db $B6, $93, $A4, $1F         ; data?  ,  ,  ,                          
          db $97, $DE, $44, $1D         ; data?  ,  , D,                          
          db $1E, $93, $3F, $56         ; data?  ,  ,  , V                        
          db $BF, $57, $1B, $5D         ; data?  , W,  , ]                        
          db $A3, $49, $26, $02         ; data?  , I, &,                          
          db $1A, $5D, $D6, $44         ; data?  , ],  , D                        
          db $3F, $C7, $02, $B0         ; data?  ,  ,  ,                          
          db $A4, $0F, $A0, $03         ; data?  ,  ,  ,                          
          db $B7, $58, $A6, $FF         ; data?  , X,  ,                          
          db $C7, $02, $B1, $BE         ; data?  ,  ,  ,                          
          db $57, $D6, $44, $40         ; data? W,  , D, @                        
          db $BE, $56, $D7, $02         ; data?  , V,  ,                          
          db $B2, $3C, $56, $3C         ; data?  , <, V, <                        
          db $57, $3A, $58, $2A         ; data? W, :, X, *                        
          db $EE, $1E, $95, $18         ; data?  ,  ,  ,                          
          db $92, $81, $4F, $03         ; data?  ,  , O,                          
          db $03, $02, $A6, $20         ; data?  ,  ,  , SPACE                    
          db $B8, $93, $A4, $20         ; data?  ,  ,  , SPACE                    
          db $81, $03, $00, $00         ; data?  ,  ,  ,                          
          db $03, $07, $4B, $03         ; data?  ,  , K,                          
          db $05, $5C, $04, $04         ; data?  , \,  ,                          
          db $69, $04, $29, $82         ; data? i,  , ),                          
          db $07, $10, $A5, $08         ; data?  ,  ,  ,                          
          db $2B, $AB, $05, $1B         ; data? +,  ,  ,                          
          db $DC, $06, $03, $DE         ; data?  ,  ,  ,                          
          db $00, $3F, $01, $0F         ; data?  ,  ,  ,                          
          db $1D, $2B, $38, $3B         ; data?  , +, 8, ;                        
          db $3F, $43, $47, $49         ; data?  , C, G, I                        
          db $57, $65, $70, $7E         ; data? W, e, p, ~                        
          db $86, $8E, $95, $93         ; data?  ,  ,  ,                          
          db $9A, $9D, $A0, $A3         ; data?  ,  ,  ,                          
          db $A6, $A9, $AC, $AF         ; data?  ,  ,  ,                          
          db $B2, $B5, $B8, $BB         ; data?  ,  ,  ,                          
          db $BE, $C1, $C4, $81         ; data?  ,  ,  ,                          
          db $0F, $F6, $34, $42         ; data?  ,  , 4, B                        
          db $30, $30, $33, $35         ; data? 0, 0, 3, 5                        
          db $31, $38, $36, $20         ; data? 1, 8, 6, SPACE                    
          db $20, $20, $0F, $F6         ; data? SPACE, SPACE,  ,                  
          db $34, $42, $30, $30         ; data? 4, B, 0, 0                        
          db $33, $35, $31, $35         ; data? 3, 5, 1, 5                        
          db $32, $20, $20, $20         ; data? 2, SPACE, SPACE, SPACE            
          db $0F, $F6, $20, $52         ; data?  ,  , SPACE, R                    
          db $61, $64, $69, $6F         ; data? a, d, i, o                        
          db $20, $20, $20, $20         ; data? SPACE, SPACE, SPACE, SPACE        
          db $20, $20, $0E, $F6         ; data? SPACE, SPACE,  ,                  
          db $20, $20, $20, $20         ; data? SPACE, SPACE, SPACE, SPACE        
          db $20, $20, $20, $30         ; data? SPACE, SPACE, SPACE, 0            
          db $30, $30, $31, $08         ; data? 0, 0, 1,                          
          db $F6, $00, $05, $F5         ; data?  ,  ,  ,                          
          db $03, $53, $05, $F5         ; data?  , S,  ,                          
          db $03, $56, $05, $F5         ; data?  , V,  ,                          
          db $04, $AB, $44, $0A         ; data?  ,  , D,                          
          db $0F, $E7, $10, $08         ; data?  ,  ,  ,                          
          db $00, $06, $4E, $C0         ; data?  ,  , N,                          
          db $17, $64, $80, $25         ; data?  , d,  , %                        
          db $00, $87, $0F, $E7         ; data?  ,  ,  ,                          
          db $25, $00, $F0, $25         ; data? %,  ,  , %                        
          db $00, $C2, $11, $20         ; data?  ,  ,  , SPACE                    
          db $20, $11, $20, $20         ; data? SPACE,  , SPACE, SPACE            
          db $0C, $E7, $25, $01         ; data?  ,  , %,                          
          db $11, $25, $00, $F4         ; data?  , %,  ,                          
          db $25, $00, $C2, $0F         ; data? %,  ,  ,                          
          db $E7, $10, $01, $00         ; data?  ,  ,  ,                          
          db $11, $20, $20, $25         ; data?  , SPACE, SPACE, %                
          db $00, $F5, $25, $00         ; data?  ,  , %,                          
          db $88, $09, $E7, $25         ; data?  ,  ,  , %                        
          db $00, $F6, $25, $00         ; data?  ,  , %,                          
          db $C2, $09, $E7, $25         ; data?  ,  ,  , %                        
          db $00, $F7, $25, $00         ; data?  ,  , %,                          
          db $C2, $06, $E7, $11         ; data?  ,  ,  ,                          
          db $20, $20, $03, $FD         ; data? SPACE, SPACE,  ,                  
          db $06, $FC, $FF, $FF         ; data?  ,  ,  ,                          
          db $88, $03, $51, $A4         ; data?  ,  , Q,                          
          db $02, $9C, $87, $03         ; data?  ,  ,  ,                          
          db $58, $A4, $03, $58         ; data? X,  ,  , X                        
          db $9D, $03, $52, $9D         ; data?  ,  , R,                          
          db $03, $54, $AC, $03         ; data?  , T,  ,                          
          db $54, $A4, $03, $55         ; data? T,  ,  , U                        
          db $AC, $03, $55, $A4         ; data?  ,  , U,                          
          db $03, $58, $9D, $03         ; data?  , X,  ,                          
          db $56, $B1, $03, $57         ; data? V,  ,  , W                        
          db $B1, $03, $57, $9D         ; data?  ,  , W,                          
          db $FF, $FF, $00, $04         ; data?  ,  ,  ,                          
          db $14, $23, $00, $C6         ; data?  ,  #,  ,                         
          db $01, $D0, $A1, $41         ; data?  ,  ,  , A                        
          db $26, $32, $C6, $02         ; data? &, 2,  ,                          
          db $B3, $A1, $34, $26         ; data?  ,  , 4, &                        
          db $13, $AE, $0A, $D6         ; data?  ,  ,  ,                          
          db $01, $D0, $0A, $69         ; data?  ,  ,  , i                        
          db $03, $D6, $01, $E0         ; data?  ,  ,  ,                          
          db $D7, $02, $B2, $5A         ; data?  ,  ,  , Z                        
          db $26, $F1, $20, $18         ; data? &,  , SPACE,                      
          db $C6, $02, $BD, $A1         ; data?  ,  ,  ,                          
          db $31, $26, $11, $AE         ; data? 1, &,  ,                          
          db $05, $D6, $01, $DA         ; data?  ,  ,  ,                          
          db $0A, $69, $03, $D6         ; data?  , i,  ,                          
          db $01, $EA, $D7, $02         ; data?  ,  ,  ,                          
          db $B8, $5A, $26, $F1         ; data?  , Z, &,                          
          db $81                        ; data?  ,  ,  ,                          
; 
L4541: 
          rts                           ; Return from Subroutine                  
; 
          db $A6, $07, $CD, $25         ; data?  ,  ,  , %                        
          db $91, $A6, $14, $CC         ; data?  ,  ,  ,                          
          db $24, $CB                   ; data? $,  ,  ,                          
; 
L454C: 
          brclr 6,STACK_0ce,L0559       ; Branch to 0x0559 if Bit 6 Clear (Mn = 0)
          lda STACK_0d0                 ; Load Accumulator with value of Memory at STACK_0d0, A <- (STACK_0d0)
          bit #$F0                      ; Bit Test Accumulator with Memory Byte (A) ∧ (0xF0)
          bne L0559                     ; Branch to 0x0559 if Not Equal (Z = 0);  
          jmp L45EE                     ; Unconditional Jump to 0x45EE            
; 
L4558: 
          db $81, $81, $A6, $01         ; data?  ,  ,  ,                          
          db $20, $02, $A6, $07         ; data? SPACE,  ,  ,                      
          db $07, $D0, $F6, $BB         ; data?  ,  ,  ,                          
          db $D0, $A4, $0F, $AA         ; data?  ,  ,  ,                          
          db $08, $A1, $0D, $25         ; data?  ,  ,  , %                        
          db $07, $26, $03, $A6         ; data?  , &,  ,                          
          db $08, $C1, $A6, $0C         ; data?  ,  ,  ,                          
          db $B7, $D0, $20, $00         ; data?  ,  , SPACE,                      
          db $0B, $CE, $10, $A6         ; data?  ,  ,  ,                          
          db $17, $0C, $81, $5A         ; data?  ,  ,  , Z                        
          db $BE, $84, $D6, $45         ; data?  ,  ,  , E                        
          db $DD, $B7, $C8, $A6         ; data?  ,  ,  ,                          
          db $8B, $20, $4F, $0D         ; data?  , SPACE, O,                      
          db $CE, $CB, $BE, $D0         ; data?  ,  ,  ,                          
          db $A6, $05, $0C, $6A         ; data?  ,  ,  , j                        
          db $02, $A6, $07, $A3         ; data?  ,  ,  ,                          
          db $01, $27, $3F, $A6         ; data?  , ',  ,                          
          db $CA, $A3, $08, $27         ; data?  ,  ,  , '                        
          db $39, $9F, $AE, $07         ; data? 9,  ,  ,                          
          db $A1, $09, $27, $12         ; data?  ,  , ',                          
          db $A1, $0A, $27, $18         ; data?  ,  , ',                          
          db $A1, $0B, $26, $1F         ; data?  ,  , &,                          
          db $E6, $A3, $D7, $02         ; data?  ,  ,  ,                          
          db $57, $5A, $2A, $F8         ; data? W, Z, *,                          
          db $20, $1E, $E6, $DA         ; data? SPACE,  ,  ,                      
          db $D7, $02, $57, $5A         ; data?  ,  , W, Z                        
          db $2A, $F8, $20, $14         ; data? *,  , SPACE,                      
          db $D6, $45, $E6, $D7         ; data?  , E,  ,                          
          db $02, $57, $5A, $2A         ; data?  , W, Z, *                        
          db $F7, $20, $09, $D6         ; data?  , SPACE,  ,                      
          db $01, $90, $D7, $02         ; data?  ,  ,  ,                          
          db $57, $5A, $2A, $F7         ; data? W, Z, *,                          
          db $A6, $C4, $CC, $24         ; data?  ,  ,  , $                        
          db $DC, $00, $01, $03         ; data?  ,  ,  ,                          
          db $04, $05, $06, $08         ; data?  ,  ,  ,                          
          db $09, $0A, $37, $42         ; data?  ,  , 7, B                        
          db $32, $30, $2E, $31         ; data? 2, 0, ., 1                        
          db $20, $4D                   ; data? SPACE, M,  ,                      
; 
L45EE: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X4606,x                   ; Load Accumulator with data from  memory at 0x4606, A <- (0x4606)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X4605,x                   ; Load Accumulator with data from  memory at 0x4605, A <- (0x4605)
          beq L0604                     ; Branch to 0x0604 if Equal Z=1           
          jsr L2889                     ; Jump to Subroutine at 0x2889            
          bne L05EF                     ; Branch to 0x05EF if Not Equal (Z = 0);  
          ldx X4604,x                   ; Load Index Register with Memory Byte, X <- (0x4604)
          jsr L4558,x ;INFO: index jump ; Jump to Subroutine at 0x4558            
X4604: 
          rts                           ; Return from Subroutine                  
; 
X4605: 
          db $F6                        ; data?  ,  ,  ,                          
X4606: 
          db $01, $F8, $02, $E7         ; data?  ,  ,  ,                          
          db $06, $00                   ; data?  ,  ,  ,                          
; 
L460C: 
          brclr 1,STACK_0d2,L0684       ; Branch to 0x0684 if Bit 1 Clear (Mn = 0)
          brset 0,STACK_0d2,L0684       ; Branch to 0x0684 if Bit 0 is set at STACK_0d2 (Mn=1)
          brclr 3,STACK_0cb,L0619       ; Branch to 0x0619 if Bit 3 Clear (Mn = 0)
          bclr 3,STACK_0cb              ; Clear bit 3 at STACK_0cb                
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          brclr 6,RAM1_05d,L0684        ; Branch to 0x0684 if Bit 6 Clear (Mn = 0)
          jmp L4742                     ; Unconditional Jump to 0x4742            
; 
L461F: 
          db $03, $D2, $62, $A6         ; data?  ,  , b,                          
          db $06, $B8, $D4, $B7         ; data?  ,  ,  ,                          
          db $D4, $AE, $A6, $CD         ; data?  ,  ,  ,                          
          db $38, $A0, $11, $D4         ; data? 8,  ,  ,                          
          db $AE, $83, $04, $D4         ; data?  ,  ,  ,                          
          db $0F, $AE, $8D, $20         ; data?  ,  ,  , SPACE                    
          db $0B, $03, $D2, $49         ; data?  ,  ,  , I                        
          db $AE, $89, $A6, $01         ; data?  ,  ,  ,                          
          db $B8, $D4, $B7, $D4         ; data?  ,  ,  ,                          
          db $14, $6A, $20, $14         ; data?  , j, SPACE,                      
          db $AE, $87, $C1, $AE         ; data?  ,  ,  ,                          
          db $86, $C1, $AE, $85         ; data?  ,  ,  ,                          
          db $C1, $AE, $84, $20         ; data?  ,  ,  , SPACE                    
          db $07, $AE, $8B, $C1         ; data?  ,  ,  ,                          
          db $AE, $8A, $AD, $1E         ; data?  ,  ,  ,                          
          db $11, $D4, $C6, $02         ; data?  ,  ,  ,                          
          db $64, $A4, $ED, $C7         ; data? d,  ,  ,                          
          db $02, $64, $BF, $7D         ; data?  , d,  , }                        
          db $1C, $94, $1E, $5D         ; data?  ,  ,  , ]                        
          db $19, $D2, $14, $CB         ; data?  ,  ,  ,                          
          db $81, $08, $D2, $DA         ; data?  ,  ,  ,                          
          db $08, $D2, $DA, $13         ; data?  ,  ,  ,                          
          db $D2, $81, $A6, $50         ; data?  ,  ,  , P                        
          db $B7, $77, $81, $A6         ; data?  , w,  ,                          
          db $90, $B7, $77, $18         ; data?  ,  , w,                          
          db $D2, $81, $B6, $78         ; data?  ,  ,  , x                        
          db $A4, $07, $B7, $C8         ; data?  ,  ,  ,                          
          db $4A, $CD, $26, $64         ; data? J,  , &, d                        
          db $C4, $02, $66, $26         ; data?  ,  , f, &                        
          db $0C, $A6, $88, $CD         ; data?  ,  ,  ,                          
          db $24, $E5, $B6, $C8         ; data? $,  ,  ,                          
          db $AA, $20, $CD, $25         ; data?  , SPACE,  , %                    
          db $9A, $B6, $C8, $AA         ; data?  ,  ,  ,                          
          db $C0, $97, $20, $B4         ; data?  ,  , SPACE,                      
          db $A6, $05, $CD, $25         ; data?  ,  ,  , %                        
          db $65, $C6, $02, $60         ; data? e,  ,  , `                        
          db $A4, $07, $B7, $C8         ; data?  ,  ,  ,                          
          db $C6, $02, $65, $A5         ; data?  ,  , e,                          
          db $06, $26, $46, $A5         ; data?  , &, F,                          
          db $08, $26, $0C, $A4         ; data?  , &,  ,                          
          db $F0, $A1, $A0, $27         ; data?  ,  ,  , '                        
          db $06, $A1, $B0, $26         ; data?  ,  ,  , &                        
          db $0B, $16, $D4, $A6         ; data?  ,  ,  ,                          
          db $20, $CD, $25, $9A         ; data? SPACE,  , %,                      
          db $AE, $08, $20, $29         ; data?  ,  , SPACE, )                    
          db $C6, $02, $67, $2A         ; data?  ,  , g, *                        
          db $08, $A4, $07, $B7         ; data?  ,  ,  ,                          
          db $C8, $AE, $89, $20         ; data?  ,  ,  , SPACE                    
          db $1C, $C6, $02, $66         ; data?  ,  ,  , f                        
          db $A4, $3F, $27, $E3         ; data?  ,  , ',                          
          db $00, $D2, $10, $05         ; data?  ,  ,  ,                          
          db $D4, $0D, $C6, $02         ; data?  ,  ,  ,                          
          db $64, $A4, $24, $26         ; data? d,  , $, &                        
          db $06, $AE, $83, $BF         ; data?  ,  ,  ,                          
          db $7D, $1C, $94, $AE         ; data? },  ,  ,                          
          db $C8, $9F, $CC, $24         ; data?  ,  ,  , $                        
          db $CB, $CD, $25, $3F         ; data?  ,  , %,                          
          db $B6, $C8, $AA, $30         ; data?  ,  ,  , 0                        
          db $C7, $02, $59, $C6         ; data?  ,  , Y,                          
          db $02, $65, $44, $A4         ; data?  , e, D,                          
          db $03, $AA, $30, $C7         ; data?  ,  , 0,                          
          db $02, $5E, $A6, $C4         ; data?  , ^,  ,                          
          db $CC, $24, $DC, $3F         ; data?  , $,  ,                          
          db $56, $17, $CB, $04         ; data? V,  ,  ,                          
          db $6A, $12, $13, $D4         ; data? j,  ,  ,                          
          db $10, $D4, $C6, $02         ; data?  ,  ,  ,                          
          db $64, $A5, $12, $26         ; data? d,  ,  , &                        
          db $02, $11, $D4, $05         ; data?  ,  ,  ,                          
          db $D4, $02, $12, $D4         ; data?  ,  ,  ,                          
          db $4F, $01, $D4, $02         ; data? O,  ,  ,                          
          db $18, $56, $03, $D4         ; data?  , V,  ,                          
          db $02, $A6, $10, $CD         ; data?  ,  ,  ,                          
          db $25, $0E, $81              ; data? %,  ,  ,                          
; 
L4742: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X475C,x                   ; Load Accumulator with data from  memory at 0x475C, A <- (0x475C)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X475B,x                   ; Load Accumulator with data from  memory at 0x475B, A <- (0x475B)
          beq L075A                     ; Branch to 0x075A if Equal Z=1           
          jsr L2889                     ; Jump to Subroutine at 0x2889            
          bne L0743                     ; Branch to 0x0743 if Not Equal (Z = 0);  
          ldx X475A,x                   ; Load Index Register with Memory Byte, X <- (0x475A)
          jsr L461F,x ;INFO: index jump ; Jump to Subroutine at 0x461F            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X475A: 
          rts                           ; Return from Subroutine                  
; 
X475B: 
          db $F8                        ; data?  ,  ,  ,                          
X475C: 
          db $2B, $E7, $28, $EF         ; data? +,  , (,                          
          db $2B, $F0, $28, $ED         ; data? +,  , (,                          
          db $5F, $8D, $38, $4D         ; data? _,  , 8, M                        
          db $5A, $CD, $54, $F3         ; data? Z,  , T,                          
          db $5F, $93, $35, $53         ; data? _,  , 5, S                        
          db $5A, $D3, $51, $FD         ; data? Z,  , Q,                          
          db $5F, $9D, $38, $5D         ; data? _,  , 8, ]                        
          db $5A, $DD, $54, $FC         ; data? Z,  , T,                          
          db $5F, $9C, $35, $5C         ; data? _,  , 5, \                        
          db $5A, $DC, $51, $F1         ; data? Z,  , Q,                          
          db $5F, $91, $38, $51         ; data? _,  , 8, Q                        
          db $5A, $D1, $54, $F2         ; data? Z,  , T,                          
          db $5F, $92, $35, $52         ; data? _,  , 5, R                        
          db $5A, $D2, $51, $EC         ; data? Z,  , Q,                          
          db $00, $08, $00, $0B         ; data?  ,  ,  ,                          
          db $19, $E0, $66, $00         ; data?  ,  , f,                          
; 
L479C: 
          brclr 2,STACK_0d2,L07B4       ; Branch to 0x07B4 if Bit 2 Clear (Mn = 0)
          brclr 4,STACK_0cb,L07AB       ; Branch to 0x07AB if Bit 4 Clear (Mn = 0)
          bclr 4,STACK_0cb              ; Clear bit 4 at STACK_0cb                
          bset 7,RAM1_05d               ; Set Bit 7 at memory RAM1_05d (Mn <- 1 ) 
          brclr 1,RAM1_07c,L07AB        ; Branch to 0x07AB if Bit 1 Clear (Mn = 0)
          bset 2,STACK_0cb              ; Set Bit 2 at memory STACK_0cb (Mn <- 1 )
          brclr 6,RAM1_05d,L07B4        ; Branch to 0x07B4 if Bit 6 Clear (Mn = 0)
          brset 7,STACK_0d3,L07B4       ; Branch to 0x07B4 if Bit 7 is set at STACK_0d3 (Mn=1)
          jmp L489A                     ; Unconditional Jump to 0x489A            
; 
          db $81, $A6, $8B, $C1         ; data?  ,  ,  ,                          
          db $A6, $8A, $14, $CB         ; data?  ,  ,  ,                          
          db $03, $7C, $0B, $A6         ; data?  , |,  ,                          
          db $88, $0E, $D3, $66         ; data?  ,  ,  , f                        
          db $15, $D2, $A6, $80         ; data?  ,  ,  ,                          
          db $20, $60, $06, $7F         ; data? SPACE, `,  , DEL                  
          db $E7, $0A, $7F, $E4         ; data?  ,  , DEL,                        
          db $B7, $7B, $13, $6A         ; data?  , {,  , j                        
          db $17, $6A, $0B, $D3         ; data?  , j,  ,                          
          db $55, $17, $7B, $20         ; data? U,  , {, SPACE                    
          db $51, $14, $CB, $06         ; data? Q,  ,  ,                          
          db $6A, $44, $16, $6A         ; data? j, D,  , j                        
          db $A6, $89, $20, $42         ; data?  ,  , SPACE, B                    
          db $18, $BC, $A6, $40         ; data?  ,  ,  , @                        
          db $B8, $D3, $B7, $D3         ; data?  ,  ,  ,                          
          db $AE, $A5, $CD, $38         ; data?  ,  ,  , 8                        
          db $A0, $20, $39, $07         ; data?  , SPACE, 9,                      
          db $6A, $04, $1A, $D3         ; data? j,  ,  ,                          
          db $20, $06, $A6, $20         ; data? SPACE,  ,  , SPACE                
          db $B8, $D3, $B7, $D3         ; data?  ,  ,  ,                          
          db $AE, $A5, $CD, $38         ; data?  ,  ,  , 8                        
          db $A0, $03, $7C, $10         ; data?  ,  , |,                          
          db $A6, $8B, $01, $7C         ; data?  ,  ,  , |                        
          db $06, $04, $7C, $BC         ; data?  ,  , |,                          
          db $4A, $20, $B9, $05         ; data? J, SPACE,  ,                      
          db $7C, $B6, $20, $F8         ; data? |,  , SPACE,                      
          db $07, $6A, $11, $20         ; data?  , j,  , SPACE                    
          db $05, $A6, $8E, $03         ; data?  ,  ,  ,                          
          db $7C, $02, $A6, $8F         ; data? |,  ,  ,                          
          db $17, $6A, $B7, $7B         ; data?  , j,  , {                        
          db $13, $6A, $1A, $94         ; data?  , j,  ,                          
          db $1E, $5D, $81, $A6         ; data?  , ],  ,                          
          db $04, $CD, $25, $73         ; data?  ,  , %, s                        
          db $A6, $00, $07, $7C         ; data?  ,  ,  , |                        
          db $11, $02, $7C, $1D         ; data?  ,  , |,                          
          db $07, $D3, $0B, $A6         ; data?  ,  ,  ,                          
          db $01, $19, $D3, $00         ; data?  ,  ,  ,                          
          db $7C, $04, $A6, $02         ; data? |,  ,  ,                          
          db $18, $D3, $CD, $24         ; data?  ,  ,  , $                        
          db $CB, $13, $6A, $07         ; data?  ,  , j,                          
          db $D3, $43, $B6, $D3         ; data?  , C,  ,                          
          db $AE, $A5, $CC, $38         ; data?  ,  ,  , 8                        
          db $A0, $0B, $D3, $03         ; data?  ,  ,  ,                          
          db $02, $6A, $36, $01         ; data?  , j, 6,                          
          db $7C, $09, $A6, $03         ; data? |,  ,  ,                          
          db $04, $7C, $0B, $A6         ; data?  , |,  ,                          
          db $04, $20, $07, $A6         ; data?  , SPACE,  ,                      
          db $03, $05, $7C, $02         ; data?  ,  , |,                          
          db $A6, $04, $13, $6A         ; data?  ,  ,  , j                        
          db $CC, $24, $DC              ; data?  , $,  ,                          
; 
L487B: 
          bclr 4,STACK_0cb              ; Clear bit 4 at STACK_0cb                
          clra                          ; Clear byte at clra <- 0x00              
          brclr 7,STACK_0d3,L0086       ; Branch to 0x0086 if Bit 7 Clear (Mn = 0)
          brclr 2,STACK_0d3,L008B       ; Branch to 0x008B if Bit 2 Clear (Mn = 0)
          bra L0089                     ; Branch Always (1 = 1)                   
; 
          db $07, $6A, $02, $AA         ; data?  , j,  ,                          
          db $10, $B7, $56, $B6         ; data?  ,  , V,                          
          db $D3, $A4, $60, $09         ; data?  ,  , `,                          
          db $56, $02, $A4, $40         ; data? V,  ,  , @                        
          db $CD, $25, $0E, $81         ; data?  , %,  ,                          
; 
L489A: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda X48B4,x                   ; Load Accumulator with data from  memory at 0x48B4, A <- (0x48B4)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X48B3,x                   ; Load Accumulator with data from  memory at 0x48B3, A <- (0x48B3)
          beq L00B2                     ; Branch to 0x00B2 if Equal Z=1           
          jsr L2889                     ; Jump to Subroutine at 0x2889            
          bne L009B                     ; Branch to 0x009B if Not Equal (Z = 0);  
          ldx X48B2,x                   ; Load Index Register with Memory Byte, X <- (0x48B2)
          jsr L47B5,x ;INFO: index jump ; Jump to Subroutine at 0x47B5            
          bclr 6,RAM1_05d               ; Clear bit 6 at RAM1_05d                 
X48B2: 
          rts                           ; Return from Subroutine                  
; 
X48B3: 
          db $F9                        ; data?  ,  ,  ,                          
X48B4: 
          db $6C, $0B, $28, $04         ; data? l,  , (,                          
          db $42, $08, $42, $F3         ; data? B,  , B,                          
          db $00, $ED, $03, $FC         ; data?  ,  ,  ,                          
          db $00, $FD, $03, $F2         ; data?  ,  ,  ,                          
          db $00, $F1, $03, $05         ; data?  ,  ,  ,                          
          db $33, $00                   ; data? 3,  ,  ,                          
; 
L48CA: 
          jsr L499F                     ; Jump to Subroutine at 0x499F            
          bclr 4,PortA                  ; Set SLAVE_CLOCK LOW                     
          bset 4,DDRA                   ; Set SLAVE_CLOCK as OUTPUT               
          bclr 5,PortA                  ; Set SLAVE_DATA LOW                      
          bset 5,DDRA                   ; Set SLAVE_DATA as OUTPUT                
          bclr 3,PortA                  ; Set SLAVE_STATUS LOW                    
          bset 3,DDRA                   ; Set SLAVE_STATUS as OUTPUT              
          jsr L2631                     ; Jump to Subroutine at 0x2631            
          bclr 3,DDRA                   ; Set SLAVE_STATUS as INPUT               
          rts                           ; Return from Subroutine                  
; 
L48DF: 
          bclr 3,DDRA                   ; Set SLAVE_STATUS as INPUT               
          brclr 5,RAM1_06a,L00E7        ; Branch to 0x00E7 if Bit 5 Clear (Mn = 0)
          brclr 3,PortA,L010A           ; Branch to 0x010A if SLAVE_STATUS is LOW 
          jsr L499F                     ; Jump to Subroutine at 0x499F            
          bclr 5,PortB                  ; Set RESET_SLAVE LOW                     
          jsr L2631                     ; Jump to Subroutine at 0x2631            
          bset 5,PortB                  ; Set RESET_SLAVE HIGH                    
          bset 7,RAM1_094               ; Set Bit 7 at memory RAM1_094 (Mn <- 1 ) 
          bset 0,RAM1_05e               ; Set Bit 0 at memory RAM1_05e (Mn <- 1 ) 
          lda #$05                      ; Load Accumulator with 0x05, A <- 0x05   
          sta RAM1_063                  ; Store Accumulator in Memory at RAM1_063 
          jsr L490B                     ; Jump to Subroutine at 0x490B            
          tst RAM1_094                  ; Test Memory Byte for Negative or Zero, (RAM1_094) – 0x00
          beq L010A                     ; Branch to 0x010A if Equal Z=1           
          jsr L0785                     ; Jump to Subroutine at 0x0785            
          jsr L2631                     ; Jump to Subroutine at 0x2631            
          tst RAM1_063                  ; Test Memory Byte for Negative or Zero, (RAM1_063) – 0x00
          bne L00F9                     ; Branch to 0x00F9 if Not Equal (Z = 0);  
          rts                           ; Return from Subroutine                  
; 
L490B: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda RAM1_094                  ; Load Accumulator with value of Memory at RAM1_094, A <- (RAM1_094)
          bne L0116                     ; Branch to 0x0116 if Not Equal (Z = 0);  
          lda RAM1_095                  ; Load Accumulator with value of Memory at RAM1_095, A <- (RAM1_095)
          beq L0152                     ; Branch to 0x0152 if Equal Z=1           
          ldx #$08                      ; Load Index Register with Memory Byte, X <- (0x08)
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          asla                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          bcc L0116                     ; Branch to 0x0116 if C bit is cleared    
          lda X49C8,x                   ; Load Accumulator with data from  memory at 0x49C8, A <- (0x49C8)
          sta RAM1_050                  ; Store Accumulator in Memory at RAM1_050 
          aslx                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          lda X49D1,x                   ; Load Accumulator with data from  memory at 0x49D1, A <- (0x49D1)
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          lda X49D2,x                   ; Load Accumulator with data from  memory at 0x49D2, A <- (0x49D2)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda #$07                      ; Load Accumulator with 0x07, A <- 0x07   
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          lda X4A09                     ; Load Accumulator with data from  memory at 0x4A09, A <- (0x4A09)
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda X4A08                     ; Load Accumulator with data from  memory at 0x4A08, A <- (0x4A08)
          tsta                          ; Test Memory Byte for Negative or Zero, (tsta) – 0x00
          beq L013B                     ; Branch to 0x013B if Equal Z=1           
          bset 0,RAM1_059               ; Set Bit 0 at memory RAM1_059 (Mn <- 1 ) 
          jsr L2679                     ; Jump to Subroutine at 0x2679            
          lda RAM1_050                  ; Load Accumulator with value of Memory at RAM1_050, A <- (RAM1_050)
          jsr L4A14                     ; Jump to Subroutine at 0x4A14            
          brset 0,RAM1_05e,L0152        ; Branch to 0x0152 if Bit 0 is set at RAM1_05e (Mn=1)
          brclr 0,RAM1_050,L0161        ; Branch to 0x0161 if Bit 0 Clear (Mn = 0)
          ldx #$94                      ; Load Index Register with Memory Byte, X <- (0x94)
          tst ,x                        ; Test Memory Byte for Negative or Zero, () – 0x00
          bne L014F                     ; Branch to 0x014F if Not Equal (Z = 0);  
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          jsr L266E                     ; Jump to Subroutine at 0x266E            
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          rts                           ; Return from Subroutine                  
; 
L4955: 
          brset 5,PortA,L019E           ; Branch to 0x019E if SLAVE_DATA is HIGH  
          brset 0,RAM1_05e,L019E        ; Branch to 0x019E if Bit 0 is set at RAM1_05e (Mn=1)
          jsr L4A78                     ; Jump to Subroutine at 0x4A78            
          brset 0,RAM1_05e,L019E        ; Branch to 0x019E if Bit 0 is set at RAM1_05e (Mn=1)
          ldx #$0B                      ; Load Index Register with Memory Byte, X <- (0x0B)
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bmi L019E                     ; Branch to 0x019E if Minus N = 1         
          cmp X49E7,x                   ; Compare Accumulator with Memory Byte, (A) - (0x49E7)
          bne L0163                     ; Branch to 0x0163 if Not Equal (Z = 0);  
          stx RAM1_050                  ; Store Index Register In Memory at RAM1_050
          jsr L2695                     ; Jump to Subroutine at 0x2695            
          stx RAM1_058                  ; Store Index Register In Memory at RAM1_058
          ldx RAM1_050                  ; Load Index Register with Memory Byte, X <- (RAM1_050)
          aslx                          ; Arighmetic Shift Left (Same as LSL), C <- [b7 <<<< b0] <- 0
          lda X4A08                     ; Load Accumulator with data from  memory at 0x4A08, A <- (0x4A08)
          sta RAM1_059                  ; Store Accumulator in Memory at RAM1_059 
          lda X4A09                     ; Load Accumulator with data from  memory at 0x4A09, A <- (0x4A09)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X49F3,x                   ; Load Accumulator with data from  memory at 0x49F3, A <- (0x49F3)
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          lda X49F2,x                   ; Load Accumulator with data from  memory at 0x49F2, A <- (0x49F2)
          tsta                          ; Test Memory Byte for Negative or Zero, (tsta) – 0x00
          beq L018C                     ; Branch to 0x018C if Equal Z=1           
          bset 0,RAM1_059               ; Set Bit 0 at memory RAM1_059 (Mn <- 1 ) 
          jsr L2679                     ; Jump to Subroutine at 0x2679            
          lda RAM1_050                  ; Load Accumulator with value of Memory at RAM1_050, A <- (RAM1_050)
          beq L019E                     ; Branch to 0x019E if Equal Z=1           
          cmp #$05                      ; Compare Accumulator with Memory Byte, (A) - (0x05)
          beq L019C                     ; Branch to 0x019C if Equal Z=1           
          bhi L019E                     ; Branch to 0x019E if Higher C v Z = 0    
          bset 3,STACK_0cb              ; Set Bit 3 at memory STACK_0cb (Mn <- 1 )
          cmp X18CB                     ; Compare Accumulator with Memory Byte, (A) - (0x18CB)
          rts                           ; Return from Subroutine                  
; 
L499F: 
          clra                          ; Clear byte at clra <- 0x00              
          ldx #$07                      ; Load Index Register with Memory Byte, X <- (0x07)
          sta RAM2_0260,x               ; Store Accumulator in Memory at RAM2_0260
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L01A2                     ; Branch to 0x01A2 if Not Equal (Z = 0);  
          lda #$80                      ; Load Accumulator with 0x80, A <- 0x80   
          sta RAM2_0260                 ; Store Accumulator in Memory at RAM2_0260
          clr RAM1_06a                  ; Clear byte at RAM1_06a <- 0x00          
          lda RAM1_07c                  ; Load Accumulator with value of Memory at RAM1_07c, A <- (RAM1_07c)
          and #$40                      ; Logical AND between A and constant 0x40, A ← (A) && (0x40)
          ora #$A0                      ; Logical OR Accumulator with Memory at 0xA0, A <- (A) || (0xA0)
          sta RAM1_07c                  ; Store Accumulator in Memory at RAM1_07c 
          brset 5,RAM1_069,L01C0        ; Branch to 0x01C0 if Bit 5 is set at RAM1_069 (Mn=1)
          bset 2,RAM1_069               ; Set Bit 2 at memory RAM1_069 (Mn <- 1 ) 
          bset 6,RAM1_07c               ; Set Bit 6 at memory RAM1_07c (Mn <- 1 ) 
          bset 6,RAM1_06a               ; Set Bit 6 at memory RAM1_06a (Mn <- 1 ) 
          clr RAM1_092                  ; Clear byte at RAM1_092 <- 0x00          
          clr RAM1_091                  ; Clear byte at RAM1_091 <- 0x00          
          clr RAM1_094                  ; Clear byte at RAM1_094 <- 0x00          
          clr RAM1_095                  ; Clear byte at RAM1_095 <- 0x00          
X49C8: 
          rts                           ; Return from Subroutine                  
; 
          db $0A, $02, $04, $A2         ; data?  ,  ,  ,                          
          db $82, $A4, $08, $0C         ; data?  ,  ,  ,                          
X49D1: 
          db $A6                        ; data?  ,  ,  ,                          
X49D2: 
          db $0E, $00, $CE, $00         ; data?  ,  ,  ,                          
          db $7D, $00, $7B, $02         ; data? },  , {,                          
          db $B8, $00, $B7, $02         ; data?  ,  ,  ,                          
          db $80, $00, $D5, $00         ; data?  ,  ,  ,                          
          db $CE, $02, $B0, $00         ; data?  ,  ,  ,                          
          db $6B                        ; data? k,  ,  ,                          
X49E7: 
          db $46, $D2, $D4, $D6         ; data? F,  ,  ,                          
          db $E2, $48, $E6, $44         ; data?  , H,  , D                        
          db $E4, $E8, $42              ; data?  ,  , B,                          
X49F2: 
          db $00                        ; data?  ,  ,  ,                          
X49F3: 
          db $6A, $02, $61, $02         ; data? j,  , a,                          
          db $60, $02, $64, $02         ; data? `,  , d,                          
          db $60, $00, $7C, $02         ; data? `,  , |,                          
          db $B8, $00, $91, $00         ; data?  ,  ,  ,                          
          db $A3, $02, $B0, $00         ; data?  ,  ,  ,                          
          db $92                        ; data?  ,  ,  ,                          
X4A08: 
          db $02                        ; data?  ,  ,  ,                          
X4A09: 
          db $68, $02, $5E, $06         ; data? h,  , ^,                          
          db $18, $04, $19, $00         ; data?  ,  ,  ,                          
          db $12, $5E, $81              ; data?  , ^,  ,                          
; 
L4A14: 
          sta RAM1_057                  ; Store Accumulator in Memory at RAM1_057 
          jsr L2695                     ; Jump to Subroutine at 0x2695            
          stx RAM1_059                  ; Store Index Register In Memory at RAM1_059
          bset 1,RAM1_05e               ; Set Bit 1 at memory RAM1_05e (Mn <- 1 ) 
          ldx #$0C                      ; Load Index Register with Memory Byte, X <- (0x0C)
          brclr 4,PortA,L026E           ; Branch to 0x026E if SLAVE_CLOCK is LOW  
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L021F                     ; Branch to 0x021F if Not Equal (Z = 0);  
          bclr 2,RAM1_050               ; Clear bit 2 at RAM1_050                 
          bset 0,RAM1_050               ; Set Bit 0 at memory RAM1_050 (Mn <- 1 ) 
          brclr 5,PortA,L0278           ; Branch to 0x0278 if SLAVE_DATA is LOW   
          jsr L4B09                     ; Jump to Subroutine at 0x4B09            
          lda #$C8                      ; Load Accumulator with 0xC8, A <- 0xC8   
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          jsr L4AF3                     ; Jump to Subroutine at 0x4AF3            
          brclr 0,RAM1_05e,L023E        ; Branch to 0x023E if Bit 0 Clear (Mn = 0)
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          jsr L4AFC                     ; Jump to Subroutine at 0x4AFC            
          jsr L4AFC                     ; Jump to Subroutine at 0x4AFC            
          brclr 5,PortA,L0278           ; Branch to 0x0278 if SLAVE_DATA is LOW   
          clr RAM1_051                  ; Clear byte at RAM1_051 <- 0x00          
          lda #$AA                      ; Load Accumulator with 0xAA, A <- 0xAA   
          jsr L4B2A                     ; Jump to Subroutine at 0x4B2A            
          lda RAM1_057                  ; Load Accumulator with value of Memory at RAM1_057, A <- (RAM1_057)
          jsr L4B2A                     ; Jump to Subroutine at 0x4B2A            
          jsr L4AB8                     ; Jump to Subroutine at 0x4AB8            
          lda RAM1_051                  ; Load Accumulator with value of Memory at RAM1_051, A <- (RAM1_051)
          jsr L4B2A                     ; Jump to Subroutine at 0x4B2A            
          jsr L4AFE                     ; Jump to Subroutine at 0x4AFE            
          jsr L4B09                     ; Jump to Subroutine at 0x4B09            
          jsr L4ACA                     ; Jump to Subroutine at 0x4ACA            
          jsr L4AE3                     ; Jump to Subroutine at 0x4AE3            
          jsr L4AE3                     ; Jump to Subroutine at 0x4AE3            
          jsr L4AE3                     ; Jump to Subroutine at 0x4AE3            
          jsr L4B25                     ; Jump to Subroutine at 0x4B25            
          cmp X105E                     ; Compare Accumulator with Memory Byte, (A) - (0x105E)
          bclr 1,RAM1_05e               ; Clear bit 1 at RAM1_05e                 
          bclr 5,DDRA                   ; Set SLAVE_DATA as INPUT                 
          bclr 4,DDRA                   ; Set SLAVE_CLOCK as INPUT                
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
L4A78: 
          jsr L4AFE                     ; Jump to Subroutine at 0x4AFE            
          ldx #$50                      ; Load Index Register with Memory Byte, X <- (0x50)
          decx                          ; Decrement Byte at decx Byte = Byte - 1  
          bne L027D                     ; Branch to 0x027D if Not Equal (Z = 0);  
          clr RAM1_059                  ; Clear byte at RAM1_059 <- 0x00          
          bclr 0,RAM1_050               ; Clear bit 0 at RAM1_050                 
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          bclr 2,RAM1_050               ; Clear bit 2 at RAM1_050                 
          jsr L4AE3                     ; Jump to Subroutine at 0x4AE3            
          lda #$56                      ; Load Accumulator with 0x56, A <- 0x56   
          jsr L4B28                     ; Jump to Subroutine at 0x4B28            
          bset 2,RAM1_059               ; Set Bit 2 at memory RAM1_059 (Mn <- 1 ) 
          lda #$56                      ; Load Accumulator with 0x56, A <- 0x56   
          jsr L4B28                     ; Jump to Subroutine at 0x4B28            
          lda RAM1_052                  ; Load Accumulator with value of Memory at RAM1_052, A <- (RAM1_052)
          sta RAM1_058                  ; Store Accumulator in Memory at RAM1_058 
          jsr L2695                     ; Jump to Subroutine at 0x2695            
          stx RAM1_059                  ; Store Index Register In Memory at RAM1_059
          inc RAM1_059                  ; Increment Byte RAM1_059, Byte = Byte + 1
          bclr 2,RAM1_050               ; Clear bit 2 at RAM1_050                 
          bsr L02B8                     ; Branch to Subroutine at 0x02B8          
          bsr L02C4                     ; Branch to Subroutine at 0x02C4          
          dec RAM1_056                  ; Decrement Byte at RAM1_056 Byte = Byte - 1
          bmi L02AF                     ; Branch to 0x02AF if Minus N = 1         
          brclr 5,PortA,L02A8           ; Branch to 0x02A8 if SLAVE_DATA is LOW   
          brclr 2,RAM1_050,L026E        ; Branch to 0x026E if Bit 2 Clear (Mn = 0)
          bclr 0,RAM1_05e               ; Clear bit 0 at RAM1_05e                 
          lda RAM1_058                  ; Load Accumulator with value of Memory at RAM1_058, A <- (RAM1_058)
          bra L0270                     ; Branch Always (1 = 1)                   
; 
L4AB8: 
          clrx                          ; Clear byte at clrx <- 0x00              
          lda RAM2_0268,x               ; Load Accumulator with value of Memory at RAM2_0268, A <- (RAM2_0268)
          bsr L032C                     ; Branch to Subroutine at 0x032C          
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          dec RAM1_059                  ; Decrement Byte at RAM1_059 Byte = Byte - 1
          bpl L02B9                     ; Branch to 0x02B9 if Plus N = 0          
          rts                           ; Return from Subroutine                  
; 
          db $00, $5E, $5E, $01         ; data?  , ^, ^,                          
          db $50, $03                   ; data? P,  ,  ,                          
; 
L4ACA: 
          jsr L4AE3                     ; Jump to Subroutine at 0x4AE3            
          sei                           ; Set Interrupt Mask, I ← 1);           
          bclr 4,DDRA                   ; Set SLAVE_CLOCK as INPUT                
          clr RAM1_056                  ; Clear byte at RAM1_056 <- 0x00          
          bset 7,RAM1_056               ; Set Bit 7 at memory RAM1_056 (Mn <- 1 ) 
          brset 4,PortA,L02E3           ; Branch to 0x02E3 if SLAVE_CLOCK is HIGH 
          dec RAM1_056                  ; Decrement Byte at RAM1_056 Byte = Byte - 1
          bpl L02D4                     ; Branch to 0x02D4 if Plus N = 0          
          bset 0,RAM1_05e               ; Set Bit 0 at memory RAM1_05e (Mn <- 1 ) 
          jmp L04C4                     ; Unconditional Jump to 0x04C4            
; 
          db $9A, $10, $5E              ; data?  ,  , ^,                          
; 
L4AE3: 
          rts                           ; Return from Subroutine                  
; 
          db $00, $5E, $3E, $01         ; data?  , ^, >,                          
          db $50, $05, $CD, $4A         ; data? P,  ,  , J                        
          db $E3, $20, $0F, $3F         ; data?  , SPACE,  ,                      
          db $56, $18, $56              ; data? V,  , V,                          
; 
L4AF3: 
          brclr 4,PortA,L02FC           ; Branch to 0x02FC if SLAVE_CLOCK is LOW  
          dec RAM1_056                  ; Decrement Byte at RAM1_056 Byte = Byte - 1
          bne L02F3                     ; Branch to 0x02F3 if Not Equal (Z = 0);  
          bra L02DB                     ; Branch Always (1 = 1)                   
; 
L4AFC: 
          bclr 5,DDRA                   ; Set SLAVE_DATA as INPUT                 
L4AFE: 
          bclr 4,PortA                  ; Set SLAVE_CLOCK LOW                     
          bset 4,DDRA                   ; Set SLAVE_CLOCK as OUTPUT               
          bclr 4,PortA                  ; Set SLAVE_CLOCK LOW                     
          cli                           ; Clear Interrupt Mask (I <- 0)           
          rts                           ; Return from Subroutine                  
; 
          db $00, $5E, $1C              ; data?  , ^,  ,                          
; 
L4B09: 
          bclr 5,PortA                  ; Set SLAVE_DATA LOW                      
          bset 5,DDRA                   ; Set SLAVE_DATA as OUTPUT                
          bclr 5,PortA                  ; Set SLAVE_DATA LOW                      
          rts                           ; Return from Subroutine                  
; 
          db $01, $50, $12, $4D         ; data?  , P,  , M                        
          db $2A, $F0, $1B, $04         ; data? *,  ,  ,                          
          db $3F, $56, $18, $56         ; data?  , V,  , V                        
          db $0A, $00, $08, $3A         ; data?  ,  ,  , :                        
          db $56, $2A, $F9, $20         ; data? V, *,  , SPACE                    
          db $B6                        ; data?  ,  ,  ,                          
; 
L4B25: 
          bclr 5,DDRA                   ; Set SLAVE_DATA as INPUT                 
          rts                           ; Return from Subroutine                  
; 
L4B28: 
          sta RAM1_051                  ; Store Accumulator in Memory at RAM1_051 
L4B2A: 
          ldx #$09                      ; Load Index Register with Memory Byte, X <- (0x09)
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          clr RAM1_05a                  ; Clear byte at RAM1_05a <- 0x00          
          bset 3,RAM1_05a               ; Set Bit 3 at memory RAM1_05a (Mn <- 1 ) 
          bsr L0310                     ; Branch to Subroutine at 0x0310          
          bsr L02C4                     ; Branch to Subroutine at 0x02C4          
          brset 5,PortA,L0339           ; Branch to 0x0339 if SLAVE_DATA is HIGH  
          rola                          ; Rotate Byte at rola Left through Carry Bit, C <- [b7 <<<< b0] <- C
          bsr L02E4                     ; Branch to Subroutine at 0x02E4          
          dec RAM1_05a                  ; Decrement Byte at RAM1_05a Byte = Byte - 1
          bne L0332                     ; Branch to 0x0332 if Not Equal (Z = 0);  
          brset 0,RAM1_050,L035C        ; Branch to 0x035C if Bit 0 is set at RAM1_050 (Mn=1)
          sta RAM1_052                  ; Store Accumulator in Memory at RAM1_052 
          tst RAM1_059                  ; Test Memory Byte for Negative or Zero, (RAM1_059) – 0x00
          bne L0352                     ; Branch to 0x0352 if Not Equal (Z = 0);  
          ldx #$51                      ; Load Index Register with Memory Byte, X <- (0x51)
          cmp ,x                        ; Compare Accumulator with Memory Byte, (A) - ()
          bne L0364                     ; Branch to 0x0364 if Not Equal (Z = 0);  
          bset 2,RAM1_050               ; Set Bit 2 at memory RAM1_050 (Mn <- 1 ) 
          bra L0355                     ; Branch Always (1 = 1)                   
; 
          db $D7, $02, $68, $AD         ; data?  ,  , h,                          
          db $AF, $CD, $4A, $C4         ; data?  ,  , J,                          
          db $20, $0B, $1B, $04         ; data? SPACE,  ,  ,                      
          db $CD, $4A, $C4, $0B         ; data?  , J,  ,                          
          db $00, $03, $10, $5E         ; data?  ,  ,  , ^                        
          db $9A, $B6, $52, $BB         ; data?  ,  , R,                          
          db $51, $28, $02, $A0         ; data? Q, (,  ,                          
          db $10, $B7, $51, $CD         ; data?  ,  , Q,                          
          db $4A, $E4, $20, $9A         ; data? J,  , SPACE,                      
; 
L4B76: 
          brset 2,RAM1_08b,L03B3        ; Branch to 0x03B3 if Bit 2 is set at RAM1_08b (Mn=1)
          brclr 6,RAM1_05d,L03B3        ; Branch to 0x03B3 if Bit 6 Clear (Mn = 0)
          jmp L4C26                     ; Unconditional Jump to 0x4C26            
; 
L4B7F: 
          db $19, $BA, $1E, $5D         ; data?  ,  ,  , ]                        
          db $A6, $70, $B7, $77         ; data?  , p,  , w                        
          db $81, $0E, $CE, $29         ; data?  ,  ,  , )                        
          db $07, $8B, $05, $0F         ; data?  ,  ,  ,                          
          db $8B, $1B, $17, $8B         ; data?  ,  ,  ,                          
          db $18, $B3, $3F, $CE         ; data?  ,  ,  ,                          
          db $1E, $CE, $3C, $8B         ; data?  ,  , <,                          
          db $15, $8B, $A6, $10         ; data?  ,  ,  ,                          
          db $C7, $02, $9E, $4F         ; data?  ,  ,  , O                        
          db $C7, $02, $9F, $A6         ; data?  ,  ,  ,                          
          db $0C, $0F, $8B, $4F         ; data?  ,  ,  , O                        
          db $C1, $A6, $0B, $12         ; data?  ,  ,  ,                          
          db $CB, $CD, $24, $E5         ; data?  ,  , $,                          
          db $81, $1F, $CE, $CE         ; data?  ,  ,  ,                          
          db $02, $9E, $C3, $01         ; data?  ,  ,  ,                          
          db $01, $26, $0F, $C6         ; data?  , &,  ,                          
          db $02, $9F, $C1, $01         ; data?  ,  ,  ,                          
          db $02, $26, $07, $BF         ; data?  , &,  ,                          
          db $8C, $B7, $8D, $CC         ; data?  ,  ,  ,                          
          db $37, $5F, $0E, $8B         ; data? 7, _,  ,                          
          db $C3, $CC, $37, $57         ; data?  ,  , 7, W                        
          db $5F, $C1, $AE, $01         ; data? _,  ,  ,                          
          db $A6, $70, $DB, $02         ; data?  , p,  ,                          
          db $9E, $25, $11, $AB         ; data?  , %,  ,                          
          db $A0, $20, $0D, $5F         ; data?  , SPACE,  , _                    
          db $C1, $AE, $01, $A6         ; data?  ,  ,  ,                          
          db $F7, $DB, $02, $9E         ; data?  ,  ,  ,                          
          db $29, $02, $AB, $0A         ; data? ),  ,  ,                          
          db $D7, $02, $9E, $A6         ; data?  ,  ,  ,                          
          db $50, $B7, $77, $14         ; data? P,  , w,                          
          db $CB, $13, $CB, $1E         ; data?  ,  ,  ,                          
          db $5D, $81, $A6, $0B         ; data? ],  ,  ,                          
          db $0E, $CE, $03, $07         ; data?  ,  ,  ,                          
          db $8B, $06, $A6, $C6         ; data?  ,  ,  ,                          
          db $CD, $24, $CB, $81         ; data?  , $,  ,                          
          db $CD, $24, $E5, $81         ; data?  , $,  ,                          
          db $06, $8B, $0C, $0E         ; data?  ,  ,  ,                          
          db $8B, $09, $A6, $20         ; data?  ,  ,  , SPACE                    
          db $02, $8B, $05, $48         ; data?  ,  ,  , H                        
          db $00, $8B, $01, $4F         ; data?  ,  ,  , O                        
          db $5F, $CD, $24, $F5         ; data? _,  , $,                          
          db $CC, $25, $05              ; data?  , %,  ,                          
; 
L4C26: 
          clrx                          ; Clear byte at clrx <- 0x00              
          brset 7,STACK_0ce,L042C       ; Branch to 0x042C if Bit 7 is set at STACK_0ce (Mn=1)
          ldx #$10                      ; Load Index Register with Memory Byte, X <- (0x10)
          lda X4C43,x                   ; Load Accumulator with data from  memory at 0x4C43, A <- (0x4C43)
          sta RAM1_056                  ; Store Accumulator in Memory at RAM1_056 
          lda X4C42,x                   ; Load Accumulator with data from  memory at 0x4C42, A <- (0x4C42)
          beq L0441                     ; Branch to 0x0441 if Equal Z=1           
          jsr L2889                     ; Jump to Subroutine at 0x2889            
          bne L042C                     ; Branch to 0x042C if Not Equal (Z = 0);  
          ldx X4C41,x                   ; Load Index Register with Memory Byte, X <- (0x4C41)
          jsr L4B7F,x ;INFO: index jump ; Jump to Subroutine at 0x4B7F            
X4C41: 
          rts                           ; Return from Subroutine                  
; 
X4C42: 
          db $E1                        ; data?  ,  ,  ,                          
X4C43: 
          db $54, $41, $54, $E2         ; data? T, A, T,                          
          db $63, $42, $63, $E3         ; data? c, B, c,                          
          db $56, $43, $56, $E4         ; data? V, C, V,                          
          db $65, $44, $65, $FE         ; data? e, D, e,                          
          db $00, $7E, $09, $00         ; data?  , ~,  ,                          
          db $0E, $96, $0C, $B6         ; data?  ,  ,  ,                          
          db $1D, $B0, $97, $B7         ; data?  ,  ,  ,                          
          db $99, $B6, $1C, $B2         ; data?  ,  ,  ,                          
          db $96, $B7, $98, $1F         ; data?  ,  ,  ,                          
          db $96, $16, $5E, $B6         ; data?  ,  , ^,                          
          db $1C, $B7, $96, $B6         ; data?  ,  ,  ,                          
          db $1D, $B7, $97, $81         ; data?  ,  ,  ,                          
; 
L4C73: 
          lda #$40                      ; Load Accumulator with 0x40, A <- 0x40   
          brclr 3,RAM1_05e,L0464        ; Branch to 0x0464 if Bit 3 Clear (Mn = 0)
          bclr 3,RAM1_05e               ; Clear bit 3 at RAM1_05e                 
          rts                           ; Return from Subroutine                  
; 
L4C7B: 
          tst RAM1_098                  ; Test Memory Byte for Negative or Zero, (RAM1_098) – 0x00
          beq L04B3                     ; Branch to 0x04B3 if Equal Z=1           
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
          bcs L049C                     ; Branch to 0x049C if C = 1               
          inca                          ; Increment Byte inca, Byte = Byte + 1    
          nega                          ; Negate Byte of nega (Two’s Complement), nega = 0x00 - (nega)
          add RAM1_09a                  ; Add without Carry, A ← (A) + (RAM1_09a)
          sta RAM1_09a                  ; Store Accumulator in Memory at RAM1_09a 
          lda RAM1_09b                  ; Load Accumulator with value of Memory at RAM1_09b, A <- (RAM1_09b)
          add RAM1_099                  ; Add without Carry, A ← (A) + (RAM1_099)
          sta RAM1_09b                  ; Store Accumulator in Memory at RAM1_09b 
          lda RAM1_09a                  ; Load Accumulator with value of Memory at RAM1_09a, A <- (RAM1_09a)
          adc RAM1_098                  ; ADD with CARRY, A ← (A) + (RAM1_098) + (C) 
          bcc L04AF                     ; Branch to 0x04AF if C bit is cleared    
          lda #$FF                      ; Load Accumulator with 0xFF, A <- 0xFF   
          sta RAM1_09a                  ; Store Accumulator in Memory at RAM1_09a 
          clr RAM1_098                  ; Clear byte at RAM1_098 <- 0x00          
          rts                           ; Return from Subroutine                  
; 
L4CB4: 
          ldx #$AA                      ; Load Index Register with Memory Byte, X <- (0xAA)
          jsr L38CC                     ; Jump to Subroutine at 0x38CC            
          beq L050C                     ; Branch to 0x050C if Equal Z=1           
          cmp #$05                      ; Compare Accumulator with Memory Byte, (A) - (0x05)
          bhi L050C                     ; Branch to 0x050C if Higher C v Z = 0    
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
          cmp X4D6C,x                   ; Compare Accumulator with Memory Byte, (A) - (0x4D6C)
          bhi L04E7                     ; Branch to 0x04E7 if Higher C v Z = 0    
          bne L04E1                     ; Branch to 0x04E1 if Not Equal (Z = 0);  
          lda RAM1_09b                  ; Load Accumulator with value of Memory at RAM1_09b, A <- (RAM1_09b)
          cmp X4D6D,x                   ; Compare Accumulator with Memory Byte, (A) - (0x4D6D)
          bcc L04E7                     ; Branch to 0x04E7 if C bit is cleared    
          inc RAM1_056                  ; Increment Byte RAM1_056, Byte = Byte + 1
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          incx                          ; Increment Byte incx, Byte = Byte + 1    
          bra L04D1                     ; Branch Always (1 = 1)                   
; 
          db $B6, $56, $B1, $84         ; data?  , V,  ,                          
          db $24, $12, $B6, $9C         ; data? $,  ,  ,                          
          db $D1, $4D, $C6, $22         ; data?  , M,  , "                        
          db $0B, $26, $07, $B6         ; data?  , &,  ,                          
          db $9D, $D1, $4D, $C7         ; data?  ,  , M,                          
          db $24, $02, $3C, $56         ; data? $,  , <, V                        
          db $B6, $56, $B1, $84         ; data?  , V,  ,                          
          db $27, $07, $B7, $84         ; data? ',  ,  ,                          
          db $0B, $CE, $02, $1E         ; data?  ,  ,  ,                          
          db $5D, $81, $4F, $B7         ; data? ],  , O,                          
          db $51, $B7, $53, $A6         ; data? Q,  , S,                          
          db $04, $B7, $52, $3C         ; data?  ,  , R, <                        
          db $53, $26, $05, $3C         ; data? S, &,  , <                        
          db $52, $0C, $52, $11         ; data? R,  , R,                          
          db $AD, $2D, $27, $F3         ; data?  , -, ',                          
          db $B6, $52, $D7, $02         ; data?  , R,  ,                          
          db $C0, $B6, $53, $D7         ; data?  ,  , S,                          
          db $02, $D0, $5D, $26         ; data?  ,  , ], &                        
          db $E6, $B6, $53, $AB         ; data?  ,  , S,                          
          db $FF, $B7, $53, $25         ; data?  ,  , S, %                        
          db $06, $3A, $52, $2A         ; data?  , :, R, *                        
          db $02, $20, $D8, $AD         ; data?  , SPACE,  ,                      
          db $0E, $27, $EE, $B6         ; data?  , ',  ,                          
          db $52, $D7, $02, $E0         ; data? R,  ,  ,                          
          db $B6, $53, $D7, $02         ; data?  , S,  ,                          
          db $F0, $20, $E2, $A6         ; data?  , SPACE,  ,                      
          db $50, $B7, $50, $B6         ; data? P,  , P,                          
          db $84, $B7, $51, $B6         ; data?  ,  , Q,                          
          db $52, $B7, $98, $B6         ; data? R,  ,  ,                          
          db $53, $B7, $99, $CD         ; data? S,  ,  ,                          
          db $4C, $7B, $3A, $50         ; data? L, {, :, P                        
          db $26, $F1, $CD, $4C         ; data? &,  ,  , L                        
          db $B4, $97, $B1, $51         ; data?  ,  ,  , Q                        
          db $81                        ; data?  ,  ,  ,                          
X4D6C: 
          db $4A                        ; data? J,  ,  ,                          
X4D6D: 
          db $04, $3A, $98, $30         ; data?  , :,  , 0                        
          db $7E, $29, $5C, $24         ; data? ~, ), \, $                        
          db $0F, $1F, $F6, $1C         ; data?  ,  ,  ,                          
          db $B3, $1A, $0B, $00         ; data?  ,  ,  ,                          
          db $00, $5D, $C0, $46         ; data?  , ],  , F                        
          db $50, $38, $40, $2E         ; data? P, 8, @, .                        
          db $E0, $28, $2E, $23         ; data?  , (, .,  #                       
          db $28, $1F, $40, $1C         ; data? (,  , @,                          
          db $20, $00, $00, $75         ; data? SPACE,  ,  , u                    
          db $30, $52, $B9, $3F         ; data? 0, R,  ,                          
          db $EB, $34, $15, $2B         ; data?  , 4,  , +                        
          db $F2, $26, $02, $21         ; data?  , &,  , !                        
          db $7C, $1D, $EC, $00         ; data? |,  ,  ,                          
          db $00, $9C, $40, $64         ; data?  ,  , @, d                        
          db $72, $4A, $03, $3A         ; data? r, J,  , :                        
          db $98, $30, $7D, $29         ; data?  , 0, }, )                        
          db $5C, $24, $0F, $1F         ; data? \, $,  ,                          
          db $F6, $00, $00, $C8         ; data?  ,  ,  ,                          
          db $E4, $75, $30, $52         ; data?  , u, 0, R                        
          db $B9, $3F, $EB, $34         ; data?  ,  ,  , 4                        
          db $15, $2B, $F2, $26         ; data?  , +,  , &                        
          db $02, $21, $7C, $00         ; data?  , !, |,                          
          db $00, $52, $B9, $3F         ; data?  , R,  ,                          
          db $EB, $34, $15, $2B         ; data?  , 4,  , +                        
          db $F2, $26, $02, $21         ; data?  , &,  , !                        
          db $7C, $1D, $EC, $1B         ; data? |,  ,  ,                          
          db $0B, $00, $00, $6C         ; data?  ,  ,  , l                        
          db $2D, $4E, $20, $3D         ; data? -, N, SPACE, =                    
          db $24, $32, $39, $2A         ; data? $, 2, 9, *                        
          db $9D, $25, $02, $20         ; data?  , %,  , SPACE                    
          db $B4, $1D, $4C, $00         ; data?  ,  , L,                          
          db $00, $8C, $A0, $5D         ; data?  ,  ,  , ]                        
          db $C0, $46, $50, $38         ; data?  , F, P, 8                        
          db $40, $2E, $E0, $28         ; data? @, .,  , (                        
          db $2E, $23, $28, $1F         ; data? .,  #, (,                         
          db $40, $00, $00, $C8         ; data? @,  ,  ,                          
          db $E4, $75, $30, $52         ; data?  , u, 0, R                        
          db $B9, $3F, $EB, $34         ; data?  ,  ,  , 4                        
          db $15, $2B, $F2, $26         ; data?  , +,  , &                        
          db $02, $21, $7C, $00         ; data?  , !, |,                          
          db $00, $FB, $1D, $8C         ; data?  ,  ,  ,                          
          db $A0, $5D, $C0, $46         ; data?  , ],  , F                        
          db $50, $38, $40, $2E         ; data? P, 8, @, .                        
          db $E0, $28, $2E, $23         ; data?  , (, .,  #                       
          db $28, $00, $00, $00         ; data? (,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00, $00         ; data?  ,  ,  ,                          
          db $00, $00, $00              ; data?  ,  ,  ,                          
