# read config file
sub read_config_file
{
  my $config_file = "my.conf";
  open( CONFIG, "< $config_file" ) || die "cannot open $config_file\n";
  while (<CONFIG>)
  {
    chomp;       # no newline
    s/#.*//;     # no comments
    s/^\s+//;    # no leading white
    s/\s+$//;    # no trailing white
    next unless length;    # anything left?
    my ( $var, $value ) = split( /\s*=\s*/, $_, 2 );
    print __LINE__. ": Read config file: $var = $value\n";
    $config{$var} = $value;
  }
  close(CONFIG);
}

