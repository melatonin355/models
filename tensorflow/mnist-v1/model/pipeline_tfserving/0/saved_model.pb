ó
ł
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype

ImageSummary
tag
tensor"T
summary"

max_imagesint(0"
Ttype0:
2"'
	bad_colortensorB:˙  ˙
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.7.02v1.7.0-3-g024aecf414üó
p
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
f
zeros/shape_as_tensorConst*
valueB"  
   *
dtype0*
_output_shapes
:
P
zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
m
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0*
_output_shapes
:	

~
Variable
VariableV2*
shared_name *
dtype0*
_output_shapes
:	
*
	container *
shape:	


Variable/AssignAssignVariablezeros*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
:	
*
use_locking(
j
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
:	

a
zeros_1/shape_as_tensorConst*
valueB:
*
dtype0*
_output_shapes
:
R
zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
n
zeros_1Fillzeros_1/shape_as_tensorzeros_1/Const*
_output_shapes
:
*
T0*

index_type0
v

Variable_1
VariableV2*
shared_name *
dtype0*
_output_shapes
:
*
	container *
shape:


Variable_1/AssignAssign
Variable_1zeros_1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:

k
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1*
_output_shapes
:


MatMulMatMulPlaceholderVariable/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
transpose_a( *
transpose_b( 
U
addAddMatMulVariable_1/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

I
SoftmaxSoftmaxadd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
p
Placeholder_1Placeholder*
shape:˙˙˙˙˙˙˙˙˙
*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

E
LogLogSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

P
mulMulPlaceholder_1Log*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
_
Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
q
SumSummulSum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
=
NegNegSum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
ConstConst*
_output_shapes
:*
valueB: *
dtype0
V
MeanMeanNegConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*

index_type0*
_output_shapes
: *
T0
k
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
\
gradients/Mean_grad/ShapeShapeNeg*
_output_shapes
:*
T0*
out_type0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/Mean_grad/Shape_1ShapeNeg*
out_type0*
_output_shapes
:*
T0
^
gradients/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
c
gradients/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*
_output_shapes
: 

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
[
gradients/Sum_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:

gradients/Sum_grad/SizeConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:
Ľ
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
_output_shapes
:*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/Shape_1Const*
valueB:*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
:

gradients/Sum_grad/range/startConst*
value	B : *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 

gradients/Sum_grad/range/deltaConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ď
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:

gradients/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0
ž
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
_output_shapes
:*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape
ú
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*+
_class!
loc:@gradients/Sum_grad/Shape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

gradients/Sum_grad/Maximum/yConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ŕ
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
Ż
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
_output_shapes
:

gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:

gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*

Tmultiples0*
T0
e
gradients/mul_grad/ShapeShapePlaceholder_1*
T0*
out_type0*
_output_shapes
:
]
gradients/mul_grad/Shape_1ShapeLog*
T0*
out_type0*
_output_shapes
:
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
m
gradients/mul_grad/MulMulgradients/Sum_grad/TileLog*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

y
gradients/mul_grad/Mul_1MulPlaceholder_1gradients/Sum_grad/Tile*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Ú
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

ŕ
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1

gradients/Log_grad/Reciprocal
ReciprocalSoftmax.^gradients/mul_grad/tuple/control_dependency_1*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0

gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

t
gradients/Softmax_grad/mulMulgradients/Log_grad/mulSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

v
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ś
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
	keep_dims( 
u
$gradients/Softmax_grad/Reshape/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
Ť
gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Softmax_grad/subSubgradients/Log_grad/mulgradients/Softmax_grad/Reshape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

z
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

^
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ľ
gradients/add_grad/SumSumgradients/Softmax_grad/mul_1(gradients/add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0*
Tshape0
Š
gradients/add_grad/Sum_1Sumgradients/Softmax_grad/mul_1*gradients/add_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ú
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:

ť
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyVariable/read*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(*
T0
˛
gradients/MatMul_grad/MatMul_1MatMulPlaceholder+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:	
*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ĺ
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
â
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes
:	

b
GradientDescent/learning_rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 

4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Variable*
_output_shapes
:	
*
use_locking( *
T0
˙
6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_1*
_output_shapes
:


GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent
R
ArgMax/dimensionConst*
dtype0*
_output_shapes
: *
value	B :
x
ArgMaxArgMaxSoftmaxArgMax/dimension*

Tidx0*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
P
CastCastEqual*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_1MeanCastConst_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
T
ArgMax_2/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
|
ArgMax_2ArgMaxSoftmaxArgMax_2/dimension*
T0*
output_type0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
f
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
v
ReshapeReshapePlaceholderReshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
Q

inputs/tagConst*
valueB Binputs*
dtype0*
_output_shapes
: 

inputsImageSummary
inputs/tagReshape*
	bad_colorB:˙  ˙*
_output_shapes
: *

max_images
*
T0
N
weights/RankConst*
value	B :*
dtype0*
_output_shapes
: 
U
weights/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
U
weights/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
v
weights/rangeRangeweights/range/startweights/Rankweights/range/delta*
_output_shapes
:*

Tidx0
p
weights/MeanMeanVariable/readweights/range*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
^
weights/mean/tagsConst*
valueB Bweights/mean*
dtype0*
_output_shapes
: 
_
weights/meanScalarSummaryweights/mean/tagsweights/Mean*
T0*
_output_shapes
: 
Y
weights/subSubVariable/readweights/Mean*
_output_shapes
:	
*
T0
O
weights/SquareSquareweights/sub*
T0*
_output_shapes
:	

^
weights/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
s
weights/Mean_1Meanweights/Squareweights/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
E
weights/SqrtSqrtweights/Mean_1*
T0*
_output_shapes
: 
b
weights/stddev/tagsConst*
valueB Bweights/stddev*
dtype0*
_output_shapes
: 
c
weights/stddevScalarSummaryweights/stddev/tagsweights/Sqrt*
T0*
_output_shapes
: 
P
weights/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
W
weights/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
W
weights/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0
~
weights/range_1Rangeweights/range_1/startweights/Rank_1weights/range_1/delta*
_output_shapes
:*

Tidx0
p
weights/MaxMaxVariable/readweights/range_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
\
weights/max/tagsConst*
valueB Bweights/max*
dtype0*
_output_shapes
: 
\
weights/maxScalarSummaryweights/max/tagsweights/Max*
T0*
_output_shapes
: 
P
weights/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
W
weights/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
W
weights/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
~
weights/range_2Rangeweights/range_2/startweights/Rank_2weights/range_2/delta*

Tidx0*
_output_shapes
:
p
weights/MinMinVariable/readweights/range_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
\
weights/min/tagsConst*
valueB Bweights/min*
dtype0*
_output_shapes
: 
\
weights/minScalarSummaryweights/min/tagsweights/Min*
T0*
_output_shapes
: 
c
weights/weights/tagConst* 
valueB Bweights/weights*
dtype0*
_output_shapes
: 
h
weights/weightsHistogramSummaryweights/weights/tagVariable/read*
T0*
_output_shapes
: 
M
biases/RankConst*
value	B :*
dtype0*
_output_shapes
: 
T
biases/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
T
biases/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
r
biases/rangeRangebiases/range/startbiases/Rankbiases/range/delta*
_output_shapes
:*

Tidx0
p
biases/MeanMeanVariable_1/readbiases/range*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
\
biases/mean/tagsConst*
valueB Bbiases/mean*
dtype0*
_output_shapes
: 
\
biases/meanScalarSummarybiases/mean/tagsbiases/Mean*
T0*
_output_shapes
: 
T

biases/subSubVariable_1/readbiases/Mean*
_output_shapes
:
*
T0
H
biases/SquareSquare
biases/sub*
_output_shapes
:
*
T0
V
biases/ConstConst*
valueB: *
dtype0*
_output_shapes
:
p
biases/Mean_1Meanbiases/Squarebiases/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
C
biases/SqrtSqrtbiases/Mean_1*
T0*
_output_shapes
: 
`
biases/stddev/tagsConst*
dtype0*
_output_shapes
: *
valueB Bbiases/stddev
`
biases/stddevScalarSummarybiases/stddev/tagsbiases/Sqrt*
_output_shapes
: *
T0
O
biases/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
V
biases/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
V
biases/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
z
biases/range_1Rangebiases/range_1/startbiases/Rank_1biases/range_1/delta*
_output_shapes
:*

Tidx0
p

biases/MaxMaxVariable_1/readbiases/range_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
Z
biases/max/tagsConst*
valueB B
biases/max*
dtype0*
_output_shapes
: 
Y

biases/maxScalarSummarybiases/max/tags
biases/Max*
T0*
_output_shapes
: 
O
biases/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
V
biases/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
V
biases/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
z
biases/range_2Rangebiases/range_2/startbiases/Rank_2biases/range_2/delta*

Tidx0*
_output_shapes
:
p

biases/MinMinVariable_1/readbiases/range_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Z
biases/min/tagsConst*
dtype0*
_output_shapes
: *
valueB B
biases/min
Y

biases/minScalarSummarybiases/min/tags
biases/Min*
T0*
_output_shapes
: 
_
biases/biases/tagConst*
valueB Bbiases/biases*
dtype0*
_output_shapes
: 
f
biases/biasesHistogramSummarybiases/biases/tagVariable_1/read*
_output_shapes
: *
T0
N
	loss/tagsConst*
_output_shapes
: *
valueB
 Bloss*
dtype0
G
lossScalarSummary	loss/tagsMean*
T0*
_output_shapes
: 
V
accuracy/tagsConst*
valueB Baccuracy*
dtype0*
_output_shapes
: 
Q
accuracyScalarSummaryaccuracy/tagsMean_1*
T0*
_output_shapes
: 
ç
Merge/MergeSummaryMergeSummaryinputsweights/meanweights/stddevweights/maxweights/minweights/weightsbiases/meanbiases/stddev
biases/max
biases/minbiases/biaseslossaccuracy*
N*
_output_shapes
: 
2
initNoOp^Variable/Assign^Variable_1/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
u
save/SaveV2/tensor_namesConst*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
g
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_class
loc:@save/Const*
_output_shapes
: *
T0

save/RestoreV2/tensor_namesConst"/device:CPU:0*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B 
¤
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2

save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
:	

˘
save/Assign_1Assign
Variable_1save/RestoreV2:1*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(
6
save/restore_allNoOp^save/Assign^save/Assign_1
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
w
save_1/SaveV2/tensor_namesConst*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
i
save_1/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2

save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
{
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
Ź
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes

::
Ł
save_1/AssignAssignVariablesave_1/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
:	
*
use_locking(
Ś
save_1/Assign_1Assign
Variable_1save_1/RestoreV2:1*
_output_shapes
:
*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
<
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1
R
save_2/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
w
save_2/SaveV2/tensor_namesConst*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
i
save_2/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2

save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save_2/Const

save_2/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*)
value BBVariableB
Variable_1
{
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
Ź
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes

::
Ł
save_2/AssignAssignVariablesave_2/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
:	

Ś
save_2/Assign_1Assign
Variable_1save_2/RestoreV2:1*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(
<
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1
R
save_3/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
w
save_3/SaveV2/tensor_namesConst*
_output_shapes
:*)
value BBVariableB
Variable_1*
dtype0
i
save_3/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2

save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save_3/Const

save_3/RestoreV2/tensor_namesConst"/device:CPU:0*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
{
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
Ź
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
Ł
save_3/AssignAssignVariablesave_3/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
:	
*
use_locking(
Ś
save_3/Assign_1Assign
Variable_1save_3/RestoreV2:1*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(
<
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1
R
save_4/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
w
save_4/SaveV2/tensor_namesConst*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
i
save_4/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0*
_output_shapes
:

save_4/SaveV2SaveV2save_4/Constsave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slicesVariable
Variable_1*
dtypes
2

save_4/control_dependencyIdentitysave_4/Const^save_4/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save_4/Const

save_4/RestoreV2/tensor_namesConst"/device:CPU:0*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
{
!save_4/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
Ź
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
Ł
save_4/AssignAssignVariablesave_4/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
:	
*
use_locking(
Ś
save_4/Assign_1Assign
Variable_1save_4/RestoreV2:1*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(
<
save_4/restore_allNoOp^save_4/Assign^save_4/Assign_1
R
save_5/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_5/StringJoin/inputs_1Const*<
value3B1 B+_temp_1800d6d76a9a4cf888144b7076fc4d09/part*
dtype0*
_output_shapes
: 
{
save_5/StringJoin
StringJoinsave_5/Constsave_5/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_5/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_5/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save_5/ShardedFilenameShardedFilenamesave_5/StringJoinsave_5/ShardedFilename/shardsave_5/num_shards"/device:CPU:0*
_output_shapes
: 

save_5/SaveV2/tensor_namesConst"/device:CPU:0*)
value BBVariableB
Variable_1*
dtype0*
_output_shapes
:
x
save_5/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
˘
save_5/SaveV2SaveV2save_5/ShardedFilenamesave_5/SaveV2/tensor_namessave_5/SaveV2/shape_and_slicesVariable
Variable_1"/device:CPU:0*
dtypes
2
¨
save_5/control_dependencyIdentitysave_5/ShardedFilename^save_5/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_5/ShardedFilename*
_output_shapes
: 
˛
-save_5/MergeV2Checkpoints/checkpoint_prefixesPacksave_5/ShardedFilename^save_5/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save_5/MergeV2CheckpointsMergeV2Checkpoints-save_5/MergeV2Checkpoints/checkpoint_prefixessave_5/Const"/device:CPU:0*
delete_old_dirs(

save_5/IdentityIdentitysave_5/Const^save_5/control_dependency^save_5/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 

save_5/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*)
value BBVariableB
Variable_1
{
!save_5/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
Ź
save_5/RestoreV2	RestoreV2save_5/Constsave_5/RestoreV2/tensor_names!save_5/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
Ł
save_5/AssignAssignVariablesave_5/RestoreV2*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
:	
*
use_locking(
Ś
save_5/Assign_1Assign
Variable_1save_5/RestoreV2:1*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
:
*
use_locking(
>
save_5/restore_shardNoOp^save_5/Assign^save_5/Assign_1
1
save_5/restore_allNoOp^save_5/restore_shard"B
save_5/Const:0save_5/Identity:0save_5/restore_all (5 @F8"
y_
Placeholder_1:0"
train_op

GradientDescent"(
inputs
{"image": "Placeholder:0"}"
trainable_variables|z
7

Variable:0Variable/AssignVariable/read:02zeros:0
?
Variable_1:0Variable_1/AssignVariable_1/read:02	zeros_1:0"Ď
	summariesÁ
ž
inputs:0
weights/mean:0
weights/stddev:0
weights/max:0
weights/min:0
weights/weights:0
biases/mean:0
biases/stddev:0
biases/max:0
biases/min:0
biases/biases:0
loss:0

accuracy:0"
	variables|z
7

Variable:0Variable/AssignVariable/read:02zeros:0
?
Variable_1:0Variable_1/AssignVariable_1/read:02	zeros_1:0"
accuracy

Mean_1:0"
x
Placeholder:0"*
outputs
{"prediction": "Softmax:0"}*ž
serving_defaultŞ
/
inputs%
Placeholder:0˙˙˙˙˙˙˙˙˙1
probabilities 
	Softmax:0˙˙˙˙˙˙˙˙˙
(
classes

ArgMax_2:0	˙˙˙˙˙˙˙˙˙tensorflow/serving/predict