# ---> init memory <---
ori $1, $0, 31851
sw $1, 0($0)
lui $1, 65535
ori $1, $1, 58006
sw $1, 4($0)
ori $1, $0, 32521
sw $1, 8($0)
lui $1, 65535
ori $1, $1, 65518
sw $1, 12($0)
ori $1, $0, 11911
sw $1, 16($0)
ori $1, $0, 26219
sw $1, 20($0)
ori $1, $0, 13261
sw $1, 24($0)
ori $1, $0, 24491
sw $1, 28($0)
ori $1, $0, 32571
sw $1, 32($0)
ori $1, $0, 5483
sw $1, 36($0)
lui $1, 65535
ori $1, $1, 48090
sw $1, 40($0)
lui $1, 65535
ori $1, $1, 53996
sw $1, 44($0)
lui $1, 65535
ori $1, $1, 35566
sw $1, 48($0)
ori $1, $0, 4409
sw $1, 52($0)
lui $1, 65535
ori $1, $1, 63796
sw $1, 56($0)
lui $1, 65535
ori $1, $1, 37577
sw $1, 60($0)
ori $1, $0, 3436
sw $1, 64($0)
ori $1, $0, 7549
sw $1, 68($0)
lui $1, 65535
ori $1, $1, 58902
sw $1, 72($0)

# ---> init register <---
lui $1, 65535
ori $1, $1, 53645
lui $2, 65535
ori $2, $2, 34792
ori $3, $0, 26004
ori $4, $0, 25475
ori $5, $0, 6625
ori $6, $0, 6153
lui $7, 65535
ori $7, $7, 64783
lui $8, 65535
ori $8, $8, 37696
lui $9, 65535
ori $9, $9, 55274
ori $10, $0, 9594
ori $11, $0, 5551
lui $12, 65535
ori $12, $12, 61260
ori $13, $0, 933
lui $14, 65535
ori $14, $14, 53428
ori $15, $0, 13644
ori $16, $0, 19540
lui $17, 65535
ori $17, $17, 52440
ori $18, $0, 12720
lui $19, 65535
ori $19, $19, 43487
ori $20, $0, 10672
lui $21, 65535
ori $21, $21, 35944
lui $22, 65535
ori $22, $22, 48653
lui $23, 65535
ori $23, $23, 64112
lui $24, 65535
ori $24, $24, 61343
ori $25, $0, 18258
lui $26, 65535
ori $26, $26, 34343
ori $27, $0, 24289
lui $28, 65535
ori $28, $28, 39117
ori $29, $0, 23642
lui $30, 65535
ori $30, $30, 44540
ori $31, $0, 12053

# ---> start at 3170 <---

# ---> block head <---
lui $15, 43707
ori $15, $15, 52445
sw $15, 112($0)
lui $16, 43707
ori $16, $16, 52445
sw $16, 144($0)
# ---> block body <---
ori $0, $0, 2
addu $0, $0, $21
ori $0, $0, 0
sw $21, 112($0)
sw $0, 29736($21)
# ---> block tail <---
ori $15, $0, 24513
lui $16, 65535
ori $16, $16, 47263
# ---> endpc 31a8 <---

# ---> block head <---
lui $24, 43707
ori $24, $24, 52445
sw $24, 96($0)
# ---> block body <---
ori $0, $0, 8
subu $0, $0, $22
ori $0, $0, 0
sw $0, 16979($22)
sw $22, 112($0)
# ---> block tail <---
lui $24, 65535
ori $24, $24, 62738
# ---> endpc 31d0 <---

# ---> block head <---
# ---> block body <---
ori $4, $4, 5
addu $4, $4, $22
ori $0, $0, 0
addu $4, $25, $4
# ---> block tail <---
# ---> endpc 31e0 <---

# ---> block head <---
# ---> block body <---
ori $5, $5, 17
subu $5, $25, $5
ori $0, $0, 0
subu $5, $5, $26
# ---> block tail <---
ori $5, $0, 4919
# ---> endpc 31f4 <---

# ---> block head <---
# ---> block body <---
ori $6, $6, 11
addu $6, $6, $26
ori $0, $0, 0
addu $6, $6, $27
# ---> block tail <---
# ---> endpc 3204 <---

# ---> block head <---
# ---> block body <---
ori $8, $7, 24
subu $7, $7, $8
ori $0, $0, 0
subu $7, $8, $7
# ---> block tail <---
# ---> endpc 3214 <---

# ---> block head <---
# ---> block body <---
ori $9, $10, 3
addu $9, $9, $10
ori $0, $0, 0
addu $10, $10, $9
# ---> block tail <---
# ---> endpc 3224 <---

# ---> block head <---
# ---> block body <---
ori $12, $11, 31
subu $11, $11, $12
ori $0, $0, 0
subu $12, $12, $11
# ---> block tail <---
# ---> endpc 3234 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
addu $0, $13, $0
ori $0, $0, 0
addu $13, $13, $0
# ---> block tail <---
# ---> endpc 3244 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 8
subu $0, $14, $0
ori $0, $0, 0
subu $14, $0, $14
# ---> block tail <---
# ---> endpc 3254 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
ori $15, $15, 5
addu $15, $15, $28
ori $0, $0, 0
lw $29, 1942($15)
# ---> block tail <---
# ---> endpc 3268 <---

# ---> block head <---
# ---> block body <---
ori $16, $16, 6
subu $16, $16, $29
ori $0, $0, 0
lw $30, 871($16)
# ---> block tail <---
# ---> endpc 3278 <---

# ---> block head <---
# ---> block body <---
ori $17, $17, 4
addu $17, $17, $30
ori $0, $0, 0
lw $0, 24700($17)
# ---> block tail <---
# ---> endpc 3288 <---

# ---> block head <---
# ---> block body <---
ori $18, $19, 4
subu $18, $18, $19
ori $0, $0, 0
lw $19, 76($18)
# ---> block tail <---
# ---> endpc 3298 <---

# ---> block head <---
ori $3, $0, 30116
# ---> block body <---
ori $20, $21, 12
addu $20, $3, $20
ori $0, $0, 0
lw $21, -476($20)
# ---> block tail <---
# ---> endpc 32ac <---

# ---> block head <---
# ---> block body <---
ori $22, $23, 17
subu $22, $22, $23
ori $0, $0, 0
lw $23, 55($22)
# ---> block tail <---
# ---> endpc 32bc <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 8
addu $0, $24, $0
ori $0, $0, 0
lw $24, 72($0)
# ---> block tail <---
# ---> endpc 32cc <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 1
subu $0, $25, $0
ori $0, $0, 0
lw $25, 56($0)
# ---> block tail <---
# ---> endpc 32dc <---

# ---> block head <---
lui $12, 65535
ori $12, $12, 63134
# ---> block body <---
ori $26, $26, 14
addu $26, $10, $26
ori $0, $0, 0
beq $26, $12, TAG_BEQ_2
ori $13, $0, 1
ori $13, $0, 1
TAG_BEQ_2:
# ---> block tail <---
# ---> endpc 32fc <---

# ---> block head <---
# ---> block body <---
ori $27, $27, 16
subu $27, $27, $13
ori $0, $0, 0
beq $14, $27, TAG_BEQ_3
ori $15, $0, 1
ori $15, $0, 1
TAG_BEQ_3:
# ---> block tail <---
# ---> endpc 3314 <---

# ---> block head <---
lui $23, 65535
ori $23, $23, 43542
# ---> block body <---
ori $28, $28, 16
addu $28, $21, $28
ori $0, $0, 0
beq $28, $23, TAG_BEQ_6
ori $24, $0, 1
ori $24, $0, 1
TAG_BEQ_6:
# ---> block tail <---
# ---> endpc 3334 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
ori $30, $29, 20
subu $30, $29, $30
ori $0, $0, 0
beq $30, $30, TAG_BEQ_8
ori $25, $0, 1
ori $25, $0, 1
TAG_BEQ_8:
# ---> block tail <---
# ---> endpc 3350 <---

# ---> block head <---
lui $27, 65535
ori $27, $27, 4050
# ---> block body <---
ori $1, $2, 10
addu $1, $1, $2
ori $0, $0, 0
beq $27, $1, TAG_BEQ_11
ori $28, $0, 1
ori $28, $0, 1
TAG_BEQ_11:
# ---> block tail <---
lui $1, 65535
ori $1, $1, 42991
ori $27, $0, 8712
# ---> endpc 337c <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
ori $3, $4, 18
subu $3, $4, $3
ori $0, $0, 0
beq $3, $3, TAG_BEQ_13
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_13:
# ---> block tail <---
# ---> endpc 3398 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 8
addu $0, $5, $0
ori $0, $0, 0
beq $5, $0, TAG_BEQ_14
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_14:
# ---> block tail <---
# ---> endpc 33b0 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 8
subu $0, $6, $0
ori $0, $0, 0
beq $6, $0, TAG_BEQ_15
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_15:
# ---> block tail <---
# ---> endpc 33c8 <---

# ---> block head <---
# ---> block body <---
ori $7, $7, 26
addu $7, $7, $29
ori $0, $0, 0
ori $30, $7, 35734
# ---> block tail <---
# ---> endpc 33d8 <---

# ---> block head <---
# ---> block body <---
ori $8, $8, 16
subu $8, $30, $8
ori $0, $0, 0
ori $2, $8, 30535
# ---> block tail <---
# ---> endpc 33e8 <---

# ---> block head <---
# ---> block body <---
ori $9, $9, 25
addu $9, $2, $9
ori $0, $0, 0
ori $3, $9, 32900
# ---> block tail <---
ori $3, $0, 9326
ori $9, $0, 2658
# ---> endpc 3400 <---

# ---> block head <---
# ---> block body <---
ori $10, $11, 1
subu $10, $10, $11
ori $0, $0, 0
ori $11, $10, 15343
# ---> block tail <---
# ---> endpc 3410 <---

# ---> block head <---
# ---> block body <---
ori $13, $12, 11
addu $12, $13, $12
ori $0, $0, 0
ori $13, $12, 1357
# ---> block tail <---
# ---> endpc 3420 <---

# ---> block head <---
# ---> block body <---
ori $15, $14, 13
subu $14, $14, $15
ori $0, $0, 0
ori $15, $14, 19700
# ---> block tail <---
# ---> endpc 3430 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 16
addu $0, $16, $0
ori $0, $0, 0
ori $16, $0, 4928
# ---> block tail <---
# ---> endpc 3440 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 2
subu $0, $17, $0
ori $0, $0, 0
ori $17, $0, 13997
# ---> block tail <---
# ---> endpc 3450 <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 140($0)
lui $3, 43707
ori $3, $3, 52445
sw $3, 96($0)
# ---> block body <---
ori $18, $18, 2
subu $18, $18, $30
addu $18, $29, $18
sw $1, 95($18)
sw $18, 22641($1)
# ---> block tail <---
ori $2, $0, 30416
ori $3, $0, 8302
# ---> endpc 3484 <---

# ---> block head <---
ori $0, $0, 0
lui $22, 43707
ori $22, $22, 52445
sw $22, 148($0)
# ---> block body <---
ori $19, $19, 4
subu $19, $19, $21
addu $19, $19, $20
sw $1, 4025($19)
sw $19, 22657($1)
# ---> block tail <---
ori $22, $0, 1274
# ---> endpc 34ac <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
ori $20, $20, 8
subu $20, $3, $20
addu $20, $2, $20
sw $20, 22693($1)
# ---> block tail <---
ori $20, $0, 27168
# ---> endpc 34c8 <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 144($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 152($0)
# ---> block body <---
ori $21, $22, 20
subu $22, $22, $21
addu $21, $22, $21
sw $18, -1130($21)
sw $21, 107($18)
# ---> block tail <---
ori $19, $0, 25615
lui $20, 65535
ori $20, $20, 60023
# ---> endpc 3500 <---

# ---> block head <---
lui $30, 43707
ori $30, $30, 52445
sw $30, 116($0)
# ---> block body <---
ori $24, $23, 23
subu $24, $23, $24
addu $23, $24, $23
sw $24, 22111($23)
sw $23, 141($24)
# ---> block tail <---
lui $30, 65535
ori $30, $30, 43059
# ---> endpc 3528 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $12, 43707
ori $12, $12, 52445
sw $12, 144($0)
# ---> block body <---
ori $26, $25, 5
subu $26, $25, $26
addu $25, $26, $25
sw $11, 147($25)
sw $25, -15231($11)
# ---> block tail <---
ori $12, $0, 32714
# ---> endpc 3554 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $23, 43707
ori $23, $23, 52445
sw $23, 144($0)
# ---> block body <---
ori $0, $0, 1
subu $0, $0, $27
addu $0, $27, $0
sw $27, 112($0)
sw $0, -8568($27)
# ---> block tail <---
ori $23, $0, 32701
# ---> endpc 3580 <---

# ---> block head <---
ori $0, $0, 0
lui $3, 43707
ori $3, $3, 52445
sw $3, 152($0)
# ---> block body <---
ori $0, $0, 16
subu $0, $0, $28
addu $0, $0, $28
sw $0, 139($28)
sw $28, 152($0)
# ---> block tail <---
lui $3, 65535
ori $3, $3, 44983
# ---> endpc 35ac <---

# ---> block head <---
# ---> block body <---
ori $10, $10, 2
subu $10, $10, $4
addu $10, $10, $28
addu $10, $5, $10
# ---> block tail <---
# ---> endpc 35bc <---

# ---> block head <---
# ---> block body <---
ori $11, $11, 27
subu $11, $6, $11
addu $11, $11, $5
subu $11, $11, $7
# ---> block tail <---
# ---> endpc 35cc <---

# ---> block head <---
# ---> block body <---
ori $12, $12, 16
subu $12, $12, $8
addu $12, $12, $7
addu $12, $9, $12
# ---> block tail <---
ori $12, $0, 20998
# ---> endpc 35e0 <---

# ---> block head <---
# ---> block body <---
ori $13, $14, 24
subu $13, $13, $14
addu $14, $14, $13
subu $13, $13, $14
# ---> block tail <---
# ---> endpc 35f0 <---

# ---> block head <---
# ---> block body <---
ori $16, $15, 12
subu $16, $15, $16
addu $16, $16, $15
addu $16, $16, $15
# ---> block tail <---
# ---> endpc 3600 <---

# ---> block head <---
# ---> block body <---
ori $17, $18, 15
subu $17, $17, $18
addu $17, $18, $17
subu $18, $17, $18
# ---> block tail <---
# ---> endpc 3610 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 16
subu $0, $19, $0
addu $0, $19, $0
addu $19, $0, $19
# ---> block tail <---
# ---> endpc 3620 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
subu $0, $20, $0
addu $0, $20, $0
subu $20, $0, $20
# ---> block tail <---
# ---> endpc 3630 <---

# ---> block head <---
# ---> block body <---
ori $21, $21, 22
subu $21, $10, $21
addu $21, $21, $9
lw $0, 20563($21)
# ---> block tail <---
# ---> endpc 3640 <---

# ---> block head <---
# ---> block body <---
ori $22, $22, 30
subu $22, $22, $12
addu $22, $22, $11
lw $13, 31557($22)
# ---> block tail <---
# ---> endpc 3650 <---

# ---> block head <---
# ---> block body <---
ori $23, $23, 18
subu $23, $23, $14
addu $23, $23, $13
lw $15, -26010($23)
# ---> block tail <---
# ---> endpc 3660 <---

# ---> block head <---
# ---> block body <---
ori $24, $25, 22
subu $25, $25, $24
addu $24, $25, $24
lw $25, 19($24)
# ---> block tail <---
# ---> endpc 3670 <---

# ---> block head <---
# ---> block body <---
ori $26, $27, 16
subu $26, $27, $26
addu $26, $26, $27
lw $27, -8660($26)
# ---> block tail <---
# ---> endpc 3680 <---

# ---> block head <---
# ---> block body <---
ori $28, $29, 2
subu $29, $29, $28
addu $28, $29, $28
lw $29, 67($28)
# ---> block tail <---
# ---> endpc 3690 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 1
subu $0, $30, $0
addu $0, $30, $0
lw $30, 12($0)
# ---> block tail <---
# ---> endpc 36a0 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 2
subu $0, $0, $1
addu $0, $0, $1
lw $1, 76($0)
# ---> block tail <---
# ---> endpc 36b0 <---

# ---> block head <---
ori $22, $0, 50526
# ---> block body <---
ori $2, $2, 8
subu $2, $2, $20
addu $2, $2, $19
beq $22, $2, TAG_BEQ_17
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_17:
# ---> block tail <---
ori $2, $0, 24272
ori $22, $0, 16917
# ---> endpc 36d4 <---

# ---> block head <---
ori $30, $0, 26029
# ---> block body <---
ori $3, $3, 8
subu $3, $28, $3
addu $3, $27, $3
beq $3, $30, TAG_BEQ_19
ori $2, $0, 1
ori $2, $0, 1
TAG_BEQ_19:
# ---> block tail <---
# ---> endpc 36f0 <---

# ---> block head <---
lui $14, 65535
ori $14, $14, 60915
# ---> block body <---
ori $4, $4, 10
subu $4, $4, $12
addu $4, $11, $4
beq $14, $4, TAG_BEQ_22
ori $15, $0, 1
ori $15, $0, 1
TAG_BEQ_22:
# ---> block tail <---
# ---> endpc 3710 <---

# ---> block head <---
lui $16, 65535
ori $16, $16, 64791
# ---> block body <---
ori $5, $6, 23
subu $5, $5, $6
addu $5, $6, $5
beq $5, $16, TAG_BEQ_25
ori $17, $0, 1
ori $17, $0, 1
TAG_BEQ_25:
# ---> block tail <---
# ---> endpc 3730 <---

# ---> block head <---
ori $18, $0, 711
# ---> block body <---
ori $7, $8, 25
subu $8, $7, $8
addu $7, $8, $7
beq $7, $18, TAG_BEQ_27
ori $19, $0, 1
ori $19, $0, 1
TAG_BEQ_27:
# ---> block tail <---
# ---> endpc 374c <---

# ---> block head <---
ori $0, $0, 0
ori $21, $0, 2666
# ---> block body <---
ori $10, $9, 8
subu $10, $10, $9
addu $10, $9, $10
beq $21, $10, TAG_BEQ_30
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_30:
# ---> block tail <---
# ---> endpc 376c <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 8
subu $0, $0, $11
addu $0, $11, $0
beq $0, $11, TAG_BEQ_31
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_31:
# ---> block tail <---
# ---> endpc 3784 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
subu $0, $12, $0
addu $0, $0, $12
beq $12, $0, TAG_BEQ_32
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_32:
# ---> block tail <---
# ---> endpc 379c <---

# ---> block head <---
# ---> block body <---
ori $13, $13, 23
subu $13, $13, $23
addu $13, $22, $13
ori $24, $13, 35400
# ---> block tail <---
# ---> endpc 37ac <---

# ---> block head <---
# ---> block body <---
ori $14, $14, 7
subu $14, $14, $25
addu $14, $14, $24
ori $26, $14, 193
# ---> block tail <---
# ---> endpc 37bc <---

# ---> block head <---
# ---> block body <---
ori $15, $15, 16
subu $15, $15, $27
addu $15, $15, $26
ori $28, $15, 44331
# ---> block tail <---
# ---> endpc 37cc <---

# ---> block head <---
# ---> block body <---
ori $17, $16, 14
subu $17, $16, $17
addu $16, $16, $17
ori $17, $16, 38516
# ---> block tail <---
# ---> endpc 37dc <---

# ---> block head <---
# ---> block body <---
ori $18, $19, 8
subu $19, $19, $18
addu $18, $19, $18
ori $19, $18, 16276
# ---> block tail <---
# ---> endpc 37ec <---

# ---> block head <---
# ---> block body <---
ori $20, $21, 14
subu $21, $20, $21
addu $21, $21, $20
ori $20, $21, 26759
# ---> block tail <---
# ---> endpc 37fc <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 16
subu $0, $0, $22
addu $0, $22, $0
ori $22, $0, 41282
# ---> block tail <---
ori $22, $0, 3788
# ---> endpc 3810 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 16
subu $0, $23, $0
addu $0, $0, $23
ori $23, $0, 60003
# ---> block tail <---
ori $23, $0, 2285
# ---> endpc 3824 <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 140($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 144($0)
# ---> block body <---
ori $24, $24, 28
addu $24, $24, $18
lw $24, 4568($24)
sw $1, 1880($24)
sw $24, 144($1)
# ---> block tail <---
lui $19, 65535
ori $19, $19, 48266
lui $20, 65535
ori $20, $20, 51899
# ---> endpc 3860 <---

# ---> block head <---
ori $0, $0, 0
lui $19, 43707
ori $19, $19, 52445
sw $19, 88($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 80($0)
# ---> block body <---
ori $25, $25, 12
subu $25, $25, $18
lw $25, -11882($25)
sw $1, -5395($25)
sw $25, 80($1)
# ---> block tail <---
lui $19, 65535
ori $19, $19, 48139
ori $20, $0, 26833
# ---> endpc 389c <---

# ---> block head <---
lui $5, 43707
ori $5, $5, 52445
sw $5, 96($0)
# ---> block body <---
ori $26, $26, 19
addu $26, $26, $3
lw $26, -4932($26)
sw $26, 4765($4)
sw $4, 6730($26)
# ---> block tail <---
ori $5, $0, 18799
# ---> endpc 38c0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
ori $28, $27, 16
subu $28, $28, $27
lw $27, 56($28)
sw $28, 6750($27)
sw $27, 128($28)
# ---> block tail <---
# ---> endpc 38e0 <---

# ---> block head <---
ori $25, $0, 4818
lui $27, 43707
ori $27, $27, 52445
sw $27, 116($0)
# ---> block body <---
ori $29, $30, 29
addu $30, $25, $29
lw $29, -30791($30)
sw $29, 6750($26)
sw $26, 6778($29)
# ---> block tail <---
ori $27, $0, 14079
# ---> endpc 3908 <---

# ---> block head <---
# ---> block body <---
ori $1, $2, 5
subu $2, $1, $2
lw $1, 68($2)
sw $1, 140($2)
sw $2, 6778($1)
# ---> block tail <---
# ---> endpc 391c <---

# ---> block head <---
lui $5, 43707
ori $5, $5, 52445
sw $5, 80($0)
# ---> block body <---
ori $0, $0, 1
addu $0, $0, $3
lw $0, 52($0)
sw $0, 116($0)
sw $0, 80($0)
# ---> block tail <---
ori $5, $0, 12174
# ---> endpc 3940 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $15, 43707
ori $15, $15, 52445
sw $15, 116($0)
# ---> block body <---
ori $0, $0, 1
subu $0, $4, $0
lw $0, 36($0)
sw $0, 4737($4)
sw $4, 96($0)
# ---> block tail <---
ori $15, $0, 2573
# ---> endpc 396c <---

# ---> block head <---
# ---> block body <---
ori $16, $16, 19
addu $16, $16, $17
lw $16, 930($16)
addu $16, $18, $16
# ---> block tail <---
# ---> endpc 397c <---

# ---> block head <---
# ---> block body <---
ori $17, $17, 3
subu $17, $17, $16
lw $17, 3626($17)
subu $17, $0, $17
# ---> block tail <---
# ---> endpc 398c <---

# ---> block head <---
# ---> block body <---
ori $18, $18, 9
addu $18, $18, $19
lw $18, 17464($18)
addu $18, $20, $18
# ---> block tail <---
# ---> endpc 399c <---

# ---> block head <---
# ---> block body <---
ori $19, $20, 2
subu $19, $19, $20
lw $20, 2($19)
subu $20, $20, $19
# ---> block tail <---
# ---> endpc 39ac <---

# ---> block head <---
# ---> block body <---
ori $22, $21, 26
addu $21, $22, $21
lw $22, -5300($21)
addu $21, $22, $21
# ---> block tail <---
# ---> endpc 39bc <---

# ---> block head <---
# ---> block body <---
ori $23, $24, 22
subu $24, $23, $24
lw $23, 70($24)
subu $23, $23, $24
# ---> block tail <---
# ---> endpc 39cc <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 8
addu $0, $0, $25
lw $0, 44($0)
addu $25, $0, $25
# ---> block tail <---
# ---> endpc 39dc <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
subu $0, $26, $0
lw $0, 64($0)
subu $26, $0, $26
# ---> block tail <---
# ---> endpc 39ec <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
ori $27, $27, 19
addu $27, $27, $20
lw $27, -6475($27)
lw $21, 6654($27)
# ---> block tail <---
# ---> endpc 3a00 <---

# ---> block head <---
# ---> block body <---
ori $28, $28, 4
subu $28, $28, $21
lw $28, 26271($28)
lw $22, 6678($28)
# ---> block tail <---
# ---> endpc 3a10 <---

# ---> block head <---
# ---> block body <---
ori $29, $29, 23
addu $29, $29, $22
lw $29, 18245($29)
lw $23, 6654($29)
# ---> block tail <---
# ---> endpc 3a20 <---

# ---> block head <---
# ---> block body <---
ori $30, $1, 12
subu $1, $30, $1
lw $30, 64($1)
lw $1, 6646($30)
# ---> block tail <---
# ---> endpc 3a30 <---

# ---> block head <---
# ---> block body <---
ori $3, $2, 20
addu $3, $3, $2
lw $2, 48($3)
lw $3, 6658($2)
# ---> block tail <---
# ---> endpc 3a40 <---

# ---> block head <---
# ---> block body <---
ori $4, $5, 24
subu $5, $4, $5
lw $4, 56($5)
lw $5, 6654($4)
# ---> block tail <---
# ---> endpc 3a50 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 8
addu $0, $6, $0
lw $0, 32($0)
lw $6, 60($0)
# ---> block tail <---
# ---> endpc 3a60 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
subu $0, $7, $0
lw $0, 48($0)
lw $7, 40($0)
# ---> block tail <---
# ---> endpc 3a70 <---

# ---> block head <---
ori $0, $0, 0
ori $2, $0, 32521
# ---> block body <---
ori $8, $8, 2
addu $8, $8, $29
lw $8, 6632($8)
beq $8, $2, TAG_BEQ_35
ori $3, $0, 1
ori $3, $0, 1
TAG_BEQ_35:
# ---> block tail <---
# ---> endpc 3a90 <---

# ---> block head <---
ori $8, $0, 7549
# ---> block body <---
ori $9, $9, 6
subu $9, $9, $6
lw $9, -30553($9)
beq $9, $8, TAG_BEQ_37
ori $10, $0, 1
ori $10, $0, 1
TAG_BEQ_37:
# ---> block tail <---
# ---> endpc 3aac <---

# ---> block head <---
ori $15, $0, 3436
# ---> block body <---
ori $10, $10, 2
addu $10, $10, $13
lw $10, 6694($10)
beq $15, $10, TAG_BEQ_39
ori $16, $0, 1
ori $16, $0, 1
TAG_BEQ_39:
# ---> block tail <---
# ---> endpc 3ac8 <---

# ---> block head <---
ori $16, $0, 32521
# ---> block body <---
ori $11, $12, 10
subu $12, $11, $12
lw $11, 0($12)
beq $16, $11, TAG_BEQ_41
ori $17, $0, 1
ori $17, $0, 1
TAG_BEQ_41:
# ---> block tail <---
# ---> endpc 3ae4 <---

# ---> block head <---
ori $19, $0, 3436
# ---> block body <---
ori $14, $13, 12
addu $14, $14, $13
lw $13, 13322($14)
beq $13, $19, TAG_BEQ_43
ori $20, $0, 1
ori $20, $0, 1
TAG_BEQ_43:
# ---> block tail <---
# ---> endpc 3b00 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
ori $15, $16, 10
subu $16, $15, $16
lw $15, 74($16)
beq $15, $21, TAG_BEQ_46
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_46:
# ---> block tail <---
# ---> endpc 3b20 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 2
addu $0, $0, $17
lw $0, 44($0)
beq $0, $17, TAG_BEQ_47
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_47:
# ---> block tail <---
# ---> endpc 3b38 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
subu $0, $18, $0
lw $0, 28($0)
beq $0, $18, TAG_BEQ_48
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_48:
# ---> block tail <---
# ---> endpc 3b50 <---

# ---> block head <---
# ---> block body <---
ori $19, $19, 13
addu $19, $19, $22
lw $19, -3434($19)
ori $23, $19, 20771
# ---> block tail <---
# ---> endpc 3b60 <---

# ---> block head <---
# ---> block body <---
ori $20, $20, 8
subu $20, $20, $23
lw $20, -3098($20)
ori $24, $20, 19092
# ---> block tail <---
# ---> endpc 3b70 <---

# ---> block head <---
# ---> block body <---
ori $21, $21, 14
addu $21, $21, $24
lw $21, -25079($21)
ori $25, $21, 44924
# ---> block tail <---
# ---> endpc 3b80 <---

# ---> block head <---
# ---> block body <---
ori $22, $23, 9
subu $22, $22, $23
lw $23, 20($22)
ori $22, $23, 15575
# ---> block tail <---
# ---> endpc 3b90 <---

# ---> block head <---
# ---> block body <---
ori $25, $24, 18
addu $24, $25, $24
lw $25, 2262($24)
ori $24, $25, 63313
# ---> block tail <---
ori $24, $0, 21521
# ---> endpc 3ba4 <---

# ---> block head <---
# ---> block body <---
ori $27, $26, 9
subu $26, $27, $26
lw $27, 59($26)
ori $26, $27, 18399
# ---> block tail <---
# ---> endpc 3bb4 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 1
addu $0, $28, $0
lw $0, 28($0)
ori $28, $0, 43081
# ---> block tail <---
ori $28, $0, 30169
# ---> endpc 3bc8 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 2
subu $0, $0, $29
lw $0, 60($0)
ori $29, $0, 7782
# ---> block tail <---
# ---> endpc 3bd8 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
ori $30, $30, 14
addu $30, $30, $29
lui $30, 33905
sw $30, 114($1)
# ---> block tail <---
ori $30, $0, 15618
# ---> endpc 3bf4 <---

# ---> block head <---
lui $9, 43707
ori $9, $9, 52445
sw $9, 148($0)
# ---> block body <---
ori $1, $1, 22
subu $1, $1, $8
lui $1, 38294
sw $1, 147($3)
# ---> block tail <---
ori $1, $0, 11768
ori $9, $0, 6643
# ---> endpc 3c18 <---

# ---> block head <---
lui $17, 43707
ori $17, $17, 52445
sw $17, 116($0)
# ---> block body <---
ori $2, $2, 16
addu $2, $16, $2
lui $2, 31323
sw $2, -11652($1)
# ---> block tail <---
lui $2, 65535
ori $2, $2, 38171
ori $17, $0, 16774
# ---> endpc 3c40 <---

# ---> block head <---
lui $25, 43707
ori $25, $25, 52445
sw $25, 84($0)
# ---> block body <---
ori $4, $3, 2
subu $4, $3, $4
lui $4, 22861
sw $4, -21437($24)
# ---> block tail <---
lui $4, 65535
ori $4, $4, 42980
lui $25, 65535
ori $25, $25, 52513
# ---> endpc 3c6c <---

# ---> block head <---
lui $8, 43707
ori $8, $8, 52445
sw $8, 136($0)
# ---> block body <---
ori $5, $6, 11
addu $5, $6, $5
lui $5, 23343
sw $5, 17582($7)
# ---> block tail <---
lui $5, 65535
ori $5, $5, 64835
ori $8, $0, 18263
# ---> endpc 3c94 <---

# ---> block head <---
ori $0, $0, 0
lui $18, 43707
ori $18, $18, 52445
sw $18, 104($0)
# ---> block body <---
ori $7, $8, 31
subu $8, $7, $8
lui $8, 23609
sw $8, -16670($17)
# ---> block tail <---
ori $8, $0, 6516
lui $18, 65535
ori $18, $18, 38726
# ---> endpc 3cc0 <---

# ---> block head <---
lui $4, 43707
ori $4, $4, 52445
sw $4, 132($0)
lui $5, 43707
ori $5, $5, 52445
sw $5, 120($0)
# ---> block body <---
ori $0, $0, 16
addu $0, $9, $0
lui $0, 41200
sw $9, 132($0)
sw $0, -6523($9)
# ---> block tail <---
ori $4, $0, 4741
lui $5, 65535
ori $5, $5, 44362
# ---> endpc 3cf8 <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 136($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 112($0)
# ---> block body <---
ori $0, $0, 4
subu $0, $0, $10
lui $0, 1440
sw $0, 136($0)
sw $0, 112($0)
# ---> block tail <---
lui $19, 65535
ori $19, $19, 53800
lui $20, 65535
ori $20, $20, 50131
# ---> endpc 3d34 <---

# ---> block head <---
# ---> block body <---
ori $11, $11, 13
addu $11, $11, $10
lui $11, 16423
addu $11, $21, $11
# ---> block tail <---
lui $11, 65535
ori $11, $11, 38103
# ---> endpc 3d4c <---

# ---> block head <---
# ---> block body <---
ori $12, $12, 4
subu $12, $12, $21
lui $12, 11869
subu $12, $12, $22
# ---> block tail <---
lui $12, 65535
ori $12, $12, 45324
# ---> endpc 3d64 <---

# ---> block head <---
# ---> block body <---
ori $13, $13, 5
addu $13, $13, $22
lui $13, 17524
addu $13, $13, $23
# ---> block tail <---
ori $13, $0, 30632
# ---> endpc 3d78 <---

# ---> block head <---
# ---> block body <---
ori $15, $14, 8
subu $15, $15, $14
lui $15, 62822
subu $14, $14, $15
# ---> block tail <---
ori $14, $0, 25179
lui $15, 65535
ori $15, $15, 64350
# ---> endpc 3d94 <---

# ---> block head <---
# ---> block body <---
ori $16, $17, 20
addu $17, $16, $17
lui $17, 931
addu $17, $16, $17
# ---> block tail <---
lui $17, 65535
ori $17, $17, 47722
# ---> endpc 3dac <---

# ---> block head <---
# ---> block body <---
ori $18, $19, 2
subu $19, $18, $19
lui $19, 20653
subu $18, $19, $18
# ---> block tail <---
lui $18, 65535
ori $18, $18, 52551
ori $19, $0, 30201
# ---> endpc 3dc8 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 1
addu $0, $0, $20
lui $0, 59813
addu $20, $20, $0
# ---> block tail <---
# ---> endpc 3dd8 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
subu $0, $21, $0
lui $0, 44097
subu $21, $21, $0
# ---> block tail <---
# ---> endpc 3de8 <---

# ---> block head <---
lui $2, 32957
ori $2, $2, 0
# ---> block body <---
ori $22, $22, 16
addu $22, $22, $29
lui $22, 32957
beq $2, $22, TAG_BEQ_51
ori $3, $0, 1
ori $3, $0, 1
TAG_BEQ_51:
# ---> block tail <---
ori $2, $0, 9614
lui $22, 65535
ori $22, $22, 56281
# ---> endpc 3e14 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
ori $23, $23, 26
subu $23, $9, $23
lui $23, 1426
beq $23, $10, TAG_BEQ_54
ori $11, $0, 1
ori $11, $0, 1
TAG_BEQ_54:
# ---> block tail <---
lui $23, 65535
ori $23, $23, 52574
# ---> endpc 3e3c <---

# ---> block head <---
lui $19, 48151
ori $19, $19, 0
# ---> block body <---
ori $24, $24, 9
addu $24, $17, $24
lui $24, 48151
beq $19, $24, TAG_BEQ_57
ori $20, $0, 1
ori $20, $0, 1
TAG_BEQ_57:
# ---> block tail <---
ori $19, $0, 23143
ori $24, $0, 3767
# ---> endpc 3e64 <---

# ---> block head <---
lui $22, 9245
ori $22, $22, 0
# ---> block body <---
ori $25, $26, 8
subu $25, $25, $26
lui $25, 9245
beq $25, $22, TAG_BEQ_60
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_60:
# ---> block tail <---
ori $22, $0, 23164
ori $25, $0, 32517
# ---> endpc 3e8c <---

# ---> block head <---
# ---> block body <---
ori $27, $28, 29
addu $28, $28, $27
lui $28, 63345
beq $0, $28, TAG_BEQ_61
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_61:
# ---> block tail <---
ori $28, $0, 24275
# ---> endpc 3ea8 <---

# ---> block head <---
# ---> block body <---
ori $29, $30, 16
subu $30, $29, $30
lui $30, 13260
beq $29, $0, TAG_BEQ_62
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_62:
# ---> block tail <---
lui $30, 65535
ori $30, $30, 38700
# ---> endpc 3ec8 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 16
addu $0, $1, $0
lui $0, 8274
beq $0, $1, TAG_BEQ_63
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_63:
# ---> block tail <---
# ---> endpc 3ee0 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 1
subu $0, $0, $2
lui $0, 21677
beq $2, $0, TAG_BEQ_64
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_64:
# ---> block tail <---
# ---> endpc 3ef8 <---

# ---> block head <---
# ---> block body <---
ori $3, $3, 9
addu $3, $23, $3
lui $3, 61562
ori $24, $3, 37748
# ---> block tail <---
ori $3, $0, 8261
ori $24, $0, 25115
# ---> endpc 3f10 <---

# ---> block head <---
# ---> block body <---
ori $4, $4, 9
subu $4, $24, $4
lui $4, 60085
ori $25, $4, 23258
# ---> block tail <---
ori $4, $0, 25692
lui $25, 65535
ori $25, $25, 61558
# ---> endpc 3f2c <---

# ---> block head <---
# ---> block body <---
ori $5, $5, 14
addu $5, $25, $5
lui $5, 33993
ori $26, $5, 49556
# ---> block tail <---
ori $5, $0, 21648
ori $26, $0, 25198
# ---> endpc 3f44 <---

# ---> block head <---
# ---> block body <---
ori $7, $6, 16
subu $6, $6, $7
lui $6, 18634
ori $7, $6, 49373
# ---> block tail <---
lui $6, 65535
ori $6, $6, 47158
lui $7, 65535
ori $7, $7, 39155
# ---> endpc 3f64 <---

# ---> block head <---
# ---> block body <---
ori $8, $9, 9
addu $9, $9, $8
lui $9, 15963
ori $8, $9, 11343
# ---> block tail <---
ori $8, $0, 10992
ori $9, $0, 16624
# ---> endpc 3f7c <---

# ---> block head <---
# ---> block body <---
ori $10, $11, 3
subu $11, $10, $11
lui $11, 14616
ori $11, $10, 51509
# ---> block tail <---
ori $11, $0, 24469
# ---> endpc 3f90 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 1
addu $0, $12, $0
lui $0, 45545
ori $12, $0, 42127
# ---> block tail <---
ori $12, $0, 1658
# ---> endpc 3fa4 <---

# ---> block head <---
# ---> block body <---
ori $0, $0, 4
subu $0, $0, $13
lui $0, 39542
ori $13, $0, 34591
# ---> block tail <---
ori $13, $0, 25659
# ---> endpc 3fb8 <---

ori $v0, $zero, 10
syscall
