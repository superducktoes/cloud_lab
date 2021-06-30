file {'/tmp/test.txt':
  ensure  => present,
  mode    => '0644',
  content => "You found me!\n",
}
