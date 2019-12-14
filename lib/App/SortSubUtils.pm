package App::SortSubUtils;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

$SPEC{list_sort_sub_modules} = {
    v => 1.1,
};
sub list_sort_sub_modules {
    require Module::List::Tiny;

    my %args = @_;

    my $res = Module::List::Tiny::list_modules(
        "Sort::Sub::", {list_modules=>1, recurse=>1});
    my @rows;
    for (sort keys %$res) {
        s/^Sort::Sub:://;
        push @rows, $_;
    }
    [200, "OK", \@rows];
}

1;
# ABSTRACT: CLIs related to Sort::Sub

=head1 SYNOPSIS

=head1 DESCRIPTION

This distribution contains the following CLIs related to L<Sort::Sub>:

# INSERT_EXECS_LIST


=head1 SEE ALSO

L<Sort::Sub>

=cut
