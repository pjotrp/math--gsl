%module "Math::GSL::Siman"
%include "typemaps.i"
%include "gsl_typemaps.i"
%{
    #include "gsl/gsl_siman.h"
%}

%include "gsl/gsl_siman.h"

#ifdef SWIGPERL
  %include "../pod/Siman.pod"
#endif

