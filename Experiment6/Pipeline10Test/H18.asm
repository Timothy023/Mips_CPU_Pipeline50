# ---> init memory <---
ori $1, $0, 16986
sw $1, 0($0)
ori $1, $0, 8146
sw $1, 4($0)
lui $1, 65535
ori $1, $1, 40371
sw $1, 8($0)
lui $1, 65535
ori $1, $1, 57032
sw $1, 12($0)
ori $1, $0, 22369
sw $1, 16($0)
ori $1, $0, 31666
sw $1, 20($0)
ori $1, $0, 31762
sw $1, 24($0)
lui $1, 65535
ori $1, $1, 65410
sw $1, 28($0)
lui $1, 65535
ori $1, $1, 52301
sw $1, 32($0)
lui $1, 65535
ori $1, $1, 33292
sw $1, 36($0)
ori $1, $0, 17621
sw $1, 40($0)
ori $1, $0, 22394
sw $1, 44($0)
lui $1, 65535
ori $1, $1, 52605
sw $1, 48($0)
lui $1, 65535
ori $1, $1, 63372
sw $1, 52($0)
lui $1, 65535
ori $1, $1, 44493
sw $1, 56($0)
ori $1, $0, 21313
sw $1, 60($0)
ori $1, $0, 10655
sw $1, 64($0)
lui $1, 65535
ori $1, $1, 35163
sw $1, 68($0)
lui $1, 65535
ori $1, $1, 51175
sw $1, 72($0)

# ---> init register <---
lui $1, 65535
ori $1, $1, 63040
ori $2, $0, 5540
lui $3, 65535
ori $3, $3, 58590
ori $4, $0, 7421
ori $5, $0, 4860
ori $6, $0, 15666
lui $7, 65535
ori $7, $7, 33349
ori $8, $0, 3604
lui $9, 65535
ori $9, $9, 39612
ori $10, $0, 12721
ori $11, $0, 972
ori $12, $0, 64
lui $13, 65535
ori $13, $13, 49980
lui $14, 65535
ori $14, $14, 57613
ori $15, $0, 23674
ori $16, $0, 7347
ori $17, $0, 24699
ori $18, $0, 11478
lui $19, 65535
ori $19, $19, 55277
lui $20, 65535
ori $20, $20, 57846
ori $21, $0, 11309
ori $22, $0, 26850
lui $23, 65535
ori $23, $23, 41640
lui $24, 65535
ori $24, $24, 61762
ori $25, $0, 5865
ori $26, $0, 32
lui $27, 65535
ori $27, $27, 62579
lui $28, 65535
ori $28, $28, 38847
lui $29, 65535
ori $29, $29, 59459
lui $30, 65535
ori $30, $30, 44391
ori $31, $0, 28208

# ---> start at 3170 <---

# ---> block head <---
# ---> block body <---
addu $15, $15, $12
lui $15, 21949
lui $15, 44676
ori $14, $15, 57098
# ---> block tail <---
ori $14, $0, 2722
lui $15, 65535
ori $15, $15, 48183
# ---> endpc 318c <---

# ---> block head <---
# ---> block body <---
subu $16, $16, $14
lui $16, 54176
lui $16, 54597
ori $15, $16, 26474
# ---> block tail <---
lui $15, 65535
ori $15, $15, 50844
lui $16, 65535
ori $16, $16, 47558
# ---> endpc 31ac <---

# ---> block head <---
# ---> block body <---
addu $17, $17, $15
lui $17, 24167
lui $17, 43152
ori $16, $17, 50675
# ---> block tail <---
ori $16, $0, 31432
ori $17, $0, 17948
# ---> endpc 31c4 <---

# ---> block head <---
# ---> block body <---
subu $19, $18, $19
lui $19, 55311
lui $19, 23705
ori $18, $19, 37711
# ---> block tail <---
ori $18, $0, 26677
lui $19, 65535
ori $19, $19, 44766
# ---> endpc 31e0 <---

# ---> block head <---
# ---> block body <---
addu $20, $20, $21
lui $20, 17672
lui $21, 8165
ori $20, $21, 59
# ---> block tail <---
lui $20, 65535
ori $20, $20, 35237
ori $21, $0, 19351
# ---> endpc 31fc <---

# ---> block head <---
# ---> block body <---
subu $23, $23, $22
lui $23, 6829
lui $22, 51818
ori $23, $22, 12160
# ---> block tail <---
lui $22, 65535
ori $22, $22, 32774
ori $23, $0, 30115
# ---> endpc 3218 <---

# ---> block head <---
# ---> block body <---
addu $0, $0, $24
lui $0, 13010
lui $0, 46875
ori $24, $0, 13343
# ---> block tail <---
# ---> endpc 3228 <---

# ---> block head <---
# ---> block body <---
subu $0, $25, $0
lui $0, 7126
lui $0, 55562
ori $25, $0, 38737
# ---> block tail <---
ori $25, $0, 15867
# ---> endpc 323c <---

# ---> block head <---
lui $23, 43707
ori $23, $23, 52445
sw $23, 80($0)
# ---> block body <---
addu $28, $28, $22
lui $28, 28253
ori $28, $28, 8
sw $28, 2576($1)
# ---> block tail <---
lui $23, 65535
ori $23, $23, 49299
ori $28, $0, 5184
# ---> endpc 3264 <---

# ---> block head <---
lui $10, 43707
ori $10, $10, 52445
sw $10, 100($0)
lui $11, 43707
ori $11, $11, 52445
sw $11, 120($0)
# ---> block body <---
subu $0, $0, $5
lui $0, 57180
ori $0, $0, 8
sw $0, -4760($5)
sw $5, 120($0)
# ---> block tail <---
lui $10, 65535
ori $10, $10, 58116
lui $11, 65535
ori $11, $11, 38025
# ---> endpc 32a0 <---

# ---> block head <---
lui $23, 43707
ori $23, $23, 52445
sw $23, 104($0)
lui $24, 43707
ori $24, $24, 52445
sw $24, 112($0)
# ---> block body <---
addu $0, $0, $6
lui $0, 19689
ori $0, $0, 2
sw $0, -15562($6)
sw $6, 112($0)
# ---> block tail <---
lui $23, 65535
ori $23, $23, 42390
ori $24, $0, 3466
# ---> endpc 32d8 <---

# ---> block head <---
# ---> block body <---
subu $18, $25, $18
lui $18, 32374
ori $18, $18, 8
addu $18, $18, $26
# ---> block tail <---
lui $18, 65535
ori $18, $18, 43792
# ---> endpc 32f0 <---

# ---> block head <---
# ---> block body <---
addu $19, $19, $26
lui $19, 26007
ori $19, $19, 2
subu $19, $19, $27
# ---> block tail <---
lui $19, 65535
ori $19, $19, 46192
# ---> endpc 3308 <---

# ---> block head <---
# ---> block body <---
subu $20, $20, $27
lui $20, 3360
ori $20, $20, 8
addu $20, $20, $28
# ---> block tail <---
ori $20, $0, 23260
# ---> endpc 331c <---

# ---> block head <---
# ---> block body <---
addu $21, $21, $22
lui $21, 42636
ori $22, $21, 2
subu $22, $21, $22
# ---> block tail <---
ori $21, $0, 28765
# ---> endpc 3330 <---

# ---> block head <---
# ---> block body <---
subu $23, $24, $23
lui $23, 863
ori $24, $23, 1
addu $24, $24, $23
# ---> block tail <---
lui $23, 65535
ori $23, $23, 53282
lui $24, 65535
ori $24, $24, 58320
# ---> endpc 3350 <---

# ---> block head <---
# ---> block body <---
addu $26, $25, $26
lui $26, 41123
ori $26, $25, 6
subu $26, $26, $25
# ---> block tail <---
# ---> endpc 3360 <---

# ---> block head <---
# ---> block body <---
subu $0, $0, $27
lui $0, 25603
ori $0, $0, 2
addu $27, $27, $0
# ---> block tail <---
# ---> endpc 3370 <---

# ---> block head <---
# ---> block body <---
addu $0, $0, $28
lui $0, 22835
ori $0, $0, 8
subu $28, $28, $0
# ---> block tail <---
# ---> endpc 3380 <---

# ---> block head <---
# ---> block body <---
subu $0, $0, $8
lui $0, 31343
ori $0, $0, 2
lw $8, 32($0)
# ---> block tail <---
# ---> endpc 3390 <---

# ---> block head <---
# ---> block body <---
addu $0, $0, $9
lui $0, 2896
ori $0, $0, 16
lw $9, 68($0)
# ---> block tail <---
# ---> endpc 33a0 <---

# ---> block head <---
lui $7, 28390
ori $7, $7, 2
# ---> block body <---
subu $10, $5, $10
lui $10, 28390
ori $10, $10, 2
beq $10, $7, TAG_BEQ_2
ori $8, $0, 1
ori $8, $0, 1
TAG_BEQ_2:
# ---> block tail <---
lui $7, 65535
ori $7, $7, 34476
ori $10, $0, 25708
# ---> endpc 33cc <---

# ---> block head <---
lui $17, 47725
ori $17, $17, 4
# ---> block body <---
addu $11, $15, $11
lui $11, 47725
ori $11, $11, 4
beq $17, $11, TAG_BEQ_5
ori $18, $0, 1
ori $18, $0, 1
TAG_BEQ_5:
# ---> block tail <---
lui $11, 65535
ori $11, $11, 48577
ori $17, $0, 25227
# ---> endpc 33f8 <---

# ---> block head <---
lui $25, 9559
ori $25, $25, 16
# ---> block body <---
subu $12, $12, $23
lui $12, 9559
ori $12, $12, 16
beq $25, $12, TAG_BEQ_8
ori $26, $0, 1
ori $26, $0, 1
TAG_BEQ_8:
# ---> block tail <---
lui $12, 65535
ori $12, $12, 55260
lui $25, 65535
ori $25, $25, 41866
# ---> endpc 3428 <---

# ---> block head <---
ori $0, $0, 0
ori $28, $0, 2730
# ---> block body <---
addu $13, $14, $13
lui $13, 64577
ori $13, $14, 8
beq $28, $13, TAG_BEQ_11
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_11:
# ---> block tail <---
# ---> endpc 3448 <---

# ---> block head <---
lui $2, 62544
ori $2, $2, 16
# ---> block body <---
subu $16, $16, $15
lui $16, 62544
ori $15, $16, 16
beq $15, $2, TAG_BEQ_14
ori $3, $0, 1
ori $3, $0, 1
TAG_BEQ_14:
# ---> block tail <---
ori $2, $0, 1638
lui $15, 65535
ori $15, $15, 44878
ori $16, $0, 2445
# ---> endpc 3478 <---

# ---> block head <---
ori $4, $0, 9
# ---> block body <---
addu $17, $17, $18
lui $17, 41816
ori $17, $18, 8
beq $4, $17, TAG_BEQ_16
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_16:
# ---> block tail <---
# ---> endpc 3494 <---

# ---> block head <---
# ---> block body <---
subu $0, $0, $19
lui $0, 42983
ori $0, $0, 8
beq $19, $0, TAG_BEQ_17
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_17:
# ---> block tail <---
# ---> endpc 34ac <---

# ---> block head <---
# ---> block body <---
addu $0, $0, $20
lui $0, 57060
ori $0, $0, 8
beq $20, $0, TAG_BEQ_18
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_18:
# ---> block tail <---
# ---> endpc 34c4 <---

# ---> block head <---
# ---> block body <---
subu $21, $5, $21
lui $21, 21616
ori $21, $21, 2
ori $6, $21, 64745
# ---> block tail <---
ori $6, $0, 18215
lui $21, 65535
ori $21, $21, 35751
# ---> endpc 34e0 <---

# ---> block head <---
# ---> block body <---
addu $22, $6, $22
lui $22, 61409
ori $22, $22, 2
ori $7, $22, 26620
# ---> block tail <---
ori $7, $0, 26447
ori $22, $0, 6687
# ---> endpc 34f8 <---

# ---> block head <---
# ---> block body <---
subu $23, $23, $7
lui $23, 10085
ori $23, $23, 8
ori $8, $23, 60527
# ---> block tail <---
lui $8, 65535
ori $8, $8, 56155
lui $23, 65535
ori $23, $23, 63726
# ---> endpc 3518 <---

# ---> block head <---
# ---> block body <---
addu $24, $25, $24
lui $24, 54044
ori $24, $25, 6
ori $25, $24, 31862
# ---> block tail <---
# ---> endpc 3528 <---

# ---> block head <---
# ---> block body <---
subu $27, $26, $27
lui $27, 4937
ori $26, $27, 8
ori $27, $26, 59291
# ---> block tail <---
ori $26, $0, 25667
lui $27, 65535
ori $27, $27, 39413
# ---> endpc 3544 <---

# ---> block head <---
# ---> block body <---
addu $28, $29, $28
lui $28, 58154
ori $28, $29, 5
ori $29, $28, 34158
# ---> block tail <---
lui $29, 65535
ori $29, $29, 57183
# ---> endpc 355c <---

# ---> block head <---
# ---> block body <---
subu $0, $0, $30
lui $0, 61953
ori $0, $0, 4
ori $30, $0, 15912
# ---> block tail <---
# ---> endpc 356c <---

# ---> block head <---
# ---> block body <---
addu $0, $1, $0
lui $0, 8043
ori $0, $0, 8
ori $1, $0, 6878
# ---> block tail <---
# ---> endpc 357c <---

# ---> block head <---
ori $12, $0, 16
lui $14, 43707
ori $14, $14, 52445
sw $14, 132($0)
lui $15, 43707
ori $15, $15, 52445
sw $15, 84($0)
# ---> block body <---
subu $31, $11, $31
ori $31, $31, 2
jal TAG_JAL_7
sw $13, -13608($31)
addu $31, $31, $12
TAG_JAL_7:
sw $31, -2646($13)
# ---> block tail <---
lui $14, 65535
ori $14, $14, 35156
ori $15, $0, 27551
# ---> endpc 35bc <---

# ---> block head <---
ori $19, $0, 16
lui $21, 43707
ori $21, $21, 52445
sw $21, 112($0)
lui $22, 43707
ori $22, $22, 52445
sw $22, 80($0)
# ---> block body <---
addu $31, $18, $31
ori $31, $31, 16
jal TAG_JAL_15
sw $20, -13692($31)
addu $31, $31, $19
TAG_JAL_15:
sw $31, -23180($20)
# ---> block tail <---
lui $21, 65535
ori $21, $21, 50832
ori $22, $0, 8547
# ---> endpc 35fc <---

# ---> block head <---
ori $19, $0, 16
lui $20, 43707
ori $20, $20, 52445
sw $20, 116($0)
lui $21, 43707
ori $21, $21, 52445
sw $21, 128($0)
# ---> block body <---
subu $3, $31, $3
ori $31, $3, 12
jal TAG_JAL_23
sw $31, -13687($3)
addu $31, $31, $19
TAG_JAL_23:
sw $3, -13740($31)
# ---> block tail <---
lui $20, 65535
ori $20, $20, 52094
lui $21, 65535
ori $21, $21, 63679
# ---> endpc 3640 <---

# ---> block head <---
ori $14, $0, 16
lui $15, 43707
ori $15, $15, 52445
sw $15, 144($0)
lui $16, 43707
ori $16, $16, 52445
sw $16, 148($0)
# ---> block body <---
addu $0, $31, $0
ori $0, $0, 8
jal TAG_JAL_40
sw $0, -13792($31)
addu $31, $31, $14
TAG_JAL_40:
sw $31, 148($0)
# ---> block tail <---
lui $15, 65535
ori $15, $15, 36555
ori $16, $0, 27433
# ---> endpc 3680 <---

# ---> block head <---
ori $20, $0, 16
# ---> block body <---
subu $31, $19, $31
ori $31, $31, 2
jal TAG_JAL_42
addu $31, $31, $21
addu $31, $31, $20
TAG_JAL_42:
# ---> block tail <---
# ---> endpc 3698 <---

# ---> block head <---
ori $24, $0, 16
# ---> block body <---
addu $31, $31, $23
ori $31, $31, 7
jal TAG_JAL_44
addu $31, $31, $25
addu $31, $31, $24
TAG_JAL_44:
# ---> block tail <---
# ---> endpc 36b0 <---

# ---> block head <---
ori $27, $0, 16
# ---> block body <---
subu $0, $0, $31
ori $0, $0, 1
jal TAG_JAL_47
addu $31, $0, $31
addu $31, $31, $27
TAG_JAL_47:
# ---> block tail <---
# ---> endpc 36c8 <---

# ---> block head <---
ori $29, $0, 16
# ---> block body <---
addu $0, $31, $0
ori $0, $0, 4
jal TAG_JAL_49
subu $31, $0, $31
addu $31, $31, $29
TAG_JAL_49:
# ---> block tail <---
# ---> endpc 36e0 <---

# ---> block head <---
ori $4, $0, 16
# ---> block body <---
subu $31, $31, $3
ori $31, $31, 28
jal TAG_JAL_51
lw $5, -14000($31)
addu $31, $31, $4
TAG_JAL_51:
# ---> block tail <---
# ---> endpc 36f8 <---

# ---> block head <---
ori $8, $0, 16
# ---> block body <---
addu $31, $31, $7
ori $31, $31, 11
jal TAG_JAL_53
lw $9, -14032($31)
addu $31, $31, $8
TAG_JAL_53:
# ---> block tail <---
# ---> endpc 3710 <---

# ---> block head <---
ori $10, $0, 16
# ---> block body <---
subu $13, $31, $13
ori $31, $13, 20
jal TAG_JAL_55
lw $13, -14076($31)
addu $31, $31, $10
TAG_JAL_55:
# ---> block tail <---
# ---> endpc 3728 <---

# ---> block head <---
ori $12, $0, 16
# ---> block body <---
addu $31, $31, $16
ori $31, $16, 13
jal TAG_JAL_57
lw $16, -14132($31)
addu $31, $31, $12
TAG_JAL_57:
# ---> block tail <---
# ---> endpc 3740 <---

# ---> block head <---
ori $14, $0, 16
# ---> block body <---
subu $0, $31, $0
ori $0, $0, 4
jal TAG_JAL_59
lw $31, 32($0)
addu $31, $31, $14
TAG_JAL_59:
# ---> block tail <---
# ---> endpc 3758 <---

# ---> block head <---
ori $16, $0, 16
# ---> block body <---
addu $0, $0, $31
ori $0, $0, 2
jal TAG_JAL_61
lw $31, 52($0)
addu $31, $31, $16
TAG_JAL_61:
# ---> block tail <---
# ---> endpc 3770 <---

# ---> block head <---
ori $20, $0, 16
# ---> block body <---
subu $31, $19, $31
ori $31, $31, 2
jal TAG_JAL_63
ori $21, $31, 24504
addu $31, $31, $20
TAG_JAL_63:
# ---> block tail <---
# ---> endpc 3788 <---

# ---> block head <---
ori $24, $0, 16
# ---> block body <---
addu $31, $23, $31
ori $31, $31, 10
jal TAG_JAL_65
ori $25, $31, 55111
addu $31, $31, $24
TAG_JAL_65:
# ---> block tail <---
ori $25, $0, 1999
# ---> endpc 37a4 <---

# ---> block head <---
ori $27, $0, 16
# ---> block body <---
subu $0, $0, $31
ori $0, $0, 16
jal TAG_JAL_68
ori $31, $0, 64267
addu $31, $31, $27
TAG_JAL_68:
# ---> block tail <---
lui $31, 65535
ori $31, $31, 48520
# ---> endpc 37c4 <---

# ---> block head <---
ori $29, $0, 16
# ---> block body <---
addu $0, $0, $31
ori $0, $0, 2
jal TAG_JAL_70
ori $31, $0, 43359
addu $31, $31, $29
TAG_JAL_70:
# ---> block tail <---
lui $31, 65535
ori $31, $31, 64076
# ---> endpc 37e4 <---

# ---> block head <---
lui $26, 43707
ori $26, $26, 52445
sw $26, 84($0)
lui $27, 43707
ori $27, $27, 52445
sw $27, 140($0)
# ---> block body <---
subu $22, $22, $24
ori $22, $22, 5
ori $0, $0, 0
sw $25, -8451($22)
sw $22, -1859($25)
# ---> block tail <---
ori $26, $0, 28775
ori $27, $0, 2375
# ---> endpc 3818 <---

# ---> block head <---
lui $21, 43707
ori $21, $21, 52445
sw $21, 96($0)
lui $22, 43707
ori $22, $22, 52445
sw $22, 104($0)
# ---> block body <---
addu $23, $23, $19
ori $23, $23, 40
ori $0, $0, 0
sw $23, 80($20)
sw $20, 1898($23)
# ---> block tail <---
lui $21, 65535
ori $21, $21, 62920
lui $22, 65535
ori $22, $22, 59855
# ---> endpc 3854 <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 120($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 108($0)
# ---> block body <---
subu $24, $24, $17
ori $24, $24, 123
ori $0, $0, 0
sw $18, -7($24)
sw $24, 107($18)
# ---> block tail <---
ori $19, $0, 11209
ori $20, $0, 25016
# ---> endpc 3888 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $10, 43707
ori $10, $10, 52445
sw $10, 128($0)
# ---> block body <---
addu $26, $25, $26
ori $25, $26, 124
ori $0, $0, 0
sw $25, -30678($26)
sw $26, -30718($25)
# ---> block tail <---
ori $10, $0, 8789
# ---> endpc 38b8 <---

# ---> block head <---
lui $23, 43707
ori $23, $23, 52445
sw $23, 136($0)
lui $24, 43707
ori $24, $24, 52445
sw $24, 124($0)
# ---> block body <---
subu $28, $28, $27
ori $27, $28, 42
ori $0, $0, 0
sw $27, 2506($28)
sw $28, 2494($27)
# ---> block tail <---
ori $23, $0, 22224
ori $24, $0, 14401
# ---> endpc 38ec <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $9, 43707
ori $9, $9, 52445
sw $9, 80($0)
# ---> block body <---
addu $30, $29, $30
ori $29, $30, 51
ori $0, $0, 0
sw $30, -15795($29)
sw $29, -15848($30)
# ---> block tail <---
ori $9, $0, 30610
# ---> endpc 3918 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $20, 43707
ori $20, $20, 52445
sw $20, 112($0)
# ---> block body <---
subu $0, $0, $1
ori $0, $0, 8
ori $0, $0, 0
sw $0, -6766($1)
sw $1, 124($0)
# ---> block tail <---
ori $20, $0, 31337
# ---> endpc 3948 <---

# ---> block head <---
lui $5, 43707
ori $5, $5, 52445
sw $5, 92($0)
lui $6, 43707
ori $6, $6, 52445
sw $6, 88($0)
# ---> block body <---
addu $0, $2, $0
ori $0, $0, 8
ori $0, $0, 0
sw $2, 92($0)
sw $0, -1550($2)
# ---> block tail <---
ori $5, $0, 20980
lui $6, 65535
ori $6, $6, 44676
# ---> endpc 3980 <---

# ---> block head <---
# ---> block body <---
subu $14, $2, $14
ori $14, $14, 14
ori $0, $0, 0
addu $14, $0, $14
# ---> block tail <---
# ---> endpc 3990 <---

# ---> block head <---
# ---> block body <---
addu $15, $15, $7
ori $15, $15, 11
ori $0, $0, 0
subu $15, $8, $15
# ---> block tail <---
# ---> endpc 39a0 <---

# ---> block head <---
# ---> block body <---
subu $16, $16, $8
ori $16, $16, 2
ori $0, $0, 0
addu $16, $16, $9
# ---> block tail <---
# ---> endpc 39b0 <---

# ---> block head <---
# ---> block body <---
addu $18, $17, $18
ori $17, $18, 6
ori $0, $0, 0
subu $17, $18, $17
# ---> block tail <---
# ---> endpc 39c0 <---

# ---> block head <---
# ---> block body <---
subu $19, $19, $20
ori $20, $19, 4
ori $0, $0, 0
addu $19, $19, $20
# ---> block tail <---
ori $19, $0, 11052
# ---> endpc 39d4 <---

# ---> block head <---
# ---> block body <---
addu $21, $21, $22
ori $22, $21, 25
ori $0, $0, 0
subu $21, $22, $21
# ---> block tail <---
# ---> endpc 39e4 <---

# ---> block head <---
# ---> block body <---
subu $0, $23, $0
ori $0, $0, 8
ori $0, $0, 0
addu $23, $0, $23
# ---> block tail <---
# ---> endpc 39f4 <---

# ---> block head <---
# ---> block body <---
addu $0, $0, $24
ori $0, $0, 2
ori $0, $0, 0
subu $24, $0, $24
# ---> block tail <---
# ---> endpc 3a04 <---

# ---> block head <---
# ---> block body <---
subu $25, $25, $9
ori $25, $25, 32
ori $0, $0, 0
lw $10, -196($25)
# ---> block tail <---
# ---> endpc 3a14 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
addu $26, $26, $11
ori $26, $26, 43
ori $0, $0, 0
lw $12, -13807($26)
# ---> block tail <---
# ---> endpc 3a28 <---

# ---> block head <---
# ---> block body <---
subu $27, $27, $12
ori $27, $27, 19
ori $0, $0, 0
lw $13, 24769($27)
# ---> block tail <---
# ---> endpc 3a38 <---

# ---> block head <---
# ---> block body <---
addu $29, $28, $29
ori $28, $29, 67
ori $0, $0, 0
lw $29, -13547($28)
# ---> block tail <---
# ---> endpc 3a48 <---

# ---> block head <---
# ---> block body <---
subu $1, $30, $1
ori $30, $1, 79
ori $0, $0, 0
lw $1, -9011($30)
# ---> block tail <---
# ---> endpc 3a58 <---

# ---> block head <---
# ---> block body <---
addu $3, $2, $3
ori $2, $3, 23
ori $0, $0, 0
lw $3, -15407($2)
# ---> block tail <---
# ---> endpc 3a68 <---

# ---> block head <---
# ---> block body <---
subu $0, $0, $4
ori $0, $0, 8
ori $0, $0, 0
lw $4, 36($0)
# ---> block tail <---
# ---> endpc 3a78 <---

# ---> block head <---
# ---> block body <---
addu $0, $0, $5
ori $0, $0, 4
ori $0, $0, 0
lw $5, 40($0)
# ---> block tail <---
# ---> endpc 3a88 <---

# ---> block head <---
lui $21, 65535
ori $21, $21, 33626
# ---> block body <---
subu $6, $6, $19
ori $6, $6, 26
ori $0, $0, 0
beq $21, $6, TAG_BEQ_21
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_21:
# ---> block tail <---
# ---> endpc 3aa8 <---

# ---> block head <---
ori $27, $0, 26687
# ---> block body <---
addu $7, $7, $25
ori $7, $7, 22
ori $0, $0, 0
beq $7, $27, TAG_BEQ_23
ori $28, $0, 1
ori $28, $0, 1
TAG_BEQ_23:
# ---> block tail <---
# ---> endpc 3ac4 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
subu $8, $5, $8
ori $8, $8, 17
ori $0, $0, 0
beq $6, $8, TAG_BEQ_26
ori $7, $0, 1
ori $7, $0, 1
TAG_BEQ_26:
# ---> block tail <---
# ---> endpc 3ae4 <---

# ---> block head <---
ori $8, $0, 30614
# ---> block body <---
addu $10, $10, $9
ori $10, $9, 20
ori $0, $0, 0
beq $8, $10, TAG_BEQ_28
ori $11, $0, 1
ori $11, $0, 1
TAG_BEQ_28:
# ---> block tail <---
# ---> endpc 3b00 <---

# ---> block head <---
ori $10, $0, 22370
# ---> block body <---
subu $11, $12, $11
ori $12, $11, 2
ori $0, $0, 0
beq $10, $12, TAG_BEQ_30
ori $13, $0, 1
ori $13, $0, 1
TAG_BEQ_30:
# ---> block tail <---
# ---> endpc 3b1c <---

# ---> block head <---
ori $12, $0, 17
# ---> block body <---
addu $14, $13, $14
ori $14, $13, 16
ori $0, $0, 0
beq $12, $14, TAG_BEQ_32
ori $15, $0, 1
ori $15, $0, 1
TAG_BEQ_32:
# ---> block tail <---
# ---> endpc 3b38 <---

# ---> block head <---
# ---> block body <---
subu $0, $0, $15
ori $0, $0, 8
ori $0, $0, 0
beq $0, $15, TAG_BEQ_33
ori $13, $0, 1
ori $13, $0, 1
TAG_BEQ_33:
# ---> block tail <---
# ---> endpc 3b50 <---

# ---> block head <---
# ---> block body <---
addu $0, $16, $0
ori $0, $0, 2
ori $0, $0, 0
beq $0, $16, TAG_BEQ_34
ori $13, $0, 1
ori $13, $0, 1
TAG_BEQ_34:
# ---> block tail <---
# ---> endpc 3b68 <---

# ---> block head <---
# ---> block body <---
subu $17, $17, $13
ori $17, $17, 14
ori $0, $0, 0
ori $14, $17, 14569
# ---> block tail <---
# ---> endpc 3b78 <---

# ---> block head <---
# ---> block body <---
addu $18, $18, $14
ori $18, $18, 25
ori $0, $0, 0
ori $15, $18, 55533
# ---> block tail <---
ori $15, $0, 7172
# ---> endpc 3b8c <---

# ---> block head <---
# ---> block body <---
subu $19, $15, $19
ori $19, $19, 10
ori $0, $0, 0
ori $16, $19, 25551
# ---> block tail <---
# ---> endpc 3b9c <---

# ---> block head <---
# ---> block body <---
addu $20, $21, $20
ori $21, $20, 9
ori $0, $0, 0
ori $20, $21, 36043
# ---> block tail <---
lui $21, 65535
ori $21, $21, 53970
# ---> endpc 3bb4 <---

# ---> block head <---
# ---> block body <---
subu $23, $22, $23
ori $23, $22, 3
ori $0, $0, 0
ori $22, $23, 16409
# ---> block tail <---
# ---> endpc 3bc4 <---

# ---> block head <---
# ---> block body <---
addu $24, $24, $25
ori $24, $25, 16
ori $0, $0, 0
ori $25, $24, 26394
# ---> block tail <---
# ---> endpc 3bd4 <---

# ---> block head <---
# ---> block body <---
subu $0, $26, $0
ori $0, $0, 16
ori $0, $0, 0
ori $26, $0, 34044
# ---> block tail <---
ori $26, $0, 12750
# ---> endpc 3be8 <---

# ---> block head <---
# ---> block body <---
addu $0, $27, $0
ori $0, $0, 16
ori $0, $0, 0
ori $27, $0, 23778
# ---> block tail <---
# ---> endpc 3bf8 <---

# ---> block head <---
lui $17, 43707
ori $17, $17, 52445
sw $17, 84($0)
lui $18, 43707
ori $18, $18, 52445
sw $18, 124($0)
# ---> block body <---
addu $28, $15, $28
ori $28, $28, 20
subu $28, $28, $14
sw $28, 3189($16)
sw $16, -7066($28)
# ---> block tail <---
ori $17, $0, 11911
ori $18, $0, 576
# ---> endpc 3c2c <---

# ---> block head <---
ori $0, $0, 0
lui $9, 43707
ori $9, $9, 52445
sw $9, 148($0)
# ---> block body <---
addu $29, $8, $29
ori $29, $29, 15
subu $29, $29, $7
sw $29, 148($0)
# ---> block tail <---
lui $9, 65535
ori $9, $9, 62736
lui $29, 65535
ori $29, $29, 48667
# ---> endpc 3c5c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $5, 43707
ori $5, $5, 52445
sw $5, 88($0)
# ---> block body <---
addu $30, $30, $4
ori $30, $30, 12
subu $30, $30, $3
sw $30, -22306($1)
# ---> block tail <---
ori $5, $0, 31888
lui $30, 65535
ori $30, $30, 48825
# ---> endpc 3c8c <---

# ---> block head <---
lui $21, 43707
ori $21, $21, 52445
sw $21, 136($0)
lui $22, 43707
ori $22, $22, 52445
sw $22, 132($0)
# ---> block body <---
addu $1, $2, $1
ori $1, $2, 12
subu $2, $1, $2
sw $2, 17289($20)
sw $20, 124($2)
# ---> block tail <---
lui $21, 65535
ori $21, $21, 33200
ori $22, $0, 18980
# ---> endpc 3cc4 <---

# ---> block head <---
lui $12, 43707
ori $12, $12, 52445
sw $12, 100($0)
lui $13, 43707
ori $13, $13, 52445
sw $13, 108($0)
# ---> block body <---
addu $3, $4, $3
ori $4, $3, 4
subu $3, $4, $3
sw $11, 96($3)
sw $3, -22260($11)
# ---> block tail <---
lui $12, 65535
ori $12, $12, 39371
lui $13, 65535
ori $13, $13, 41448
# ---> endpc 3d00 <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 140($0)
# ---> block body <---
addu $5, $6, $5
ori $6, $5, 18
subu $6, $5, $6
sw $6, -436($18)
sw $18, 148($6)
# ---> block tail <---
ori $19, $0, 92
# ---> endpc 3d24 <---

# ---> block head <---
lui $3, 43707
ori $3, $3, 52445
sw $3, 96($0)
lui $4, 43707
ori $4, $4, 52445
sw $4, 144($0)
# ---> block body <---
addu $0, $0, $7
ori $0, $0, 2
subu $0, $0, $7
sw $0, 96($0)
sw $0, 144($0)
# ---> block tail <---
ori $3, $0, 26284
lui $4, 65535
ori $4, $4, 44321
# ---> endpc 3d5c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
addu $0, $0, $8
ori $0, $0, 16
subu $0, $0, $8
sw $8, 124($0)
sw $0, -30526($8)
# ---> block tail <---
# ---> endpc 3d78 <---

# ---> block head <---
# ---> block body <---
addu $20, $10, $20
ori $20, $20, 17
subu $20, $8, $20
addu $20, $20, $11
# ---> block tail <---
lui $20, 65535
ori $20, $20, 52801
# ---> endpc 3d90 <---

# ---> block head <---
# ---> block body <---
addu $21, $12, $21
ori $21, $21, 28
subu $21, $21, $11
subu $21, $13, $21
# ---> block tail <---
ori $21, $0, 23852
# ---> endpc 3da4 <---

# ---> block head <---
# ---> block body <---
addu $22, $14, $22
ori $22, $22, 10
subu $22, $13, $22
addu $22, $22, $15
# ---> block tail <---
lui $22, 65535
ori $22, $22, 45965
# ---> endpc 3dbc <---

# ---> block head <---
# ---> block body <---
addu $24, $23, $24
ori $23, $24, 16
subu $23, $23, $24
subu $24, $24, $23
# ---> block tail <---
# ---> endpc 3dcc <---

# ---> block head <---
# ---> block body <---
addu $25, $26, $25
ori $26, $25, 9
subu $25, $25, $26
addu $25, $26, $25
# ---> block tail <---
lui $25, 65535
ori $25, $25, 63117
ori $26, $0, 21438
# ---> endpc 3de8 <---

# ---> block head <---
# ---> block body <---
addu $27, $27, $28
ori $28, $27, 18
subu $28, $28, $27
subu $27, $27, $28
# ---> block tail <---
# ---> endpc 3df8 <---

# ---> block head <---
# ---> block body <---
addu $0, $29, $0
ori $0, $0, 4
subu $0, $29, $0
addu $29, $0, $29
# ---> block tail <---
# ---> endpc 3e08 <---

# ---> block head <---
# ---> block body <---
addu $0, $30, $0
ori $0, $0, 16
subu $0, $0, $30
subu $30, $30, $0
# ---> block tail <---
# ---> endpc 3e18 <---

# ---> block head <---
# ---> block body <---
addu $1, $16, $1
ori $1, $1, 13
subu $1, $1, $15
lw $17, -5135($1)
# ---> block tail <---
# ---> endpc 3e28 <---

# ---> block head <---
# ---> block body <---
addu $2, $2, $18
ori $2, $2, 2
subu $2, $2, $17
lw $19, 21828($2)
# ---> block tail <---
# ---> endpc 3e38 <---

# ---> block head <---
# ---> block body <---
addu $3, $20, $3
ori $3, $3, 15
subu $3, $3, $19
lw $21, 18127($3)
# ---> block tail <---
# ---> endpc 3e48 <---

# ---> block head <---
# ---> block body <---
addu $5, $5, $4
ori $5, $4, 2
subu $4, $5, $4
lw $5, 14($4)
# ---> block tail <---
# ---> endpc 3e58 <---

# ---> block head <---
# ---> block body <---
addu $6, $6, $7
ori $6, $7, 3
subu $6, $6, $7
lw $7, 26($6)
# ---> block tail <---
# ---> endpc 3e68 <---

# ---> block head <---
# ---> block body <---
addu $9, $8, $9
ori $8, $9, 7
subu $8, $8, $9
lw $9, 15($8)
# ---> block tail <---
# ---> endpc 3e78 <---

# ---> block head <---
# ---> block body <---
addu $0, $10, $0
ori $0, $0, 8
subu $0, $10, $0
lw $10, 36($0)
# ---> block tail <---
# ---> endpc 3e88 <---

# ---> block head <---
# ---> block body <---
addu $0, $11, $0
ori $0, $0, 8
subu $0, $11, $0
lw $11, 68($0)
# ---> block tail <---
# ---> endpc 3e98 <---

# ---> block head <---
lui $3, 65535
ori $3, $3, 39545
# ---> block body <---
addu $12, $30, $12
ori $12, $12, 20
subu $12, $12, $29
beq $12, $3, TAG_BEQ_37
ori $4, $0, 1
ori $4, $0, 1
TAG_BEQ_37:
# ---> block tail <---
# ---> endpc 3eb8 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
addu $13, $9, $13
ori $13, $13, 4
subu $13, $8, $13
beq $13, $10, TAG_BEQ_39
ori $11, $0, 1
ori $11, $0, 1
TAG_BEQ_39:
# ---> block tail <---
# ---> endpc 3ed4 <---

# ---> block head <---
lui $23, 65535
ori $23, $23, 61290
# ---> block body <---
addu $14, $21, $14
ori $14, $14, 20
subu $14, $20, $14
beq $23, $14, TAG_BEQ_42
ori $24, $0, 1
ori $24, $0, 1
TAG_BEQ_42:
# ---> block tail <---
# ---> endpc 3ef4 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
addu $15, $16, $15
ori $16, $15, 7
subu $16, $15, $16
beq $16, $16, TAG_BEQ_44
ori $24, $0, 1
ori $24, $0, 1
TAG_BEQ_44:
# ---> block tail <---
# ---> endpc 3f10 <---

# ---> block head <---
ori $25, $0, 4
# ---> block body <---
addu $17, $17, $18
ori $18, $17, 28
subu $17, $18, $17
beq $17, $25, TAG_BEQ_46
ori $26, $0, 1
ori $26, $0, 1
TAG_BEQ_46:
# ---> block tail <---
# ---> endpc 3f2c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
addu $19, $19, $20
ori $19, $20, 16
subu $19, $19, $20
beq $19, $19, TAG_BEQ_49
ori $28, $0, 1
ori $28, $0, 1
TAG_BEQ_49:
# ---> block tail <---
# ---> endpc 3f4c <---

# ---> block head <---
# ---> block body <---
addu $0, $21, $0
ori $0, $0, 2
subu $0, $0, $21
beq $21, $0, TAG_BEQ_50
ori $28, $0, 1
ori $28, $0, 1
TAG_BEQ_50:
# ---> block tail <---
# ---> endpc 3f64 <---

# ---> block head <---
# ---> block body <---
addu $0, $0, $22
ori $0, $0, 4
subu $0, $0, $22
beq $22, $0, TAG_BEQ_51
ori $28, $0, 1
ori $28, $0, 1
TAG_BEQ_51:
# ---> block tail <---
# ---> endpc 3f7c <---

# ---> block head <---
# ---> block body <---
addu $23, $29, $23
ori $23, $23, 12
subu $23, $28, $23
ori $30, $23, 22451
# ---> block tail <---
# ---> endpc 3f8c <---

# ---> block head <---
# ---> block body <---
addu $24, $2, $24
ori $24, $24, 24
subu $24, $24, $30
ori $3, $24, 17011
# ---> block tail <---
lui $3, 65535
ori $3, $3, 64065
ori $24, $0, 29539
# ---> endpc 3fa8 <---

# ---> block head <---
# ---> block body <---
addu $25, $25, $4
ori $25, $25, 6
subu $25, $3, $25
ori $5, $25, 21421
# ---> block tail <---
# ---> endpc 3fb8 <---

ori $v0, $zero, 10
syscall
