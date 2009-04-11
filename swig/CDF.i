%module "Math::GSL::CDF"
%include "typemaps.i"
%include "gsl_typemaps.i"
%{
#include "gsl/gsl_cdf.h"
%}

%include "gsl/gsl_cdf.h"

#ifdef SWIGPERL
  %include "../pod/CDF.pod"
#endif

