use Data::Dumper;
sub insertEvery{
	$full = shift;
	$ch = shift;
	$arr = [$ch.$full];
	for my $i (1..length($full)){
		push @$arr, substr($full, 0, $i) . $ch . substr($full, $i, length($full)-1);
	}
	return $arr;

}
sub printPerm{
	if(length $_[0] == 1){
		return [$_[0]];
	}
	my $a = $_[0];
	my $last = substr $a, length($a) -1, 1;
	my $rest = substr $a, 0, length($a) -1;
	my $perms = printPerm($rest);
	$perms2 = [];
	for(@$perms){
		push @$perms2, @{insertEvery($_, $last)};
	}
	return $perms2;
	

}
print scalar @{printPerm "asdfi"};
