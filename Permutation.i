%module Permutation
%{
    #include "/usr/local/include/gsl/gsl_permutation.h"
%}

%include "/usr/local/include/gsl/gsl_permutation.h"

%perlcode %{ 
@EXPORT_OK = qw/
                gsl_permutation_alloc 
                gsl_permutation_calloc 
                gsl_permutation_init 
                gsl_permutation_free 
                gsl_permutation_memcpy 
                gsl_permutation_fread 
                gsl_permutation_fwrite 
                gsl_permutation_fscanf 
                gsl_permutation_fprintf 
                gsl_permutation_size 
                gsl_permutation_data 
                gsl_permutation_get 
                gsl_permutation_swap 
                gsl_permutation_valid 
                gsl_permutation_reverse 
                gsl_permutation_inverse 
                gsl_permutation_next 
                gsl_permutation_prev 
                gsl_permutation_mul 
                gsl_permutation_linear_to_canonical 
                gsl_permutation_canonical_to_linear 
                gsl_permutation_inversions 
                gsl_permutation_linear_cycles 
                gsl_permutation_canonical_cycles 
            /;
%EXPORT_TAGS = ( all => [ @EXPORT_OK ] );

### wrapper interface ###
sub new {
    my ($class, $value) = @_;
    my $this = {};
    $this->{_permutation} = gsl_permutation_alloc($value);
    bless $this, $class;
}

__END__

=head1 NAME

Math::GSL::Permutation

=head1 SYPNOPSIS

use Math::GSL::Permutation qw/:all/;

=head1 DESCRIPTION
Here is a list of all the functions included in this module :
                gsl_permutation_alloc($n) - return a newly allocated permutation of size $n
                gsl_permutation_calloc($n) - return a newly allocated permutation of size $n which is initialized to the identity
                gsl_permutation_init($p) - initialize the permutation $p to the identity i.e. (0,1,2, ..., n-1) 
                gsl_permutation_free($p) - free all the memory use by the permutaion $p 
                gsl_permutation_memcpy($dest, $src) - copy the permutation $src into the permutation $dest, the two permutations must have the same lenght and return 0 if the operation suceeded, 1 otherwise 
                gsl_permutation_fread 
                gsl_permutation_fwrite 
                gsl_permutation_fscanf 
                gsl_permutation_fprintf 
                gsl_permutation_size($p) - return the size of the permutation $p 
                gsl_permutation_data 
                gsl_permutation_get($p, $i) - return the $i-th element of the permutation $p, return 0 if $i is outside the range of 0 to n-1 
                gsl_permutation_swap($p, $i, $j) - exchange the $i-th position and the $j-th position of the permutation $p and return 0 if the operation suceeded, 1 otherwise
                gsl_permutation_valid($p) - return 0 if the permutation $p is valid (if the n elements contain each of the numbers 0 to n-1 once and only once), 1 otherwise 
                gsl_permutation_reverse($p) - reverse the elements of the permutation $p 
                gsl_permutation_inverse($inv, $p) - compute the inverse of the permutation $p, storing it in $inv and return 0 if the operation succeeded, 1 otherwise 
                gsl_permutation_next($p) - advance the permutation $p to the next permutation in lexicographic order and return 0 if the operation succeeded, 1 otherwise 
                gsl_permutation_prev($p) - step backward from the permutation $p to the previous permutation in lexicographic order and return 0 if the operation suceeded, 1 otherwise 
                gsl_permutation_mul($p, $pa, $pb) - combine the two permutation $pa and $pb into a single permutation $p and return 0 if the operation suceeded, 1 otherwise
                gsl_permutation_linear_to_canonical($q, $p) - compute the canonical form the permutation $p and store it in $q and return 0 if the operation suceeded, 1 otherwise 
                gsl_permutation_canonical_to_linear($p, $q) - convert a canonical permutation $q back into linear form and store it in $p and return 0 if the operation suceeded, 1 otherwise 
                gsl_permutation_inversions($p) - return the number of inversions in the permutation $p 
                gsl_permutation_linear_cycles($p) - return the number of cycles in the permutation $p, given a linear form 
                gsl_permutation_canonical_cycles($p) - return the number of cycles in the permutation $p, given a canonical form  

You have to add the functions you want to use inside the qw /put_funtion_here / with spaces between each function. You can also write use Math::GSL::CDF qw/:all/ to use all avaible functions of the module. Other tags are also avaible, here is a complete list of all tags for this module.

For more informations on the functions, we refer you to the GSL offcial documentation: http://www.gnu.org/software/gsl/manual/html_node/
Tip : search on google: site:http://www.gnu.org/software/gsl/manual/html_node/ name_of_the_function_you_want

=head1 EXAMPLES

=head1 AUTHOR

Jonathan Leto <jonathan@leto.net> and Thierry Moisan <thierry.moisan@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 Jonathan Leto and Thierry Moisan

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut
%}

