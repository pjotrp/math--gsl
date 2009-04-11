%module "Math::GSL::Integration"
%include "typemaps.i"
%include "gsl_typemaps.i"

%{
    #include "gsl/gsl_integration.h"
    #include "gsl/gsl_math.h"
%}
%include "gsl/gsl_integration.h"
%include "gsl/gsl_math.h"

#ifdef SWIGPERL
  %include "../pod/Integration.pod"
#endif

