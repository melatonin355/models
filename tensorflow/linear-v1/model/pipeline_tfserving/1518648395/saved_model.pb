ŐV
	Đ
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*	1.5.0-rc02v1.3.0-rc1-6090-g622487f554ËG

global_step/Initializer/zerosConst*
value	B	 R *
dtype0	*
_class
loc:@global_step*
_output_shapes
: 

global_step
VariableV2*
shape: *
dtype0	*
	container *
shared_name *
_class
loc:@global_step*
_output_shapes
: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
Placeholder_1Placeholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
Variable/initial_valueConst*
valueB*ÍĚĚ=*
dtype0*
_output_shapes
:
t
Variable
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ś
Variable/AssignAssignVariableVariable/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
:
e
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
:
e
Variable_1/initial_valueConst*
valueB*ÍĚĚ=*
dtype0*
_output_shapes
:
v

Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
Ž
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable_1*
_output_shapes
:
k
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1*
_output_shapes
:
T
MulMulVariable/readPlaceholder*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
Mul_1MulVariable_1/readPlaceholder_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
D
AddAddMulMul_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_557e7a54daa743ffab07b144cf161bd6/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*6
value-B+BVariableB
Variable_1Bglobal_step*
dtype0*
_output_shapes
:
x
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
¨
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1global_step"/device:CPU:0*
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*

axis *
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
l
save/RestoreV2/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignVariablesave/RestoreV2*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
:
p
save/RestoreV2_1/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
˘
save/Assign_1Assign
Variable_1save/RestoreV2_1*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable_1*
_output_shapes
:
q
save/RestoreV2_2/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2	*
_output_shapes
:
 
save/Assign_2Assignglobal_stepsave/RestoreV2_2*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
H
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_all_tables^init_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_0e9a1fbd17cc4e41b2a32b55206be416/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*6
value-B+BVariableB
Variable_1Bglobal_step*
dtype0*
_output_shapes
:
z
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
°
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariable
Variable_1global_step"/device:CPU:0*
dtypes
2	
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
T0*

axis *
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
n
save_1/RestoreV2/tensor_namesConst*
valueBBVariable*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save_1/AssignAssignVariablesave_1/RestoreV2*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable*
_output_shapes
:
r
save_1/RestoreV2_1/tensor_namesConst*
valueBB
Variable_1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
Ś
save_1/Assign_1Assign
Variable_1save_1/RestoreV2_1*
T0*
validate_shape(*
use_locking(*
_class
loc:@Variable_1*
_output_shapes
:
s
save_1/RestoreV2_2/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2	*
_output_shapes
:
¤
save_1/Assign_2Assignglobal_stepsave_1/RestoreV2_2*
T0	*
validate_shape(*
use_locking(*
_class
loc:@global_step*
_output_shapes
: 
P
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
	variablesůö
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
H

Variable:0Variable/AssignVariable/read:02Variable/initial_value:0
P
Variable_1:0Variable_1/AssignVariable_1/read:02Variable_1/initial_value:0" 
global_step

global_step:0"ˇ
trainable_variables
H

Variable:0Variable/AssignVariable/read:02Variable/initial_value:0
P
Variable_1:0Variable_1/AssignVariable_1/read:02Variable_1/initial_value:0" 
legacy_init_op


group_deps*ł
serving_default
)
price 
Placeholder:0˙˙˙˙˙˙˙˙˙
/
	inventory"
Placeholder_1:0˙˙˙˙˙˙˙˙˙%
	relevance
Add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict