jal TAG_JAL_0
addu $8, $8, $13
subu $8, $8, $13
TAG_JAL_0:

beq $0, $0, TAG_IN_BLOCK_0
addu $8, $8, $13
TAG_JAL_1:
beq $0, $0, TAG_OUT_BLOCK_0
addu $8, $8, $13
TAG_IN_BLOCK_0:
jal TAG_JAL_1
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_0:

j TAG_J_0
addu $8, $8, $13
subu $8, $8, $13
TAG_J_0:

beq $0, $0, TAG_IN_BLOCK_1
addu $8, $8, $13
TAG_J_1:
beq $0, $0, TAG_OUT_BLOCK_1
addu $8, $8, $13
TAG_IN_BLOCK_1:
j TAG_J_1
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_1:

lui $1, 32767
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 65535
sw $1, 0($0)
lui $1, 32768
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 0
sw $1, 4($0)
lui $1, 65535
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 65532
sw $1, 8($0)
lui $1, 65535
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 65533
sw $1, 12($0)
lui $1, 65535
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 65534
sw $1, 16($0)
lui $1, 65535
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 65535
sw $1, 20($0)
ori $1, $0, 0
sw $1, 24($0)
ori $1, $0, 1
sw $1, 28($0)
ori $1, $0, 2
sw $1, 32($0)
ori $1, $0, 3
sw $1, 36($0)
ori $1, $0, 4
sw $1, 40($0)
lui $1, 32080
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 57790
sw $1, 44($0)
lui $1, 22985
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 63733
sw $1, 48($0)
lui $1, 28501
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 6791
sw $1, 52($0)
lui $1, 6701
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 23275
sw $1, 56($0)
lui $1, 64476
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 33582
sw $1, 60($0)
lui $1, 5059
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 32921
sw $1, 64($0)
lui $1, 42738
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 14960
sw $1, 68($0)
lui $1, 55300
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 41970
sw $1, 72($0)
lui $1, 40447
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 47731
sw $1, 76($0)

ori $14, $0, 80
ori $8, $0, 0
TAG_BEQ_LOOP_0:
ori $9, $0, 0
TAG_BEQ_LOOP_1:

lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_0
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_0:

beq $0, $0, TAG_IN_BLOCK_2
addu $12, $12, $13
TAG_BEQ_1:
beq $0, $0, TAG_OUT_BLOCK_2
addu $12, $12, $13
TAG_IN_BLOCK_2:
lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_1
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_2:

beq $0, $11, TAG_BEQ_2
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_2:

beq $0, $0, TAG_IN_BLOCK_3
addu $12, $12, $13
TAG_BEQ_3:
beq $0, $0, TAG_OUT_BLOCK_3
addu $12, $12, $13
TAG_IN_BLOCK_3:
beq $0, $11, TAG_BEQ_3
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_3:

ori $1, $0, 4
addu $9, $9, $1
ori $0, $0, 0
ori $0, $0, 0
beq $9, $14, TAG_BEQ_OUT_0
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_1
ori $0, $0, 0
TAG_BEQ_OUT_0:

ori $1, $0, 4
addu $8, $8, $1
ori $0, $0, 0
ori $0, $0, 0
beq $8, $14, TAG_BEQ_OUT_1
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_0
ori $0, $0, 0
TAG_BEQ_OUT_1:

lui $2, 33201
ori $0, $0, 0
ori $0, $0, 0
ori $2, $2, 33299
lui $3, 18968
ori $0, $0, 0
ori $0, $0, 0
ori $3, $3, 57341
lui $4, 59737
ori $0, $0, 0
ori $0, $0, 0
ori $4, $4, 39007
lui $5, 27507
ori $0, $0, 0
ori $0, $0, 0
ori $5, $5, 7337
lui $6, 11222
ori $0, $0, 0
ori $0, $0, 0
ori $6, $6, 30774
lui $7, 25973
ori $0, $0, 0
ori $0, $0, 0
ori $7, $7, 46535
lui $8, 30009
ori $0, $0, 0
ori $0, $0, 0
ori $8, $8, 43039
lui $9, 60285
ori $0, $0, 0
ori $0, $0, 0
ori $9, $9, 43686
lui $10, 8230
ori $0, $0, 0
ori $0, $0, 0
ori $10, $10, 33481
lui $11, 7051
ori $0, $0, 0
ori $0, $0, 0
ori $11, $11, 63916
lui $12, 6915
ori $0, $0, 0
ori $0, $0, 0
ori $12, $12, 36580
lui $13, 34055
ori $0, $0, 0
ori $0, $0, 0
ori $13, $13, 42801
lui $14, 4737
ori $0, $0, 0
ori $0, $0, 0
ori $14, $14, 51495
lui $15, 10051
ori $0, $0, 0
ori $0, $0, 0
ori $15, $15, 7328
lui $16, 53562
ori $0, $0, 0
ori $0, $0, 0
ori $16, $16, 33221
lui $17, 20083
ori $0, $0, 0
ori $0, $0, 0
ori $17, $17, 28130
lui $18, 49073
ori $0, $0, 0
ori $0, $0, 0
ori $18, $18, 30364
lui $19, 41278
ori $0, $0, 0
ori $0, $0, 0
ori $19, $19, 5730
lui $20, 46899
ori $0, $0, 0
ori $0, $0, 0
ori $20, $20, 46563
lui $21, 39049
ori $0, $0, 0
ori $0, $0, 0
ori $21, $21, 37932
lui $22, 3961
ori $0, $0, 0
ori $0, $0, 0
ori $22, $22, 8487
lui $23, 55368
ori $0, $0, 0
ori $0, $0, 0
ori $23, $23, 16112
lui $24, 5565
ori $0, $0, 0
ori $0, $0, 0
ori $24, $24, 11982
lui $25, 3868
ori $0, $0, 0
ori $0, $0, 0
ori $25, $25, 41461
lui $26, 37521
ori $0, $0, 0
ori $0, $0, 0
ori $26, $26, 22656
lui $27, 24881
ori $0, $0, 0
ori $0, $0, 0
ori $27, $27, 52029
lui $28, 17912
ori $0, $0, 0
ori $0, $0, 0
ori $28, $28, 36646
lui $29, 10967
ori $0, $0, 0
ori $0, $0, 0
ori $29, $29, 16232
lui $30, 19469
ori $0, $0, 0
ori $0, $0, 0
ori $30, $30, 41308
lui $31, 4522
ori $0, $0, 0
ori $0, $0, 0
ori $31, $31, 57633

ori $14, $0, 80
ori $8, $0, 0
TAG_BEQ_LOOP_2:
ori $9, $0, 0
TAG_BEQ_LOOP_3:

lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_4
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_4:

beq $0, $0, TAG_IN_BLOCK_4
addu $12, $12, $13
TAG_BEQ_5:
beq $0, $0, TAG_OUT_BLOCK_4
addu $12, $12, $13
TAG_IN_BLOCK_4:
lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_5
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_4:

beq $0, $11, TAG_BEQ_6
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_6:

beq $0, $0, TAG_IN_BLOCK_5
addu $12, $12, $13
TAG_BEQ_7:
beq $0, $0, TAG_OUT_BLOCK_5
addu $12, $12, $13
TAG_IN_BLOCK_5:
beq $0, $11, TAG_BEQ_7
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_5:

ori $1, $0, 4
addu $9, $9, $1
ori $0, $0, 0
ori $0, $0, 0
beq $9, $14, TAG_BEQ_OUT_2
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_3
ori $0, $0, 0
TAG_BEQ_OUT_2:

ori $1, $0, 4
addu $8, $8, $1
ori $0, $0, 0
ori $0, $0, 0
beq $8, $14, TAG_BEQ_OUT_3
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_2
ori $0, $0, 0
TAG_BEQ_OUT_3:

jal TAG_JAL_2
addu $8, $8, $13
subu $8, $8, $13
TAG_JAL_2:

beq $0, $0, TAG_IN_BLOCK_6
addu $8, $8, $13
TAG_JAL_3:
beq $0, $0, TAG_OUT_BLOCK_6
addu $8, $8, $13
TAG_IN_BLOCK_6:
jal TAG_JAL_3
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_6:

j TAG_J_2
addu $8, $8, $13
subu $8, $8, $13
TAG_J_2:

beq $0, $0, TAG_IN_BLOCK_7
addu $8, $8, $13
TAG_J_3:
beq $0, $0, TAG_OUT_BLOCK_7
addu $8, $8, $13
TAG_IN_BLOCK_7:
j TAG_J_3
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_7:

la $14, TAG_JR_0
jr $14
addu $8, $8, $13
subu $8, $8, $13
TAG_JR_0:

la $14, TAG_JR_1
beq $0, $0, TAG_IN_BLOCK_8
addu $8, $8, $13
TAG_JR_1:
beq $0, $0, TAG_OUT_BLOCK_8
addu $8, $8, $13
TAG_IN_BLOCK_8:
jr $14
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_8:

la $31, TAG_JR_2
jr $31
addu $8, $8, $13
subu $8, $8, $13
TAG_JR_2:

la $31, TAG_JR_3
beq $0, $0, TAG_IN_BLOCK_9
addu $8, $8, $13
TAG_JR_3:
beq $0, $0, TAG_OUT_BLOCK_9
addu $8, $8, $13
TAG_IN_BLOCK_9:
jr $31
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_9:

ori $v0, $zero, 10
syscall
