%module "Math::GSL::DHT"
%include "typemaps.i"
%include "gsl_typemaps.i"

%{
    #include "gsl/gsl_dht.h"
%}

%include "gsl/gsl_dht.h"

#ifdef SWIGPERL
  %include "../pod/DHT.pod"
#endif

