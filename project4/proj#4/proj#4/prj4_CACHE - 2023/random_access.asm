.text
        lui     $2, 0x644c
        ori     $2, $2, 0x4053
        add     $16, $2, $0
        addi    $3, $0, 0x7f
        addi    $4, $0, 0x2000        
L1:     sll     $2, $16, 11
        xor     $16, $16, $2
        sra     $2, $16, 17
        xor     $16, $16, $2
        sll     $2, $16, 2
        xor     $16, $16, $2
        andi    $5, $16, 0x03fc
        add     $5, $5, $4
        slt     $1, $16, $0
        bne     $1, $0, L2
        sw      $16, 0($5)
L2:     lw      $6,  0($5)
        addi    $3, $3, -0x1
        bne     $3, $0, L1
        break
L3:     b       L3

.data
        .word 0x00
        .word 0x01
        .word 0x02
        .word 0x03
        .word 0x04
        .word 0x05
        .word 0x06
        .word 0x07
        .word 0x08
        .word 0x09
        .word 0x0a
        .word 0x0b
        .word 0x0c
        .word 0x0d
        .word 0x0e
        .word 0x0f
        .word 0x10
        .word 0x11
        .word 0x12
        .word 0x13
        .word 0x14
        .word 0x15
        .word 0x16
        .word 0x17
        .word 0x18
        .word 0x19
        .word 0x1a
        .word 0x1b
        .word 0x1c
        .word 0x1d
        .word 0x1e
        .word 0x1f
        .word 0x20
        .word 0x21
        .word 0x22
        .word 0x23
        .word 0x24
        .word 0x25
        .word 0x26
        .word 0x27
        .word 0x28
        .word 0x29
        .word 0x2a
        .word 0x2b
        .word 0x2c
        .word 0x2d
        .word 0x2e
        .word 0x2f
        .word 0x30
        .word 0x31
        .word 0x32
        .word 0x33
        .word 0x34
        .word 0x35
        .word 0x36
        .word 0x37
        .word 0x38
        .word 0x39
        .word 0x3a
        .word 0x3b
        .word 0x3c
        .word 0x3d
        .word 0x3e
        .word 0x3f
        .word 0x40
        .word 0x41
        .word 0x42
        .word 0x43
        .word 0x44
        .word 0x45
        .word 0x46
        .word 0x47
        .word 0x48
        .word 0x49
        .word 0x4a
        .word 0x4b
        .word 0x4c
        .word 0x4d
        .word 0x4e
        .word 0x4f
        .word 0x50
        .word 0x51
        .word 0x52
        .word 0x53
        .word 0x54
        .word 0x55
        .word 0x56
        .word 0x57
        .word 0x58
        .word 0x59
        .word 0x5a
        .word 0x5b
        .word 0x5c
        .word 0x5d
        .word 0x5e
        .word 0x5f
        .word 0x60
        .word 0x61
        .word 0x62
        .word 0x63
        .word 0x64
        .word 0x65
        .word 0x66
        .word 0x67
        .word 0x68
        .word 0x69
        .word 0x6a
        .word 0x6b
        .word 0x6c
        .word 0x6d
        .word 0x6e
        .word 0x6f
        .word 0x70
        .word 0x71
        .word 0x72
        .word 0x73
        .word 0x74
        .word 0x75
        .word 0x76
        .word 0x77
        .word 0x78
        .word 0x79
        .word 0x7a
        .word 0x7b
        .word 0x7c
        .word 0x7d
        .word 0x7e
        .word 0x7f
        .word 0x80
        .word 0x81
        .word 0x82
        .word 0x83
        .word 0x84
        .word 0x85
        .word 0x86
        .word 0x87
        .word 0x88
        .word 0x89
        .word 0x8a
        .word 0x8b
        .word 0x8c
        .word 0x8d
        .word 0x8e
        .word 0x8f
        .word 0x90
        .word 0x91
        .word 0x92
        .word 0x93
        .word 0x94
        .word 0x95
        .word 0x96
        .word 0x97
        .word 0x98
        .word 0x99
        .word 0x9a
        .word 0x9b
        .word 0x9c
        .word 0x9d
        .word 0x9e
        .word 0x9f
        .word 0xa0
        .word 0xa1
        .word 0xa2
        .word 0xa3
        .word 0xa4
        .word 0xa5
        .word 0xa6
        .word 0xa7
        .word 0xa8
        .word 0xa9
        .word 0xaa
        .word 0xab
        .word 0xac
        .word 0xad
        .word 0xae
        .word 0xaf
        .word 0xb0
        .word 0xb1
        .word 0xb2
        .word 0xb3
        .word 0xb4
        .word 0xb5
        .word 0xb6
        .word 0xb7
        .word 0xb8
        .word 0xb9
        .word 0xba
        .word 0xbb
        .word 0xbc
        .word 0xbd
        .word 0xbe
        .word 0xbf
        .word 0xc0
        .word 0xc1
        .word 0xc2
        .word 0xc3
        .word 0xc4
        .word 0xc5
        .word 0xc6
        .word 0xc7
        .word 0xc8
        .word 0xc9
        .word 0xca
        .word 0xcb
        .word 0xcc
        .word 0xcd
        .word 0xce
        .word 0xcf
        .word 0xd0
        .word 0xd1
        .word 0xd2
        .word 0xd3
        .word 0xd4
        .word 0xd5
        .word 0xd6
        .word 0xd7
        .word 0xd8
        .word 0xd9
        .word 0xda
        .word 0xdb
        .word 0xdc
        .word 0xdd
        .word 0xde
        .word 0xdf
        .word 0xe0
        .word 0xe1
        .word 0xe2
        .word 0xe3
        .word 0xe4
        .word 0xe5
        .word 0xe6
        .word 0xe7
        .word 0xe8
        .word 0xe9
        .word 0xea
        .word 0xeb
        .word 0xec
        .word 0xed
        .word 0xee
        .word 0xef
        .word 0xf0
        .word 0xf1
        .word 0xf2
        .word 0xf3
        .word 0xf4
        .word 0xf5
        .word 0xf6
        .word 0xf7
        .word 0xf8
        .word 0xf9
        .word 0xfa
        .word 0xfb
        .word 0xfc
        .word 0xfd
        .word 0xfe
        .word 0xff

