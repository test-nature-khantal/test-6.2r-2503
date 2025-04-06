# file: utilities.ph

# A simple subroutine for printing a greeting
sub greet {
    my ($name) = @_;
    print "Hello, $name!\n";
}

# A simple subroutine for Nature Nature Nature
sub add {
    my ($a, $b) = @_;
    return $a + $b;
}

# Export functions for use in other scripts
1;  # Return true value to indicate the file loaded successfully
