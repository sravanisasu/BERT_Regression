??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
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
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.4.12v2.4.1-0-g85c8b2a817f8??
?
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*'
shared_nameembedding_1/embeddings
?
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*!
_output_shapes
:???*
dtype0

conv1d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv1d_3/kernel
x
#conv1d_3/kernel/Read/ReadVariableOpReadVariableOpconv1d_3/kernel*#
_output_shapes
:?*
dtype0
r
conv1d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_3/bias
k
!conv1d_3/bias/Read/ReadVariableOpReadVariableOpconv1d_3/bias*
_output_shapes
:*
dtype0

conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv1d_4/kernel
x
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*#
_output_shapes
:?*
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
:*
dtype0

conv1d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?* 
shared_nameconv1d_5/kernel
x
#conv1d_5/kernel/Read/ReadVariableOpReadVariableOpconv1d_5/kernel*#
_output_shapes
:?*
dtype0
r
conv1d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_5/bias
k
!conv1d_5/bias/Read/ReadVariableOpReadVariableOpconv1d_5/bias*
_output_shapes
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?d*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:d*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:d*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

NoOpNoOp
?0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?0
value?0B?0 B?0
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
b

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
 bias
!trainable_variables
"regularization_losses
#	variables
$	keras_api
h

%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
R
+trainable_variables
,regularization_losses
-	variables
.	keras_api
R
/trainable_variables
0regularization_losses
1	variables
2	keras_api
R
3trainable_variables
4regularization_losses
5	variables
6	keras_api
R
7trainable_variables
8regularization_losses
9	variables
:	keras_api
R
;trainable_variables
<regularization_losses
=	variables
>	keras_api
R
?trainable_variables
@regularization_losses
A	variables
B	keras_api
h

Ckernel
Dbias
Etrainable_variables
Fregularization_losses
G	variables
H	keras_api
h

Ikernel
Jbias
Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
6
Oiter
	Pdecay
Qlearning_rate
Rmomentum
F
0
1
2
 3
%4
&5
C6
D7
I8
J9
 
N
0
1
2
3
 4
%5
&6
C7
D8
I9
J10
?
trainable_variables
regularization_losses
Slayer_metrics

Tlayers
	variables
Ulayer_regularization_losses
Vnon_trainable_variables
Wmetrics
 
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
?
trainable_variables
regularization_losses
Xlayer_metrics
Ylayer_regularization_losses
	variables

Zlayers
[non_trainable_variables
\metrics
[Y
VARIABLE_VALUEconv1d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
regularization_losses
]layer_metrics
^layer_regularization_losses
	variables

_layers
`non_trainable_variables
ametrics
[Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1
 

0
 1
?
!trainable_variables
"regularization_losses
blayer_metrics
clayer_regularization_losses
#	variables

dlayers
enon_trainable_variables
fmetrics
[Y
VARIABLE_VALUEconv1d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1
 

%0
&1
?
'trainable_variables
(regularization_losses
glayer_metrics
hlayer_regularization_losses
)	variables

ilayers
jnon_trainable_variables
kmetrics
 
 
 
?
+trainable_variables
,regularization_losses
llayer_metrics
mlayer_regularization_losses
-	variables

nlayers
onon_trainable_variables
pmetrics
 
 
 
?
/trainable_variables
0regularization_losses
qlayer_metrics
rlayer_regularization_losses
1	variables

slayers
tnon_trainable_variables
umetrics
 
 
 
?
3trainable_variables
4regularization_losses
vlayer_metrics
wlayer_regularization_losses
5	variables

xlayers
ynon_trainable_variables
zmetrics
 
 
 
?
7trainable_variables
8regularization_losses
{layer_metrics
|layer_regularization_losses
9	variables

}layers
~non_trainable_variables
metrics
 
 
 
?
;trainable_variables
<regularization_losses
?layer_metrics
 ?layer_regularization_losses
=	variables
?layers
?non_trainable_variables
?metrics
 
 
 
?
?trainable_variables
@regularization_losses
?layer_metrics
 ?layer_regularization_losses
A	variables
?layers
?non_trainable_variables
?metrics
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
 

C0
D1
?
Etrainable_variables
Fregularization_losses
?layer_metrics
 ?layer_regularization_losses
G	variables
?layers
?non_trainable_variables
?metrics
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

I0
J1
 

I0
J1
?
Ktrainable_variables
Lregularization_losses
?layer_metrics
 ?layer_regularization_losses
M	variables
?layers
?non_trainable_variables
?metrics
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12
 

0

?0
 
 
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
~
serving_default_input_2Placeholder*)
_output_shapes
:???????????*
dtype0*
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2embedding_1/embeddingsconv1d_5/kernelconv1d_5/biasconv1d_4/kernelconv1d_4/biasconv1d_3/kernelconv1d_3/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_56575
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_1/embeddings/Read/ReadVariableOp#conv1d_3/kernel/Read/ReadVariableOp!conv1d_3/bias/Read/ReadVariableOp#conv1d_4/kernel/Read/ReadVariableOp!conv1d_4/bias/Read/ReadVariableOp#conv1d_5/kernel/Read/ReadVariableOp!conv1d_5/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_57049
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsconv1d_3/kernelconv1d_3/biasconv1d_4/kernelconv1d_4/biasconv1d_5/kernelconv1d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_57110??
?i
?
B__inference_model_1_layer_call_and_return_conditional_losses_56736

inputs&
"embedding_1_embedding_lookup_566638
4conv1d_5_conv1d_expanddims_1_readvariableop_resource,
(conv1d_5_biasadd_readvariableop_resource8
4conv1d_4_conv1d_expanddims_1_readvariableop_resource,
(conv1d_4_biasadd_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_1/embedding_lookupw
embedding_1/CastCastinputs*

DstT0*

SrcT0*)
_output_shapes
:???????????2
embedding_1/Cast?
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_56663embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/56663*.
_output_shapes
:????????????*
dtype02
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/56663*.
_output_shapes
:????????????2'
%embedding_1/embedding_lookup/Identity?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*.
_output_shapes
:????????????2)
'embedding_1/embedding_lookup/Identity_1?
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_5/conv1d/ExpandDims/dim?
conv1d_5/conv1d/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d_5/conv1d/ExpandDims?
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim?
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d_5/conv1d/ExpandDims_1?
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d_5/conv1d?
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d_5/conv1d/Squeeze?
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_5/BiasAdd/ReadVariableOp?
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
conv1d_5/BiasAdd
conv1d_5/LeakyRelu	LeakyReluconv1d_5/BiasAdd:output:0*-
_output_shapes
:???????????2
conv1d_5/LeakyRelu?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
conv1d_4/BiasAdd
conv1d_4/LeakyRelu	LeakyReluconv1d_4/BiasAdd:output:0*-
_output_shapes
:???????????2
conv1d_4/LeakyRelu?
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_3/conv1d/ExpandDims/dim?
conv1d_3/conv1d/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d_3/conv1d/ExpandDims?
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dim?
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d_3/conv1d/ExpandDims_1?
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d_3/conv1d?
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d_3/conv1d/Squeeze?
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_3/BiasAdd/ReadVariableOp?
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
conv1d_3/BiasAdd
conv1d_3/LeakyRelu	LeakyReluconv1d_3/BiasAdd:output:0*-
_output_shapes
:???????????2
conv1d_3/LeakyRelu?
max_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_3/ExpandDims/dim?
max_pooling1d_3/ExpandDims
ExpandDims conv1d_3/LeakyRelu:activations:0'max_pooling1d_3/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
max_pooling1d_3/ExpandDims?
max_pooling1d_3/MaxPoolMaxPool#max_pooling1d_3/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2
max_pooling1d_3/MaxPool?
max_pooling1d_3/SqueezeSqueeze max_pooling1d_3/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2
max_pooling1d_3/Squeeze?
max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_4/ExpandDims/dim?
max_pooling1d_4/ExpandDims
ExpandDims conv1d_4/LeakyRelu:activations:0'max_pooling1d_4/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
max_pooling1d_4/ExpandDims?
max_pooling1d_4/MaxPoolMaxPool#max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2
max_pooling1d_4/MaxPool?
max_pooling1d_4/SqueezeSqueeze max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2
max_pooling1d_4/Squeeze?
max_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_5/ExpandDims/dim?
max_pooling1d_5/ExpandDims
ExpandDims conv1d_5/LeakyRelu:activations:0'max_pooling1d_5/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
max_pooling1d_5/ExpandDims?
max_pooling1d_5/MaxPoolMaxPool#max_pooling1d_5/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2
max_pooling1d_5/MaxPool?
max_pooling1d_5/SqueezeSqueeze max_pooling1d_5/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2
max_pooling1d_5/Squeezex
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2 max_pooling1d_3/Squeeze:output:0 max_pooling1d_4/Squeeze:output:0 max_pooling1d_5/Squeeze:output:0"concatenate_1/concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concatenate_1/concat?
dropout_1/IdentityIdentityconcatenate_1/concat:output:0*
T0*,
_output_shapes
:??????????2
dropout_1/Identitys
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_1/Const?
flatten_1/ReshapeReshapedropout_1/Identity:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/BiasAddv
dense_2/LeakyRelu	LeakyReludense_2/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense_2/LeakyRelu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/LeakyRelu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddv
dense_3/LeakyRelu	LeakyReludense_3/BiasAdd:output:0*'
_output_shapes
:?????????2
dense_3/LeakyRelu?
IdentityIdentitydense_3/LeakyRelu:activations:0 ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_1/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_5_layer_call_and_return_conditional_losses_56873

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAddd
	LeakyRelu	LeakyReluBiasAdd:output:0*-
_output_shapes
:???????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_56909

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_56108

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize	
?*
paddingVALID*
strides	
?2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_1_layer_call_and_return_conditional_losses_56284

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
q
+__inference_embedding_1_layer_call_fn_56807

inputs
unknown
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *.
_output_shapes
:????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_561432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*.
_output_shapes
:????????????2

Identity"
identityIdentity:output:0*,
_input_shapes
:???????????:22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_56914

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?y
?	
 __inference__wrapped_model_56084
input_2.
*model_1_embedding_1_embedding_lookup_56011@
<model_1_conv1d_5_conv1d_expanddims_1_readvariableop_resource4
0model_1_conv1d_5_biasadd_readvariableop_resource@
<model_1_conv1d_4_conv1d_expanddims_1_readvariableop_resource4
0model_1_conv1d_4_biasadd_readvariableop_resource@
<model_1_conv1d_3_conv1d_expanddims_1_readvariableop_resource4
0model_1_conv1d_3_biasadd_readvariableop_resource2
.model_1_dense_2_matmul_readvariableop_resource3
/model_1_dense_2_biasadd_readvariableop_resource2
.model_1_dense_3_matmul_readvariableop_resource3
/model_1_dense_3_biasadd_readvariableop_resource
identity??'model_1/conv1d_3/BiasAdd/ReadVariableOp?3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?'model_1/conv1d_4/BiasAdd/ReadVariableOp?3model_1/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?'model_1/conv1d_5/BiasAdd/ReadVariableOp?3model_1/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?&model_1/dense_2/BiasAdd/ReadVariableOp?%model_1/dense_2/MatMul/ReadVariableOp?&model_1/dense_3/BiasAdd/ReadVariableOp?%model_1/dense_3/MatMul/ReadVariableOp?$model_1/embedding_1/embedding_lookup?
model_1/embedding_1/CastCastinput_2*

DstT0*

SrcT0*)
_output_shapes
:???????????2
model_1/embedding_1/Cast?
$model_1/embedding_1/embedding_lookupResourceGather*model_1_embedding_1_embedding_lookup_56011model_1/embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*=
_class3
1/loc:@model_1/embedding_1/embedding_lookup/56011*.
_output_shapes
:????????????*
dtype02&
$model_1/embedding_1/embedding_lookup?
-model_1/embedding_1/embedding_lookup/IdentityIdentity-model_1/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*=
_class3
1/loc:@model_1/embedding_1/embedding_lookup/56011*.
_output_shapes
:????????????2/
-model_1/embedding_1/embedding_lookup/Identity?
/model_1/embedding_1/embedding_lookup/Identity_1Identity6model_1/embedding_1/embedding_lookup/Identity:output:0*
T0*.
_output_shapes
:????????????21
/model_1/embedding_1/embedding_lookup/Identity_1?
&model_1/conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_1/conv1d_5/conv1d/ExpandDims/dim?
"model_1/conv1d_5/conv1d/ExpandDims
ExpandDims8model_1/embedding_1/embedding_lookup/Identity_1:output:0/model_1/conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2$
"model_1/conv1d_5/conv1d/ExpandDims?
3model_1/conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_conv1d_5_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype025
3model_1/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
(model_1/conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/conv1d_5/conv1d/ExpandDims_1/dim?
$model_1/conv1d_5/conv1d/ExpandDims_1
ExpandDims;model_1/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2&
$model_1/conv1d_5/conv1d/ExpandDims_1?
model_1/conv1d_5/conv1dConv2D+model_1/conv1d_5/conv1d/ExpandDims:output:0-model_1/conv1d_5/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
model_1/conv1d_5/conv1d?
model_1/conv1d_5/conv1d/SqueezeSqueeze model_1/conv1d_5/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2!
model_1/conv1d_5/conv1d/Squeeze?
'model_1/conv1d_5/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/conv1d_5/BiasAdd/ReadVariableOp?
model_1/conv1d_5/BiasAddBiasAdd(model_1/conv1d_5/conv1d/Squeeze:output:0/model_1/conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
model_1/conv1d_5/BiasAdd?
model_1/conv1d_5/LeakyRelu	LeakyRelu!model_1/conv1d_5/BiasAdd:output:0*-
_output_shapes
:???????????2
model_1/conv1d_5/LeakyRelu?
&model_1/conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_1/conv1d_4/conv1d/ExpandDims/dim?
"model_1/conv1d_4/conv1d/ExpandDims
ExpandDims8model_1/embedding_1/embedding_lookup/Identity_1:output:0/model_1/conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2$
"model_1/conv1d_4/conv1d/ExpandDims?
3model_1/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_conv1d_4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype025
3model_1/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
(model_1/conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/conv1d_4/conv1d/ExpandDims_1/dim?
$model_1/conv1d_4/conv1d/ExpandDims_1
ExpandDims;model_1/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2&
$model_1/conv1d_4/conv1d/ExpandDims_1?
model_1/conv1d_4/conv1dConv2D+model_1/conv1d_4/conv1d/ExpandDims:output:0-model_1/conv1d_4/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
model_1/conv1d_4/conv1d?
model_1/conv1d_4/conv1d/SqueezeSqueeze model_1/conv1d_4/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2!
model_1/conv1d_4/conv1d/Squeeze?
'model_1/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/conv1d_4/BiasAdd/ReadVariableOp?
model_1/conv1d_4/BiasAddBiasAdd(model_1/conv1d_4/conv1d/Squeeze:output:0/model_1/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
model_1/conv1d_4/BiasAdd?
model_1/conv1d_4/LeakyRelu	LeakyRelu!model_1/conv1d_4/BiasAdd:output:0*-
_output_shapes
:???????????2
model_1/conv1d_4/LeakyRelu?
&model_1/conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2(
&model_1/conv1d_3/conv1d/ExpandDims/dim?
"model_1/conv1d_3/conv1d/ExpandDims
ExpandDims8model_1/embedding_1/embedding_lookup/Identity_1:output:0/model_1/conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2$
"model_1/conv1d_3/conv1d/ExpandDims?
3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_1_conv1d_3_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype025
3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?
(model_1/conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_1/conv1d_3/conv1d/ExpandDims_1/dim?
$model_1/conv1d_3/conv1d/ExpandDims_1
ExpandDims;model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:01model_1/conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2&
$model_1/conv1d_3/conv1d/ExpandDims_1?
model_1/conv1d_3/conv1dConv2D+model_1/conv1d_3/conv1d/ExpandDims:output:0-model_1/conv1d_3/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
model_1/conv1d_3/conv1d?
model_1/conv1d_3/conv1d/SqueezeSqueeze model_1/conv1d_3/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2!
model_1/conv1d_3/conv1d/Squeeze?
'model_1/conv1d_3/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/conv1d_3/BiasAdd/ReadVariableOp?
model_1/conv1d_3/BiasAddBiasAdd(model_1/conv1d_3/conv1d/Squeeze:output:0/model_1/conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
model_1/conv1d_3/BiasAdd?
model_1/conv1d_3/LeakyRelu	LeakyRelu!model_1/conv1d_3/BiasAdd:output:0*-
_output_shapes
:???????????2
model_1/conv1d_3/LeakyRelu?
&model_1/max_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_1/max_pooling1d_3/ExpandDims/dim?
"model_1/max_pooling1d_3/ExpandDims
ExpandDims(model_1/conv1d_3/LeakyRelu:activations:0/model_1/max_pooling1d_3/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2$
"model_1/max_pooling1d_3/ExpandDims?
model_1/max_pooling1d_3/MaxPoolMaxPool+model_1/max_pooling1d_3/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2!
model_1/max_pooling1d_3/MaxPool?
model_1/max_pooling1d_3/SqueezeSqueeze(model_1/max_pooling1d_3/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2!
model_1/max_pooling1d_3/Squeeze?
&model_1/max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_1/max_pooling1d_4/ExpandDims/dim?
"model_1/max_pooling1d_4/ExpandDims
ExpandDims(model_1/conv1d_4/LeakyRelu:activations:0/model_1/max_pooling1d_4/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2$
"model_1/max_pooling1d_4/ExpandDims?
model_1/max_pooling1d_4/MaxPoolMaxPool+model_1/max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2!
model_1/max_pooling1d_4/MaxPool?
model_1/max_pooling1d_4/SqueezeSqueeze(model_1/max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2!
model_1/max_pooling1d_4/Squeeze?
&model_1/max_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&model_1/max_pooling1d_5/ExpandDims/dim?
"model_1/max_pooling1d_5/ExpandDims
ExpandDims(model_1/conv1d_5/LeakyRelu:activations:0/model_1/max_pooling1d_5/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2$
"model_1/max_pooling1d_5/ExpandDims?
model_1/max_pooling1d_5/MaxPoolMaxPool+model_1/max_pooling1d_5/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2!
model_1/max_pooling1d_5/MaxPool?
model_1/max_pooling1d_5/SqueezeSqueeze(model_1/max_pooling1d_5/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2!
model_1/max_pooling1d_5/Squeeze?
!model_1/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2#
!model_1/concatenate_1/concat/axis?
model_1/concatenate_1/concatConcatV2(model_1/max_pooling1d_3/Squeeze:output:0(model_1/max_pooling1d_4/Squeeze:output:0(model_1/max_pooling1d_5/Squeeze:output:0*model_1/concatenate_1/concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
model_1/concatenate_1/concat?
model_1/dropout_1/IdentityIdentity%model_1/concatenate_1/concat:output:0*
T0*,
_output_shapes
:??????????2
model_1/dropout_1/Identity?
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
model_1/flatten_1/Const?
model_1/flatten_1/ReshapeReshape#model_1/dropout_1/Identity:output:0 model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
model_1/flatten_1/Reshape?
%model_1/dense_2/MatMul/ReadVariableOpReadVariableOp.model_1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02'
%model_1/dense_2/MatMul/ReadVariableOp?
model_1/dense_2/MatMulMatMul"model_1/flatten_1/Reshape:output:0-model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model_1/dense_2/MatMul?
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02(
&model_1/dense_2/BiasAdd/ReadVariableOp?
model_1/dense_2/BiasAddBiasAdd model_1/dense_2/MatMul:product:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model_1/dense_2/BiasAdd?
model_1/dense_2/LeakyRelu	LeakyRelu model_1/dense_2/BiasAdd:output:0*'
_output_shapes
:?????????d2
model_1/dense_2/LeakyRelu?
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02'
%model_1/dense_3/MatMul/ReadVariableOp?
model_1/dense_3/MatMulMatMul'model_1/dense_2/LeakyRelu:activations:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_1/dense_3/MatMul?
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_1/dense_3/BiasAdd/ReadVariableOp?
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_1/dense_3/BiasAdd?
model_1/dense_3/LeakyRelu	LeakyRelu model_1/dense_3/BiasAdd:output:0*'
_output_shapes
:?????????2
model_1/dense_3/LeakyRelu?
IdentityIdentity'model_1/dense_3/LeakyRelu:activations:0(^model_1/conv1d_3/BiasAdd/ReadVariableOp4^model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp(^model_1/conv1d_4/BiasAdd/ReadVariableOp4^model_1/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp(^model_1/conv1d_5/BiasAdd/ReadVariableOp4^model_1/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp'^model_1/dense_2/BiasAdd/ReadVariableOp&^model_1/dense_2/MatMul/ReadVariableOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp%^model_1/embedding_1/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::2R
'model_1/conv1d_3/BiasAdd/ReadVariableOp'model_1/conv1d_3/BiasAdd/ReadVariableOp2j
3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp3model_1/conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2R
'model_1/conv1d_4/BiasAdd/ReadVariableOp'model_1/conv1d_4/BiasAdd/ReadVariableOp2j
3model_1/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp3model_1/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2R
'model_1/conv1d_5/BiasAdd/ReadVariableOp'model_1/conv1d_5/BiasAdd/ReadVariableOp2j
3model_1/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp3model_1/conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2N
%model_1/dense_2/MatMul/ReadVariableOp%model_1/dense_2/MatMul/ReadVariableOp2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2L
$model_1/embedding_1/embedding_lookup$model_1/embedding_1/embedding_lookup:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_2
?	
?
B__inference_dense_3_layer_call_and_return_conditional_losses_56966

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
B__inference_dense_2_layer_call_and_return_conditional_losses_56946

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
'__inference_model_1_layer_call_fn_56763

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_564502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
F__inference_embedding_1_layer_call_and_return_conditional_losses_56143

inputs
embedding_lookup_56137
identity??embedding_lookup_
CastCastinputs*

DstT0*

SrcT0*)
_output_shapes
:???????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_56137Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/56137*.
_output_shapes
:????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/56137*.
_output_shapes
:????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*.
_output_shapes
:????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*.
_output_shapes
:????????????2

Identity"
identityIdentity:output:0*,
_input_shapes
:???????????:2$
embedding_lookupembedding_lookup:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_56930

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
|
'__inference_dense_2_layer_call_fn_56955

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_563272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
'__inference_model_1_layer_call_fn_56475
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_564502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_2
?
f
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_56093

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize	
?*
paddingVALID*
strides	
?2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_56289

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:??????????2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_3_layer_call_and_return_conditional_losses_56354

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
H__inference_concatenate_1_layer_call_and_return_conditional_losses_56890
inputs_0
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1inputs_2concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concath
IdentityIdentityconcat:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:?????????d:?????????d:?????????d:U Q
+
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????d
"
_user_specified_name
inputs/1:UQ
+
_output_shapes
:?????????d
"
_user_specified_name
inputs/2
?
?
#__inference_signature_wrapper_56575
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_560842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_2
?
E
)__inference_dropout_1_layer_call_fn_56924

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_562892
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?3
?
B__inference_model_1_layer_call_and_return_conditional_losses_56409
input_2
embedding_1_56374
conv1d_5_56377
conv1d_5_56379
conv1d_4_56382
conv1d_4_56384
conv1d_3_56387
conv1d_3_56389
dense_2_56398
dense_2_56400
dense_3_56403
dense_3_56405
identity?? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_56374*
Tin
2*
Tout
2*
_collective_manager_ids
 *.
_output_shapes
:????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_561432%
#embedding_1/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_56377conv1d_5_56379*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_561712"
 conv1d_5/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_56382conv1d_4_56384*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_562032"
 conv1d_4/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_56387conv1d_3_56389*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_562352"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_560932!
max_pooling1d_3/PartitionedCall?
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_561082!
max_pooling1d_4/PartitionedCall?
max_pooling1d_5/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_561232!
max_pooling1d_5/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(max_pooling1d_3/PartitionedCall:output:0(max_pooling1d_4/PartitionedCall:output:0(max_pooling1d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_562622
concatenate_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_562892
dropout_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_563082
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_56398dense_2_56400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_563272!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_56403dense_3_56405*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_563542!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_2
?
|
'__inference_dense_3_layer_call_fn_56975

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_563542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????d::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
K
/__inference_max_pooling1d_5_layer_call_fn_56129

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_561232
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling1d_3_layer_call_fn_56099

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_560932
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_56308

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
}
(__inference_conv1d_3_layer_call_fn_56832

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_562352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::22
StatefulPartitionedCallStatefulPartitionedCall:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?H
?
!__inference__traced_restore_57110
file_prefix+
'assignvariableop_embedding_1_embeddings&
"assignvariableop_1_conv1d_3_kernel$
 assignvariableop_2_conv1d_3_bias&
"assignvariableop_3_conv1d_4_kernel$
 assignvariableop_4_conv1d_4_bias&
"assignvariableop_5_conv1d_5_kernel$
 assignvariableop_6_conv1d_5_bias%
!assignvariableop_7_dense_2_kernel#
assignvariableop_8_dense_2_bias%
!assignvariableop_9_dense_3_kernel$
 assignvariableop_10_dense_3_bias 
assignvariableop_11_sgd_iter!
assignvariableop_12_sgd_decay)
%assignvariableop_13_sgd_learning_rate$
 assignvariableop_14_sgd_momentum
assignvariableop_15_total
assignvariableop_16_count
identity_18??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv1d_3_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv1d_3_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv1d_4_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp assignvariableop_4_conv1d_4_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv1d_5_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv1d_5_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_2_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_dense_2_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_3_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_dense_3_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_sgd_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp%assignvariableop_13_sgd_learning_rateIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_sgd_momentumIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_169
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_17?
Identity_18IdentityIdentity_17:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_18"#
identity_18Identity_18:output:0*Y
_input_shapesH
F: :::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
}
(__inference_conv1d_4_layer_call_fn_56857

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_562032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::22
StatefulPartitionedCallStatefulPartitionedCall:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?	
?
F__inference_embedding_1_layer_call_and_return_conditional_losses_56800

inputs
embedding_lookup_56794
identity??embedding_lookup_
CastCastinputs*

DstT0*

SrcT0*)
_output_shapes
:???????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_56794Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/56794*.
_output_shapes
:????????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/56794*.
_output_shapes
:????????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*.
_output_shapes
:????????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*.
_output_shapes
:????????????2

Identity"
identityIdentity:output:0*,
_input_shapes
:???????????:2$
embedding_lookupembedding_lookup:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_5_layer_call_and_return_conditional_losses_56171

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAddd
	LeakyRelu	LeakyReluBiasAdd:output:0*-
_output_shapes
:???????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_1_layer_call_fn_56919

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_562842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
K
/__inference_max_pooling1d_4_layer_call_fn_56114

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'???????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_561082
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_56823

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAddd
	LeakyRelu	LeakyReluBiasAdd:output:0*-
_output_shapes
:???????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?4
?
B__inference_model_1_layer_call_and_return_conditional_losses_56371
input_2
embedding_1_56152
conv1d_5_56182
conv1d_5_56184
conv1d_4_56214
conv1d_4_56216
conv1d_3_56246
conv1d_3_56248
dense_2_56338
dense_2_56340
dense_3_56365
dense_3_56367
identity?? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_56152*
Tin
2*
Tout
2*
_collective_manager_ids
 *.
_output_shapes
:????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_561432%
#embedding_1/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_56182conv1d_5_56184*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_561712"
 conv1d_5/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_56214conv1d_4_56216*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_562032"
 conv1d_4/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_56246conv1d_3_56248*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_562352"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_560932!
max_pooling1d_3/PartitionedCall?
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_561082!
max_pooling1d_4/PartitionedCall?
max_pooling1d_5/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_561232!
max_pooling1d_5/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(max_pooling1d_3/PartitionedCall:output:0(max_pooling1d_4/PartitionedCall:output:0(max_pooling1d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_562622
concatenate_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_562842#
!dropout_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_563082
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_56338dense_2_56340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_563272!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_56365dense_3_56367*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_563542!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_2
?+
?
__inference__traced_save_57049
file_prefix5
1savev2_embedding_1_embeddings_read_readvariableop.
*savev2_conv1d_3_kernel_read_readvariableop,
(savev2_conv1d_3_bias_read_readvariableop.
*savev2_conv1d_4_kernel_read_readvariableop,
(savev2_conv1d_4_bias_read_readvariableop.
*savev2_conv1d_5_kernel_read_readvariableop,
(savev2_conv1d_5_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_1_embeddings_read_readvariableop*savev2_conv1d_3_kernel_read_readvariableop(savev2_conv1d_3_bias_read_readvariableop*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop*savev2_conv1d_5_kernel_read_readvariableop(savev2_conv1d_5_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 * 
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes
}: :???:?::?::?::	?d:d:d:: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:???:)%
#
_output_shapes
:?: 

_output_shapes
::)%
#
_output_shapes
:?: 

_output_shapes
::)%
#
_output_shapes
:?: 

_output_shapes
::%!

_output_shapes
:	?d: 	

_output_shapes
:d:$
 

_output_shapes

:d: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?3
?
B__inference_model_1_layer_call_and_return_conditional_losses_56515

inputs
embedding_1_56480
conv1d_5_56483
conv1d_5_56485
conv1d_4_56488
conv1d_4_56490
conv1d_3_56493
conv1d_3_56495
dense_2_56504
dense_2_56506
dense_3_56509
dense_3_56511
identity?? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_56480*
Tin
2*
Tout
2*
_collective_manager_ids
 *.
_output_shapes
:????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_561432%
#embedding_1/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_56483conv1d_5_56485*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_561712"
 conv1d_5/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_56488conv1d_4_56490*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_562032"
 conv1d_4/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_56493conv1d_3_56495*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_562352"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_560932!
max_pooling1d_3/PartitionedCall?
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_561082!
max_pooling1d_4/PartitionedCall?
max_pooling1d_5/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_561232!
max_pooling1d_5/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(max_pooling1d_3/PartitionedCall:output:0(max_pooling1d_4/PartitionedCall:output:0(max_pooling1d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_562622
concatenate_1/PartitionedCall?
dropout_1/PartitionedCallPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_562892
dropout_1/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall"dropout_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_563082
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_56504dense_2_56506*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_563272!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_56509dense_3_56511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_563542!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_56235

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAddd
	LeakyRelu	LeakyReluBiasAdd:output:0*-
_output_shapes
:???????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_4_layer_call_and_return_conditional_losses_56203

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAddd
	LeakyRelu	LeakyReluBiasAdd:output:0*-
_output_shapes
:???????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?
?
C__inference_conv1d_4_layer_call_and_return_conditional_losses_56848

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAddd
	LeakyRelu	LeakyReluBiasAdd:output:0*-
_output_shapes
:???????????2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?	
?
'__inference_model_1_layer_call_fn_56790

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_565152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
f
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_56123

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2

ExpandDims?
MaxPoolMaxPoolExpandDims:output:0*A
_output_shapes/
-:+???????????????????????????*
ksize	
?*
paddingVALID*
strides	
?2	
MaxPool?
SqueezeSqueezeMaxPool:output:0*
T0*=
_output_shapes+
):'???????????????????????????*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'???????????????????????????2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
g
-__inference_concatenate_1_layer_call_fn_56897
inputs_0
inputs_1
inputs_2
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_562622
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:?????????d:?????????d:?????????d:U Q
+
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:?????????d
"
_user_specified_name
inputs/1:UQ
+
_output_shapes
:?????????d
"
_user_specified_name
inputs/2
?
}
(__inference_conv1d_5_layer_call_fn_56882

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_561712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*5
_input_shapes$
":????????????::22
StatefulPartitionedCallStatefulPartitionedCall:V R
.
_output_shapes
:????????????
 
_user_specified_nameinputs
?	
?
'__inference_model_1_layer_call_fn_56540
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*-
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_565152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
)
_output_shapes
:???????????
!
_user_specified_name	input_2
?	
?
B__inference_dense_2_layer_call_and_return_conditional_losses_56327

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd^
	LeakyRelu	LeakyReluBiasAdd:output:0*'
_output_shapes
:?????????d2
	LeakyRelu?
IdentityIdentityLeakyRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_1_layer_call_fn_56935

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_563082
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*+
_input_shapes
:??????????:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?s
?
B__inference_model_1_layer_call_and_return_conditional_losses_56659

inputs&
"embedding_1_embedding_lookup_565798
4conv1d_5_conv1d_expanddims_1_readvariableop_resource,
(conv1d_5_biasadd_readvariableop_resource8
4conv1d_4_conv1d_expanddims_1_readvariableop_resource,
(conv1d_4_biasadd_readvariableop_resource8
4conv1d_3_conv1d_expanddims_1_readvariableop_resource,
(conv1d_3_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identity??conv1d_3/BiasAdd/ReadVariableOp?+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?conv1d_4/BiasAdd/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?conv1d_5/BiasAdd/ReadVariableOp?+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?embedding_1/embedding_lookupw
embedding_1/CastCastinputs*

DstT0*

SrcT0*)
_output_shapes
:???????????2
embedding_1/Cast?
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_56579embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/56579*.
_output_shapes
:????????????*
dtype02
embedding_1/embedding_lookup?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/56579*.
_output_shapes
:????????????2'
%embedding_1/embedding_lookup/Identity?
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*.
_output_shapes
:????????????2)
'embedding_1/embedding_lookup/Identity_1?
conv1d_5/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_5/conv1d/ExpandDims/dim?
conv1d_5/conv1d/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_5/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d_5/conv1d/ExpandDims?
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_5_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02-
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_5/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_5/conv1d/ExpandDims_1/dim?
conv1d_5/conv1d/ExpandDims_1
ExpandDims3conv1d_5/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_5/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d_5/conv1d/ExpandDims_1?
conv1d_5/conv1dConv2D#conv1d_5/conv1d/ExpandDims:output:0%conv1d_5/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d_5/conv1d?
conv1d_5/conv1d/SqueezeSqueezeconv1d_5/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d_5/conv1d/Squeeze?
conv1d_5/BiasAdd/ReadVariableOpReadVariableOp(conv1d_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_5/BiasAdd/ReadVariableOp?
conv1d_5/BiasAddBiasAdd conv1d_5/conv1d/Squeeze:output:0'conv1d_5/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
conv1d_5/BiasAdd
conv1d_5/LeakyRelu	LeakyReluconv1d_5/BiasAdd:output:0*-
_output_shapes
:???????????2
conv1d_5/LeakyRelu?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
conv1d_4/BiasAdd
conv1d_4/LeakyRelu	LeakyReluconv1d_4/BiasAdd:output:0*-
_output_shapes
:???????????2
conv1d_4/LeakyRelu?
conv1d_3/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_3/conv1d/ExpandDims/dim?
conv1d_3/conv1d/ExpandDims
ExpandDims0embedding_1/embedding_lookup/Identity_1:output:0'conv1d_3/conv1d/ExpandDims/dim:output:0*
T0*2
_output_shapes 
:????????????2
conv1d_3/conv1d/ExpandDims?
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_3_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:?*
dtype02-
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_3/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_3/conv1d/ExpandDims_1/dim?
conv1d_3/conv1d/ExpandDims_1
ExpandDims3conv1d_3/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_3/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:?2
conv1d_3/conv1d/ExpandDims_1?
conv1d_3/conv1dConv2D#conv1d_3/conv1d/ExpandDims:output:0%conv1d_3/conv1d/ExpandDims_1:output:0*
T0*1
_output_shapes
:???????????*
paddingVALID*
strides
2
conv1d_3/conv1d?
conv1d_3/conv1d/SqueezeSqueezeconv1d_3/conv1d:output:0*
T0*-
_output_shapes
:???????????*
squeeze_dims

?????????2
conv1d_3/conv1d/Squeeze?
conv1d_3/BiasAdd/ReadVariableOpReadVariableOp(conv1d_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_3/BiasAdd/ReadVariableOp?
conv1d_3/BiasAddBiasAdd conv1d_3/conv1d/Squeeze:output:0'conv1d_3/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2
conv1d_3/BiasAdd
conv1d_3/LeakyRelu	LeakyReluconv1d_3/BiasAdd:output:0*-
_output_shapes
:???????????2
conv1d_3/LeakyRelu?
max_pooling1d_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_3/ExpandDims/dim?
max_pooling1d_3/ExpandDims
ExpandDims conv1d_3/LeakyRelu:activations:0'max_pooling1d_3/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
max_pooling1d_3/ExpandDims?
max_pooling1d_3/MaxPoolMaxPool#max_pooling1d_3/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2
max_pooling1d_3/MaxPool?
max_pooling1d_3/SqueezeSqueeze max_pooling1d_3/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2
max_pooling1d_3/Squeeze?
max_pooling1d_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_4/ExpandDims/dim?
max_pooling1d_4/ExpandDims
ExpandDims conv1d_4/LeakyRelu:activations:0'max_pooling1d_4/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
max_pooling1d_4/ExpandDims?
max_pooling1d_4/MaxPoolMaxPool#max_pooling1d_4/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2
max_pooling1d_4/MaxPool?
max_pooling1d_4/SqueezeSqueeze max_pooling1d_4/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2
max_pooling1d_4/Squeeze?
max_pooling1d_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2 
max_pooling1d_5/ExpandDims/dim?
max_pooling1d_5/ExpandDims
ExpandDims conv1d_5/LeakyRelu:activations:0'max_pooling1d_5/ExpandDims/dim:output:0*
T0*1
_output_shapes
:???????????2
max_pooling1d_5/ExpandDims?
max_pooling1d_5/MaxPoolMaxPool#max_pooling1d_5/ExpandDims:output:0*/
_output_shapes
:?????????d*
ksize	
?*
paddingVALID*
strides	
?2
max_pooling1d_5/MaxPool?
max_pooling1d_5/SqueezeSqueeze max_pooling1d_5/MaxPool:output:0*
T0*+
_output_shapes
:?????????d*
squeeze_dims
2
max_pooling1d_5/Squeezex
concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_1/concat/axis?
concatenate_1/concatConcatV2 max_pooling1d_3/Squeeze:output:0 max_pooling1d_4/Squeeze:output:0 max_pooling1d_5/Squeeze:output:0"concatenate_1/concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concatenate_1/concatw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMulconcatenate_1/concat:output:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mul
dropout_1/dropout/ShapeShapeconcatenate_1/concat:output:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:??????????2
dropout_1/dropout/Mul_1s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????,  2
flatten_1/Const?
flatten_1/ReshapeReshapedropout_1/dropout/Mul_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/BiasAddv
dense_2/LeakyRelu	LeakyReludense_2/BiasAdd:output:0*'
_output_shapes
:?????????d2
dense_2/LeakyRelu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/LeakyRelu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddv
dense_3/LeakyRelu	LeakyReludense_3/BiasAdd:output:0*'
_output_shapes
:?????????2
dense_3/LeakyRelu?
IdentityIdentitydense_3/LeakyRelu:activations:0 ^conv1d_3/BiasAdd/ReadVariableOp,^conv1d_3/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_4/BiasAdd/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_5/BiasAdd/ReadVariableOp,^conv1d_5/conv1d/ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^embedding_1/embedding_lookup*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::2B
conv1d_3/BiasAdd/ReadVariableOpconv1d_3/BiasAdd/ReadVariableOp2Z
+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp+conv1d_3/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_5/BiasAdd/ReadVariableOpconv1d_5/BiasAdd/ReadVariableOp2Z
+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp+conv1d_5/conv1d/ExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?4
?
B__inference_model_1_layer_call_and_return_conditional_losses_56450

inputs
embedding_1_56415
conv1d_5_56418
conv1d_5_56420
conv1d_4_56423
conv1d_4_56425
conv1d_3_56428
conv1d_3_56430
dense_2_56439
dense_2_56441
dense_3_56444
dense_3_56446
identity?? conv1d_3/StatefulPartitionedCall? conv1d_4/StatefulPartitionedCall? conv1d_5/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?#embedding_1/StatefulPartitionedCall?
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1_56415*
Tin
2*
Tout
2*
_collective_manager_ids
 *.
_output_shapes
:????????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_1_layer_call_and_return_conditional_losses_561432%
#embedding_1/StatefulPartitionedCall?
 conv1d_5/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_5_56418conv1d_5_56420*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_5_layer_call_and_return_conditional_losses_561712"
 conv1d_5/StatefulPartitionedCall?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_4_56423conv1d_4_56425*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_4_layer_call_and_return_conditional_losses_562032"
 conv1d_4/StatefulPartitionedCall?
 conv1d_3/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0conv1d_3_56428conv1d_3_56430*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_conv1d_3_layer_call_and_return_conditional_losses_562352"
 conv1d_3/StatefulPartitionedCall?
max_pooling1d_3/PartitionedCallPartitionedCall)conv1d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_560932!
max_pooling1d_3/PartitionedCall?
max_pooling1d_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_561082!
max_pooling1d_4/PartitionedCall?
max_pooling1d_5/PartitionedCallPartitionedCall)conv1d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *S
fNRL
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_561232!
max_pooling1d_5/PartitionedCall?
concatenate_1/PartitionedCallPartitionedCall(max_pooling1d_3/PartitionedCall:output:0(max_pooling1d_4/PartitionedCall:output:0(max_pooling1d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_562622
concatenate_1/PartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_562842#
!dropout_1/StatefulPartitionedCall?
flatten_1/PartitionedCallPartitionedCall*dropout_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_563082
flatten_1/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_56439dense_2_56441*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_563272!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_56444dense_3_56446*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_563542!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0!^conv1d_3/StatefulPartitionedCall!^conv1d_4/StatefulPartitionedCall!^conv1d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*T
_input_shapesC
A:???????????:::::::::::2D
 conv1d_3/StatefulPartitionedCall conv1d_3/StatefulPartitionedCall2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2D
 conv1d_5/StatefulPartitionedCall conv1d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
H__inference_concatenate_1_layer_call_and_return_conditional_losses_56262

inputs
inputs_1
inputs_2
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1inputs_2concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concath
IdentityIdentityconcat:output:0*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*X
_input_shapesG
E:?????????d:?????????d:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????d
 
_user_specified_nameinputs:SO
+
_output_shapes
:?????????d
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_22
serving_default_input_2:0???????????;
dense_30
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?e
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?a
_tf_keras_network?a{"class_name": "Functional", "name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20000]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 70429, "output_dim": 200, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_3", "inbound_nodes": [[["embedding_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_4", "inbound_nodes": [[["embedding_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_5", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_5", "inbound_nodes": [[["embedding_1", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_3", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d_3", "inbound_nodes": [[["conv1d_3", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d_4", "inbound_nodes": [[["conv1d_4", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_5", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d_5", "inbound_nodes": [[["conv1d_5", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": 1}, "name": "concatenate_1", "inbound_nodes": [[["max_pooling1d_3", 0, 0, {}], ["max_pooling1d_4", 0, 0, {}], ["max_pooling1d_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["flatten_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 20000]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20000]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 70429, "output_dim": 200, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_3", "inbound_nodes": [[["embedding_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_4", "inbound_nodes": [[["embedding_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_5", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_5", "inbound_nodes": [[["embedding_1", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_3", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d_3", "inbound_nodes": [[["conv1d_3", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d_4", "inbound_nodes": [[["conv1d_4", 0, 0, {}]]]}, {"class_name": "MaxPooling1D", "config": {"name": "max_pooling1d_5", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "name": "max_pooling1d_5", "inbound_nodes": [[["conv1d_5", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": 1}, "name": "concatenate_1", "inbound_nodes": [[["max_pooling1d_3", 0, 0, {}], ["max_pooling1d_4", 0, 0, {}], ["max_pooling1d_5", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_1", "inbound_nodes": [[["concatenate_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["dropout_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["flatten_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}], "input_layers": [["input_2", 0, 0]], "output_layers": [["dense_3", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.0010000000474974513, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 20000]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 20000]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
?

embeddings
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Embedding", "name": "embedding_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_1", "trainable": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 70429, "output_dim": 200, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000]}}
?	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "conv1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_3", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000, 200]}}
?	

kernel
 bias
!trainable_variables
"regularization_losses
#	variables
$	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "conv1d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_4", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000, 200]}}
?	

%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Conv1D", "name": "conv1d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_5", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [5]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 200}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20000, 200]}}
?
+trainable_variables
,regularization_losses
-	variables
.	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "max_pooling1d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_3", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
/trainable_variables
0regularization_losses
1	variables
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "max_pooling1d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_4", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
3trainable_variables
4regularization_losses
5	variables
6	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "MaxPooling1D", "name": "max_pooling1d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling1d_5", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [199]}, "pool_size": {"class_name": "__tuple__", "items": [199]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
7trainable_variables
8regularization_losses
9	variables
:	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Concatenate", "name": "concatenate_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate_1", "trainable": true, "dtype": "float32", "axis": 1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100, 1]}, {"class_name": "TensorShape", "items": [null, 100, 1]}, {"class_name": "TensorShape", "items": [null, 100, 1]}]}
?
;trainable_variables
<regularization_losses
=	variables
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
?
?trainable_variables
@regularization_losses
A	variables
B	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?

Ckernel
Dbias
Etrainable_variables
Fregularization_losses
G	variables
H	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 300}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300]}}
?

Ikernel
Jbias
Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "leaky_relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
I
Oiter
	Pdecay
Qlearning_rate
Rmomentum"
	optimizer
f
0
1
2
 3
%4
&5
C6
D7
I8
J9"
trackable_list_wrapper
 "
trackable_list_wrapper
n
0
1
2
3
 4
%5
&6
C7
D8
I9
J10"
trackable_list_wrapper
?
trainable_variables
regularization_losses
Slayer_metrics

Tlayers
	variables
Ulayer_regularization_losses
Vnon_trainable_variables
Wmetrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:)???2embedding_1/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
trainable_variables
regularization_losses
Xlayer_metrics
Ylayer_regularization_losses
	variables

Zlayers
[non_trainable_variables
\metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$?2conv1d_3/kernel
:2conv1d_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
regularization_losses
]layer_metrics
^layer_regularization_losses
	variables

_layers
`non_trainable_variables
ametrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$?2conv1d_4/kernel
:2conv1d_4/bias
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
?
!trainable_variables
"regularization_losses
blayer_metrics
clayer_regularization_losses
#	variables

dlayers
enon_trainable_variables
fmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$?2conv1d_5/kernel
:2conv1d_5/bias
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
'trainable_variables
(regularization_losses
glayer_metrics
hlayer_regularization_losses
)	variables

ilayers
jnon_trainable_variables
kmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
+trainable_variables
,regularization_losses
llayer_metrics
mlayer_regularization_losses
-	variables

nlayers
onon_trainable_variables
pmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
/trainable_variables
0regularization_losses
qlayer_metrics
rlayer_regularization_losses
1	variables

slayers
tnon_trainable_variables
umetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
3trainable_variables
4regularization_losses
vlayer_metrics
wlayer_regularization_losses
5	variables

xlayers
ynon_trainable_variables
zmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
7trainable_variables
8regularization_losses
{layer_metrics
|layer_regularization_losses
9	variables

}layers
~non_trainable_variables
metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
;trainable_variables
<regularization_losses
?layer_metrics
 ?layer_regularization_losses
=	variables
?layers
?non_trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?trainable_variables
@regularization_losses
?layer_metrics
 ?layer_regularization_losses
A	variables
?layers
?non_trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?d2dense_2/kernel
:d2dense_2/bias
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
?
Etrainable_variables
Fregularization_losses
?layer_metrics
 ?layer_regularization_losses
G	variables
?layers
?non_trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :d2dense_3/kernel
:2dense_3/bias
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
?
Ktrainable_variables
Lregularization_losses
?layer_metrics
 ?layer_regularization_losses
M	variables
?layers
?non_trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_dict_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
 __inference__wrapped_model_56084?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *(?%
#? 
input_2???????????
?2?
B__inference_model_1_layer_call_and_return_conditional_losses_56371
B__inference_model_1_layer_call_and_return_conditional_losses_56409
B__inference_model_1_layer_call_and_return_conditional_losses_56659
B__inference_model_1_layer_call_and_return_conditional_losses_56736?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_model_1_layer_call_fn_56763
'__inference_model_1_layer_call_fn_56540
'__inference_model_1_layer_call_fn_56790
'__inference_model_1_layer_call_fn_56475?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_embedding_1_layer_call_and_return_conditional_losses_56800?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_embedding_1_layer_call_fn_56807?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv1d_3_layer_call_and_return_conditional_losses_56823?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv1d_3_layer_call_fn_56832?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv1d_4_layer_call_and_return_conditional_losses_56848?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv1d_4_layer_call_fn_56857?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_conv1d_5_layer_call_and_return_conditional_losses_56873?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_conv1d_5_layer_call_fn_56882?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_56093?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
/__inference_max_pooling1d_3_layer_call_fn_56099?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_56108?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
/__inference_max_pooling1d_4_layer_call_fn_56114?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_56123?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
/__inference_max_pooling1d_5_layer_call_fn_56129?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *3?0
.?+'???????????????????????????
?2?
H__inference_concatenate_1_layer_call_and_return_conditional_losses_56890?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_concatenate_1_layer_call_fn_56897?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dropout_1_layer_call_and_return_conditional_losses_56909
D__inference_dropout_1_layer_call_and_return_conditional_losses_56914?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_1_layer_call_fn_56919
)__inference_dropout_1_layer_call_fn_56924?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_flatten_1_layer_call_and_return_conditional_losses_56930?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_flatten_1_layer_call_fn_56935?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_56946?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_2_layer_call_fn_56955?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_3_layer_call_and_return_conditional_losses_56966?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_3_layer_call_fn_56975?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_56575input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_56084t%& CDIJ2?/
(?%
#? 
input_2???????????
? "1?.
,
dense_3!?
dense_3??????????
H__inference_concatenate_1_layer_call_and_return_conditional_losses_56890????
??}
{?x
&?#
inputs/0?????????d
&?#
inputs/1?????????d
&?#
inputs/2?????????d
? "*?'
 ?
0??????????
? ?
-__inference_concatenate_1_layer_call_fn_56897????
??}
{?x
&?#
inputs/0?????????d
&?#
inputs/1?????????d
&?#
inputs/2?????????d
? "????????????
C__inference_conv1d_3_layer_call_and_return_conditional_losses_56823i6?3
,?)
'?$
inputs????????????
? "+?(
!?
0???????????
? ?
(__inference_conv1d_3_layer_call_fn_56832\6?3
,?)
'?$
inputs????????????
? "?????????????
C__inference_conv1d_4_layer_call_and_return_conditional_losses_56848i 6?3
,?)
'?$
inputs????????????
? "+?(
!?
0???????????
? ?
(__inference_conv1d_4_layer_call_fn_56857\ 6?3
,?)
'?$
inputs????????????
? "?????????????
C__inference_conv1d_5_layer_call_and_return_conditional_losses_56873i%&6?3
,?)
'?$
inputs????????????
? "+?(
!?
0???????????
? ?
(__inference_conv1d_5_layer_call_fn_56882\%&6?3
,?)
'?$
inputs????????????
? "?????????????
B__inference_dense_2_layer_call_and_return_conditional_losses_56946]CD0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? {
'__inference_dense_2_layer_call_fn_56955PCD0?-
&?#
!?
inputs??????????
? "??????????d?
B__inference_dense_3_layer_call_and_return_conditional_losses_56966\IJ/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? z
'__inference_dense_3_layer_call_fn_56975OIJ/?,
%?"
 ?
inputs?????????d
? "???????????
D__inference_dropout_1_layer_call_and_return_conditional_losses_56909f8?5
.?+
%?"
inputs??????????
p
? "*?'
 ?
0??????????
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_56914f8?5
.?+
%?"
inputs??????????
p 
? "*?'
 ?
0??????????
? ?
)__inference_dropout_1_layer_call_fn_56919Y8?5
.?+
%?"
inputs??????????
p
? "????????????
)__inference_dropout_1_layer_call_fn_56924Y8?5
.?+
%?"
inputs??????????
p 
? "????????????
F__inference_embedding_1_layer_call_and_return_conditional_losses_56800d1?.
'?$
"?
inputs???????????
? ",?)
"?
0????????????
? ?
+__inference_embedding_1_layer_call_fn_56807W1?.
'?$
"?
inputs???????????
? "??????????????
D__inference_flatten_1_layer_call_and_return_conditional_losses_56930^4?1
*?'
%?"
inputs??????????
? "&?#
?
0??????????
? ~
)__inference_flatten_1_layer_call_fn_56935Q4?1
*?'
%?"
inputs??????????
? "????????????
J__inference_max_pooling1d_3_layer_call_and_return_conditional_losses_56093?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
/__inference_max_pooling1d_3_layer_call_fn_56099wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
J__inference_max_pooling1d_4_layer_call_and_return_conditional_losses_56108?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
/__inference_max_pooling1d_4_layer_call_fn_56114wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
J__inference_max_pooling1d_5_layer_call_and_return_conditional_losses_56123?E?B
;?8
6?3
inputs'???????????????????????????
? ";?8
1?.
0'???????????????????????????
? ?
/__inference_max_pooling1d_5_layer_call_fn_56129wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+'????????????????????????????
B__inference_model_1_layer_call_and_return_conditional_losses_56371p%& CDIJ:?7
0?-
#? 
input_2???????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_56409p%& CDIJ:?7
0?-
#? 
input_2???????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_56659o%& CDIJ9?6
/?,
"?
inputs???????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_1_layer_call_and_return_conditional_losses_56736o%& CDIJ9?6
/?,
"?
inputs???????????
p 

 
? "%?"
?
0?????????
? ?
'__inference_model_1_layer_call_fn_56475c%& CDIJ:?7
0?-
#? 
input_2???????????
p

 
? "???????????
'__inference_model_1_layer_call_fn_56540c%& CDIJ:?7
0?-
#? 
input_2???????????
p 

 
? "???????????
'__inference_model_1_layer_call_fn_56763b%& CDIJ9?6
/?,
"?
inputs???????????
p

 
? "???????????
'__inference_model_1_layer_call_fn_56790b%& CDIJ9?6
/?,
"?
inputs???????????
p 

 
? "???????????
#__inference_signature_wrapper_56575%& CDIJ=?:
? 
3?0
.
input_2#? 
input_2???????????"1?.
,
dense_3!?
dense_3?????????