%module "Math::GSL::Errno"
%include "typemaps.i"
%include "gsl_typemaps.i"
%{
    #include "gsl/gsl_errno.h"
    #include "gsl/gsl_types.h"
%}
%include "gsl/gsl_errno.h"
%include "gsl/gsl_types.h"

#ifdef SWIGPERL
  %include "../pod/Errno.pod"
#endif

