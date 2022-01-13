# ---> init memory <---
lui $1, 65535
ori $1, $1, 64588
sw $1, 0($0)
lui $1, 65535
ori $1, $1, 39086
sw $1, 4($0)
lui $1, 65535
ori $1, $1, 64371
sw $1, 8($0)
lui $1, 65535
ori $1, $1, 58705
sw $1, 12($0)
lui $1, 65535
ori $1, $1, 46513
sw $1, 16($0)
lui $1, 65535
ori $1, $1, 47194
sw $1, 20($0)
lui $1, 65535
ori $1, $1, 41582
sw $1, 24($0)
lui $1, 65535
ori $1, $1, 51167
sw $1, 28($0)
ori $1, $0, 919
sw $1, 32($0)
lui $1, 65535
ori $1, $1, 37783
sw $1, 36($0)
lui $1, 65535
ori $1, $1, 63581
sw $1, 40($0)
lui $1, 65535
ori $1, $1, 59719
sw $1, 44($0)
ori $1, $0, 1161
sw $1, 48($0)
lui $1, 65535
ori $1, $1, 47697
sw $1, 52($0)
ori $1, $0, 1956
sw $1, 56($0)
ori $1, $0, 4574
sw $1, 60($0)
lui $1, 65535
ori $1, $1, 62254
sw $1, 64($0)
lui $1, 65535
ori $1, $1, 36298
sw $1, 68($0)
ori $1, $0, 9036
sw $1, 72($0)

# ---> init register <---
ori $1, $0, 1851
ori $2, $0, 9877
lui $3, 65535
ori $3, $3, 58163
lui $4, 65535
ori $4, $4, 36418
ori $5, $0, 22419
ori $6, $0, 3844
lui $7, 65535
ori $7, $7, 60818
ori $8, $0, 31734
ori $9, $0, 25382
ori $10, $0, 12410
ori $11, $0, 28461
ori $12, $0, 25399
ori $13, $0, 22120
lui $14, 65535
ori $14, $14, 61461
lui $15, 65535
ori $15, $15, 38576
ori $16, $0, 13564
ori $17, $0, 29277
lui $18, 65535
ori $18, $18, 56735
ori $19, $0, 7653
lui $20, 65535
ori $20, $20, 48927
lui $21, 65535
ori $21, $21, 41024
ori $22, $0, 18004
ori $23, $0, 32371
ori $24, $0, 22481
lui $25, 65535
ori $25, $25, 59912
ori $26, $0, 21509
ori $27, $0, 15812
lui $28, 65535
ori $28, $28, 46905
ori $29, $0, 22367
lui $30, 65535
ori $30, $30, 48204
ori $31, $0, 13117

# ---> start at 3174 <---

# ---> block head <---
lui $25, 436
ori $25, $25, 0
# ---> block body <---
lw $6, 4738($7)
ori $7, $6, 14
lui $7, 436
beq $25, $7, TAG_BEQ_2
ori $26, $0, 1
ori $26, $0, 1
TAG_BEQ_2:
# ---> block tail <---
ori $7, $0, 3257
lui $25, 65535
ori $25, $25, 63043
# ---> endpc 31a0 <---

# ---> block head <---
# ---> block body <---
lw $0, 48($0)
ori $0, $0, 2
lui $0, 23387
beq $0, $8, TAG_BEQ_3
ori $26, $0, 1
ori $26, $0, 1
TAG_BEQ_3:
# ---> block tail <---
# ---> endpc 31b8 <---

# ---> block head <---
# ---> block body <---
lw $0, 68($0)
ori $0, $0, 1
lui $0, 43680
beq $0, $9, TAG_BEQ_4
ori $26, $0, 1
ori $26, $0, 1
TAG_BEQ_4:
# ---> block tail <---
# ---> endpc 31d0 <---

# ---> block head <---
# ---> block body <---
lw $10, -12374($10)
ori $10, $10, 13
lui $10, 2991
ori $26, $10, 10798
# ---> block tail <---
ori $10, $0, 2254
ori $26, $0, 28718
# ---> endpc 31e8 <---

# ---> block head <---
# ---> block body <---
lw $11, -28433($11)
ori $11, $11, 11
lui $11, 38461
ori $26, $11, 14853
# ---> block tail <---
lui $11, 65535
ori $11, $11, 36488
ori $26, $0, 2602
# ---> endpc 3204 <---

# ---> block head <---
# ---> block body <---
lw $12, -25395($12)
ori $12, $12, 3
lui $12, 2997
ori $26, $12, 36460
# ---> block tail <---
ori $12, $0, 10761
lui $26, 65535
ori $26, $26, 65446
# ---> endpc 3220 <---

# ---> block head <---
# ---> block body <---
lw $13, 4107($14)
ori $14, $13, 31
lui $14, 62466
ori $13, $14, 2134
# ---> block tail <---
ori $13, $0, 15385
ori $14, $0, 27217
# ---> endpc 3238 <---

# ---> block head <---
# ---> block body <---
lw $16, 26992($15)
ori $16, $15, 20
lui $16, 51577
ori $15, $16, 6214
# ---> block tail <---
ori $15, $0, 20312
lui $16, 65535
ori $16, $16, 46551
# ---> endpc 3254 <---

# ---> block head <---
# ---> block body <---
lw $18, -29269($17)
ori $17, $18, 21
lui $17, 46569
ori $18, $17, 56582
# ---> block tail <---
ori $17, $0, 17737
lui $18, 65535
ori $18, $18, 63228
# ---> endpc 3270 <---

# ---> block head <---
# ---> block body <---
lw $0, 12($0)
ori $0, $0, 2
lui $0, 49381
ori $19, $0, 39053
# ---> block tail <---
lui $19, 65535
ori $19, $19, 47467
# ---> endpc 3288 <---

# ---> block head <---
# ---> block body <---
lw $0, 4($0)
ori $0, $0, 8
lui $0, 56548
ori $20, $0, 61302
# ---> block tail <---
ori $20, $0, 4459
# ---> endpc 329c <---

# ---> block head <---
lui $12, 43707
ori $12, $12, 52445
sw $12, 132($0)
lui $13, 43707
ori $13, $13, 52445
sw $13, 148($0)
# ---> block body <---
lw $21, 24584($21)
ori $21, $21, 7
ori $21, $21, 56
sw $21, 29180($11)
sw $11, -8939($21)
# ---> block tail <---
ori $12, $0, 17121
lui $13, 65535
ori $13, $13, 46234
# ---> endpc 32d4 <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 108($0)
lui $3, 43707
ori $3, $3, 52445
sw $3, 152($0)
# ---> block body <---
lw $22, -17932($22)
ori $22, $22, 83
ori $22, $22, 47
sw $30, -8979($22)
sw $22, 17484($30)
# ---> block tail <---
ori $2, $0, 1519
lui $3, 65535
ori $3, $3, 64066
# ---> endpc 330c <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 84($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 88($0)
# ---> block body <---
lw $23, -32299($23)
ori $23, $23, 109
ori $23, $23, 25
sw $23, 2392($18)
sw $18, -8997($23)
# ---> block tail <---
lui $19, 65535
ori $19, $19, 32788
lui $20, 65535
ori $20, $20, 38177
# ---> endpc 3348 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $8, 43707
ori $8, $8, 52445
sw $8, 124($0)
# ---> block body <---
lw $25, -22441($24)
ori $25, $24, 18
ori $25, $24, 18
sw $7, -22359($25)
sw $25, -3109($7)
# ---> block tail <---
lui $8, 65535
ori $8, $8, 41728
# ---> endpc 3378 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $21, 43707
ori $21, $21, 52445
sw $21, 124($0)
# ---> block body <---
lw $26, -15740($27)
ori $27, $26, 63
ori $26, $27, 62
sw $26, -8999($27)
sw $27, -8963($26)
# ---> block tail <---
lui $21, 65535
ori $21, $21, 47346
# ---> endpc 33ac <---

# ---> block head <---
ori $0, $0, 0
lui $5, 43707
ori $5, $5, 52445
sw $5, 116($0)
# ---> block body <---
lw $28, -22295($29)
ori $29, $28, 36
ori $28, $29, 57
sw $28, -8960($29)
sw $29, -8969($28)
# ---> block tail <---
lui $5, 65535
ori $5, $5, 59227
# ---> endpc 33d8 <---

# ---> block head <---
lui $16, 43707
ori $16, $16, 52445
sw $16, 128($0)
lui $17, 43707
ori $17, $17, 52445
sw $17, 104($0)
# ---> block body <---
lw $0, 36($0)
ori $0, $0, 1
ori $0, $0, 2
sw $0, 17460($30)
sw $30, 104($0)
# ---> block tail <---
lui $16, 65535
ori $16, $16, 40109
lui $17, 65535
ori $17, $17, 47205
# ---> endpc 3414 <---

# ---> block head <---
lui $29, 43707
ori $29, $29, 52445
sw $29, 144($0)
lui $30, 43707
ori $30, $30, 52445
sw $30, 132($0)
# ---> block body <---
lw $0, 68($0)
ori $0, $0, 4
ori $0, $0, 4
sw $0, -1707($1)
sw $1, 132($0)
# ---> block tail <---
ori $29, $0, 29779
ori $30, $0, 5217
# ---> endpc 3448 <---

# ---> block head <---
# ---> block body <---
lw $13, 19358($13)
ori $13, $13, 5
ori $13, $13, 16
addu $13, $13, $2
# ---> block tail <---
# ---> endpc 3458 <---

# ---> block head <---
# ---> block body <---
lw $14, -27153($14)
ori $14, $14, 16
ori $14, $14, 29
subu $14, $14, $2
# ---> block tail <---
# ---> endpc 3468 <---

# ---> block head <---
# ---> block body <---
lw $15, -20260($15)
ori $15, $15, 4
ori $15, $15, 22
addu $15, $2, $15
# ---> block tail <---
# ---> endpc 3478 <---

# ---> block head <---
# ---> block body <---
lw $17, 25459($16)
ori $16, $17, 10
ori $16, $17, 25
subu $16, $16, $17
# ---> block tail <---
# ---> endpc 3488 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $19, 2352($18)
ori $19, $18, 18
ori $18, $19, 7
addu $19, $19, $18
# ---> block tail <---
# ---> endpc 349c <---

# ---> block head <---
# ---> block body <---
lw $20, 18250($21)
ori $20, $21, 1
ori $20, $21, 10
subu $20, $21, $20
# ---> block tail <---
# ---> endpc 34ac <---

# ---> block head <---
# ---> block body <---
lw $0, 60($0)
ori $0, $0, 16
ori $0, $0, 1
addu $22, $22, $0
# ---> block tail <---
# ---> endpc 34bc <---

# ---> block head <---
# ---> block body <---
lw $0, 24($0)
ori $0, $0, 4
ori $0, $0, 8
subu $23, $23, $0
# ---> block tail <---
# ---> endpc 34cc <---

# ---> block head <---
# ---> block body <---
lw $24, -22409($24)
ori $24, $24, 99
ori $24, $24, 113
lw $2, -9031($24)
# ---> block tail <---
# ---> endpc 34dc <---

# ---> block head <---
# ---> block body <---
lw $25, -22411($25)
ori $25, $25, 87
ori $25, $25, 18
lw $2, -9039($25)
# ---> block tail <---
# ---> endpc 34ec <---

# ---> block head <---
# ---> block body <---
lw $26, -9015($26)
ori $26, $26, 12
ori $26, $26, 78
lw $2, -9006($26)
# ---> block tail <---
# ---> endpc 34fc <---

# ---> block head <---
# ---> block body <---
lw $27, -9013($28)
ori $28, $27, 124
ori $27, $28, 87
lw $28, -9011($27)
# ---> block tail <---
# ---> endpc 350c <---

# ---> block head <---
# ---> block body <---
lw $29, -5145($30)
ori $30, $29, 11
ori $29, $30, 14
lw $30, -8999($29)
# ---> block tail <---
# ---> endpc 351c <---

# ---> block head <---
# ---> block body <---
lw $1, -847($2)
ori $2, $1, 17
ori $1, $2, 32
lw $2, -9065($1)
# ---> block tail <---
# ---> endpc 352c <---

# ---> block head <---
# ---> block body <---
lw $0, 44($0)
ori $0, $0, 8
ori $0, $0, 16
lw $3, 76($0)
# ---> block tail <---
# ---> endpc 353c <---

# ---> block head <---
# ---> block body <---
lw $0, 48($0)
ori $0, $0, 4
ori $0, $0, 4
lw $4, 68($0)
# ---> block tail <---
# ---> endpc 354c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lw $5, 6337($5)
ori $5, $5, 17
ori $5, $5, 27
beq $5, $7, TAG_BEQ_7
ori $8, $0, 1
ori $8, $0, 1
TAG_BEQ_7:
# ---> block tail <---
# ---> endpc 356c <---

# ---> block head <---
ori $0, $0, 0
ori $12, $0, 1959
# ---> block body <---
lw $6, 18398($6)
ori $6, $6, 2
ori $6, $6, 5
beq $12, $6, TAG_BEQ_10
ori $13, $0, 1
ori $13, $0, 1
TAG_BEQ_10:
# ---> block tail <---
# ---> endpc 358c <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $7, -3233($7)
ori $7, $7, 9
ori $7, $7, 29
beq $15, $7, TAG_BEQ_12
ori $16, $0, 1
ori $16, $0, 1
TAG_BEQ_12:
# ---> block tail <---
# ---> endpc 35a8 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lw $8, -25342($9)
ori $9, $8, 19
ori $9, $8, 6
beq $9, $9, TAG_BEQ_15
ori $18, $0, 1
ori $18, $0, 1
TAG_BEQ_15:
# ---> block tail <---
# ---> endpc 35c8 <---

# ---> block head <---
# ---> block body <---
lw $10, 29120($11)
ori $11, $10, 9
ori $10, $11, 2
beq $10, $0, TAG_BEQ_16
ori $18, $0, 1
ori $18, $0, 1
TAG_BEQ_16:
# ---> block tail <---
# ---> endpc 35e0 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $13, -1935($12)
ori $12, $13, 22
ori $13, $12, 19
beq $13, $13, TAG_BEQ_18
ori $19, $0, 1
ori $19, $0, 1
TAG_BEQ_18:
# ---> block tail <---
# ---> endpc 35fc <---

# ---> block head <---
# ---> block body <---
lw $0, 8($0)
ori $0, $0, 2
ori $0, $0, 8
beq $14, $0, TAG_BEQ_19
ori $19, $0, 1
ori $19, $0, 1
TAG_BEQ_19:
# ---> block tail <---
# ---> endpc 3614 <---

# ---> block head <---
# ---> block body <---
lw $0, 20($0)
ori $0, $0, 1
ori $0, $0, 16
beq $0, $15, TAG_BEQ_20
ori $19, $0, 1
ori $19, $0, 1
TAG_BEQ_20:
# ---> block tail <---
# ---> endpc 362c <---

# ---> block head <---
# ---> block body <---
lw $16, 67($16)
ori $16, $16, 18
ori $16, $16, 28
ori $19, $16, 14124
# ---> block tail <---
# ---> endpc 363c <---

# ---> block head <---
# ---> block body <---
lw $17, -855($17)
ori $17, $17, 3
ori $17, $17, 22
ori $19, $17, 51864
# ---> block tail <---
# ---> endpc 364c <---

# ---> block head <---
# ---> block body <---
lw $18, 3($18)
ori $18, $18, 5
ori $18, $18, 16
ori $19, $18, 495
# ---> block tail <---
# ---> endpc 365c <---

# ---> block head <---
# ---> block body <---
lw $19, 48($20)
ori $20, $19, 23
ori $20, $19, 7
ori $19, $20, 32946
# ---> block tail <---
# ---> endpc 366c <---

# ---> block head <---
# ---> block body <---
lw $22, 18206($21)
ori $22, $21, 26
ori $21, $22, 28
ori $22, $21, 28946
# ---> block tail <---
# ---> endpc 367c <---

# ---> block head <---
# ---> block body <---
lw $24, -9073($23)
ori $23, $24, 20
ori $23, $24, 8
ori $24, $23, 18346
# ---> block tail <---
# ---> endpc 368c <---

# ---> block head <---
# ---> block body <---
lw $0, 28($0)
ori $0, $0, 8
ori $0, $0, 16
ori $25, $0, 60219
# ---> block tail <---
lui $25, 65535
ori $25, $25, 59497
# ---> endpc 36a4 <---

# ---> block head <---
# ---> block body <---
lw $0, 12($0)
ori $0, $0, 4
ori $0, $0, 4
ori $26, $0, 61316
# ---> block tail <---
ori $26, $0, 24843
# ---> endpc 36b8 <---

# ---> block head <---
ori $0, $0, 0
ori $8, $0, 16
lui $9, 43707
ori $9, $9, 52445
sw $9, 124($0)
# ---> block body <---
lui $31, 26760
jal TAG_JAL_5
ori $0, $0, 0
addu $31, $31, $8
TAG_JAL_5:
sw $1, -13920($31)
sw $31, -8981($1)
# ---> block tail <---
ori $9, $0, 26048
# ---> endpc 36e8 <---

# ---> block head <---
ori $7, $0, 16
lui $9, 43707
ori $9, $9, 52445
sw $9, 104($0)
lui $10, 43707
ori $10, $10, 52445
sw $10, 120($0)
# ---> block body <---
lui $31, 44010
jal TAG_JAL_13
ori $0, $0, 0
addu $31, $31, $7
TAG_JAL_13:
sw $8, -13996($31)
sw $31, 104($8)
# ---> block tail <---
lui $9, 65535
ori $9, $9, 64069
lui $10, 65535
ori $10, $10, 48411
# ---> endpc 372c <---

# ---> block head <---
ori $0, $0, 0
ori $25, $0, 16
lui $26, 43707
ori $26, $26, 52445
sw $26, 96($0)
# ---> block body <---
lui $28, 34270
jal TAG_JAL_19
ori $0, $0, 0
addu $31, $31, $25
TAG_JAL_19:
sw $28, -14064($31)
# ---> block tail <---
lui $26, 65535
ori $26, $26, 50456
ori $28, $0, 19171
# ---> endpc 3760 <---

# ---> block head <---
ori $6, $0, 16
lui $7, 43707
ori $7, $7, 52445
sw $7, 96($0)
lui $8, 43707
ori $8, $8, 52445
sw $8, 112($0)
# ---> block body <---
lui $0, 40816
jal TAG_JAL_32
ori $0, $0, 0
addu $31, $31, $6
TAG_JAL_32:
sw $31, 96($0)
sw $0, -14108($31)
# ---> block tail <---
lui $7, 65535
ori $7, $7, 56769
lui $8, 65535
ori $8, $8, 55443
# ---> endpc 37a4 <---

# ---> block head <---
ori $30, $0, 16
lui $2, 43707
ori $2, $2, 52445
sw $2, 116($0)
lui $3, 43707
ori $3, $3, 52445
sw $3, 92($0)
# ---> block body <---
lui $0, 63772
jal TAG_JAL_40
ori $0, $0, 0
addu $31, $31, $30
TAG_JAL_40:
sw $0, 116($0)
sw $0, 92($0)
# ---> block tail <---
lui $2, 65535
ori $2, $2, 43976
lui $3, 65535
ori $3, $3, 39980
# ---> endpc 37e8 <---

# ---> block head <---
ori $5, $0, 16
# ---> block body <---
lui $31, 63586
jal TAG_JAL_42
ori $0, $0, 0
addu $31, $31, $5
TAG_JAL_42:
addu $31, $6, $31
# ---> block tail <---
# ---> endpc 3800 <---

# ---> block head <---
ori $8, $0, 16
# ---> block body <---
lui $31, 64553
jal TAG_JAL_44
ori $0, $0, 0
addu $31, $31, $8
TAG_JAL_44:
subu $31, $6, $31
# ---> block tail <---
# ---> endpc 3818 <---

# ---> block head <---
ori $9, $0, 16
# ---> block body <---
lui $31, 20957
jal TAG_JAL_46
ori $0, $0, 0
addu $31, $31, $9
TAG_JAL_46:
addu $31, $31, $7
# ---> block tail <---
# ---> endpc 3830 <---

# ---> block head <---
ori $11, $0, 16
# ---> block body <---
lui $0, 37139
jal TAG_JAL_48
ori $0, $0, 0
addu $31, $31, $11
TAG_JAL_48:
addu $31, $31, $0
# ---> block tail <---
# ---> endpc 3848 <---

# ---> block head <---
ori $13, $0, 16
# ---> block body <---
lui $31, 21741
jal TAG_JAL_50
ori $0, $0, 0
addu $31, $31, $13
TAG_JAL_50:
lw $14, -14424($31)
# ---> block tail <---
# ---> endpc 3860 <---

# ---> block head <---
ori $15, $0, 16
# ---> block body <---
lui $31, 13706
jal TAG_JAL_52
ori $0, $0, 0
addu $31, $31, $15
TAG_JAL_52:
lw $16, -14444($31)
# ---> block tail <---
# ---> endpc 3878 <---

# ---> block head <---
ori $17, $0, 16
# ---> block body <---
lui $31, 50570
jal TAG_JAL_54
ori $0, $0, 0
addu $31, $31, $17
TAG_JAL_54:
lw $18, -14476($31)
# ---> block tail <---
# ---> endpc 3890 <---

# ---> block head <---
ori $19, $0, 16
# ---> block body <---
lui $31, 13847
jal TAG_JAL_56
ori $0, $0, 0
addu $31, $31, $19
TAG_JAL_56:
lw $11, -14432($31)
# ---> block tail <---
# ---> endpc 38a8 <---

# ---> block head <---
ori $21, $0, 16
# ---> block body <---
lui $12, 7338
jal TAG_JAL_58
ori $0, $0, 0
addu $31, $31, $21
TAG_JAL_58:
lw $12, -14448($31)
# ---> block tail <---
# ---> endpc 38c0 <---

# ---> block head <---
ori $23, $0, 16
# ---> block body <---
lui $0, 37225
jal TAG_JAL_60
ori $0, $0, 0
addu $31, $31, $23
TAG_JAL_60:
lw $31, 4($0)
# ---> block tail <---
# ---> endpc 38d8 <---

# ---> block head <---
ori $25, $0, 16
# ---> block body <---
lui $0, 57837
jal TAG_JAL_62
ori $0, $0, 0
addu $31, $31, $25
TAG_JAL_62:
lw $31, 52($0)
# ---> block tail <---
# ---> endpc 38f0 <---

# ---> block head <---
ori $3, $0, 16
ori $5, $0, 14600
# ---> block body <---
lui $31, 60013
jal TAG_JAL_65
ori $0, $0, 0
addu $31, $31, $3
TAG_JAL_65:
beq $5, $31, TAG_BEQ_23
ori $6, $0, 1
ori $6, $0, 1
TAG_BEQ_23:
# ---> block tail <---
# ---> endpc 3914 <---

# ---> block head <---
ori $0, $0, 0
ori $12, $0, 16
# ---> block body <---
lui $31, 64216
jal TAG_JAL_68
ori $0, $0, 0
addu $31, $31, $12
TAG_JAL_68:
beq $31, $13, TAG_BEQ_26
ori $14, $0, 1
ori $14, $0, 1
TAG_BEQ_26:
# ---> block tail <---
# ---> endpc 3938 <---

# ---> block head <---
ori $20, $0, 16
ori $22, $0, 14672
# ---> block body <---
lui $31, 54629
jal TAG_JAL_71
ori $0, $0, 0
addu $31, $31, $20
TAG_JAL_71:
beq $22, $31, TAG_BEQ_29
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_29:
# ---> block tail <---
# ---> endpc 395c <---

# ---> block head <---
ori $24, $0, 16
# ---> block body <---
lui $0, 60500
jal TAG_JAL_73
ori $0, $0, 0
addu $31, $31, $24
TAG_JAL_73:
beq $0, $31, TAG_BEQ_31
ori $25, $0, 1
ori $25, $0, 1
TAG_BEQ_31:
# ---> block tail <---
# ---> endpc 397c <---

# ---> block head <---
ori $26, $0, 16
# ---> block body <---
lui $0, 28151
jal TAG_JAL_75
ori $0, $0, 0
addu $31, $31, $26
TAG_JAL_75:
beq $0, $31, TAG_BEQ_33
ori $27, $0, 1
ori $27, $0, 1
TAG_BEQ_33:
# ---> block tail <---
# ---> endpc 399c <---

# ---> block head <---
ori $28, $0, 16
# ---> block body <---
lui $31, 15153
jal TAG_JAL_77
ori $0, $0, 0
addu $31, $31, $28
TAG_JAL_77:
ori $29, $31, 10803
# ---> block tail <---
# ---> endpc 39b4 <---

# ---> block head <---
ori $30, $0, 16
# ---> block body <---
lui $24, 49167
jal TAG_JAL_79
ori $0, $0, 0
addu $31, $31, $30
TAG_JAL_79:
ori $24, $31, 41769
# ---> block tail <---
lui $24, 65535
ori $24, $24, 62195
# ---> endpc 39d4 <---

# ---> block head <---
ori $0, $0, 0
ori $8, $0, 16
lui $9, 43707
ori $9, $9, 52445
sw $9, 112($0)
lui $10, 43707
ori $10, $10, 52445
sw $10, 144($0)
# ---> block body <---
lui $31, 20025
jal TAG_JAL_88
subu $31, $7, $31
addu $31, $31, $8
TAG_JAL_88:
sw $31, -8973($1)
sw $1, 23763($31)
# ---> block tail <---
lui $9, 65535
ori $9, $9, 39559
lui $10, 65535
ori $10, $10, 36960
# ---> endpc 3a1c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
ori $13, $0, 16
lui $14, 43707
ori $14, $14, 52445
sw $14, 136($0)
# ---> block body <---
lui $0, 52921
jal TAG_JAL_99
addu $0, $31, $0
addu $31, $31, $13
TAG_JAL_99:
sw $0, -14808($31)
sw $31, 136($0)
# ---> block tail <---
lui $14, 65535
ori $14, $14, 62354
# ---> endpc 3a58 <---

# ---> block head <---
ori $18, $0, 16
# ---> block body <---
lui $31, 42182
jal TAG_JAL_101
subu $31, $17, $31
addu $31, $31, $18
TAG_JAL_101:
addu $31, $19, $31
# ---> block tail <---
# ---> endpc 3a70 <---

# ---> block head <---
ori $22, $0, 16
# ---> block body <---
lui $31, 28878
jal TAG_JAL_103
addu $31, $31, $21
addu $31, $31, $22
TAG_JAL_103:
subu $31, $23, $31
# ---> block tail <---
# ---> endpc 3a88 <---

# ---> block head <---
ori $26, $0, 16
# ---> block body <---
lui $31, 31954
jal TAG_JAL_105
subu $31, $25, $31
addu $31, $31, $26
TAG_JAL_105:
addu $31, $31, $0
# ---> block tail <---
# ---> endpc 3aa0 <---

# ---> block head <---
ori $29, $0, 16
# ---> block body <---
lui $10, 51498
jal TAG_JAL_108
addu $10, $31, $10
addu $31, $31, $29
TAG_JAL_108:
addu $31, $10, $31
# ---> block tail <---
lui $10, 65535
ori $10, $10, 49443
ori $31, $0, 24443
# ---> endpc 3ac4 <---

# ---> block head <---
ori $2, $0, 16
# ---> block body <---
lui $0, 18421
jal TAG_JAL_110
subu $0, $31, $0
addu $31, $31, $2
TAG_JAL_110:
addu $31, $0, $31
# ---> block tail <---
# ---> endpc 3adc <---

# ---> block head <---
ori $7, $0, 16
# ---> block body <---
lui $31, 44796
jal TAG_JAL_112
addu $31, $31, $6
addu $31, $31, $7
TAG_JAL_112:
lw $8, -15017($31)
# ---> block tail <---
# ---> endpc 3af4 <---

# ---> block head <---
ori $11, $0, 16
# ---> block body <---
lui $31, 28968
jal TAG_JAL_114
subu $31, $31, $10
addu $31, $31, $11
TAG_JAL_114:
lw $12, -31205($31)
# ---> block tail <---
# ---> endpc 3b0c <---

# ---> block head <---
ori $13, $0, 16
# ---> block body <---
lui $31, 62526
jal TAG_JAL_116
addu $31, $31, $14
addu $31, $31, $13
TAG_JAL_116:
lw $14, -11906($31)
# ---> block tail <---
# ---> endpc 3b24 <---

# ---> block head <---
ori $16, $0, 16
# ---> block body <---
lui $0, 30965
jal TAG_JAL_119
subu $0, $0, $31
addu $31, $31, $16
TAG_JAL_119:
lw $31, 12($0)
# ---> block tail <---
# ---> endpc 3b3c <---

# ---> block head <---
ori $26, $0, 16
ori $28, $0, 15189
# ---> block body <---
lui $31, 29328
jal TAG_JAL_122
addu $31, $25, $31
addu $31, $31, $26
TAG_JAL_122:
beq $31, $28, TAG_BEQ_36
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_36:
# ---> block tail <---
# ---> endpc 3b60 <---

# ---> block head <---
ori $9, $0, 16
ori $11, $0, 6188
# ---> block body <---
lui $31, 21503
jal TAG_JAL_125
subu $31, $31, $8
addu $31, $31, $9
TAG_JAL_125:
beq $31, $11, TAG_BEQ_39
ori $12, $0, 1
ori $12, $0, 1
TAG_BEQ_39:
# ---> block tail <---
# ---> endpc 3b84 <---

# ---> block head <---
ori $15, $0, 16
# ---> block body <---
lui $31, 10805
jal TAG_JAL_127
addu $31, $20, $31
addu $31, $31, $15
TAG_JAL_127:
beq $31, $31, TAG_BEQ_41
ori $16, $0, 1
ori $16, $0, 1
TAG_BEQ_41:
# ---> block tail <---
# ---> endpc 3ba4 <---

# ---> block head <---
ori $17, $0, 16
# ---> block body <---
lui $0, 51679
jal TAG_JAL_129
subu $0, $0, $31
addu $31, $31, $17
TAG_JAL_129:
beq $0, $31, TAG_BEQ_43
ori $18, $0, 1
ori $18, $0, 1
TAG_BEQ_43:
# ---> block tail <---
# ---> endpc 3bc4 <---

# ---> block head <---
ori $19, $0, 16
# ---> block body <---
lui $0, 65035
jal TAG_JAL_131
addu $0, $0, $31
addu $31, $31, $19
TAG_JAL_131:
beq $0, $31, TAG_BEQ_45
ori $20, $0, 1
ori $20, $0, 1
TAG_BEQ_45:
# ---> block tail <---
# ---> endpc 3be4 <---

# ---> block head <---
ori $23, $0, 16
# ---> block body <---
lui $31, 7518
jal TAG_JAL_133
subu $31, $31, $22
addu $31, $31, $23
TAG_JAL_133:
ori $24, $31, 41236
# ---> block tail <---
ori $24, $0, 29387
# ---> endpc 3c00 <---

# ---> block head <---
ori $27, $0, 16
# ---> block body <---
lui $31, 46251
jal TAG_JAL_135
addu $31, $26, $31
addu $31, $31, $27
TAG_JAL_135:
ori $28, $31, 21112
# ---> block tail <---
# ---> endpc 3c18 <---

# ---> block head <---
ori $2, $0, 16
# ---> block body <---
lui $31, 25445
jal TAG_JAL_137
subu $31, $31, $30
addu $31, $31, $2
TAG_JAL_137:
ori $3, $31, 4149
# ---> block tail <---
# ---> endpc 3c30 <---

# ---> block head <---
ori $4, $0, 16
# ---> block body <---
lui $25, 15056
jal TAG_JAL_139
addu $31, $31, $25
addu $31, $31, $4
TAG_JAL_139:
ori $25, $31, 56518
# ---> block tail <---
lui $25, 65535
ori $25, $25, 49544
ori $31, $0, 28295
# ---> endpc 3c54 <---

# ---> block head <---
ori $6, $0, 16
# ---> block body <---
lui $31, 20006
jal TAG_JAL_141
subu $26, $31, $26
addu $31, $31, $6
TAG_JAL_141:
ori $31, $26, 34892
# ---> block tail <---
ori $31, $0, 6362
# ---> endpc 3c70 <---

# ---> block head <---
ori $29, $0, 16
lui $30, 43707
ori $30, $30, 52445
sw $30, 104($0)
lui $2, 43707
ori $2, $2, 52445
sw $2, 152($0)
# ---> block body <---
lui $31, 14950
jal TAG_JAL_149
lw $31, -15512($31)
addu $31, $31, $29
TAG_JAL_149:
sw $1, 26554($31)
sw $31, -8933($1)
# ---> block tail <---
lui $2, 65535
ori $2, $2, 41014
lui $30, 65535
ori $30, $30, 37937
# ---> endpc 3cb4 <---

# ---> block head <---
ori $16, $0, 16
lui $17, 43707
ori $17, $17, 52445
sw $17, 136($0)
# ---> block body <---
lui $31, 42856
jal TAG_JAL_154
lw $31, -15528($31)
addu $31, $31, $16
TAG_JAL_154:
sw $31, -8933($1)
sw $1, 5953($31)
# ---> block tail <---
lui $17, 65535
ori $17, $17, 50985
# ---> endpc 3ce4 <---

# ---> block head <---
ori $3, $0, 16
lui $4, 43707
ori $4, $4, 52445
sw $4, 132($0)
# ---> block body <---
lui $31, 49808
jal TAG_JAL_159
lw $31, -15608($31)
addu $31, $31, $3
TAG_JAL_159:
sw $31, -8933($1)
sw $1, 6963($31)
# ---> block tail <---
ori $4, $0, 17656
# ---> endpc 3d10 <---

# ---> block head <---
ori $26, $0, 16
lui $27, 43707
ori $27, $27, 52445
sw $27, 124($0)
lui $28, 43707
ori $28, $28, 52445
sw $28, 96($0)
# ---> block body <---
lui $0, 64834
jal TAG_JAL_167
lw $0, 64($0)
addu $31, $31, $26
TAG_JAL_167:
sw $0, -15552($31)
sw $31, 96($0)
# ---> block tail <---
lui $27, 65535
ori $27, $27, 33519
ori $28, $0, 22899
# ---> endpc 3d50 <---

# ---> block head <---
ori $30, $0, 16
# ---> block body <---
lui $0, 18402
jal TAG_JAL_169
lw $0, 52($0)
addu $31, $31, $30
TAG_JAL_169:
addu $31, $31, $0
# ---> block tail <---
# ---> endpc 3d68 <---

# ---> block head <---
ori $3, $0, 16
# ---> block body <---
lui $31, 13783
jal TAG_JAL_171
lw $31, -15668($31)
addu $31, $31, $3
TAG_JAL_171:
lw $4, -9036($31)
# ---> block tail <---
# ---> endpc 3d80 <---

# ---> block head <---
ori $5, $0, 16
# ---> block body <---
lui $31, 57911
jal TAG_JAL_173
lw $31, -15692($31)
addu $31, $31, $5
TAG_JAL_173:
lw $6, -8960($31)
# ---> block tail <---
# ---> endpc 3d98 <---

# ---> block head <---
ori $7, $0, 16
# ---> block body <---
lui $0, 8226
jal TAG_JAL_175
lw $0, 24($0)
addu $31, $31, $7
TAG_JAL_175:
lw $31, 36($0)
# ---> block tail <---
# ---> endpc 3db0 <---

# ---> block head <---
ori $0, $0, 0
ori $17, $0, 16
ori $19, $0, 1161
# ---> block body <---
lui $31, 33436
jal TAG_JAL_179
lw $31, -15772($31)
addu $31, $31, $17
TAG_JAL_179:
beq $31, $19, TAG_BEQ_49
ori $20, $0, 1
ori $20, $0, 1
TAG_BEQ_49:
# ---> block tail <---
# ---> endpc 3dd8 <---

# ---> block head <---
ori $29, $0, 16
lui $2, 65535
ori $2, $2, 41582
# ---> block body <---
lui $31, 14267
jal TAG_JAL_183
lw $31, -15836($31)
addu $31, $31, $29
TAG_JAL_183:
beq $2, $31, TAG_BEQ_53
ori $3, $0, 1
ori $3, $0, 1
TAG_BEQ_53:
# ---> block tail <---
# ---> endpc 3e00 <---

# ---> block head <---
ori $7, $0, 16
# ---> block body <---
lui $31, 19563
jal TAG_JAL_186
lw $26, -15832($31)
addu $31, $31, $7
TAG_JAL_186:
beq $26, $26, TAG_BEQ_56
ori $8, $0, 1
ori $8, $0, 1
TAG_BEQ_56:
# ---> block tail <---
# ---> endpc 3e20 <---

# ---> block head <---
ori $9, $0, 16
# ---> block body <---
lui $0, 53912
jal TAG_JAL_188
lw $0, 16($0)
addu $31, $31, $9
TAG_JAL_188:
beq $31, $0, TAG_BEQ_58
ori $10, $0, 1
ori $10, $0, 1
TAG_BEQ_58:
# ---> block tail <---
# ---> endpc 3e40 <---

# ---> block head <---
ori $11, $0, 16
# ---> block body <---
lui $31, 63647
jal TAG_JAL_190
lw $31, -15880($31)
addu $31, $31, $11
TAG_JAL_190:
ori $12, $31, 20460
# ---> block tail <---
# ---> endpc 3e58 <---

# ---> block head <---
ori $13, $0, 16
# ---> block body <---
lui $31, 42546
jal TAG_JAL_192
lw $31, -15944($31)
addu $31, $31, $13
TAG_JAL_192:
ori $14, $31, 2452
# ---> block tail <---
# ---> endpc 3e70 <---

# ---> block head <---
ori $15, $0, 16
# ---> block body <---
lui $31, 27174
jal TAG_JAL_194
lw $31, -15948($31)
addu $31, $31, $15
TAG_JAL_194:
ori $16, $31, 65069
# ---> block tail <---
lui $16, 65535
ori $16, $16, 41280
# ---> endpc 3e90 <---

# ---> block head <---
ori $25, $0, 16
lui $26, 43707
ori $26, $26, 52445
sw $26, 112($0)
# ---> block body <---
lui $31, 34146
jal TAG_JAL_200
lui $31, 11340
addu $31, $31, $25
TAG_JAL_200:
sw $31, -8973($1)
# ---> block tail <---
lui $26, 65535
ori $26, $26, 56845
lui $31, 65535
ori $31, $31, 59311
# ---> endpc 3ec4 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $4, $0, 16
# ---> block body <---
lui $31, 47000
jal TAG_JAL_204
lui $31, 40347
addu $31, $31, $4
TAG_JAL_204:
sw $31, -8933($1)
# ---> block tail <---
lui $31, 65535
ori $31, $31, 49574
# ---> endpc 3eec <---

# ---> block head <---
ori $12, $0, 16
lui $13, 43707
ori $13, $13, 52445
sw $13, 136($0)
lui $14, 43707
ori $14, $14, 52445
sw $14, 80($0)
# ---> block body <---
lui $0, 38006
jal TAG_JAL_217
lui $0, 32932
addu $31, $31, $12
TAG_JAL_217:
sw $0, -16016($31)
sw $31, 80($0)
# ---> block tail <---
ori $13, $0, 12354
ori $14, $0, 6966
# ---> endpc 3f28 <---

# ---> block head <---
ori $16, $0, 16
# ---> block body <---
lui $31, 32163
jal TAG_JAL_219
lui $31, 6272
addu $31, $31, $16
TAG_JAL_219:
addu $31, $17, $31
# ---> block tail <---
ori $31, $0, 18718
# ---> endpc 3f44 <---

# ---> block head <---
ori $18, $0, 16
# ---> block body <---
lui $31, 52860
jal TAG_JAL_221
lui $31, 53756
addu $31, $31, $18
TAG_JAL_221:
addu $31, $31, $19
# ---> block tail <---
lui $31, 65535
ori $31, $31, 36713
# ---> endpc 3f64 <---

# ---> block head <---
ori $20, $0, 16
# ---> block body <---
lui $31, 41852
jal TAG_JAL_223
lui $31, 7869
addu $31, $31, $20
TAG_JAL_223:
subu $31, $31, $11
# ---> block tail <---
ori $31, $0, 27792
# ---> endpc 3f80 <---

# ---> block head <---
ori $30, $0, 16
lui $3, 63142
ori $3, $3, 0
# ---> block body <---
lui $31, 30434
jal TAG_JAL_227
lui $31, 63142
addu $31, $31, $30
TAG_JAL_227:
beq $3, $31, TAG_BEQ_62
ori $4, $0, 1
ori $4, $0, 1
TAG_BEQ_62:
# ---> block tail <---
ori $3, $0, 20389
lui $31, 65535
ori $31, $31, 60664
# ---> endpc 3fb4 <---

ori $v0, $zero, 10
syscall
