use Data::Dumper;
$a = "O grr; omgomoyr;u tr;scrf ejrm o s, eoyj i";
$ans = "";
$lookup = {
	"w" => "q",
	"e" => "w",
	"r" => "e",
	"t" => "r",
	"y" => "t",
	"u" => "y",
	"i" => "u",
	"o" => "i",
	"p" => "o",
	"[" => "p",
	"s" => "a",
	"d" => "s",
	"f" => "d",
	"g" => "f",
	"h" => "g",
	"j" => "h",
	"k" => "j",
	"l" => "k",
	";" => "l",
	"x" => "z",
	"c" => "x",
	"v" => "c",
	"b" => "v",
	"n" => "b",
	"m" => "n",
	"," => "m"
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