%module "Math::GSL::Heapsort"
%include "typemaps.i"
%include "gsl_typemaps.i"

%{
    #include "gsl/gsl_heapsort.h"
    #include "gsl/gsl_permutation.h"
%}

%include "gsl/gsl_permutation.h"
%include "gsl/gsl_heapsort.h"

#ifdef SWIGPERL
  %include "../pod/Heapsort.pod"
#endif

