%module "Math::GSL::Siman"
%{
    #include "gsl/gsl_siman.h"
%}

%include "gsl/gsl_siman.h"


%perlcode %{
@EXPORT_OK = qw/
               gsl_siman_solve 
               gsl_siman_solve_many 
             /;
%EXPORT_TAGS = ( all => [ @EXPORT_OK ] );

__END__

=head1 NAME

Math::GSL::Siman - Simulated Annealing

=head1 SYNOPSIS

This module is not yet implemented. Patches Welcome!

use Math::GSL::Siman qw /:all/;

=head1 DESCRIPTION

Here is a list of all the functions in this module :

=over

=item * C<gsl_siman_solve >

=item * C<gsl_siman_solve_many >

=back


For more informations on the functions, we refer you to the GSL offcial
documentation: L<http://www.gnu.org/software/gsl/manual/html_node/>

 Tip : search on google: site:http://www.gnu.org/software/gsl/manual/html_node/ name_of_the_function_you_want


=head1 AUTHORS

Jonathan Leto <jonathan@leto.net> and Thierry Moisan <thierry.moisan@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 Jonathan Leto and Thierry Moisan

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut



%}
