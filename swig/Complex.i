%module "Math::GSL::Complex"
%include "typemaps.i"
%include "gsl_typemaps.i"
%{
    #include "gsl/gsl_complex.h"
    #include "gsl/gsl_complex_math.h"
%}

%include "gsl/gsl_complex.h"
%include "gsl/gsl_complex_math.h"

// Need to fix this interface
%include "carrays.i"
%array_functions(double, doubleArray);


#ifdef SWIGPERL
  %include "../pod/Complex.pod"
#endif

