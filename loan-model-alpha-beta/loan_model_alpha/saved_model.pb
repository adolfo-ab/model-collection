̋
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
0
Sigmoid
x"T
y"T"
Ttype:

2
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.17.12v2.17.0-18-g3c92ac03cab8��
�
.sequential/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *?

debug_name1/sequential/batch_normalization/moving_variance/*
dtype0*
shape:*?
shared_name0.sequential/batch_normalization/moving_variance
�
Bsequential/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp.sequential/batch_normalization/moving_variance*
_output_shapes
:*
dtype0
�
*sequential/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *;

debug_name-+sequential/batch_normalization/moving_mean/*
dtype0*
shape:*;
shared_name,*sequential/batch_normalization/moving_mean
�
>sequential/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp*sequential/batch_normalization/moving_mean*
_output_shapes
:*
dtype0
�
sequential/dense_2/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_2/bias/*
dtype0*
shape:@*(
shared_namesequential/dense_2/bias

+sequential/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias*
_output_shapes
:@*
dtype0
�
sequential/dense_2/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_2/kernel/*
dtype0*
shape
:@@**
shared_namesequential/dense_2/kernel
�
-sequential/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel*
_output_shapes

:@@*
dtype0
�
sequential/dense/biasVarHandleOp*
_output_shapes
: *&

debug_namesequential/dense/bias/*
dtype0*
shape:@*&
shared_namesequential/dense/bias
{
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes
:@*
dtype0
�
sequential/dense_3/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_3/bias/*
dtype0*
shape:*(
shared_namesequential/dense_3/bias

+sequential/dense_3/bias/Read/ReadVariableOpReadVariableOpsequential/dense_3/bias*
_output_shapes
:*
dtype0
�
sequential/dense_3/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_3/kernel/*
dtype0*
shape
:@**
shared_namesequential/dense_3/kernel
�
-sequential/dense_3/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_3/kernel*
_output_shapes

:@*
dtype0
�
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_1/bias/*
dtype0*
shape:@*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:@*
dtype0
�
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_1/kernel/*
dtype0*
shape
:@@**
shared_namesequential/dense_1/kernel
�
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes

:@@*
dtype0
�
sequential/dense/kernelVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense/kernel/*
dtype0*
shape
:@*(
shared_namesequential/dense/kernel
�
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*
_output_shapes

:@*
dtype0
�
#sequential/batch_normalization/betaVarHandleOp*
_output_shapes
: *4

debug_name&$sequential/batch_normalization/beta/*
dtype0*
shape:*4
shared_name%#sequential/batch_normalization/beta
�
7sequential/batch_normalization/beta/Read/ReadVariableOpReadVariableOp#sequential/batch_normalization/beta*
_output_shapes
:*
dtype0
�
$sequential/batch_normalization/gammaVarHandleOp*
_output_shapes
: *5

debug_name'%sequential/batch_normalization/gamma/*
dtype0*
shape:*5
shared_name&$sequential/batch_normalization/gamma
�
8sequential/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp$sequential/batch_normalization/gamma*
_output_shapes
:*
dtype0
�
sequential/dense_3/bias_1VarHandleOp*
_output_shapes
: **

debug_namesequential/dense_3/bias_1/*
dtype0*
shape:**
shared_namesequential/dense_3/bias_1
�
-sequential/dense_3/bias_1/Read/ReadVariableOpReadVariableOpsequential/dense_3/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential/dense_3/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential/dense_3/kernel_1VarHandleOp*
_output_shapes
: *,

debug_namesequential/dense_3/kernel_1/*
dtype0*
shape
:@*,
shared_namesequential/dense_3/kernel_1
�
/sequential/dense_3/kernel_1/Read/ReadVariableOpReadVariableOpsequential/dense_3/kernel_1*
_output_shapes

:@*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential/dense_3/kernel_1*
_class
loc:@Variable_1*
_output_shapes

:@*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@*
dtype0
�
sequential/dense_2/bias_1VarHandleOp*
_output_shapes
: **

debug_namesequential/dense_2/bias_1/*
dtype0*
shape:@**
shared_namesequential/dense_2/bias_1
�
-sequential/dense_2/bias_1/Read/ReadVariableOpReadVariableOpsequential/dense_2/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential/dense_2/bias_1*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
sequential/dense_2/kernel_1VarHandleOp*
_output_shapes
: *,

debug_namesequential/dense_2/kernel_1/*
dtype0*
shape
:@@*,
shared_namesequential/dense_2/kernel_1
�
/sequential/dense_2/kernel_1/Read/ReadVariableOpReadVariableOpsequential/dense_2/kernel_1*
_output_shapes

:@@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential/dense_2/kernel_1*
_class
loc:@Variable_3*
_output_shapes

:@@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape
:@@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
i
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes

:@@*
dtype0
�
sequential/dense_1/bias_1VarHandleOp*
_output_shapes
: **

debug_namesequential/dense_1/bias_1/*
dtype0*
shape:@**
shared_namesequential/dense_1/bias_1
�
-sequential/dense_1/bias_1/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/bias_1*
_class
loc:@Variable_4*
_output_shapes
:@*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:@*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
:@*
dtype0
�
sequential/dense_1/kernel_1VarHandleOp*
_output_shapes
: *,

debug_namesequential/dense_1/kernel_1/*
dtype0*
shape
:@@*,
shared_namesequential/dense_1/kernel_1
�
/sequential/dense_1/kernel_1/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel_1*
_output_shapes

:@@*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/kernel_1*
_class
loc:@Variable_5*
_output_shapes

:@@*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape
:@@*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
i
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes

:@@*
dtype0
�
sequential/dense/bias_1VarHandleOp*
_output_shapes
: *(

debug_namesequential/dense/bias_1/*
dtype0*
shape:@*(
shared_namesequential/dense/bias_1

+sequential/dense/bias_1/Read/ReadVariableOpReadVariableOpsequential/dense/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential/dense/bias_1*
_class
loc:@Variable_6*
_output_shapes
:@*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:@*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:@*
dtype0
�
sequential/dense/kernel_1VarHandleOp*
_output_shapes
: **

debug_namesequential/dense/kernel_1/*
dtype0*
shape
:@**
shared_namesequential/dense/kernel_1
�
-sequential/dense/kernel_1/Read/ReadVariableOpReadVariableOpsequential/dense/kernel_1*
_output_shapes

:@*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential/dense/kernel_1*
_class
loc:@Variable_7*
_output_shapes

:@*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape
:@*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
i
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes

:@*
dtype0
�
0sequential/batch_normalization/moving_variance_1VarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization/moving_variance_1/*
dtype0*
shape:*A
shared_name20sequential/batch_normalization/moving_variance_1
�
Dsequential/batch_normalization/moving_variance_1/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization/moving_variance_1*
_output_shapes
:*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization/moving_variance_1*
_class
loc:@Variable_8*
_output_shapes
:*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:*
dtype0
�
,sequential/batch_normalization/moving_mean_1VarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization/moving_mean_1/*
dtype0*
shape:*=
shared_name.,sequential/batch_normalization/moving_mean_1
�
@sequential/batch_normalization/moving_mean_1/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization/moving_mean_1*
_output_shapes
:*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization/moving_mean_1*
_class
loc:@Variable_9*
_output_shapes
:*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:*
dtype0
�
%sequential/batch_normalization/beta_1VarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization/beta_1/*
dtype0*
shape:*6
shared_name'%sequential/batch_normalization/beta_1
�
9sequential/batch_normalization/beta_1/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization/beta_1*
_output_shapes
:*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization/beta_1*
_class
loc:@Variable_10*
_output_shapes
:*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
:*
dtype0
�
&sequential/batch_normalization/gamma_1VarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization/gamma_1/*
dtype0*
shape:*7
shared_name(&sequential/batch_normalization/gamma_1
�
:sequential/batch_normalization/gamma_1/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization/gamma_1*
_output_shapes
:*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization/gamma_1*
_class
loc:@Variable_11*
_output_shapes
:*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
g
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
:*
dtype0
|
serve_customer_data_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserve_customer_data_input,sequential/batch_normalization/moving_mean_10sequential/batch_normalization/moving_variance_1&sequential/batch_normalization/gamma_1%sequential/batch_normalization/beta_1sequential/dense/kernel_1sequential/dense/bias_1sequential/dense_1/kernel_1sequential/dense_1/bias_1sequential/dense_2/kernel_1sequential/dense_2/bias_1sequential/dense_3/kernel_1sequential/dense_3/bias_1*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_signature_wrapper___call___25600
�
#serving_default_customer_data_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCall#serving_default_customer_data_input,sequential/batch_normalization/moving_mean_10sequential/batch_normalization/moving_variance_1&sequential/batch_normalization/gamma_1%sequential/batch_normalization/beta_1sequential/dense/kernel_1sequential/dense/bias_1sequential/dense_1/kernel_1sequential/dense_1/bias_1sequential/dense_2/kernel_1sequential/dense_2/bias_1sequential/dense_3/kernel_1sequential/dense_3/bias_1*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_signature_wrapper___call___25629

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
Z
0
	1

2
3
4
5
6
7
8
9
10
11*
J
0
	1
2
3
4
5
6
7
8
9*


0
1*
Z
0
1
2
3
4
5
6
7
8
9
10
11*
* 

 trace_0* 
"
	!serve
"serving_default* 
KE
VARIABLE_VALUEVariable_11&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_10&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_9&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_8&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_3&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_2&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE&sequential/batch_normalization/gamma_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE%sequential/batch_normalization/beta_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEsequential/dense/kernel_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEsequential/dense_1/kernel_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEsequential/dense_1/bias_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEsequential/dense_3/kernel_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEsequential/dense_3/bias_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEsequential/dense/bias_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEsequential/dense_2/kernel_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEsequential/dense_2/bias_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE,sequential/batch_normalization/moving_mean_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE0sequential/batch_normalization/moving_variance_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable&sequential/batch_normalization/gamma_1%sequential/batch_normalization/beta_1sequential/dense/kernel_1sequential/dense_1/kernel_1sequential/dense_1/bias_1sequential/dense_3/kernel_1sequential/dense_3/bias_1sequential/dense/bias_1sequential/dense_2/kernel_1sequential/dense_2/bias_1,sequential/batch_normalization/moving_mean_10sequential/batch_normalization/moving_variance_1Const*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_25845
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable&sequential/batch_normalization/gamma_1%sequential/batch_normalization/beta_1sequential/dense/kernel_1sequential/dense_1/kernel_1sequential/dense_1/bias_1sequential/dense_3/kernel_1sequential/dense_3/bias_1sequential/dense/bias_1sequential/dense_2/kernel_1sequential/dense_2/bias_1,sequential/batch_normalization/moving_mean_10sequential/batch_normalization/moving_variance_1*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_25926�
�h
�
__inference___call___25570
customer_data_input\
Nfunctional_1_1_sequential_1_batch_normalization_1_cast_readvariableop_resource:^
Pfunctional_1_1_sequential_1_batch_normalization_1_cast_1_readvariableop_resource:^
Pfunctional_1_1_sequential_1_batch_normalization_1_cast_2_readvariableop_resource:^
Pfunctional_1_1_sequential_1_batch_normalization_1_cast_3_readvariableop_resource:R
@functional_1_1_sequential_1_dense_1_cast_readvariableop_resource:@Q
Cfunctional_1_1_sequential_1_dense_1_biasadd_readvariableop_resource:@T
Bfunctional_1_1_sequential_1_dense_1_2_cast_readvariableop_resource:@@S
Efunctional_1_1_sequential_1_dense_1_2_biasadd_readvariableop_resource:@T
Bfunctional_1_1_sequential_1_dense_2_1_cast_readvariableop_resource:@@S
Efunctional_1_1_sequential_1_dense_2_1_biasadd_readvariableop_resource:@T
Bfunctional_1_1_sequential_1_dense_3_1_cast_readvariableop_resource:@O
Afunctional_1_1_sequential_1_dense_3_1_add_readvariableop_resource:
identity	��Efunctional_1_1/sequential_1/batch_normalization_1/Cast/ReadVariableOp�Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_1/ReadVariableOp�Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_2/ReadVariableOp�Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_3/ReadVariableOp�:functional_1_1/sequential_1/dense_1/BiasAdd/ReadVariableOp�7functional_1_1/sequential_1/dense_1/Cast/ReadVariableOp�<functional_1_1/sequential_1/dense_1_2/BiasAdd/ReadVariableOp�9functional_1_1/sequential_1/dense_1_2/Cast/ReadVariableOp�<functional_1_1/sequential_1/dense_2_1/BiasAdd/ReadVariableOp�9functional_1_1/sequential_1/dense_2_1/Cast/ReadVariableOp�8functional_1_1/sequential_1/dense_3_1/Add/ReadVariableOp�9functional_1_1/sequential_1/dense_3_1/Cast/ReadVariableOpq
functional_1_1/CastCastcustomer_data_input*

DstT0*

SrcT0*'
_output_shapes
:����������
Efunctional_1_1/sequential_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOpNfunctional_1_1_sequential_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
:*
dtype0�
Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpPfunctional_1_1_sequential_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0�
Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpPfunctional_1_1_sequential_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0�
Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpPfunctional_1_1_sequential_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0�
Afunctional_1_1/sequential_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
?functional_1_1/sequential_1/batch_normalization_1/batchnorm/addAddV2Ofunctional_1_1/sequential_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0Jfunctional_1_1/sequential_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
Afunctional_1_1/sequential_1/batch_normalization_1/batchnorm/RsqrtRsqrtCfunctional_1_1/sequential_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
:�
?functional_1_1/sequential_1/batch_normalization_1/batchnorm/mulMulEfunctional_1_1/sequential_1/batch_normalization_1/batchnorm/Rsqrt:y:0Ofunctional_1_1/sequential_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Afunctional_1_1/sequential_1/batch_normalization_1/batchnorm/mul_1Mulfunctional_1_1/Cast:y:0Cfunctional_1_1/sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Afunctional_1_1/sequential_1/batch_normalization_1/batchnorm/mul_2MulMfunctional_1_1/sequential_1/batch_normalization_1/Cast/ReadVariableOp:value:0Cfunctional_1_1/sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
:�
?functional_1_1/sequential_1/batch_normalization_1/batchnorm/subSubOfunctional_1_1/sequential_1/batch_normalization_1/Cast_3/ReadVariableOp:value:0Efunctional_1_1/sequential_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
Afunctional_1_1/sequential_1/batch_normalization_1/batchnorm/add_1AddV2Efunctional_1_1/sequential_1/batch_normalization_1/batchnorm/mul_1:z:0Cfunctional_1_1/sequential_1/batch_normalization_1/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
7functional_1_1/sequential_1/dense_1/Cast/ReadVariableOpReadVariableOp@functional_1_1_sequential_1_dense_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
*functional_1_1/sequential_1/dense_1/MatMulMatMulEfunctional_1_1/sequential_1/batch_normalization_1/batchnorm/add_1:z:0?functional_1_1/sequential_1/dense_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
:functional_1_1/sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpCfunctional_1_1_sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
+functional_1_1/sequential_1/dense_1/BiasAddBiasAdd4functional_1_1/sequential_1/dense_1/MatMul:product:0Bfunctional_1_1/sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
(functional_1_1/sequential_1/dense_1/ReluRelu4functional_1_1/sequential_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
9functional_1_1/sequential_1/dense_1_2/Cast/ReadVariableOpReadVariableOpBfunctional_1_1_sequential_1_dense_1_2_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
,functional_1_1/sequential_1/dense_1_2/MatMulMatMul6functional_1_1/sequential_1/dense_1/Relu:activations:0Afunctional_1_1/sequential_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
<functional_1_1/sequential_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOpEfunctional_1_1_sequential_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
-functional_1_1/sequential_1/dense_1_2/BiasAddBiasAdd6functional_1_1/sequential_1/dense_1_2/MatMul:product:0Dfunctional_1_1/sequential_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*functional_1_1/sequential_1/dense_1_2/ReluRelu6functional_1_1/sequential_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
9functional_1_1/sequential_1/dense_2_1/Cast/ReadVariableOpReadVariableOpBfunctional_1_1_sequential_1_dense_2_1_cast_readvariableop_resource*
_output_shapes

:@@*
dtype0�
,functional_1_1/sequential_1/dense_2_1/MatMulMatMul8functional_1_1/sequential_1/dense_1_2/Relu:activations:0Afunctional_1_1/sequential_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
<functional_1_1/sequential_1/dense_2_1/BiasAdd/ReadVariableOpReadVariableOpEfunctional_1_1_sequential_1_dense_2_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
-functional_1_1/sequential_1/dense_2_1/BiasAddBiasAdd6functional_1_1/sequential_1/dense_2_1/MatMul:product:0Dfunctional_1_1/sequential_1/dense_2_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
*functional_1_1/sequential_1/dense_2_1/ReluRelu6functional_1_1/sequential_1/dense_2_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
9functional_1_1/sequential_1/dense_3_1/Cast/ReadVariableOpReadVariableOpBfunctional_1_1_sequential_1_dense_3_1_cast_readvariableop_resource*
_output_shapes

:@*
dtype0�
,functional_1_1/sequential_1/dense_3_1/MatMulMatMul8functional_1_1/sequential_1/dense_2_1/Relu:activations:0Afunctional_1_1/sequential_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
8functional_1_1/sequential_1/dense_3_1/Add/ReadVariableOpReadVariableOpAfunctional_1_1_sequential_1_dense_3_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
)functional_1_1/sequential_1/dense_3_1/AddAddV26functional_1_1/sequential_1/dense_3_1/MatMul:product:0@functional_1_1/sequential_1/dense_3_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-functional_1_1/sequential_1/dense_3_1/SigmoidSigmoid-functional_1_1/sequential_1/dense_3_1/Add:z:0*
T0*'
_output_shapes
:���������y
4functional_1_1/sequential_1/predict_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
2functional_1_1/sequential_1/predict_1/GreaterEqualGreaterEqual1functional_1_1/sequential_1/dense_3_1/Sigmoid:y:0=functional_1_1/sequential_1/predict_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:����������
*functional_1_1/sequential_1/predict_1/CastCast6functional_1_1/sequential_1/predict_1/GreaterEqual:z:0*

DstT0	*

SrcT0
*'
_output_shapes
:����������
9functional_1_1/sequential_1/predict_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
;functional_1_1/sequential_1/predict_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
;functional_1_1/sequential_1/predict_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3functional_1_1/sequential_1/predict_1/strided_sliceStridedSlice.functional_1_1/sequential_1/predict_1/Cast:y:0Bfunctional_1_1/sequential_1/predict_1/strided_slice/stack:output:0Dfunctional_1_1/sequential_1/predict_1/strided_slice/stack_1:output:0Dfunctional_1_1/sequential_1/predict_1/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
IdentityIdentity<functional_1_1/sequential_1/predict_1/strided_slice:output:0^NoOp*
T0	*#
_output_shapes
:����������
NoOpNoOpF^functional_1_1/sequential_1/batch_normalization_1/Cast/ReadVariableOpH^functional_1_1/sequential_1/batch_normalization_1/Cast_1/ReadVariableOpH^functional_1_1/sequential_1/batch_normalization_1/Cast_2/ReadVariableOpH^functional_1_1/sequential_1/batch_normalization_1/Cast_3/ReadVariableOp;^functional_1_1/sequential_1/dense_1/BiasAdd/ReadVariableOp8^functional_1_1/sequential_1/dense_1/Cast/ReadVariableOp=^functional_1_1/sequential_1/dense_1_2/BiasAdd/ReadVariableOp:^functional_1_1/sequential_1/dense_1_2/Cast/ReadVariableOp=^functional_1_1/sequential_1/dense_2_1/BiasAdd/ReadVariableOp:^functional_1_1/sequential_1/dense_2_1/Cast/ReadVariableOp9^functional_1_1/sequential_1/dense_3_1/Add/ReadVariableOp:^functional_1_1/sequential_1/dense_3_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 2�
Efunctional_1_1/sequential_1/batch_normalization_1/Cast/ReadVariableOpEfunctional_1_1/sequential_1/batch_normalization_1/Cast/ReadVariableOp2�
Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_1/ReadVariableOpGfunctional_1_1/sequential_1/batch_normalization_1/Cast_1/ReadVariableOp2�
Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_2/ReadVariableOpGfunctional_1_1/sequential_1/batch_normalization_1/Cast_2/ReadVariableOp2�
Gfunctional_1_1/sequential_1/batch_normalization_1/Cast_3/ReadVariableOpGfunctional_1_1/sequential_1/batch_normalization_1/Cast_3/ReadVariableOp2x
:functional_1_1/sequential_1/dense_1/BiasAdd/ReadVariableOp:functional_1_1/sequential_1/dense_1/BiasAdd/ReadVariableOp2r
7functional_1_1/sequential_1/dense_1/Cast/ReadVariableOp7functional_1_1/sequential_1/dense_1/Cast/ReadVariableOp2|
<functional_1_1/sequential_1/dense_1_2/BiasAdd/ReadVariableOp<functional_1_1/sequential_1/dense_1_2/BiasAdd/ReadVariableOp2v
9functional_1_1/sequential_1/dense_1_2/Cast/ReadVariableOp9functional_1_1/sequential_1/dense_1_2/Cast/ReadVariableOp2|
<functional_1_1/sequential_1/dense_2_1/BiasAdd/ReadVariableOp<functional_1_1/sequential_1/dense_2_1/BiasAdd/ReadVariableOp2v
9functional_1_1/sequential_1/dense_2_1/Cast/ReadVariableOp9functional_1_1/sequential_1/dense_2_1/Cast/ReadVariableOp2t
8functional_1_1/sequential_1/dense_3_1/Add/ReadVariableOp8functional_1_1/sequential_1/dense_3_1/Add/ReadVariableOp2v
9functional_1_1/sequential_1/dense_3_1/Cast/ReadVariableOp9functional_1_1/sequential_1/dense_3_1/Cast/ReadVariableOp:\ X
'
_output_shapes
:���������
-
_user_specified_namecustomer_data_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
,__inference_signature_wrapper___call___25600
customer_data_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcustomer_data_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *#
fR
__inference___call___25570k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
'
_output_shapes
:���������
-
_user_specified_namecustomer_data_input:%!

_user_specified_name25574:%!

_user_specified_name25576:%!

_user_specified_name25578:%!

_user_specified_name25580:%!

_user_specified_name25582:%!

_user_specified_name25584:%!

_user_specified_name25586:%!

_user_specified_name25588:%	!

_user_specified_name25590:%
!

_user_specified_name25592:%!

_user_specified_name25594:%!

_user_specified_name25596
�q
�
!__inference__traced_restore_25926
file_prefix*
assignvariableop_variable_11:,
assignvariableop_1_variable_10:+
assignvariableop_2_variable_9:+
assignvariableop_3_variable_8:/
assignvariableop_4_variable_7:@+
assignvariableop_5_variable_6:@/
assignvariableop_6_variable_5:@@+
assignvariableop_7_variable_4:@/
assignvariableop_8_variable_3:@@+
assignvariableop_9_variable_2:@0
assignvariableop_10_variable_1:@*
assignvariableop_11_variable:H
:assignvariableop_12_sequential_batch_normalization_gamma_1:G
9assignvariableop_13_sequential_batch_normalization_beta_1:?
-assignvariableop_14_sequential_dense_kernel_1:@A
/assignvariableop_15_sequential_dense_1_kernel_1:@@;
-assignvariableop_16_sequential_dense_1_bias_1:@A
/assignvariableop_17_sequential_dense_3_kernel_1:@;
-assignvariableop_18_sequential_dense_3_bias_1:9
+assignvariableop_19_sequential_dense_bias_1:@A
/assignvariableop_20_sequential_dense_2_kernel_1:@@;
-assignvariableop_21_sequential_dense_2_bias_1:@N
@assignvariableop_22_sequential_batch_normalization_moving_mean_1:R
Dassignvariableop_23_sequential_batch_normalization_moving_variance_1:
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_11Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_10Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_9Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_8Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_7Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_6Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_5Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_4Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_3Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_2Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variableIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp:assignvariableop_12_sequential_batch_normalization_gamma_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp9assignvariableop_13_sequential_batch_normalization_beta_1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp-assignvariableop_14_sequential_dense_kernel_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_sequential_dense_1_kernel_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp-assignvariableop_16_sequential_dense_1_bias_1Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp/assignvariableop_17_sequential_dense_3_kernel_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp-assignvariableop_18_sequential_dense_3_bias_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_sequential_dense_bias_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_sequential_dense_2_kernel_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp-assignvariableop_21_sequential_dense_2_bias_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp@assignvariableop_22_sequential_batch_normalization_moving_mean_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpDassignvariableop_23_sequential_batch_normalization_moving_variance_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_25Identity_25:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
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
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*	&
$
_user_specified_name
Variable_3:*
&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:FB
@
_user_specified_name(&sequential/batch_normalization/gamma_1:EA
?
_user_specified_name'%sequential/batch_normalization/beta_1:95
3
_user_specified_namesequential/dense/kernel_1:;7
5
_user_specified_namesequential/dense_1/kernel_1:95
3
_user_specified_namesequential/dense_1/bias_1:;7
5
_user_specified_namesequential/dense_3/kernel_1:95
3
_user_specified_namesequential/dense_3/bias_1:73
1
_user_specified_namesequential/dense/bias_1:;7
5
_user_specified_namesequential/dense_2/kernel_1:95
3
_user_specified_namesequential/dense_2/bias_1:LH
F
_user_specified_name.,sequential/batch_normalization/moving_mean_1:PL
J
_user_specified_name20sequential/batch_normalization/moving_variance_1
�
�
,__inference_signature_wrapper___call___25629
customer_data_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:@
	unknown_4:@
	unknown_5:@@
	unknown_6:@
	unknown_7:@@
	unknown_8:@
	unknown_9:@

unknown_10:
identity	��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallcustomer_data_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2	*
_collective_manager_ids
 *#
_output_shapes
:���������*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *#
fR
__inference___call___25570k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*#
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:���������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
'
_output_shapes
:���������
-
_user_specified_namecustomer_data_input:%!

_user_specified_name25603:%!

_user_specified_name25605:%!

_user_specified_name25607:%!

_user_specified_name25609:%!

_user_specified_name25611:%!

_user_specified_name25613:%!

_user_specified_name25615:%!

_user_specified_name25617:%	!

_user_specified_name25619:%
!

_user_specified_name25621:%!

_user_specified_name25623:%!

_user_specified_name25625
�
�
__inference__traced_save_25845
file_prefix0
"read_disablecopyonread_variable_11:2
$read_1_disablecopyonread_variable_10:1
#read_2_disablecopyonread_variable_9:1
#read_3_disablecopyonread_variable_8:5
#read_4_disablecopyonread_variable_7:@1
#read_5_disablecopyonread_variable_6:@5
#read_6_disablecopyonread_variable_5:@@1
#read_7_disablecopyonread_variable_4:@5
#read_8_disablecopyonread_variable_3:@@1
#read_9_disablecopyonread_variable_2:@6
$read_10_disablecopyonread_variable_1:@0
"read_11_disablecopyonread_variable:N
@read_12_disablecopyonread_sequential_batch_normalization_gamma_1:M
?read_13_disablecopyonread_sequential_batch_normalization_beta_1:E
3read_14_disablecopyonread_sequential_dense_kernel_1:@G
5read_15_disablecopyonread_sequential_dense_1_kernel_1:@@A
3read_16_disablecopyonread_sequential_dense_1_bias_1:@G
5read_17_disablecopyonread_sequential_dense_3_kernel_1:@A
3read_18_disablecopyonread_sequential_dense_3_bias_1:?
1read_19_disablecopyonread_sequential_dense_bias_1:@G
5read_20_disablecopyonread_sequential_dense_2_kernel_1:@@A
3read_21_disablecopyonread_sequential_dense_2_bias_1:@T
Fread_22_disablecopyonread_sequential_batch_normalization_moving_mean_1:X
Jread_23_disablecopyonread_sequential_batch_normalization_moving_variance_1:
savev2_const
identity_49��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_11*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_11^Read/DisableCopyOnRead*
_output_shapes
:*
dtype0V
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_10*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_10^Read_1/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_9*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_9^Read_2/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_8*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_8^Read_3/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_7*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_7^Read_4/DisableCopyOnRead*
_output_shapes

:@*
dtype0^

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes

:@c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_6*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_6^Read_5/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_5*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_5^Read_6/DisableCopyOnRead*
_output_shapes

:@@*
dtype0_
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:@@h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_4*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_4^Read_7/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_3*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_3^Read_8/DisableCopyOnRead*
_output_shapes

:@@*
dtype0_
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@@h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_2*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_2^Read_9/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_10/DisableCopyOnReadDisableCopyOnRead$read_10_disablecopyonread_variable_1*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp$read_10_disablecopyonread_variable_1^Read_10/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:@h
Read_11/DisableCopyOnReadDisableCopyOnRead"read_11_disablecopyonread_variable*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp"read_11_disablecopyonread_variable^Read_11/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead@read_12_disablecopyonread_sequential_batch_normalization_gamma_1*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp@read_12_disablecopyonread_sequential_batch_normalization_gamma_1^Read_12/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead?read_13_disablecopyonread_sequential_batch_normalization_beta_1*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp?read_13_disablecopyonread_sequential_batch_normalization_beta_1^Read_13/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:y
Read_14/DisableCopyOnReadDisableCopyOnRead3read_14_disablecopyonread_sequential_dense_kernel_1*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp3read_14_disablecopyonread_sequential_dense_kernel_1^Read_14/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@{
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_sequential_dense_1_kernel_1*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_sequential_dense_1_kernel_1^Read_15/DisableCopyOnRead*
_output_shapes

:@@*
dtype0`
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_16/DisableCopyOnReadDisableCopyOnRead3read_16_disablecopyonread_sequential_dense_1_bias_1*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp3read_16_disablecopyonread_sequential_dense_1_bias_1^Read_16/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_17/DisableCopyOnReadDisableCopyOnRead5read_17_disablecopyonread_sequential_dense_3_kernel_1*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp5read_17_disablecopyonread_sequential_dense_3_kernel_1^Read_17/DisableCopyOnRead*
_output_shapes

:@*
dtype0`
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes

:@e
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes

:@y
Read_18/DisableCopyOnReadDisableCopyOnRead3read_18_disablecopyonread_sequential_dense_3_bias_1*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp3read_18_disablecopyonread_sequential_dense_3_bias_1^Read_18/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
:w
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_sequential_dense_bias_1*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_sequential_dense_bias_1^Read_19/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_sequential_dense_2_kernel_1*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_sequential_dense_2_kernel_1^Read_20/DisableCopyOnRead*
_output_shapes

:@@*
dtype0`
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes

:@@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_21/DisableCopyOnReadDisableCopyOnRead3read_21_disablecopyonread_sequential_dense_2_bias_1*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp3read_21_disablecopyonread_sequential_dense_2_bias_1^Read_21/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_22/DisableCopyOnReadDisableCopyOnReadFread_22_disablecopyonread_sequential_batch_normalization_moving_mean_1*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOpFread_22_disablecopyonread_sequential_batch_normalization_moving_mean_1^Read_22/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_23/DisableCopyOnReadDisableCopyOnReadJread_23_disablecopyonread_sequential_batch_normalization_moving_variance_1*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpJread_23_disablecopyonread_sequential_batch_normalization_moving_variance_1^Read_23/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_48Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_49IdentityIdentity_48:output:0^NoOp*
T0*
_output_shapes
: �

NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_49Identity_49:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*	&
$
_user_specified_name
Variable_3:*
&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:FB
@
_user_specified_name(&sequential/batch_normalization/gamma_1:EA
?
_user_specified_name'%sequential/batch_normalization/beta_1:95
3
_user_specified_namesequential/dense/kernel_1:;7
5
_user_specified_namesequential/dense_1/kernel_1:95
3
_user_specified_namesequential/dense_1/bias_1:;7
5
_user_specified_namesequential/dense_3/kernel_1:95
3
_user_specified_namesequential/dense_3/bias_1:73
1
_user_specified_namesequential/dense/bias_1:;7
5
_user_specified_namesequential/dense_2/kernel_1:95
3
_user_specified_namesequential/dense_2/bias_1:LH
F
_user_specified_name.,sequential/batch_normalization/moving_mean_1:PL
J
_user_specified_name20sequential/batch_normalization/moving_variance_1:=9

_output_shapes
: 

_user_specified_nameConst"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
I
customer_data_input2
serve_customer_data_input:0���������8
output_0,
StatefulPartitionedCall:0	���������tensorflow/serving/predict*�
serving_default�
S
customer_data_input<
%serving_default_customer_data_input:0���������:
output_0.
StatefulPartitionedCall_1:0	���������tensorflow/serving/predict:�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
v
0
	1

2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
f
0
	1
2
3
4
5
6
7
8
9"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
 trace_02�
__inference___call___25570�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *2�/
-�*
customer_data_input���������z trace_0
7
	!serve
"serving_default"
signature_map
2:02$sequential/batch_normalization/gamma
1:/2#sequential/batch_normalization/beta
6:42*sequential/batch_normalization/moving_mean
::82.sequential/batch_normalization/moving_variance
):'@2sequential/dense/kernel
#:!@2sequential/dense/bias
+:)@@2sequential/dense_1/kernel
%:#@2sequential/dense_1/bias
+:)@@2sequential/dense_2/kernel
%:#@2sequential/dense_2/bias
+:)@2sequential/dense_3/kernel
%:#2sequential/dense_3/bias
2:02$sequential/batch_normalization/gamma
1:/2#sequential/batch_normalization/beta
):'@2sequential/dense/kernel
+:)@@2sequential/dense_1/kernel
%:#@2sequential/dense_1/bias
+:)@2sequential/dense_3/kernel
%:#2sequential/dense_3/bias
#:!@2sequential/dense/bias
+:)@@2sequential/dense_2/kernel
%:#@2sequential/dense_2/bias
6:42*sequential/batch_normalization/moving_mean
::82.sequential/batch_normalization/moving_variance
�B�
__inference___call___25570customer_data_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_signature_wrapper___call___25600customer_data_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 (

kwonlyargs�
jcustomer_data_input
kwonlydefaults
 
annotations� *
 
�B�
,__inference_signature_wrapper___call___25629customer_data_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 (

kwonlyargs�
jcustomer_data_input
kwonlydefaults
 
annotations� *
 �
__inference___call___25570k
	<�9
2�/
-�*
customer_data_input���������
� "�
unknown���������	�
,__inference_signature_wrapper___call___25600�
	S�P
� 
I�F
D
customer_data_input-�*
customer_data_input���������"/�,
*
output_0�
output_0���������	�
,__inference_signature_wrapper___call___25629�
	S�P
� 
I�F
D
customer_data_input-�*
customer_data_input���������"/�,
*
output_0�
output_0���������	