; This program is used to determine whether a string is a substring or not, using comparisons, loops, and jumps. 
; Kylie Heiland
; 12/ 8 / 22


INCLUDE Irvine32.inc
Str_find PROTO
.386
.stack 4096
ExitProcess proto, dwExitCode:dword

.data
carriageReturn BYTE ' ', 13, 10, 0                ; Used as a new line to separate the random strings from one another.

; Displays a menu asking the user to make a selection.
menu BYTE "---- Find a String ----", 0
sourceString BYTE "The source string is (the string to search for): ", 0
targetString BYTE "The target string is (the string to search from): ", 0
result1 BYTE "Source string found at position ", 0
result2 BYTE " in Target string (counting from zero).", 0
question BYTE "Do you want to continue (y/n):", 0
errormsg BYTE "unknown. This string is not a substring.", 0
goodbye BYTE "Have a happy holiday!!", 0

; STRINGS USED FOR INPUT
source BYTE "IIHH", 0
target BYTE "IH", 0

source1 BYTE "HEYYOBEWARE", 0
target1 BYTE "IH", 0

source2 BYTE "MYNAMEISKYLIE", 0
target2 BYTE "IE", 0

source3 BYTE "SPLINTERWINTER", 0
target3 BYTE "WINTER", 0

source4 BYTE "JOEMAMA", 0
target4 BYTE "MAMA", 0

count DWORD ?
.code
    main proc
    mov eax, 0                                   ; Makes the eax register 0.
    
;FIRST TEST
    mov edx, OFFSET menu                         ; Prints "---- Find a String ----" to the console.
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET sourceString                 ; Prints "The source string is (the string to search for): " to the console.
    call WriteString
    mov edx, OFFSET source                       ; Prints "IIHH" to the console.
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET targetString                 ; Prints "The target string is (the string to search from): " to the console.
    call WriteString
    mov edx, OFFSET target                       ; Prints "IH" to the console. 
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET result1                      ; Prints "Source string found at position " to the console.
    call WriteString

    mov ecx, offset source
    mov ebx, offset target
    call Str_find

    mov edx, OFFSET question                     ; Asks user if they would like to continue making calculations or not.
    call WriteString
    call ReadChar
    call WriteChar

    .IF(al == 'n')                               ; If the user no longer wishes to see the remaining examples, then the program ends.
      jmp userdone
    .ENDIF

    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString


;SECOND TEST
    mov edx, OFFSET sourceString                 ; Prints "The source string is (the string to search for): " to the console.
    call WriteString
    mov edx, OFFSET source1                       ; Prints "HEYYOBEWARE" to the console.
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET targetString                 ; Prints "The target string is (the string to search from): " to the console.
    call WriteString
    mov edx, OFFSET target1                       ; Prints "IH" to the console. 
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET result1                      ; Prints "Source string found at position " to the console.
    call WriteString

    mov ecx, OFFSET source1
    mov ebx, OFFSET target1
    call Str_find

    mov edx, OFFSET question                     ; Asks user if they would like to continue making calculations or not.
    call WriteString
    call ReadChar
    call WriteChar

    .IF(al == 'n')                               ; If the user no longer wishes to see the remaining examples, then the program ends.
        jmp userdone
    .ENDIF

    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString


  ;THIRD TEST
    mov edx, OFFSET sourceString                 ; Prints "The source string is (the string to search for): " to the console.
    call WriteString
    mov edx, OFFSET source2                      ; Prints "MYNAMEISKYLIE" to the console.
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET targetString                 ; Prints "The target string is (the string to search from): " to the console.
    call WriteString
    mov edx, OFFSET target2                      ; Prints "IE" to the console. 
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET result1                      ; Prints "Source string found at position " to the console.
    call WriteString

    mov ecx, offset source2
    mov ebx, offset target2
    call Str_find

    mov edx, OFFSET question                     ; Asks user if they would like to continue making calculations or not.
    call WriteString
    call ReadChar
    call WriteChar

    .IF(al == 'n')                               ; If the user no longer wishes to see the remaining examples, then the program ends.
      jmp userdone
    .ENDIF

    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString


;FOURTH TEST
    mov edx, OFFSET sourceString                 ; Prints "The source string is (the string to search for): " to the console.
    call WriteString
    mov edx, OFFSET source3                      ; Prints "SPLINTERWINTER" to the console.
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET targetString                 ; Prints "The target string is (the string to search from): " to the console.
    call WriteString
    mov edx, OFFSET target3                      ; Prints "WINTER" to the console. 
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET result1                      ; Prints "Source string found at position " to the console.
    call WriteString

    mov ecx, offset source3
    mov ebx, offset target3
    call Str_find

    mov edx, OFFSET question                     ; Asks user if they would like to continue making calculations or not.
    call WriteString
    call ReadChar
    call WriteChar

    .IF(al == 'n')                               ; If the user no longer wishes to see the remaining examples, then the program ends.
      jmp userdone
    .ENDIF

    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString


  ;FIFTH TEST
    mov edx, OFFSET sourceString                 ; Prints "The source string is (the string to search for): " to the console.
    call WriteString
    mov edx, OFFSET source4                      ; Prints "JOEMAMA" to the console.
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET targetString                 ; Prints "The target string is (the string to search from): " to the console.
    call WriteString
    mov edx, OFFSET target4                      ; Prints "MAMA" to the console. 
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

    mov edx, OFFSET result1                      ; Prints "Source string found at position " to the console.
    call WriteString

    mov ecx, offset source4
    mov ebx, offset target4
    call Str_find

    mov edx, OFFSET question                     ; Asks user if they would like to continue making calculations or not.
    call WriteString
    call ReadChar
    call WriteChar

    .IF(al == 'n')                               ; If the user no longer wishes to see the remaining examples, then the program ends.
      jmp userdone
    .ENDIF

    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString

USERDONE:                                        ; Program finishes either when the user typed 'n' or there were no longer any test strings. 
    mov edx, OFFSET goodbye
    call WriteString

invoke ExitProcess, 0
main endp

Str_find PROC USES ecx ebx
    ;mov ebx, OFFSET source                      ; EBX now points to source.
    mov esi, ebx                                 ; ESI now points to target. 
    mov count, 0                                 ; Position of first char.

   mov dl, [ebx]                                 ; Keeps stationary *for now* at the first character for target. 
LSTART:
    mov al, [ecx]                                ; Will iterate through the source's characters.
    
    cmp al, 0                                    ; Checks to see if the source is at its end, having had nothing for the target.
    je L4                                        ; If it is at the end of the source string, it jumps to L4.

    cmp al, dl                                   ; Compares the two characters.
    je L2                                        ; Continues to loop through until a matching character is found.
                                                 
    inc ecx                                      ; Goes onto the next character for the source. 
    inc count  

    jmp LSTART

L2:                                              ; A matching character has been found
    inc ebx                                      ; Increments to the next index of the character in target.
    inc ecx                                      ; Increments to the next index of the character in source.

    mov al, [ecx]                                ; Moves on to the next character in source.
    mov dl, [ebx]                                ; Moves on to the next character in target.

    cmp dl, 0                                    ; Check if the target is empty
    je LEND                                      ; If the target is empty, then the subset has been found.

    cmp dl, al                                   ; If the target and source characters are the same, then loop L2 again.
    jne STARTNEW



    jmp L2

STARTNEW:                                        ; If the target and source characters don't match. 
    mov ebx, esi                                 ;The target's first character is restored.
    mov dl, [ebx]
    inc count
    jmp LSTART
L4:
    test ecx, ecx                                ; Clears the Zero Flag.
    mov edx, OFFSET errormsg
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString
    ret
LEND:
    mov eax, count                               ; Outputs the target's location within the source's string.
    call WriteDec
    cmp eax, eax                                 ; Sets the Zero Flag.
    mov edx, OFFSET result2                      ; Prints " in Target string (counting from zero)." to console.
    call WriteString
    mov edx, OFFSET carriageReturn               ; New line is made
    call WriteString
    ret
Str_find ENDP
end main