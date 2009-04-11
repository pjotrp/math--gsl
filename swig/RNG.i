%module "Math::GSL::RNG"
%include "gsl_typemaps.i"
%{
    #include "gsl/gsl_rng.h"
%}
%import "gsl/gsl_types.h"

%include "gsl/gsl_rng.h"

#ifdef SWIGPERL
  %include "../pod/RNG.pod"
#endif

