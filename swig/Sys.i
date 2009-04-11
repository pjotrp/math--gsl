%module "Math::GSL::Sys"

%include "typemaps.i"
%include "gsl_typemaps.i"
%apply int *OUTPUT { int * e };

%{
    #include "gsl/gsl_sys.h"
%}
%include "gsl/gsl_sys.h"

#ifdef SWIGPERL
  %include "../pod/Sys.pod"
#endif

