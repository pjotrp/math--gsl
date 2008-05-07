%module SF
%{
#include "/usr/local/include/gsl/gsl_sf.h"
#include "/usr/local/include/gsl/gsl_sf_airy.h"
#include "/usr/local/include/gsl/gsl_sf_bessel.h"
#include "/usr/local/include/gsl/gsl_sf_clausen.h"
#include "/usr/local/include/gsl/gsl_sf_coulomb.h"
#include "/usr/local/include/gsl/gsl_sf_coupling.h"
#include "/usr/local/include/gsl/gsl_sf_dawson.h"
#include "/usr/local/include/gsl/gsl_sf_debye.h"
#include "/usr/local/include/gsl/gsl_sf_dilog.h"
#include "/usr/local/include/gsl/gsl_sf_elementary.h"
#include "/usr/local/include/gsl/gsl_sf_ellint.h"
#include "/usr/local/include/gsl/gsl_sf_elljac.h"
#include "/usr/local/include/gsl/gsl_sf_erf.h"
#include "/usr/local/include/gsl/gsl_sf_exp.h"
#include "/usr/local/include/gsl/gsl_sf_expint.h"
#include "/usr/local/include/gsl/gsl_sf_fermi_dirac.h"
#include "/usr/local/include/gsl/gsl_sf_gamma.h"
#include "/usr/local/include/gsl/gsl_sf_gegenbauer.h"
#include "/usr/local/include/gsl/gsl_sf_hyperg.h"
#include "/usr/local/include/gsl/gsl_sf_laguerre.h"
#include "/usr/local/include/gsl/gsl_sf_lambert.h"
#include "/usr/local/include/gsl/gsl_sf_legendre.h"
#include "/usr/local/include/gsl/gsl_sf_log.h"
#include "/usr/local/include/gsl/gsl_sf_mathieu.h"
#include "/usr/local/include/gsl/gsl_sf_pow_int.h"
#include "/usr/local/include/gsl/gsl_sf_psi.h"
#include "/usr/local/include/gsl/gsl_sf_result.h"
#include "/usr/local/include/gsl/gsl_sf_synchrotron.h"
#include "/usr/local/include/gsl/gsl_sf_transport.h"
#include "/usr/local/include/gsl/gsl_sf_trig.h"
#include "/usr/local/include/gsl/gsl_sf_zeta.h"


%}
%import "/usr/local/include/gsl/gsl_types.h"

// Grab the declarations  
%include "/usr/local/include/gsl/gsl_sf.h"
%include "/usr/local/include/gsl/gsl_sf_airy.h"
%include "/usr/local/include/gsl/gsl_sf_bessel.h"
%include "/usr/local/include/gsl/gsl_sf_clausen.h"
%include "/usr/local/include/gsl/gsl_sf_coulomb.h"
%include "/usr/local/include/gsl/gsl_sf_coupling.h"
%include "/usr/local/include/gsl/gsl_sf_dawson.h"
%include "/usr/local/include/gsl/gsl_sf_debye.h"
%include "/usr/local/include/gsl/gsl_sf_dilog.h"
%include "/usr/local/include/gsl/gsl_sf_elementary.h"
%include "/usr/local/include/gsl/gsl_sf_ellint.h"
%include "/usr/local/include/gsl/gsl_sf_elljac.h"
%include "/usr/local/include/gsl/gsl_sf_erf.h"
%include "/usr/local/include/gsl/gsl_sf_exp.h"
%include "/usr/local/include/gsl/gsl_sf_expint.h"
%include "/usr/local/include/gsl/gsl_sf_fermi_dirac.h"
%include "/usr/local/include/gsl/gsl_sf_gamma.h"
%include "/usr/local/include/gsl/gsl_sf_gegenbauer.h"
%include "/usr/local/include/gsl/gsl_sf_hyperg.h"
%include "/usr/local/include/gsl/gsl_sf_laguerre.h"
%include "/usr/local/include/gsl/gsl_sf_lambert.h"
%include "/usr/local/include/gsl/gsl_sf_legendre.h"
%include "/usr/local/include/gsl/gsl_sf_log.h"
%include "/usr/local/include/gsl/gsl_sf_mathieu.h"
%include "/usr/local/include/gsl/gsl_sf_pow_int.h"
%include "/usr/local/include/gsl/gsl_sf_psi.h"
%include "/usr/local/include/gsl/gsl_sf_result.h"
%include "/usr/local/include/gsl/gsl_sf_synchrotron.h"
%include "/usr/local/include/gsl/gsl_sf_transport.h"
%include "/usr/local/include/gsl/gsl_sf_trig.h"
%include "/usr/local/include/gsl/gsl_sf_zeta.h"

%include "typemaps.i"
%inline %{
extern int gsl_sf_bessel_J0_e(const double x,  gsl_sf_result *OUTPUT);
%}

%perlcode %{

@EXPORT_OK = map { 'gsl_sf_' . $_ } qw/
                bessel_J0
                bessel_J0_e
                erf
                gamma
                dilog
                /;

%}
