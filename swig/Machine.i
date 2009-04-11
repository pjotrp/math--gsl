%module "Math::GSL::Machine"

%{
    #include "gsl/gsl_machine.h"
%}

%include "gsl/gsl_machine.h"

#ifdef SWIGPERL
  %include "../pod/Machine.pod"
#endif

%include "gsl_typemaps.i"
