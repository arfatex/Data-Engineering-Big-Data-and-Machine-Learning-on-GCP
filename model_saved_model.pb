?u
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype?
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
0
Sigmoid
x"T
y"T"
Ttype:

2
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.4.02unknown8?X
b
bouncesPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
g
time_on_sitePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
m
"input_layer/bounces/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
input_layer/bounces/ExpandDims
ExpandDimsbounces"input_layer/bounces/ExpandDims/dim*
T0*'
_output_shapes
:?????????
g
input_layer/bounces/ShapeShapeinput_layer/bounces/ExpandDims*
T0*
_output_shapes
:
q
'input_layer/bounces/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
s
)input_layer/bounces/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
s
)input_layer/bounces/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
!input_layer/bounces/strided_sliceStridedSliceinput_layer/bounces/Shape'input_layer/bounces/strided_slice/stack)input_layer/bounces/strided_slice/stack_1)input_layer/bounces/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
e
#input_layer/bounces/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
!input_layer/bounces/Reshape/shapePack!input_layer/bounces/strided_slice#input_layer/bounces/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
input_layer/bounces/ReshapeReshapeinput_layer/bounces/ExpandDims!input_layer/bounces/Reshape/shape*
T0*'
_output_shapes
:?????????
r
'input_layer/time_on_site/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
?
#input_layer/time_on_site/ExpandDims
ExpandDimstime_on_site'input_layer/time_on_site/ExpandDims/dim*
T0*'
_output_shapes
:?????????
q
input_layer/time_on_site/ShapeShape#input_layer/time_on_site/ExpandDims*
T0*
_output_shapes
:
v
,input_layer/time_on_site/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
x
.input_layer/time_on_site/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
x
.input_layer/time_on_site/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
&input_layer/time_on_site/strided_sliceStridedSliceinput_layer/time_on_site/Shape,input_layer/time_on_site/strided_slice/stack.input_layer/time_on_site/strided_slice/stack_1.input_layer/time_on_site/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
j
(input_layer/time_on_site/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
?
&input_layer/time_on_site/Reshape/shapePack&input_layer/time_on_site/strided_slice(input_layer/time_on_site/Reshape/shape/1*
N*
T0*
_output_shapes
:
?
 input_layer/time_on_site/ReshapeReshape#input_layer/time_on_site/ExpandDims&input_layer/time_on_site/Reshape/shape*
T0*'
_output_shapes
:?????????
Y
input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
?
input_layer/concatConcatV2input_layer/bounces/Reshape input_layer/time_on_site/Reshapeinput_layer/concat/axis*
N*
T0*'
_output_shapes
:?????????
f
ConstConst*
_output_shapes

:*
dtype0*)
value B"?!^Og\???T??H?K?
?
weightsVarHandleOp*
_class
loc:@weights*
_output_shapes
: *
dtype0*
shape
:*
shared_name	weights
_
(weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpweights*
_output_shapes
: 
?
weights/AssignAssignVariableOpweightsConst*
dtype0
c
weights/Read/ReadVariableOpReadVariableOpweights*
_output_shapes

:*
dtype0
P
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2%?e?R}?
?
	interceptVarHandleOp*
_class
loc:@intercept*
_output_shapes
: *
dtype0*
shape: *
shared_name	intercept
c
*intercept/IsInitialized/VarIsInitializedOpVarIsInitializedOp	intercept*
_output_shapes
: 
E
intercept/AssignAssignVariableOp	interceptConst_1*
dtype0
_
intercept/Read/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
a
CastCastinput_layer/concat*

DstT0*

SrcT0*'
_output_shapes
:?????????
]
MatMul/ReadVariableOpReadVariableOpweights*
_output_shapes

:*
dtype0
_
MatMulMatMulCastMatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
T
Add/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
X
AddAddMatMulAdd/ReadVariableOp*
T0*'
_output_shapes
:?????????
I
SigmoidSigmoidAdd*
T0*'
_output_shapes
:?????????
<
ShapeShapeSigmoid*
T0*
_output_shapes
:
S

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB 2      ??
Q
onesFillShape
ones/Const*
T0*'
_output_shapes
:?????????
K
subSubonesSigmoid*
T0*'
_output_shapes
:?????????
S
output_probs/axisConst*
_output_shapes
: *
dtype0*
value	B :
t
output_probsConcatV2Sigmoidsuboutput_probs/axis*
N*
T0*'
_output_shapes
:?????????
T
Const_2Const*
_output_shapes
:*
dtype0*
valueBB1B0
P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
Z

ExpandDims
ExpandDimsConst_2ExpandDims/dim*
T0*
_output_shapes

:
C
Shape_1Shapeoutput_probs*
T0*
_output_shapes
:
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_sliceStridedSliceShape_1strided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
[
output_labels/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :
w
output_labels/multiplesPackstrided_sliceoutput_labels/multiples/1*
N*
T0*
_output_shapes
:
l
output_labelsTile
ExpandDimsoutput_labels/multiples*
T0*'
_output_shapes
:?????????
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
^
ArgMaxArgMaxoutput_probsArgMax/dimension*
T0*#
_output_shapes
:?????????
=
Shape_2ShapeArgMax*
T0	*
_output_shapes
:
_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_1StridedSliceShape_2strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
M
range/startConst*
_output_shapes
: *
dtype0*
value	B : 
M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :
^
rangeRangerange/startstrided_slice_1range/delta*#
_output_shapes
:?????????
R
Cast_1Castrange*

DstT0	*

SrcT0*#
_output_shapes
:?????????
d
stackPackCast_1ArgMax*
N*
T0	*'
_output_shapes
:?????????*

axis
n
GatherNdGatherNdoutput_labelsstack*
Tindices0	*
Tparams0*#
_output_shapes
:?????????
c
output_class/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   
g
output_classReshapeGatherNdoutput_class/shape*
T0*'
_output_shapes
:?????????
0
initNoOp^intercept/Assign^weights/Assign

init_all_tablesNoOp
+

group_depsNoOp^init^init_all_tables

init_all_tables_1NoOp
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
?
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
?
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
?
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesintercept/Read/ReadVariableOpweights/Read/ReadVariableOp"/device:CPU:0*
dtypes
2
?
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
?
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
?
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
R
save/AssignVariableOpAssignVariableOp	interceptsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
R
save/AssignVariableOp_1AssignVariableOpweightssave/Identity_2*
dtype0
L
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1
-
save/restore_allNoOp^save/restore_shard"?<
save/Const:0save/Identity:0save/restore_all (5 @F8",
saved_model_main_op

init_all_tables_1"?
trainable_variables??
G
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2Const:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_1:08"?
	variables??
G
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2Const:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_1:08*?
serving_default?
'
bounces
	bounces:0?????????
1
time_on_site!
time_on_site:0?????????K
"predicted_will_buy_on_return_visit%
output_class:0?????????G
will_buy_on_return_visit_probs%
output_probs:0?????????I
will_buy_on_return_visit_values&
output_labels:0?????????tensorflow/serving/predict