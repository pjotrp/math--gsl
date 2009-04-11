%module "Math::GSL::Spline"

%include "typemaps.i"
%include "gsl_typemaps.i"
%apply double *OUTPUT { double * y, double * d, double * d2, double * result };

%{
    #include "gsl/gsl_spline.h"
%}

%include "gsl/gsl_spline.h"


#ifdef SWIGPERL
  %include "../pod/Spline.pod"
#endif

