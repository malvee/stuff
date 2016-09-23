use Data::Dumper;
$a = $ARGV[0];
$ans = "";
$lookup = {
	"q" => "w",
	"w" => "e",
	"e" => "r",
	"r" => "t",
	"t" => "y",
	"y" => "u",
	"u" => "i",
	"i" => "o",
	"o" => "p",
	"p" => "[",
	"a" => "s",
	"s" => "d",
	"d" => "f",
	"f" => "g",
	"g" => "h",
	"h" => "j",
	"j" => "k",
	"k" => "l",
	"l" => ";",
	"z" => "x",
	"x" => "c",
	"c" => "v",
	"v" => "b",
	"b" => "n",
	"n" => "m",
	"m" => ","
};
@arr = split / /, $a;
for my $word(@arr){
	my @temp = split //, $word;
	for(@temp){
		if(defined $lookup->{lc $_}){
			$ans .= $lookup->{lc $_};
		}
	}
	$ans .= " ";
}
print $ans;