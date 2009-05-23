/* Ruby typemap */

#ifdef SWIGRUBY

%include cpointer.i

/*
%typemap(in) float const [] {
        fprintf(stderr, "mapthis1!!!");
}
*/

/* double gsl_stats_mean (const double data[], const size_t stride, const size_t n); */

%typemap(in) double const [] {
   int i;
   int len;

   if (!rb_obj_is_kind_of($input,rb_cArray))
     rb_raise(rb_eArgError, "Expected Array of values");
   len = RARRAY($input)->len;
   $1 = (double *)malloc(len*sizeof(double));
   for (i=0; i<len; ++i)
     ($1)[i] = rb_num2dbl(RARRAY($input)->ptr[i]);
}

%typemap(freearg) double const [] {
    if ($1) free($1);
}
/* %apply double *INPUT { const double data[], const size_t stride, const size_t n); 
*/

%apply double const [] { 
    size_t *p ,double *data, double *dest, double *f_in, double *f_out,
    double data[], const double * src, double x[], double a[], double b[] , 
    const double * x, const double * y, const double * w , const double x_array[],
    const double xrange[], const double yrange[], double * base,
    const double * base, const double xrange[], const double yrange[] ,
    const double * array , const double data2[], const double w[] ,
    float const *A, float const *B, float const *C, float *C, double *v,
    gsl_complex_packed_array data
};

%apply int *OUTPUT { size_t *imin, size_t *imax, size_t *neval };

%apply double * OUTPUT {
    double * min_out, double * max_out, 
    double *abserr, double *result
};

%{
    /* static HV * Callbacks = (HV*)NULL; */
    /* this function returns the value 
        of evaluating the function pointer
        stored in func with argument x
    */
    double callthis(double x , int func, void *params){
        fprintf(stderr, "callthis!!!");
    }
    double callmonte(double x[], size_t dim, void *params ){
        fprintf(stderr, "callmonte!!!");
    }
%}

%typemap(in) gsl_monte_function * {
  fprintf(stderr, "GSL_MONTE_FUNC");
};

%typemap(in) gsl_function * {
  fprintf(stderr, "GSL_FUNC");
};

%typemap(in) gsl_function_fdf * {
  fprintf(stderr, "FDF_FUNC");
}

#endif // SWIGRUBY
