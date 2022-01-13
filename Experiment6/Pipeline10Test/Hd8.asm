# ---> init memory <---
ori $1, $0, 32226
sw $1, 0($0)
ori $1, $0, 19511
sw $1, 4($0)
ori $1, $0, 27143
sw $1, 8($0)
ori $1, $0, 7758
sw $1, 12($0)
ori $1, $0, 28031
sw $1, 16($0)
lui $1, 65535
ori $1, $1, 50916
sw $1, 20($0)
lui $1, 65535
ori $1, $1, 51524
sw $1, 24($0)
ori $1, $0, 1717
sw $1, 28($0)
ori $1, $0, 22501
sw $1, 32($0)
lui $1, 65535
ori $1, $1, 37933
sw $1, 36($0)
lui $1, 65535
ori $1, $1, 55385
sw $1, 40($0)
lui $1, 65535
ori $1, $1, 34126
sw $1, 44($0)
lui $1, 65535
ori $1, $1, 51756
sw $1, 48($0)
lui $1, 65535
ori $1, $1, 52691
sw $1, 52($0)
ori $1, $0, 18288
sw $1, 56($0)
lui $1, 65535
ori $1, $1, 65144
sw $1, 60($0)
ori $1, $0, 17323
sw $1, 64($0)
ori $1, $0, 7243
sw $1, 68($0)
lui $1, 65535
ori $1, $1, 48356
sw $1, 72($0)

# ---> init register <---
ori $1, $0, 17305
lui $2, 65535
ori $2, $2, 54661
lui $3, 65535
ori $3, $3, 65265
ori $4, $0, 3080
ori $5, $0, 4614
lui $6, 65535
ori $6, $6, 63185
lui $7, 65535
ori $7, $7, 48651
lui $8, 65535
ori $8, $8, 54098
lui $9, 65535
ori $9, $9, 61308
lui $10, 65535
ori $10, $10, 55682
ori $11, $0, 18228
lui $12, 65535
ori $12, $12, 57881
ori $13, $0, 14438
ori $14, $0, 2689
ori $15, $0, 18753
lui $16, 65535
ori $16, $16, 53840
lui $17, 65535
ori $17, $17, 35894
ori $18, $0, 9951
lui $19, 65535
ori $19, $19, 59501
ori $20, $0, 18733
ori $21, $0, 10286
ori $22, $0, 9093
ori $23, $0, 15464
ori $24, $0, 28229
lui $25, 65535
ori $25, $25, 46999
ori $26, $0, 8630
ori $27, $0, 28826
lui $28, 65535
ori $28, $28, 64475
ori $29, $0, 26008
ori $30, $0, 19489
ori $31, $0, 8478

# ---> start at 3168 <---

# ---> block head <---
# ---> block body <---
lw $30, -19417($30)
ori $0, $0, 0
lw $22, 17208($30)
# ---> block tail <---
# ---> endpc 3174 <---

# ---> block head <---
# ---> block body <---
lw $1, -17233($1)
ori $0, $0, 0
lw $22, 17236($1)
# ---> block tail <---
# ---> endpc 3180 <---

# ---> block head <---
# ---> block body <---
lw $2, 10947($2)
ori $0, $0, 0
lw $22, 17196($2)
# ---> block tail <---
# ---> endpc 318c <---

# ---> block head <---
# ---> block body <---
lw $3, -3008($4)
ori $0, $0, 0
lw $4, 17224($3)
# ---> block tail <---
# ---> endpc 3198 <---

# ---> block head <---
# ---> block body <---
lw $5, 2423($6)
ori $0, $0, 0
lw $6, 17240($5)
# ---> block tail <---
# ---> endpc 31a4 <---

# ---> block head <---
# ---> block body <---
lw $7, 11510($8)
ori $0, $0, 0
lw $8, 17256($7)
# ---> block tail <---
# ---> endpc 31b0 <---

# ---> block head <---
# ---> block body <---
lw $0, 52($0)
ori $0, $0, 0
lw $9, 40($0)
# ---> block tail <---
# ---> endpc 31bc <---

# ---> block head <---
# ---> block body <---
lw $0, 8($0)
ori $0, $0, 0
lw $10, 24($0)
# ---> block tail <---
# ---> endpc 31c8 <---

# ---> block head <---
ori $0, $0, 0
ori $27, $0, 18288
# ---> block body <---
lw $11, -18172($11)
ori $0, $0, 0
beq $27, $11, TAG_BEQ_2
ori $28, $0, 1
ori $28, $0, 1
TAG_BEQ_2:
# ---> block tail <---
# ---> endpc 31e4 <---

# ---> block head <---
lui $4, 65535
ori $4, $4, 34126
# ---> block body <---
lw $12, 7699($12)
ori $0, $0, 0
beq $4, $12, TAG_BEQ_5
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_5:
# ---> block tail <---
# ---> endpc 3200 <---

# ---> block head <---
ori $8, $0, 0
# ---> block body <---
lw $13, -14362($13)
ori $0, $0, 0
beq $13, $8, TAG_BEQ_7
ori $9, $0, 1
ori $9, $0, 1
TAG_BEQ_7:
# ---> block tail <---
# ---> endpc 3218 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $14, -18677($15)
ori $0, $0, 0
beq $14, $14, TAG_BEQ_9
ori $10, $0, 1
ori $10, $0, 1
TAG_BEQ_9:
# ---> block tail <---
# ---> endpc 3230 <---

# ---> block head <---
ori $11, $0, 7243
# ---> block body <---
lw $16, 29710($17)
ori $0, $0, 0
beq $11, $16, TAG_BEQ_11
ori $12, $0, 1
ori $12, $0, 1
TAG_BEQ_11:
# ---> block tail <---
# ---> endpc 3248 <---

# ---> block head <---
lui $14, 65535
ori $14, $14, 48356
# ---> block body <---
lw $19, -9879($18)
ori $0, $0, 0
beq $19, $14, TAG_BEQ_14
ori $15, $0, 1
ori $15, $0, 1
TAG_BEQ_14:
# ---> block tail <---
# ---> endpc 3264 <---

# ---> block head <---
# ---> block body <---
lw $0, 64($0)
ori $0, $0, 0
beq $20, $0, TAG_BEQ_15
ori $15, $0, 1
ori $15, $0, 1
TAG_BEQ_15:
# ---> block tail <---
# ---> endpc 3278 <---

# ---> block head <---
# ---> block body <---
lw $0, 68($0)
ori $0, $0, 0
beq $0, $21, TAG_BEQ_16
ori $15, $0, 1
ori $15, $0, 1
TAG_BEQ_16:
# ---> block tail <---
# ---> endpc 328c <---

# ---> block head <---
# ---> block body <---
lw $22, -28007($22)
ori $0, $0, 0
ori $15, $22, 29193
# ---> block tail <---
# ---> endpc 3298 <---

# ---> block head <---
# ---> block body <---
lw $23, -15448($23)
ori $0, $0, 0
ori $15, $23, 54107
# ---> block tail <---
ori $15, $0, 5239
# ---> endpc 32a8 <---

# ---> block head <---
# ---> block body <---
lw $24, -28165($24)
ori $0, $0, 0
ori $15, $24, 6019
# ---> block tail <---
# ---> endpc 32b4 <---

# ---> block head <---
# ---> block body <---
lw $25, -8610($26)
ori $0, $0, 0
ori $26, $25, 44379
# ---> block tail <---
# ---> endpc 32c0 <---

# ---> block head <---
# ---> block body <---
lw $27, 11($28)
ori $0, $0, 0
ori $28, $27, 56521
# ---> block tail <---
lui $28, 65535
ori $28, $28, 59293
# ---> endpc 32d4 <---

# ---> block head <---
# ---> block body <---
lw $30, -25960($29)
ori $0, $0, 0
ori $29, $30, 62010
# ---> block tail <---
# ---> endpc 32e0 <---

# ---> block head <---
# ---> block body <---
lw $0, 44($0)
ori $0, $0, 0
ori $1, $0, 14688
# ---> block tail <---
# ---> endpc 32ec <---

# ---> block head <---
# ---> block body <---
lw $0, 32($0)
ori $0, $0, 0
ori $2, $0, 40010
# ---> block tail <---
ori $2, $0, 17547
# ---> endpc 32fc <---

# ---> block head <---
lui $10, 43707
ori $10, $10, 52445
sw $10, 100($0)
lui $11, 43707
ori $11, $11, 52445
sw $11, 124($0)
# ---> block body <---
lw $3, 17248($3)
subu $3, $3, $8
sw $3, 99($9)
sw $9, -7119($3)
# ---> block tail <---
ori $10, $0, 12861
ori $11, $0, 28755
# ---> endpc 332c <---

# ---> block head <---
lui $5, 43707
ori $5, $5, 52445
sw $5, 116($0)
lui $6, 43707
ori $6, $6, 52445
sw $6, 88($0)
# ---> block body <---
lw $4, 31446($4)
addu $4, $3, $4
sw $1, 20476($4)
sw $4, -14600($1)
# ---> block tail <---
ori $5, $0, 12423
ori $6, $0, 8861
# ---> endpc 335c <---

# ---> block head <---
lui $16, 43707
ori $16, $16, 52445
sw $16, 96($0)
# ---> block body <---
lw $5, -12403($5)
subu $5, $15, $5
sw $5, -14592($1)
# ---> block tail <---
lui $5, 65535
ori $5, $5, 40814
lui $16, 65535
ori $16, $16, 64386
# ---> endpc 3384 <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 100($0)
lui $3, 43707
ori $3, $3, 52445
sw $3, 124($0)
# ---> block body <---
lw $7, -8801($6)
addu $6, $6, $7
sw $0, -8369($6)
sw $6, 124($0)
# ---> block tail <---
lui $2, 65535
ori $2, $2, 33843
ori $3, $0, 21503
# ---> endpc 33b8 <---

# ---> block head <---
lui $20, 43707
ori $20, $20, 52445
sw $20, 124($0)
lui $21, 43707
ori $21, $21, 52445
sw $21, 144($0)
# ---> block body <---
lw $8, 27($9)
subu $8, $8, $9
sw $8, 123($9)
sw $9, -1572($8)
# ---> block tail <---
lui $20, 65535
ori $20, $20, 54788
lui $21, 65535
ori $21, $21, 38125
# ---> endpc 33f0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $4, 43707
ori $4, $4, 52445
sw $4, 104($0)
# ---> block body <---
lw $10, -28751($11)
addu $10, $10, $11
sw $10, -21399($3)
# ---> block tail <---
lui $4, 65535
ori $4, $4, 58883
lui $10, 65535
ori $10, $10, 43905
# ---> endpc 3424 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $15, 43707
ori $15, $15, 52445
sw $15, 120($0)
# ---> block body <---
lw $0, 52($0)
subu $0, $12, $0
sw $12, 88($0)
sw $0, 119($12)
# ---> block tail <---
lui $15, 65535
ori $15, $15, 46751
# ---> endpc 3450 <---

# ---> block head <---
lui $27, 43707
ori $27, $27, 52445
sw $27, 88($0)
lui $28, 43707
ori $28, $28, 52445
sw $28, 88($0)
# ---> block body <---
lw $0, 8($0)
addu $0, $0, $13
sw $0, 88($13)
sw $13, 88($0)
# ---> block tail <---
lui $27, 65535
ori $27, $27, 59796
lui $28, 65535
ori $28, $28, 36882
# ---> endpc 3488 <---

# ---> block head <---
# ---> block body <---
lw $25, 14676($25)
subu $25, $25, $29
addu $25, $30, $25
# ---> block tail <---
# ---> endpc 3494 <---

# ---> block head <---
# ---> block body <---
lw $26, 4105($26)
addu $26, $26, $30
subu $26, $26, $2
# ---> block tail <---
ori $26, $0, 9342
# ---> endpc 34a4 <---

# ---> block head <---
# ---> block body <---
lw $27, 5796($27)
subu $27, $2, $27
addu $27, $3, $27
# ---> block tail <---
# ---> endpc 34b0 <---

# ---> block head <---
# ---> block body <---
lw $28, 1494($29)
addu $28, $28, $29
subu $28, $28, $29
# ---> block tail <---
# ---> endpc 34bc <---

# ---> block head <---
# ---> block body <---
lw $1, 13784($30)
subu $30, $1, $30
addu $1, $1, $30
# ---> block tail <---
ori $1, $0, 22401
ori $30, $0, 32284
# ---> endpc 34d0 <---

# ---> block head <---
# ---> block body <---
lw $3, 31741($2)
addu $2, $2, $3
subu $2, $2, $3
# ---> block tail <---
# ---> endpc 34dc <---

# ---> block head <---
# ---> block body <---
lw $0, 60($0)
subu $0, $4, $0
addu $4, $0, $4
# ---> block tail <---
# ---> endpc 34e8 <---

# ---> block head <---
# ---> block body <---
lw $0, 40($0)
addu $0, $0, $5
subu $5, $5, $0
# ---> block tail <---
# ---> endpc 34f4 <---

# ---> block head <---
# ---> block body <---
lw $6, -8429($6)
subu $6, $6, $3
lw $4, -3625($6)
# ---> block tail <---
# ---> endpc 3500 <---

# ---> block head <---
# ---> block body <---
lw $7, 432($7)
addu $7, $7, $4
lw $5, -9340($7)
# ---> block tail <---
# ---> endpc 350c <---

# ---> block head <---
# ---> block body <---
lw $8, -1664($8)
subu $8, $8, $5
lw $6, -1763($8)
# ---> block tail <---
# ---> endpc 3518 <---

# ---> block head <---
# ---> block body <---
lw $10, 35($9)
addu $9, $10, $9
lw $10, 27666($9)
# ---> block tail <---
# ---> endpc 3524 <---

# ---> block head <---
# ---> block body <---
lw $11, 39($12)
subu $11, $11, $12
lw $12, 10172($11)
# ---> block tail <---
# ---> endpc 3530 <---

# ---> block head <---
# ---> block body <---
lw $13, 17240($14)
addu $13, $13, $14
lw $14, 17624($13)
# ---> block tail <---
# ---> endpc 353c <---

# ---> block head <---
# ---> block body <---
lw $0, 8($0)
subu $0, $0, $15
lw $15, 36($0)
# ---> block tail <---
# ---> endpc 3548 <---

# ---> block head <---
# ---> block body <---
lw $0, 4($0)
addu $0, $16, $0
lw $16, 64($0)
# ---> block tail <---
# ---> endpc 3554 <---

# ---> block head <---
ori $11, $0, 47113
# ---> block body <---
lw $17, 29646($17)
subu $17, $17, $9
beq $11, $17, TAG_BEQ_18
ori $12, $0, 1
ori $12, $0, 1
TAG_BEQ_18:
# ---> block tail <---
lui $11, 65535
ori $11, $11, 62256
lui $17, 65535
ori $17, $17, 41421
# ---> endpc 357c <---

# ---> block head <---
lui $21, 65535
ori $21, $21, 48356
# ---> block body <---
lw $18, -9875($18)
addu $18, $18, $19
beq $21, $18, TAG_BEQ_21
ori $22, $0, 1
ori $22, $0, 1
TAG_BEQ_21:
# ---> block tail <---
# ---> endpc 3598 <---

# ---> block head <---
ori $26, $0, 15606
# ---> block body <---
lw $19, 17208($19)
subu $19, $24, $19
beq $19, $26, TAG_BEQ_23
ori $27, $0, 1
ori $27, $0, 1
TAG_BEQ_23:
# ---> block tail <---
# ---> endpc 35b0 <---

# ---> block head <---
ori $28, $0, 11753
# ---> block body <---
lw $21, 10780($20)
addu $21, $21, $20
beq $21, $28, TAG_BEQ_25
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_25:
# ---> block tail <---
# ---> endpc 35c8 <---

# ---> block head <---
lui $2, 65535
ori $2, $2, 57016
# ---> block body <---
lw $22, -28027($23)
subu $23, $22, $23
beq $2, $23, TAG_BEQ_28
ori $3, $0, 1
ori $3, $0, 1
TAG_BEQ_28:
# ---> block tail <---
# ---> endpc 35e4 <---

# ---> block head <---
ori $4, $0, 7699
# ---> block body <---
lw $24, -5954($25)
addu $24, $24, $25
beq $4, $24, TAG_BEQ_30
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_30:
# ---> block tail <---
# ---> endpc 35fc <---

# ---> block head <---
# ---> block body <---
lw $0, 48($0)
subu $0, $0, $26
beq $26, $0, TAG_BEQ_31
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_31:
# ---> block tail <---
# ---> endpc 3610 <---

# ---> block head <---
# ---> block body <---
lw $0, 68($0)
addu $0, $27, $0
beq $27, $0, TAG_BEQ_32
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_32:
# ---> block tail <---
# ---> endpc 3624 <---

# ---> block head <---
# ---> block body <---
lw $28, -11725($28)
subu $28, $28, $5
ori $6, $28, 21995
# ---> block tail <---
# ---> endpc 3630 <---

# ---> block head <---
# ---> block body <---
lw $29, 43($29)
addu $29, $29, $6
ori $7, $29, 13494
# ---> block tail <---
# ---> endpc 363c <---

# ---> block head <---
# ---> block body <---
lw $30, -32240($30)
subu $30, $30, $7
ori $8, $30, 42122
# ---> block tail <---
# ---> endpc 3648 <---

# ---> block head <---
# ---> block body <---
lw $2, -22389($1)
addu $2, $2, $1
ori $1, $2, 48100
# ---> block tail <---
ori $1, $0, 7125
# ---> endpc 3658 <---

# ---> block head <---
# ---> block body <---
lw $3, -7659($4)
subu $4, $3, $4
ori $3, $4, 36737
# ---> block tail <---
# ---> endpc 3664 <---

# ---> block head <---
# ---> block body <---
lw $6, 39($5)
addu $6, $5, $6
ori $5, $6, 30141
# ---> block tail <---
# ---> endpc 3670 <---

# ---> block head <---
# ---> block body <---
lw $0, 56($0)
subu $0, $7, $0
ori $7, $0, 3306
# ---> block tail <---
# ---> endpc 367c <---

# ---> block head <---
# ---> block body <---
lw $0, 52($0)
addu $0, $8, $0
ori $8, $0, 44867
# ---> block tail <---
ori $8, $0, 757
# ---> endpc 368c <---

# ---> block head <---
lui $25, 43707
ori $25, $25, 52445
sw $25, 152($0)
lui $26, 43707
ori $26, $26, 52445
sw $26, 108($0)
# ---> block body <---
lw $9, 27674($9)
lw $9, 17252($9)
sw $24, 17332($9)
sw $9, -7591($24)
# ---> block tail <---
lui $25, 65535
ori $25, $25, 40953
lui $26, 65535
ori $26, $26, 54693
# ---> endpc 36c4 <---

# ---> block head <---
lui $12, 43707
ori $12, $12, 52445
sw $12, 132($0)
lui $13, 43707
ori $13, $13, 52445
sw $13, 152($0)
# ---> block body <---
lw $10, -17251($10)
lw $10, 17184($10)
sw $1, -19379($10)
sw $10, -6973($1)
# ---> block tail <---
ori $12, $0, 9545
lui $13, 65535
ori $13, $13, 38543
# ---> endpc 36f8 <---

# ---> block head <---
lui $27, 43707
ori $27, $27, 52445
sw $27, 124($0)
lui $28, 43707
ori $28, $28, 52445
sw $28, 152($0)
# ---> block body <---
lw $11, 3352($11)
lw $11, 17252($11)
sw $26, 17304($11)
sw $11, 10995($26)
# ---> block tail <---
ori $27, $0, 17878
ori $28, $0, 28666
# ---> endpc 3728 <---

# ---> block head <---
lui $7, 43707
ori $7, $7, 52445
sw $7, 140($0)
# ---> block body <---
lw $13, -9473($12)
lw $12, 17248($13)
sw $6, -7135($12)
sw $12, 10290($6)
# ---> block tail <---
lui $7, 65535
ori $7, $7, 60004
# ---> endpc 374c <---

# ---> block head <---
ori $0, $0, 0
lui $18, 43707
ori $18, $18, 52445
sw $18, 140($0)
# ---> block body <---
lw $15, 12917($14)
lw $14, 17252($15)
sw $14, 17288($15)
sw $15, 17320($14)
# ---> block tail <---
ori $18, $0, 9318
# ---> endpc 3770 <---

# ---> block head <---
ori $0, $0, 0
lui $26, 43707
ori $26, $26, 52445
sw $26, 92($0)
# ---> block body <---
lw $17, -17251($16)
lw $16, 17200($17)
sw $16, 24675($25)
sw $25, 14760($16)
# ---> block tail <---
lui $26, 65535
ori $26, $26, 33505
# ---> endpc 3798 <---

# ---> block head <---
ori $0, $0, 0
lui $5, 43707
ori $5, $5, 52445
sw $5, 88($0)
# ---> block body <---
lw $0, 52($0)
lw $0, 32($0)
sw $18, 152($0)
sw $0, -9230($18)
# ---> block tail <---
lui $5, 65535
ori $5, $5, 57083
# ---> endpc 37c0 <---

# ---> block head <---
# ---> block body <---
lw $0, 40($0)
lw $0, 40($0)
sw $0, -15466($19)
sw $19, 124($0)
# ---> block tail <---
# ---> endpc 37d0 <---

# ---> block head <---
# ---> block body <---
lw $1, -7053($1)
lw $1, 17204($1)
addu $1, $1, $6
# ---> block tail <---
# ---> endpc 37dc <---

# ---> block head <---
# ---> block body <---
lw $2, -30087($2)
lw $2, 17232($2)
subu $2, $2, $6
# ---> block tail <---
# ---> endpc 37e8 <---

# ---> block head <---
# ---> block body <---
lw $3, 16513($3)
lw $3, 17200($3)
addu $3, $3, $6
# ---> block tail <---
# ---> endpc 37f4 <---

# ---> block head <---
# ---> block body <---
lw $4, 8525($5)
lw $5, 17256($4)
subu $5, $4, $5
# ---> block tail <---
# ---> endpc 3800 <---

# ---> block head <---
# ---> block body <---
lw $6, 5604($7)
lw $7, 17208($6)
addu $7, $6, $7
# ---> block tail <---
# ---> endpc 380c <---

# ---> block head <---
# ---> block body <---
lw $8, 17252($9)
lw $9, 17256($8)
subu $8, $9, $8
# ---> block tail <---
# ---> endpc 3818 <---

# ---> block head <---
# ---> block body <---
lw $0, 60($0)
lw $0, 32($0)
addu $10, $0, $10
# ---> block tail <---
# ---> endpc 3824 <---

# ---> block head <---
# ---> block body <---
lw $0, 60($0)
lw $0, 8($0)
subu $11, $11, $0
# ---> block tail <---
# ---> endpc 3830 <---

# ---> block head <---
# ---> block body <---
lw $12, -7171($12)
lw $12, 17252($12)
lw $6, 17188($12)
# ---> block tail <---
# ---> endpc 383c <---

# ---> block head <---
# ---> block body <---
lw $13, 17252($13)
lw $13, 17252($13)
lw $6, 17196($13)
# ---> block tail <---
# ---> endpc 3848 <---

# ---> block head <---
# ---> block body <---
lw $14, 17252($14)
lw $14, 17252($14)
lw $6, 17220($14)
# ---> block tail <---
# ---> endpc 3854 <---

# ---> block head <---
# ---> block body <---
lw $16, 17252($15)
lw $15, 17252($16)
lw $16, 17208($15)
# ---> block tail <---
# ---> endpc 3860 <---

# ---> block head <---
# ---> block body <---
lw $18, 17252($17)
lw $17, 17252($18)
lw $18, 17208($17)
# ---> block tail <---
# ---> endpc 386c <---

# ---> block head <---
# ---> block body <---
lw $20, -15534($19)
lw $19, 17252($20)
lw $20, 17244($19)
# ---> block tail <---
# ---> endpc 3878 <---

# ---> block head <---
# ---> block body <---
lw $0, 16($0)
lw $0, 24($0)
lw $21, 56($0)
# ---> block tail <---
# ---> endpc 3884 <---

# ---> block head <---
# ---> block body <---
lw $0, 20($0)
lw $0, 64($0)
lw $22, 40($0)
# ---> block tail <---
# ---> endpc 3890 <---

# ---> block head <---
ori $8, $0, 7758
# ---> block body <---
lw $23, 8592($23)
lw $23, 17192($23)
beq $8, $23, TAG_BEQ_34
ori $9, $0, 1
ori $9, $0, 1
TAG_BEQ_34:
# ---> block tail <---
# ---> endpc 38a8 <---

# ---> block head <---
# ---> block body <---
lw $24, -7627($24)
lw $24, 17212($24)
beq $9, $24, TAG_BEQ_35
ori $10, $0, 1
ori $10, $0, 1
TAG_BEQ_35:
# ---> block tail <---
# ---> endpc 38bc <---

# ---> block head <---
ori $13, $0, 27143
# ---> block body <---
lw $25, 24655($25)
lw $25, 17188($25)
beq $25, $13, TAG_BEQ_37
ori $14, $0, 1
ori $14, $0, 1
TAG_BEQ_37:
# ---> block tail <---
# ---> endpc 38d4 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lw $26, -17806($27)
lw $27, 17232($26)
beq $27, $27, TAG_BEQ_40
ori $16, $0, 1
ori $16, $0, 1
TAG_BEQ_40:
# ---> block tail <---
# ---> endpc 38f0 <---

# ---> block head <---
# ---> block body <---
lw $29, -28594($28)
lw $28, 17256($29)
beq $0, $28, TAG_BEQ_41
ori $16, $0, 1
ori $16, $0, 1
TAG_BEQ_41:
# ---> block tail <---
# ---> endpc 3904 <---

# ---> block head <---
ori $17, $0, 27143
# ---> block body <---
lw $1, 30969($30)
lw $30, 17188($1)
beq $30, $17, TAG_BEQ_43
ori $18, $0, 1
ori $18, $0, 1
TAG_BEQ_43:
# ---> block tail <---
# ---> endpc 391c <---

# ---> block head <---
# ---> block body <---
lw $0, 36($0)
lw $0, 64($0)
beq $2, $0, TAG_BEQ_44
ori $18, $0, 1
ori $18, $0, 1
TAG_BEQ_44:
# ---> block tail <---
# ---> endpc 3930 <---

# ---> block head <---
# ---> block body <---
lw $0, 32($0)
lw $0, 28($0)
beq $3, $0, TAG_BEQ_45
ori $18, $0, 1
ori $18, $0, 1
TAG_BEQ_45:
# ---> block tail <---
# ---> endpc 3944 <---

# ---> block head <---
# ---> block body <---
lw $4, 17252($4)
lw $4, 17196($4)
ori $18, $4, 34327
# ---> block tail <---
lui $18, 65535
ori $18, $18, 62259
# ---> endpc 3958 <---

# ---> block head <---
# ---> block body <---
lw $5, 17252($5)
lw $5, 17232($5)
ori $18, $5, 6951
# ---> block tail <---
# ---> endpc 3964 <---

# ---> block head <---
# ---> block body <---
lw $6, 10223($6)
lw $6, 17204($6)
ori $18, $6, 40269
# ---> block tail <---
# ---> endpc 3970 <---

# ---> block head <---
# ---> block body <---
lw $7, -7686($8)
lw $8, 17224($7)
ori $7, $8, 53812
# ---> block tail <---
# ---> endpc 397c <---

# ---> block head <---
# ---> block body <---
lw $9, 71($10)
lw $10, 17256($9)
ori $9, $10, 8045
# ---> block tail <---
# ---> endpc 3988 <---

# ---> block head <---
# ---> block body <---
lw $11, 17252($12)
lw $12, 17188($11)
ori $11, $12, 14255
# ---> block tail <---
# ---> endpc 3994 <---

# ---> block head <---
# ---> block body <---
lw $0, 40($0)
lw $0, 44($0)
ori $13, $0, 25891
# ---> block tail <---
# ---> endpc 39a0 <---

# ---> block head <---
# ---> block body <---
lw $0, 8($0)
lw $0, 4($0)
ori $14, $0, 18696
# ---> block tail <---
# ---> endpc 39ac <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $15, 17256($15)
lui $15, 23540
sw $15, 17288($1)
# ---> block tail <---
ori $15, $0, 19828
# ---> endpc 39c0 <---

# ---> block head <---
lui $22, 43707
ori $22, $22, 52445
sw $22, 128($0)
# ---> block body <---
lw $16, 43($16)
lui $16, 6677
sw $16, 17308($1)
# ---> block tail <---
ori $16, $0, 568
ori $22, $0, 17715
# ---> endpc 39e0 <---

# ---> block head <---
lui $26, 43707
ori $26, $26, 52445
sw $26, 148($0)
# ---> block body <---
lw $17, -27091($17)
lui $17, 53717
sw $17, 17328($1)
# ---> block tail <---
ori $17, $0, 1446
ori $26, $0, 4367
# ---> endpc 3a00 <---

# ---> block head <---
lui $6, 43707
ori $6, $6, 52445
sw $6, 124($0)
# ---> block body <---
lw $19, 8935($18)
lui $19, 11492
sw $19, 12969($5)
# ---> block tail <---
lui $6, 65535
ori $6, $6, 49963
ori $19, $0, 10879
# ---> endpc 3a24 <---

# ---> block head <---
lui $16, 43707
ori $16, $16, 52445
sw $16, 136($0)
# ---> block body <---
lw $21, -17275($20)
lui $21, 1363
sw $21, -19692($15)
# ---> block tail <---
lui $16, 65535
ori $16, $16, 54672
ori $21, $0, 14777
# ---> endpc 3a48 <---

# ---> block head <---
lui $27, 43707
ori $27, $27, 52445
sw $27, 112($0)
# ---> block body <---
lw $22, -7726($23)
lui $22, 32749
sw $22, -4255($26)
# ---> block tail <---
lui $22, 65535
ori $22, $22, 58407
lui $27, 65535
ori $27, $27, 51835
# ---> endpc 3a70 <---

# ---> block head <---
lui $9, 43707
ori $9, $9, 52445
sw $9, 132($0)
lui $10, 43707
ori $10, $10, 52445
sw $10, 156($0)
# ---> block body <---
lw $0, 72($0)
lui $0, 41747
sw $0, 132($0)
sw $0, 156($0)
# ---> block tail <---
ori $9, $0, 16795
ori $10, $0, 31248
# ---> endpc 3aa0 <---

# ---> block head <---
lui $17, 43707
ori $17, $17, 52445
sw $17, 148($0)
# ---> block body <---
lw $0, 72($0)
lui $0, 39345
sw $25, 92($0)
sw $0, -26995($25)
# ---> block tail <---
ori $17, $0, 20840
# ---> endpc 3ac0 <---

# ---> block head <---
# ---> block body <---
lw $26, -4307($26)
lui $26, 31947
addu $26, $26, $18
# ---> block tail <---
ori $26, $0, 18399
# ---> endpc 3ad0 <---

# ---> block head <---
# ---> block body <---
lw $27, 13773($27)
lui $27, 54335
subu $27, $27, $18
# ---> block tail <---
lui $27, 65535
ori $27, $27, 40338
# ---> endpc 3ae4 <---

# ---> block head <---
# ---> block body <---
lw $28, 52($28)
lui $28, 45572
addu $28, $28, $18
# ---> block tail <---
ori $28, $0, 14835
# ---> endpc 3af4 <---

# ---> block head <---
# ---> block body <---
lw $29, -27067($30)
lui $29, 63535
subu $30, $29, $30
# ---> block tail <---
lui $29, 65535
ori $29, $29, 50015
lui $30, 65535
ori $30, $30, 48968
# ---> endpc 3b10 <---

# ---> block head <---
# ---> block body <---
lw $1, 2751($2)
lui $1, 23190
addu $1, $1, $2
# ---> block tail <---
ori $1, $0, 19321
# ---> endpc 3b20 <---

# ---> block head <---
# ---> block body <---
lw $4, 24818($3)
lui $4, 21074
subu $3, $4, $3
# ---> block tail <---
lui $3, 65535
ori $3, $3, 51534
lui $4, 65535
ori $4, $4, 55118
# ---> endpc 3b3c <---

# ---> block head <---
# ---> block body <---
lw $0, 32($0)
lui $0, 49276
addu $5, $5, $0
# ---> block tail <---
# ---> endpc 3b48 <---

# ---> block head <---
# ---> block body <---
lw $0, 44($0)
lui $0, 38291
subu $6, $6, $0
# ---> block tail <---
# ---> endpc 3b54 <---

# ---> block head <---
lui $23, 14560
ori $23, $23, 0
# ---> block body <---
lw $7, 10410($7)
lui $7, 14560
beq $23, $7, TAG_BEQ_48
ori $24, $0, 1
ori $24, $0, 1
TAG_BEQ_48:
# ---> block tail <---
lui $7, 65535
ori $7, $7, 38416
ori $23, $0, 8066
# ---> endpc 3b7c <---

# ---> block head <---
lui $28, 49892
ori $28, $28, 0
# ---> block body <---
lw $8, 31462($8)
lui $8, 49892
beq $28, $8, TAG_BEQ_51
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_51:
# ---> block tail <---
lui $8, 65535
ori $8, $8, 39508
lui $28, 65535
ori $28, $28, 63340
# ---> endpc 3ba8 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lw $9, -16739($9)
lui $9, 34286
beq $9, $4, TAG_BEQ_54
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_54:
# ---> block tail <---
ori $9, $0, 26087
# ---> endpc 3bc8 <---

# ---> block head <---
ori $0, $0, 0
lui $11, 65535
ori $11, $11, 57579
# ---> block body <---
lw $10, 8009($11)
lui $10, 43265
beq $10, $10, TAG_BEQ_58
ori $8, $0, 1
ori $8, $0, 1
TAG_BEQ_58:
# ---> block tail <---
lui $10, 65535
ori $10, $10, 43171
# ---> endpc 3bf0 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $12, -25815($13)
lui $12, 54420
beq $12, $12, TAG_BEQ_60
ori $9, $0, 1
ori $9, $0, 1
TAG_BEQ_60:
# ---> block tail <---
ori $12, $0, 9901
# ---> endpc 3c0c <---

# ---> block head <---
ori $0, $0, 0
ori $11, $0, 18696
# ---> block body <---
lw $15, -18624($14)
lui $15, 24131
beq $14, $11, TAG_BEQ_63
ori $12, $0, 1
ori $12, $0, 1
TAG_BEQ_63:
# ---> block tail <---
ori $15, $0, 31192
# ---> endpc 3c2c <---

# ---> block head <---
# ---> block body <---
lw $0, 44($0)
lui $0, 5039
beq $0, $16, TAG_BEQ_64
ori $12, $0, 1
ori $12, $0, 1
TAG_BEQ_64:
# ---> block tail <---
# ---> endpc 3c40 <---

# ---> block head <---
# ---> block body <---
lw $0, 36($0)
lui $0, 62384
beq $17, $0, TAG_BEQ_65
ori $12, $0, 1
ori $12, $0, 1
TAG_BEQ_65:
# ---> block tail <---
# ---> endpc 3c54 <---

# ---> block head <---
# ---> block body <---
lw $18, 8931($18)
lui $18, 40350
ori $12, $18, 63212
# ---> block tail <---
ori $12, $0, 24868
lui $18, 65535
ori $18, $18, 36458
# ---> endpc 3c6c <---

# ---> block head <---
# ---> block body <---
lw $19, -10815($19)
lui $19, 53213
ori $12, $19, 47487
# ---> block tail <---
lui $12, 65535
ori $12, $12, 41933
ori $19, $0, 32354
# ---> endpc 3c84 <---

# ---> block head <---
# ---> block body <---
lw $20, -17271($20)
lui $20, 24060
ori $12, $20, 63142
# ---> block tail <---
lui $12, 65535
ori $12, $12, 61595
lui $20, 65535
ori $20, $20, 45234
# ---> endpc 3ca0 <---

# ---> block head <---
# ---> block body <---
lw $21, 7145($22)
lui $21, 16924
ori $21, $22, 19334
# ---> block tail <---
# ---> endpc 3cac <---

# ---> block head <---
# ---> block body <---
lw $23, 51($24)
lui $23, 38890
ori $24, $23, 56362
# ---> block tail <---
lui $23, 65535
ori $23, $23, 34554
ori $24, $0, 11336
# ---> endpc 3cc4 <---

# ---> block head <---
# ---> block body <---
lw $25, -18363($26)
lui $25, 40238
ori $25, $26, 47914
# ---> block tail <---
lui $25, 65535
ori $25, $25, 41842
# ---> endpc 3cd8 <---

# ---> block head <---
# ---> block body <---
lw $0, 40($0)
lui $0, 48248
ori $27, $0, 41870
# ---> block tail <---
ori $27, $0, 18813
# ---> endpc 3ce8 <---

# ---> block head <---
# ---> block body <---
lw $0, 72($0)
lui $0, 1390
ori $28, $0, 24023
# ---> block tail <---
# ---> endpc 3cf4 <---

# ---> block head <---
lui $27, 43707
ori $27, $27, 52445
sw $27, 80($0)
lui $28, 43707
ori $28, $28, 52445
sw $28, 100($0)
# ---> block body <---
lw $29, 23($29)
ori $29, $29, 5
sw $1, 14091($29)
sw $29, -19221($1)
# ---> block tail <---
lui $27, 65535
ori $27, $27, 56868
ori $28, $0, 23760
# ---> endpc 3d28 <---

# ---> block head <---
lui $15, 43707
ori $15, $15, 52445
sw $15, 148($0)
lui $16, 43707
ori $16, $16, 52445
sw $16, 112($0)
# ---> block body <---
lw $30, 16612($30)
ori $30, $30, 3
sw $1, 31557($30)
sw $30, -19209($1)
# ---> block tail <---
lui $15, 65535
ori $15, $15, 46423
ori $16, $0, 1692
# ---> endpc 3d5c <---

# ---> block head <---
lui $22, 43707
ori $22, $22, 52445
sw $22, 120($0)
# ---> block body <---
lw $1, -19269($1)
ori $1, $1, 21
sw $2, 12953($1)
sw $1, 2815($2)
# ---> block tail <---
ori $22, $0, 7706
# ---> endpc 3d7c <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $3, 2755($2)
ori $2, $3, 26
sw $24, 490($2)
sw $2, -11216($24)
# ---> block tail <---
# ---> endpc 3d90 <---

# ---> block head <---
lui $15, 43707
ori $15, $15, 52445
sw $15, 96($0)
lui $16, 43707
ori $16, $16, 52445
sw $16, 80($0)
# ---> block body <---
lw $5, 10490($4)
ori $4, $5, 105
sw $4, 17276($5)
sw $5, 17251($4)
# ---> block tail <---
lui $15, 65535
ori $15, $15, 63874
ori $16, $0, 1248
# ---> endpc 3dc4 <---

# ---> block head <---
lui $23, 43707
ori $23, $23, 52445
sw $23, 100($0)
# ---> block body <---
lw $7, 15601($6)
ori $6, $7, 29
sw $6, -7606($22)
sw $22, -1605($6)
# ---> block tail <---
lui $23, 65535
ori $23, $23, 53673
# ---> endpc 3de8 <---

# ---> block head <---
lui $7, 43707
ori $7, $7, 52445
sw $7, 148($0)
lui $9, 43707
ori $9, $9, 52445
sw $9, 136($0)
# ---> block body <---
lw $0, 72($0)
ori $0, $0, 1
sw $0, 147($8)
sw $8, 136($0)
# ---> block tail <---
lui $7, 65535
ori $7, $7, 35654
lui $9, 65535
ori $9, $9, 52125
# ---> endpc 3e20 <---

# ---> block head <---
lui $14, 43707
ori $14, $14, 52445
sw $14, 140($0)
# ---> block body <---
lw $0, 52($0)
ori $0, $0, 4
sw $0, 13507($9)
sw $9, 140($0)
# ---> block tail <---
ori $14, $0, 4658
# ---> endpc 3e40 <---

# ---> block head <---
# ---> block body <---
lw $21, 4189($21)
ori $21, $21, 11
addu $21, $21, $15
# ---> block tail <---
# ---> endpc 3e4c <---

# ---> block head <---
# ---> block body <---
lw $22, -7658($22)
ori $22, $22, 10
subu $22, $15, $22
# ---> block tail <---
# ---> endpc 3e58 <---

# ---> block head <---
# ---> block body <---
lw $23, 11875($23)
ori $23, $23, 7
addu $23, $23, $15
# ---> block tail <---
# ---> endpc 3e64 <---

# ---> block head <---
# ---> block body <---
lw $25, -11280($24)
ori $25, $24, 1
subu $25, $25, $24
# ---> block tail <---
# ---> endpc 3e70 <---

# ---> block head <---
# ---> block body <---
lw $26, 8676($27)
ori $27, $26, 19
addu $26, $27, $26
# ---> block tail <---
lui $26, 65535
ori $26, $26, 54526
# ---> endpc 3e84 <---

# ---> block head <---
# ---> block body <---
lw $28, 14063($29)
ori $28, $29, 2
subu $28, $28, $29
# ---> block tail <---
# ---> endpc 3e90 <---

# ---> block head <---
# ---> block body <---
lw $0, 68($0)
ori $0, $0, 1
addu $30, $0, $30
# ---> block tail <---
# ---> endpc 3e9c <---

# ---> block head <---
# ---> block body <---
lw $0, 68($0)
ori $0, $0, 4
subu $1, $1, $0
# ---> block tail <---
# ---> endpc 3ea8 <---

# ---> block head <---
# ---> block body <---
lw $2, 462($2)
ori $2, $2, 114
lw $15, 17166($2)
# ---> block tail <---
# ---> endpc 3eb4 <---

# ---> block head <---
# ---> block body <---
lw $3, 464($3)
ori $3, $3, 91
lw $15, 17197($3)
# ---> block tail <---
# ---> endpc 3ec0 <---

# ---> block head <---
# ---> block body <---
lw $4, 17243($4)
ori $4, $4, 2
lw $15, 17202($4)
# ---> block tail <---
# ---> endpc 3ecc <---

# ---> block head <---
# ---> block body <---
lw $6, 17252($5)
ori $5, $6, 70
lw $6, 17198($5)
# ---> block tail <---
# ---> endpc 3ed8 <---

# ---> block head <---
# ---> block body <---
lw $8, 29954($7)
ori $7, $8, 77
lw $8, 17183($7)
# ---> block tail <---
# ---> endpc 3ee4 <---

# ---> block head <---
# ---> block body <---
lw $10, 13483($9)
ori $9, $10, 20
lw $10, 17236($9)
# ---> block tail <---
# ---> endpc 3ef0 <---

# ---> block head <---
# ---> block body <---
lw $0, 64($0)
ori $0, $0, 1
lw $11, 12($0)
# ---> block tail <---
# ---> endpc 3efc <---

# ---> block head <---
# ---> block body <---
lw $0, 72($0)
ori $0, $0, 4
lw $12, 64($0)
# ---> block tail <---
# ---> endpc 3f08 <---

# ---> block head <---
ori $18, $0, 28031
# ---> block body <---
lw $13, -25875($13)
ori $13, $13, 25
beq $13, $18, TAG_BEQ_67
ori $19, $0, 1
ori $19, $0, 1
TAG_BEQ_67:
# ---> block tail <---
# ---> endpc 3f20 <---

# ---> block head <---
ori $22, $0, 28031
# ---> block body <---
lw $14, -4642($14)
ori $14, $14, 4
beq $14, $22, TAG_BEQ_69
ori $23, $0, 1
ori $23, $0, 1
TAG_BEQ_69:
# ---> block tail <---
# ---> endpc 3f38 <---

# ---> block head <---
ori $0, $0, 0
ori $28, $0, 1725
# ---> block body <---
lw $15, 14040($15)
ori $15, $15, 25
beq $28, $15, TAG_BEQ_72
ori $29, $0, 1
ori $29, $0, 1
TAG_BEQ_72:
# ---> block tail <---
# ---> endpc 3f54 <---

# ---> block head <---
ori $30, $0, 1256
# ---> block body <---
lw $17, -1188($16)
ori $17, $16, 8
beq $30, $17, TAG_BEQ_74
ori $2, $0, 1
ori $2, $0, 1
TAG_BEQ_74:
# ---> block tail <---
# ---> endpc 3f6c <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lw $19, -27979($18)
ori $19, $18, 3
beq $19, $18, TAG_BEQ_76
ori $3, $0, 1
ori $3, $0, 1
TAG_BEQ_76:
# ---> block tail <---
# ---> endpc 3f84 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lw $20, -17813($21)
ori $20, $21, 5
beq $20, $20, TAG_BEQ_79
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_79:
# ---> block tail <---
# ---> endpc 3fa0 <---

# ---> block head <---
# ---> block body <---
lw $0, 60($0)
ori $0, $0, 1
beq $22, $0, TAG_BEQ_80
ori $5, $0, 1
ori $5, $0, 1
TAG_BEQ_80:
# ---> block tail <---
# ---> endpc 3fb4 <---

ori $v0, $zero, 10
syscall
