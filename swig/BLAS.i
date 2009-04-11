%module "Math::GSL::BLAS"

%apply float *OUTPUT { float *result };
%apply double *OUTPUT { double *result };
%apply double *OUTPUT { double c[], double s[] };

%include "typemaps.i"
%include "gsl_typemaps.i"
%include "gsl/gsl_blas.h"
%include "gsl/gsl_blas_types.h"

#ifdef SWIGPERL
  %include "../pod/BLAS.pod"
#endif
%{
    #include "gsl/gsl_blas.h"
    #include "gsl/gsl_blas_types.h"
%}

