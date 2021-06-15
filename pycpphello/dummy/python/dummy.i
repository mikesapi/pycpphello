%module pyDummy

%include "stdint.i"
%include "std_string.i"

%{
#include <dummy/Dummy.h>
%}

%include "dummy/Dummy.h"
