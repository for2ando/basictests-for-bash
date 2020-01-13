#!/bin/bash

source "basictests.sh"

echo -------- $0 --------

## preparation
# unset (undefined)
unset undef1
# null
nulvar1=
# simple variable
simpvar1=simpval1
# null indexed array
declare -g -a nuliaryvar1=()
# indexed array
declare -g -a iaryvar1=(iaryval1 iaryval2)
# null associative array
declare -g -A aaryvar1=()
# associative array
declare -g -A nulaaryvar1=([aarykey1]=aaryval1 [aarykey2]=aaryval2)
# function (and unset variable)
unset funcvar1
funcvar1() { true;}
# function (and simple variable which is not null)
funcvar2=funcval1
funcvar2() { true;}

echo ---- test of is_null
echo -n 'test 1 ... '
is_null undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 2 ... '
is_null nulvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 3 ... '
is_null simpvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 4 ... '
is_null nuliaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 5 ... '
is_null iaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 6 ... '
is_null nulaaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 7 ... '
is_null aaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 8 ... '
is_null funcvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 9 ... '
is_null funcvar2 && echo 'Fail.' || echo 'Success.'

echo ---- test of is_not_null
echo -n 'test 11 ... '
is_not_null undef1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 12 ... '
is_not_null nulvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 13 ... '
is_not_null simpvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 14 ... '
is_not_null nuliaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 15 ... '
is_not_null iaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 16 ... '
is_not_null nulaaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 17 ... '
is_not_null aaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 18 ... '
is_not_null funcvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 19 ... '
is_not_null funcvar2 && echo 'Success.' || echo 'Fail.'

echo ---- test of is_set
echo -n 'test 21 ... '
is_set undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 22 ... '
is_set nulvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 23 ... '
is_set simpvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 24 ... '
is_set nuliaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 25 ... '
is_set iaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 26 ... '
is_set nulaaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 27 ... '
is_set aaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 28 ... '
is_set funcvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 29 ... '
is_set funcvar2 && echo 'Success.' || echo 'Fail.'

echo ---- test of is_unset
echo -n 'test 31 ... '
is_unset undef1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 32 ... '
is_unset nulvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 33 ... '
is_unset simpvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 34 ... '
is_unset nuliaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 35 ... '
is_unset iaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 36 ... '
is_unset nulaaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 37 ... '
is_unset aaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 38 ... '
is_unset funcvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 39 ... '
is_unset funcvar2 && echo 'Fail.' || echo 'Success.'

echo ---- test of is_variable
echo -n 'test 41 ... '
is_variable undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 42 ... '
is_variable nulvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 43 ... '
is_variable simpvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 44 ... '
is_variable nuliaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 45 ... '
is_variable iaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 46 ... '
is_variable nulaaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 47 ... '
is_variable aaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 48 ... '
is_variable funcvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 49 ... '
is_variable funcvar2 && echo 'Success.' || echo 'Fail.'

echo ---- test of is_simple_variable
echo -n 'test 51 ... '
is_simple_variable undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 52 ... '
is_simple_variable nulvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 53 ... '
is_simple_variable simpvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 54 ... '
is_simple_variable nuliaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 55 ... '
is_simple_variable iaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 56 ... '
is_simple_variable nulaaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 57 ... '
is_simple_variable aaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 58 ... '
is_simple_variable funcvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 59 ... '
is_simple_variable funcvar2 && echo 'Success.' || echo 'Fail.'

echo ---- test of is_array
echo -n 'test 61 ... '
is_array undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 62 ... '
is_array nulvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 63 ... '
is_array simpvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 64 ... '
is_array nuliaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 65 ... '
is_array iaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 66 ... '
is_array nulaaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 67 ... '
is_array aaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 68 ... '
is_array funcvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 69 ... '
is_array funcvar2 && echo 'Fail.' || echo 'Success.'

echo ---- test of is_indexed_array
echo -n 'test 71 ... '
is_indexed_array undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 72 ... '
is_indexed_array nulvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 73 ... '
is_indexed_array simpvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 74 ... '
is_indexed_array nuliaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 75 ... '
is_indexed_array iaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 76 ... '
is_indexed_array nulaaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 77 ... '
is_indexed_array aaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 78 ... '
is_indexed_array funcvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 79 ... '
is_indexed_array funcvar2 && echo 'Fail.' || echo 'Success.'

echo ---- test of is_associative_array
echo -n 'test 81 ... '
is_associative_array undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 82 ... '
is_associative_array nulvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 83 ... '
is_associative_array simpvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 84 ... '
is_associative_array nuliaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 85 ... '
is_associative_array iaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 86 ... '
is_associative_array nulaaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 87 ... '
is_associative_array aaryvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 88 ... '
is_associative_array funcvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 89 ... '
is_associative_array funcvar2 && echo 'Fail.' || echo 'Success.'

echo ---- test of is_function
echo -n 'test 91 ... '
is_function undef1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 92 ... '
is_function nulvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 93 ... '
is_function simpvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 94 ... '
is_function nuliaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 95 ... '
is_function iaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 96 ... '
is_function nulaaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 97 ... '
is_function aaryvar1 && echo 'Fail.' || echo 'Success.'
echo -n 'test 98 ... '
is_function funcvar1 && echo 'Success.' || echo 'Fail.'
echo -n 'test 99 ... '
is_function funcvar2 && echo 'Success.' || echo 'Fail.'
