%module "Math::GSL::BSpline"
%include "typemaps.i"
%include "gsl_typemaps.i"
%include "gsl/gsl_bspline.h"
%include "gsl/gsl_vector.h"

#ifdef SWIGPERL
  %include "../pod/BSpline.pod"
#endif

%{
    #include "gsl/gsl_bspline.h"
    #include "gsl/gsl_vector.h"
%}


