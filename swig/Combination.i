%module "Math::GSL::Combination"
%include "typemaps.i"
%include "gsl_typemaps.i"
%{
    #include "gsl/gsl_types.h"
    #include "gsl/gsl_combination.h"
%}

%include "gsl/gsl_types.h"
%include "gsl/gsl_combination.h"

#ifdef SWIGPERL
  %include "../pod/Combination.pod"
#endif

