# ---> init jump reg <---
beq $0, $0, TAG_START_0
ori $0, $0, 0
jr $1
addu $1, $1, $1
jr $2
addu $2, $2, $2
jr $3
addu $3, $3, $3
jr $4
addu $4, $4, $4
jr $5
addu $5, $5, $5
jr $6
addu $6, $6, $6
jr $7
addu $7, $7, $7
jr $8
addu $8, $8, $8
jr $9
addu $9, $9, $9
jr $10
addu $10, $10, $10
jr $11
addu $11, $11, $11
jr $12
addu $12, $12, $12
jr $13
addu $13, $13, $13
jr $14
addu $14, $14, $14
jr $15
addu $15, $15, $15
jr $16
addu $16, $16, $16
jr $17
addu $17, $17, $17
jr $18
addu $18, $18, $18
jr $19
addu $19, $19, $19
jr $20
addu $20, $20, $20
jr $21
addu $21, $21, $21
jr $22
addu $22, $22, $22
jr $23
addu $23, $23, $23
jr $24
addu $24, $24, $24
jr $25
addu $25, $25, $25
jr $26
addu $26, $26, $26
jr $27
addu $27, $27, $27
jr $28
addu $28, $28, $28
jr $29
addu $29, $29, $29
jr $30
addu $30, $30, $30
jr $31
addu $31, $31, $31
TAG_START_0:

# ---> init memory <---
lui $1, 65535
ori $1, $1, 42478
sw $1, 0($0)
lui $1, 65535
ori $1, $1, 47691
sw $1, 4($0)
ori $1, $0, 2161
sw $1, 8($0)
lui $1, 65535
ori $1, $1, 39279
sw $1, 12($0)
lui $1, 65535
ori $1, $1, 39267
sw $1, 16($0)
lui $1, 65535
ori $1, $1, 49010
sw $1, 20($0)
lui $1, 65535
ori $1, $1, 37324
sw $1, 24($0)
lui $1, 65535
ori $1, $1, 55987
sw $1, 28($0)
ori $1, $0, 17953
sw $1, 32($0)
lui $1, 65535
ori $1, $1, 58293
sw $1, 36($0)
lui $1, 65535
ori $1, $1, 47437
sw $1, 40($0)
ori $1, $0, 5291
sw $1, 44($0)
ori $1, $0, 32547
sw $1, 48($0)
lui $1, 65535
ori $1, $1, 56806
sw $1, 52($0)
ori $1, $0, 28662
sw $1, 56($0)
ori $1, $0, 18744
sw $1, 60($0)
ori $1, $0, 1925
sw $1, 64($0)
lui $1, 65535
ori $1, $1, 48754
sw $1, 68($0)
lui $1, 65535
ori $1, $1, 32954
sw $1, 72($0)

# ---> init register <---
ori $1, $0, 17642
ori $2, $0, 28490
ori $3, $0, 16108
lui $4, 65535
ori $4, $4, 64442
ori $5, $0, 16921
lui $6, 65535
ori $6, $6, 54720
ori $7, $0, 17574
lui $8, 65535
ori $8, $8, 56778
ori $9, $0, 13382
lui $10, 65535
ori $10, $10, 61527
lui $11, 65535
ori $11, $11, 63118
lui $12, 65535
ori $12, $12, 59682
lui $13, 65535
ori $13, $13, 52091
ori $14, $0, 11759
ori $15, $0, 28067
lui $16, 65535
ori $16, $16, 37665
lui $17, 65535
ori $17, $17, 47814
ori $18, $0, 992
ori $19, $0, 8099
ori $20, $0, 11177
ori $21, $0, 25944
lui $22, 65535
ori $22, $22, 52269
lui $23, 65535
ori $23, $23, 64897
lui $24, 65535
ori $24, $24, 41136
ori $25, $0, 13631
lui $26, 65535
ori $26, $26, 55515
lui $27, 65535
ori $27, $27, 61149
lui $28, 65535
ori $28, $28, 39679
ori $29, $0, 21389
lui $30, 65535
ori $30, $30, 53397
lui $31, 65535
ori $31, $31, 61752

# ---> start at 3284 <---

# ---> block head <---
ori $29, $0, 34481
# ---> block body <---
lw $4, -16909($5)
addu $5, $29, $4
ori $4, $5, 4288
jr $4
ori $28, $0, 12960
ori $30, $0, 1
# ---> block tail <---
ori $29, $0, 13863
# ---> endpc 32a4 <---

# ---> block head <---
lui $7, 65535
ori $7, $7, 50620
# ---> block body <---
lw $0, 8($0)
subu $6, $6, $7
ori $6, $6, 8224
jr $6
ori $5, $0, 12996
ori $8, $0, 1
# ---> block tail <---
# ---> endpc 32c4 <---

# ---> block head <---
ori $10, $0, 27272
# ---> block body <---
lw $0, 52($0)
addu $7, $10, $7
ori $7, $7, 0
jr $7
ori $9, $0, 13024
ori $11, $0, 1
# ---> block tail <---
# ---> endpc 32e0 <---

# ---> block head <---
ori $16, $0, 12404
sw $16, 0($0)
# ---> block body <---
lw $24, 24468($24)
lw $24, 16782($24)
ori $0, $0, 0
jr $24
ori $15, $0, 13056
ori $17, $0, 1
# ---> block tail <---
# ---> endpc 3300 <---

# ---> block head <---
ori $22, $0, 12452
sw $22, 0($0)
# ---> block body <---
lw $25, -13563($25)
lw $25, 16782($25)
ori $0, $0, 0
jr $25
ori $21, $0, 13088
ori $23, $0, 1
# ---> block tail <---
# ---> endpc 3320 <---

# ---> block head <---
ori $29, $0, 12512
sw $29, 0($0)
# ---> block body <---
lw $26, 10089($26)
lw $26, 16782($26)
ori $0, $0, 0
jr $26
ori $28, $0, 13120
ori $30, $0, 1
# ---> block tail <---
# ---> endpc 3340 <---

# ---> block head <---
ori $5, $0, 12320
sw $5, 0($0)
# ---> block body <---
lw $28, 4455($27)
lw $27, 16782($28)
ori $0, $0, 0
jr $27
ori $4, $0, 13152
ori $6, $0, 1
# ---> block tail <---
# ---> endpc 3360 <---

# ---> block head <---
ori $11, $0, 12368
sw $11, 0($0)
# ---> block body <---
lw $30, -12444($29)
lw $29, 16782($30)
ori $0, $0, 0
jr $29
ori $10, $0, 13184
ori $12, $0, 1
# ---> block tail <---
# ---> endpc 3380 <---

# ---> block head <---
ori $17, $0, 12416
sw $17, 0($0)
# ---> block body <---
lw $2, -17574($1)
lw $1, 16782($2)
ori $0, $0, 0
jr $1
ori $16, $0, 13216
ori $18, $0, 1
# ---> block tail <---
# ---> endpc 33a0 <---

# ---> block head <---
ori $23, $0, 12464
sw $23, 0($0)
# ---> block body <---
lw $0, 48($0)
lw $3, 0($0)
ori $0, $0, 0
jr $3
ori $22, $0, 13248
ori $24, $0, 1
# ---> block tail <---
# ---> endpc 33c0 <---

# ---> block head <---
ori $29, $0, 12512
sw $29, 0($0)
# ---> block body <---
lw $0, 24($0)
lw $4, 0($0)
ori $0, $0, 0
jr $4
ori $28, $0, 13280
ori $30, $0, 1
# ---> block tail <---
# ---> endpc 33e0 <---

# ---> block head <---
ori $5, $0, 16342
# ---> block body <---
lw $30, 67($30)
lw $30, 16838($30)
subu $30, $30, $5
jr $30
ori $4, $0, 13308
ori $6, $0, 1
# ---> block tail <---
# ---> endpc 33fc <---

# ---> block head <---
ori $8, $0, 21889
# ---> block body <---
lw $1, -12348($1)
lw $1, 16810($1)
addu $1, $1, $8
jr $1
ori $7, $0, 13336
ori $9, $0, 1
# ---> block tail <---
# ---> endpc 3418 <---

# ---> block head <---
ori $0, $0, 0
ori $14, $0, 20159
# ---> block body <---
lw $2, 16850($2)
lw $2, 16830($2)
subu $2, $2, $14
jr $2
ori $13, $0, 13368
ori $15, $0, 1
# ---> block tail <---
# ---> endpc 3438 <---

# ---> block head <---
ori $18, $0, 45002
# ---> block body <---
lw $4, -12396($3)
lw $3, 16854($4)
addu $3, $18, $3
jr $3
ori $17, $0, 13396
ori $19, $0, 1
# ---> block tail <---
ori $16, $0, 21557
ori $18, $0, 19764
# ---> endpc 345c <---

# ---> block head <---
ori $0, $0, 0
ori $24, $0, 5485
# ---> block body <---
lw $5, 66($6)
lw $6, 16814($5)
subu $5, $6, $24
jr $5
ori $23, $0, 13436
ori $25, $0, 1
# ---> block tail <---
lui $22, 65535
ori $22, $22, 62192
# ---> endpc 3484 <---

# ---> block head <---
ori $28, $0, 30599
# ---> block body <---
lw $8, -26604($7)
lw $7, 16822($8)
addu $7, $7, $28
jr $7
ori $27, $0, 13472
ori $29, $0, 1
# ---> block tail <---
# ---> endpc 34a0 <---

# ---> block head <---
lui $5, 65535
ori $5, $5, 53217
# ---> block body <---
lw $0, 72($0)
lw $0, 52($0)
subu $9, $9, $5
jr $9
ori $4, $0, 13504
ori $6, $0, 1
# ---> block tail <---
# ---> endpc 34c0 <---

# ---> block head <---
lui $12, 65535
ori $12, $12, 51540
# ---> block body <---
lw $0, 68($0)
lw $0, 32($0)
addu $10, $12, $10
jr $10
ori $11, $0, 13536
ori $13, $0, 1
# ---> block tail <---
# ---> endpc 34e0 <---

# ---> block head <---
ori $17, $0, 12416
sw $17, 0($0)
# ---> block body <---
lw $6, 67($6)
lw $6, 16850($6)
lw $6, 16782($6)
jr $6
ori $16, $0, 13568
ori $18, $0, 1
# ---> block tail <---
# ---> endpc 3500 <---

# ---> block head <---
ori $23, $0, 12464
sw $23, 0($0)
# ---> block body <---
lw $7, -12432($7)
lw $7, 16850($7)
lw $7, 16782($7)
jr $7
ori $22, $0, 13600
ori $24, $0, 1
# ---> block tail <---
# ---> endpc 3520 <---

# ---> block head <---
ori $29, $0, 12512
sw $29, 0($0)
# ---> block body <---
lw $8, 16850($8)
lw $8, 16850($8)
lw $8, 16782($8)
jr $8
ori $28, $0, 13632
ori $30, $0, 1
# ---> block tail <---
# ---> endpc 3540 <---

# ---> block head <---
ori $6, $0, 12324
sw $6, 0($0)
# ---> block body <---
lw $9, -24676($10)
lw $10, 16850($9)
lw $9, 16782($10)
jr $9
ori $5, $0, 13664
ori $7, $0, 1
# ---> block tail <---
ori $4, $0, 22168
# ---> endpc 3564 <---

# ---> block head <---
ori $14, $0, 12388
sw $14, 0($0)
# ---> block body <---
lw $11, 14064($12)
lw $12, 16850($11)
lw $11, 16782($12)
jr $11
ori $13, $0, 13700
ori $15, $0, 1
# ---> block tail <---
lui $12, 65535
ori $12, $12, 46477
# ---> endpc 358c <---

# ---> block head <---
ori $18, $0, 12420
sw $18, 0($0)
# ---> block body <---
lw $13, -12320($14)
lw $14, 16850($13)
lw $13, 16782($14)
jr $13
ori $17, $0, 13740
ori $19, $0, 1
# ---> block tail <---
lui $16, 65535
ori $16, $16, 40588
# ---> endpc 35b4 <---

# ---> block head <---
ori $24, $0, 12468
sw $24, 0($0)
# ---> block body <---
lw $0, 32($0)
lw $0, 76($0)
lw $15, 0($0)
jr $15
ori $23, $0, 13780
ori $25, $0, 1
# ---> block tail <---
lui $22, 65535
ori $22, $22, 47861
# ---> endpc 35dc <---

# ---> block head <---
ori $30, $0, 12516
sw $30, 0($0)
# ---> block body <---
lw $0, 56($0)
lw $0, 36($0)
lw $16, 0($0)
jr $16
ori $29, $0, 13820
ori $2, $0, 1
# ---> block tail <---
ori $28, $0, 5733
# ---> endpc 3600 <---

# ---> block head <---
ori $7, $0, 4096
sw $7, 0($0)
# ---> block body <---
lw $26, -24956($26)
lw $26, 16782($26)
ori $26, $26, 8240
jr $26
ori $6, $0, 13856
ori $8, $0, 1
# ---> block tail <---
# ---> endpc 3620 <---

# ---> block head <---
ori $13, $0, 4128
sw $13, 0($0)
# ---> block body <---
lw $27, -26876($27)
lw $27, 16782($27)
ori $27, $27, 8256
jr $27
ori $12, $0, 13888
ori $14, $0, 1
# ---> block tail <---
# ---> endpc 3640 <---

# ---> block head <---
ori $19, $0, 8208
sw $19, 0($0)
# ---> block body <---
lw $28, -5665($28)
lw $28, 16782($28)
ori $28, $28, 4224
jr $28
ori $18, $0, 13920
ori $20, $0, 1
# ---> block tail <---
# ---> endpc 3660 <---

# ---> block head <---
ori $25, $0, 4160
sw $25, 0($0)
# ---> block body <---
lw $29, -12448($30)
lw $30, 16782($29)
ori $29, $30, 8320
jr $29
ori $24, $0, 13952
ori $26, $0, 1
# ---> block tail <---
# ---> endpc 3680 <---

# ---> block head <---
ori $3, $0, 8416
sw $3, 0($0)
# ---> block body <---
lw $1, 67($2)
lw $2, 16782($1)
ori $1, $2, 4112
jr $1
ori $30, $0, 13984
ori $4, $0, 1
# ---> block tail <---
# ---> endpc 36a0 <---

# ---> block head <---
ori $9, $0, 12288
sw $9, 0($0)
# ---> block body <---
lw $3, 67($4)
lw $4, 16782($3)
ori $3, $4, 64
jr $3
ori $8, $0, 14016
ori $10, $0, 1
# ---> block tail <---
# ---> endpc 36c0 <---

# ---> block head <---
ori $14, $0, 12356
sw $14, 0($0)
# ---> block body <---
lw $0, 12($0)
lw $5, 0($0)
ori $5, $5, 32
jr $5
ori $13, $0, 14048
ori $15, $0, 1
# ---> block tail <---
lui $12, 65535
ori $12, $12, 40817
# ---> endpc 36e8 <---

# ---> block head <---
ori $20, $0, 4224
sw $20, 0($0)
# ---> block body <---
lw $0, 16($0)
lw $6, 0($0)
ori $6, $6, 8212
jr $6
ori $19, $0, 14088
ori $21, $0, 1
# ---> block tail <---
ori $18, $0, 4001
# ---> endpc 370c <---

# ---> block head <---
lui $26, 61077
ori $26, $26, 53052
# ---> block body <---
lw $6, -12372($6)
lui $6, 61078
subu $6, $6, $26
jr $6
ori $25, $0, 14124
ori $27, $0, 1
# ---> block tail <---
ori $24, $0, 12399
lui $26, 65535
ori $26, $26, 54271
# ---> endpc 3738 <---

# ---> block head <---
lui $3, 1103
ori $3, $3, 12304
# ---> block body <---
lw $7, -4020($7)
lui $7, 64433
addu $7, $7, $3
jr $7
ori $2, $0, 14168
ori $4, $0, 1
# ---> block tail <---
lui $3, 65535
ori $3, $3, 59440
# ---> endpc 3760 <---

# ---> block head <---
lui $10, 65088
ori $10, $10, 53180
# ---> block body <---
lw $8, -27984($8)
lui $8, 65089
subu $8, $8, $10
jr $8
ori $9, $0, 14208
ori $11, $0, 1
# ---> block tail <---
ori $10, $0, 26296
# ---> endpc 3784 <---

# ---> block head <---
lui $15, 51750
ori $15, $15, 12400
# ---> block body <---
lw $9, -26264($10)
lui $9, 13786
addu $9, $15, $9
jr $9
ori $14, $0, 14244
ori $16, $0, 1
# ---> block tail <---
ori $15, $0, 24406
# ---> endpc 37a8 <---

# ---> block head <---
lui $21, 36429
ori $21, $21, 53088
# ---> block body <---
lw $11, 24759($12)
lui $11, 36430
subu $11, $11, $21
jr $11
ori $20, $0, 14280
ori $22, $0, 1
# ---> block tail <---
ori $21, $0, 12449
# ---> endpc 37cc <---

# ---> block head <---
lui $27, 63490
ori $27, $27, 12496
# ---> block body <---
lw $14, -28024($13)
lui $14, 2046
addu $13, $14, $27
jr $13
ori $26, $0, 14316
ori $28, $0, 1
# ---> block tail <---
ori $14, $0, 20042
lui $27, 65535
ori $27, $27, 52894
# ---> endpc 37f8 <---

# ---> block head <---
ori $2, $0, 11878
# ---> block body <---
lw $0, 8($0)
lui $0, 420
subu $15, $15, $2
jr $15
ori $30, $0, 14356
ori $3, $0, 1
# ---> block tail <---
# ---> endpc 3814 <---

# ---> block head <---
ori $6, $0, 12323
# ---> block body <---
lw $0, 44($0)
lui $0, 54494
addu $16, $6, $16
jr $16
ori $5, $0, 14384
ori $7, $0, 1
# ---> block tail <---
# ---> endpc 3830 <---

# ---> block head <---
ori $25, $0, 12480
sw $25, 0($0)
# ---> block body <---
lw $0, 76($0)
lui $0, 18452
lw $21, 0($0)
jr $21
ori $24, $0, 14416
ori $26, $0, 1
# ---> block tail <---
# ---> endpc 3850 <---

# ---> block head <---
ori $30, $0, 12516
sw $30, 0($0)
# ---> block body <---
lw $0, 48($0)
lui $0, 59178
lw $22, 0($0)
jr $22
ori $29, $0, 14448
ori $2, $0, 1
# ---> block tail <---
# ---> endpc 3870 <---

# ---> block head <---
ori $15, $0, 8304
sw $15, 0($0)
# ---> block body <---
lw $30, -12516($30)
ori $30, $30, 4096
ori $0, $0, 0
jr $30
ori $14, $0, 14480
ori $16, $0, 1
# ---> block tail <---
# ---> endpc 3890 <---

# ---> block head <---
ori $21, $0, 12448
sw $21, 0($0)
# ---> block body <---
lw $1, -12528($1)
ori $1, $1, 0
ori $0, $0, 0
jr $1
ori $20, $0, 14512
ori $22, $0, 1
# ---> block tail <---
# ---> endpc 38b0 <---

# ---> block head <---
ori $27, $0, 192
sw $27, 0($0)
# ---> block body <---
lw $2, -1($2)
ori $2, $2, 12304
ori $0, $0, 0
jr $2
ori $26, $0, 14544
ori $28, $0, 1
# ---> block tail <---
# ---> endpc 38d0 <---

# ---> block head <---
ori $6, $0, 0
sw $6, 0($0)
# ---> block body <---
lw $4, -1($3)
ori $3, $4, 12324
ori $0, $0, 0
jr $3
ori $5, $0, 14576
ori $7, $0, 1
# ---> block tail <---
# ---> endpc 38f0 <---

# ---> block head <---
ori $10, $0, 64
sw $10, 0($0)
# ---> block body <---
lw $6, -29152($5)
ori $5, $6, 12292
ori $0, $0, 0
jr $5
ori $9, $0, 14608
ori $11, $0, 1
# ---> block tail <---
ori $8, $0, 25370
# ---> endpc 3914 <---

# ---> block head <---
ori $16, $0, 8288
sw $16, 0($0)
# ---> block body <---
lw $8, -1($7)
ori $7, $8, 4116
ori $0, $0, 0
jr $7
ori $15, $0, 14644
ori $17, $0, 1
# ---> block tail <---
ori $14, $0, 7050
# ---> endpc 3938 <---

# ---> block head <---
ori $22, $0, 4260
sw $22, 0($0)
# ---> block body <---
lw $9, 0($0)
ori $9, $9, 8192
ori $0, $0, 0
jr $9
ori $21, $0, 14680
ori $23, $0, 1
# ---> block tail <---
ori $20, $0, 17660
# ---> endpc 395c <---

# ---> block head <---
ori $28, $0, 8272
sw $28, 0($0)
# ---> block body <---
lw $10, 0($0)
ori $10, $10, 4228
ori $0, $0, 0
jr $10
ori $27, $0, 14716
ori $29, $0, 1
# ---> block tail <---
ori $26, $0, 3293
# ---> endpc 3980 <---

# ---> block head <---
lui $5, 65535
ori $5, $5, 26963
# ---> block body <---
lw $6, -48($6)
ori $6, $6, 19
subu $6, $6, $5
jr $6
ori $4, $0, 14752
ori $7, $0, 1
# ---> block tail <---
lui $5, 65535
ori $5, $5, 52545
# ---> endpc 39a8 <---

# ---> block head <---
ori $10, $0, 21078
# ---> block body <---
lw $7, 51($7)
ori $7, $7, 14
addu $7, $7, $10
jr $7
ori $9, $0, 14788
ori $11, $0, 1
# ---> block tail <---
# ---> endpc 39c4 <---

# ---> block head <---
ori $13, $0, 20171
# ---> block body <---
lw $8, -16528($8)
ori $8, $8, 11
subu $8, $8, $13
jr $8
ori $12, $0, 14816
ori $14, $0, 1
# ---> block tail <---
# ---> endpc 39e0 <---

# ---> block head <---
ori $17, $0, 7109
# ---> block body <---
lw $10, -29532($9)
ori $9, $10, 24
addu $9, $17, $9
jr $9
ori $16, $0, 14844
ori $18, $0, 1
# ---> block tail <---
# ---> endpc 39fc <---

# ---> block head <---
ori $21, $0, 17185
# ---> block body <---
lw $11, -29596($12)
ori $11, $12, 1
subu $11, $11, $21
jr $11
ori $20, $0, 14872
ori $22, $0, 1
# ---> block tail <---
# ---> endpc 3a18 <---

# ---> block head <---
ori $25, $0, 10547
# ---> block body <---
lw $14, -20107($13)
ori $13, $14, 8
addu $13, $13, $25
jr $13
ori $24, $0, 14900
ori $26, $0, 1
# ---> block tail <---
# ---> endpc 3a34 <---

# ---> block head <---
ori $29, $0, 16776
# ---> block body <---
lw $0, 20($0)
ori $0, $0, 4
subu $15, $15, $29
jr $15
ori $28, $0, 14928
ori $30, $0, 1
# ---> block tail <---
# ---> endpc 3a50 <---

# ---> block head <---
lui $6, 65535
ori $6, $6, 48172
# ---> block body <---
lw $0, 20($0)
ori $0, $0, 8
addu $16, $16, $6
jr $16
ori $5, $0, 14960
ori $7, $0, 1
# ---> block tail <---
ori $4, $0, 7428
# ---> endpc 3a74 <---

# ---> block head <---
ori $13, $0, 12372
sw $13, 0($0)
# ---> block body <---
lw $12, -29564($12)
ori $12, $12, 0
lw $12, 16782($12)
jr $12
ori $11, $0, 14996
ori $14, $0, 1
# ---> block tail <---
# ---> endpc 3a94 <---

# ---> block head <---
ori $18, $0, 12420
sw $18, 0($0)
# ---> block body <---
lw $13, -12304($13)
ori $13, $13, 100
lw $13, 16778($13)
jr $13
ori $17, $0, 15028
ori $19, $0, 1
# ---> block tail <---
# ---> endpc 3ab4 <---

# ---> block head <---
ori $24, $0, 12468
sw $24, 0($0)
# ---> block body <---
lw $14, 67($14)
ori $14, $14, 27
lw $14, 16773($14)
jr $14
ori $23, $0, 15060
ori $25, $0, 1
# ---> block tail <---
# ---> endpc 3ad4 <---

# ---> block head <---
ori $30, $0, 12516
sw $30, 0($0)
# ---> block body <---
lw $15, -24580($16)
ori $16, $15, 84
lw $15, 16778($16)
jr $15
ori $29, $0, 15092
ori $2, $0, 1
# ---> block tail <---
ori $28, $0, 23625
# ---> endpc 3af8 <---

# ---> block head <---
ori $7, $0, 12336
sw $7, 0($0)
# ---> block body <---
lw $17, -12352($18)
ori $18, $17, 64
lw $17, 16782($18)
jr $17
ori $6, $0, 15128
ori $8, $0, 1
# ---> block tail <---
# ---> endpc 3b18 <---

# ---> block head <---
ori $13, $0, 12384
sw $13, 0($0)
# ---> block body <---
lw $19, -29676($20)
ori $20, $19, 105
lw $19, 16773($20)
jr $19
ori $12, $0, 15160
ori $14, $0, 1
# ---> block tail <---
# ---> endpc 3b38 <---

# ---> block head <---
ori $19, $0, 12432
sw $19, 0($0)
# ---> block body <---
lw $0, 16($0)
ori $0, $0, 1
lw $21, 0($0)
jr $21
ori $18, $0, 15192
ori $20, $0, 1
# ---> block tail <---
# ---> endpc 3b58 <---

# ---> block head <---
ori $26, $0, 12484
sw $26, 0($0)
# ---> block body <---
lw $0, 68($0)
ori $0, $0, 4
lw $22, 0($0)
jr $22
ori $25, $0, 15224
ori $27, $0, 1
# ---> block tail <---
# ---> endpc 3b78 <---

# ---> block head <---
ori $3, $0, 32
sw $3, 0($0)
# ---> block body <---
lw $2, -1($2)
ori $2, $2, 4160
ori $2, $2, 8336
jr $2
ori $30, $0, 15256
ori $4, $0, 1
# ---> block tail <---
# ---> endpc 3b98 <---

# ---> block head <---
ori $8, $0, 4
sw $8, 0($0)
# ---> block body <---
lw $3, -32($3)
ori $3, $3, 8192
ori $3, $3, 4144
jr $3
ori $7, $0, 15288
ori $9, $0, 1
# ---> block tail <---
lui $6, 65535
ori $6, $6, 57826
# ---> endpc 3bc0 <---

# ---> block head <---
ori $14, $0, 0
sw $14, 0($0)
# ---> block body <---
lw $4, -1($4)
ori $4, $4, 4096
ori $4, $4, 8292
jr $4
ori $13, $0, 15328
ori $15, $0, 1
# ---> block tail <---
ori $12, $0, 32305
# ---> endpc 3be4 <---

# ---> block head <---
ori $20, $0, 4
sw $20, 0($0)
# ---> block body <---
lw $5, 7710($6)
ori $6, $5, 16
ori $5, $6, 12416
jr $5
ori $19, $0, 15364
ori $21, $0, 1
# ---> block tail <---
lui $18, 65535
ori $18, $18, 63270
# ---> endpc 3c0c <---

# ---> block head <---
ori $26, $0, 0
sw $26, 0($0)
# ---> block body <---
lw $7, -4($8)
ori $8, $7, 4096
ori $7, $8, 8388
jr $7
ori $25, $0, 15404
ori $27, $0, 1
# ---> block tail <---
lui $24, 65535
ori $24, $24, 33704
# ---> endpc 3c34 <---

# ---> block head <---
ori $3, $0, 8192
sw $3, 0($0)
# ---> block body <---
lw $9, -10582($10)
ori $10, $9, 0
ori $9, $10, 4112
jr $9
ori $2, $0, 15444
ori $4, $0, 1
# ---> block tail <---
# ---> endpc 3c54 <---

# ---> block head <---
ori $9, $0, 0
sw $9, 0($0)
# ---> block body <---
lw $11, 0($0)
ori $11, $11, 0
ori $11, $11, 12352
jr $11
ori $8, $0, 15476
ori $10, $0, 1
# ---> block tail <---
# ---> endpc 3c74 <---

# ---> block head <---
ori $16, $0, 0
sw $16, 0($0)
# ---> block body <---
lw $12, 0($0)
ori $12, $12, 4132
ori $12, $12, 8272
jr $12
ori $15, $0, 15508
ori $17, $0, 1
# ---> block tail <---
# ---> endpc 3c94 <---

# ---> block head <---
ori $17, $0, 16
# ---> block body <---
lui $31, 43113
jal TAG_JAL_1
ori $0, $0, 0
addu $31, $31, $17
TAG_JAL_1:
jr $31
ori $18, $0, 20974
ori $0, $0, 0
ori $31, $0, 8127
# ---> block tail <---
# ---> endpc 3cb8 <---

# ---> block head <---
ori $19, $0, 16
# ---> block body <---
lui $31, 54856
jal TAG_JAL_3
ori $0, $0, 0
addu $31, $31, $19
TAG_JAL_3:
jr $31
ori $20, $0, 4709
ori $0, $0, 0
ori $31, $0, 630
# ---> block tail <---
# ---> endpc 3cdc <---

# ---> block head <---
ori $21, $0, 16
# ---> block body <---
lui $31, 43367
jal TAG_JAL_5
ori $0, $0, 0
addu $31, $31, $21
TAG_JAL_5:
jr $31
ori $22, $0, 22048
ori $0, $0, 0
ori $31, $0, 19969
# ---> block tail <---
# ---> endpc 3d00 <---

# ---> block head <---
ori $23, $0, 16
# ---> block body <---
lui $31, 26324
jal TAG_JAL_7
ori $0, $0, 0
addu $31, $31, $23
TAG_JAL_7:
jr $31
ori $24, $0, 19183
ori $0, $0, 0
ori $31, $0, 10243
# ---> block tail <---
# ---> endpc 3d24 <---

# ---> block head <---
ori $25, $0, 16
# ---> block body <---
lui $31, 48216
jal TAG_JAL_9
ori $0, $0, 0
addu $31, $31, $25
TAG_JAL_9:
jr $31
ori $26, $0, 31926
ori $0, $0, 0
ori $31, $0, 26607
# ---> block tail <---
# ---> endpc 3d48 <---

# ---> block head <---
ori $27, $0, 16
# ---> block body <---
lui $3, 53864
jal TAG_JAL_11
ori $0, $0, 0
addu $31, $31, $27
TAG_JAL_11:
jr $31
ori $28, $0, 11618
ori $0, $0, 0
ori $31, $0, 31089
# ---> block tail <---
lui $3, 65535
ori $3, $3, 61338
# ---> endpc 3d74 <---

# ---> block head <---
ori $29, $0, 16
# ---> block body <---
lui $31, 30158
jal TAG_JAL_13
ori $0, $0, 0
addu $31, $31, $29
TAG_JAL_13:
jr $31
ori $30, $0, 32128
ori $0, $0, 0
ori $31, $0, 25529
# ---> block tail <---
# ---> endpc 3d98 <---

# ---> block head <---
ori $2, $0, 16
# ---> block body <---
lui $31, 23546
jal TAG_JAL_15
ori $0, $0, 0
addu $31, $31, $2
TAG_JAL_15:
jr $31
ori $3, $0, 21524
ori $0, $0, 0
ori $31, $0, 24047
# ---> block tail <---
# ---> endpc 3dbc <---

# ---> block head <---
ori $15, $0, 16
ori $14, $0, 3440
# ---> block body <---
lui $31, 29242
jal TAG_JAL_18
subu $31, $31, $14
addu $31, $31, $15
TAG_JAL_18:
jr $31
ori $13, $0, 15840
ori $16, $0, 1
# ---> block tail <---
# ---> endpc 3de0 <---

# ---> block head <---
ori $4, $0, 16
lui $3, 65535
ori $3, $3, 61972
# ---> block body <---
lui $0, 10243
jal TAG_JAL_22
addu $31, $3, $31
addu $31, $31, $4
TAG_JAL_22:
jr $31
ori $2, $0, 15880
ori $5, $0, 1
# ---> block tail <---
# ---> endpc 3e08 <---

# ---> block head <---
ori $13, $0, 16
ori $12, $0, 3532
# ---> block body <---
lui $0, 51315
jal TAG_JAL_25
subu $31, $31, $12
addu $31, $31, $13
TAG_JAL_25:
jr $31
ori $11, $0, 15916
ori $14, $0, 1
# ---> block tail <---
# ---> endpc 3e2c <---

# ---> block head <---
ori $26, $0, 12484
sw $26, 0($0)
ori $27, $0, 16
# ---> block body <---
lui $31, 49862
jal TAG_JAL_29
lw $31, -15944($31)
addu $31, $31, $27
TAG_JAL_29:
jr $31
ori $25, $0, 15956
ori $28, $0, 1
# ---> block tail <---
lui $24, 65535
ori $24, $24, 64102
# ---> endpc 3e5c <---

# ---> block head <---
ori $9, $0, 12352
sw $9, 0($0)
ori $10, $0, 16
# ---> block body <---
lui $31, 36698
jal TAG_JAL_33
lw $31, -15992($31)
addu $31, $31, $10
TAG_JAL_33:
jr $31
ori $8, $0, 16004
ori $11, $0, 1
# ---> block tail <---
# ---> endpc 3e84 <---

# ---> block head <---
ori $27, $0, 12496
sw $27, 0($0)
ori $28, $0, 16
# ---> block body <---
lui $0, 39798
jal TAG_JAL_37
lw $31, 0($0)
addu $31, $31, $28
TAG_JAL_37:
jr $31
ori $26, $0, 16044
ori $29, $0, 1
# ---> block tail <---
# ---> endpc 3eac <---

# ---> block head <---
ori $10, $0, 12356
sw $10, 0($0)
ori $11, $0, 16
# ---> block body <---
lui $0, 8334
jal TAG_JAL_41
lw $31, 0($0)
addu $31, $31, $11
TAG_JAL_41:
jr $31
ori $9, $0, 16084
ori $12, $0, 1
# ---> block tail <---
lui $8, 65535
ori $8, $8, 61345
# ---> endpc 3edc <---

# ---> block head <---
lui $26, 35543
ori $26, $26, 12484
# ---> block body <---
lui $22, 29993
ori $0, $0, 0
addu $22, $26, $22
jr $22
ori $25, $0, 16124
ori $27, $0, 1
# ---> block tail <---
lui $26, 65535
ori $26, $26, 52509
# ---> endpc 3f04 <---

# ---> block head <---
lui $2, 39393
ori $2, $2, 53008
# ---> block body <---
lui $23, 39394
ori $0, $0, 0
subu $23, $23, $2
jr $23
ori $30, $0, 16164
ori $3, $0, 1
# ---> block tail <---
lui $2, 65535
ori $2, $2, 42901
# ---> endpc 3f2c <---

# ---> block head <---
lui $8, 24228
ori $8, $8, 12340
# ---> block body <---
lui $24, 41308
ori $0, $0, 0
addu $24, $24, $8
jr $24
ori $7, $0, 16204
ori $9, $0, 1
# ---> block tail <---
lui $8, 65535
ori $8, $8, 48482
# ---> endpc 3f54 <---

# ---> block head <---
lui $14, 9319
ori $14, $14, 53148
# ---> block body <---
lui $25, 9320
ori $0, $0, 0
subu $25, $25, $14
jr $25
ori $13, $0, 16244
ori $15, $0, 1
# ---> block tail <---
lui $14, 65535
ori $14, $14, 56512
# ---> endpc 3f7c <---

# ---> block head <---
ori $0, $0, 0
ori $20, $0, 12435
# ---> block body <---
lui $28, 47277
ori $0, $0, 0
addu $27, $20, $27
jr $27
ori $19, $0, 16284
ori $21, $0, 1
# ---> block tail <---
ori $18, $0, 10073
ori $28, $0, 8650
# ---> endpc 3fa4 <---

# ---> block head <---
ori $0, $0, 0
ori $26, $0, 19844
# ---> block body <---
lui $29, 580
ori $0, $0, 0
subu $29, $30, $26
jr $29
ori $25, $0, 16324
ori $27, $0, 1
# ---> block tail <---
# ---> endpc 3fc4 <---

ori $v0, $zero, 10
syscall
