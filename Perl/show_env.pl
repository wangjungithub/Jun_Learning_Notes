sub show_env
{
  foreach my $key ( sort keys %ENV )
  {
    my $val = $ENV{$key};
    print __LINE__ . ": env $key => $val\n";
  }
}
