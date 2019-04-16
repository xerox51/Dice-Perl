use 5.014;
use strict;
use warnings;
use diagnostics;


sub prob {
	my @array = ('U','D');
	my @sequence = ();
	my @args = ();
	my @flag = (0,0,0,0,0,0,0,0);
	my @total =(100,100,100,100,100,100,100,100);
	
	for(my $i = 0;$i <= 99;$i++){
		$sequence[$i] = $array[int(rand(scalar @array))];
	}

	for(my $j = 0;$j <= 97;$j++){
	    $args[$j] = $sequence[$j].$sequence[$j+1].$sequence[$j+2];
	}
	for(my $l = 0;$l <= 97;$l++){
		if($args[$l] eq "DDD"){
			$flag[0] += 1;
			if ($flag[0] == 1){
				$total[0] = $l + 3;
			}
		}
		elsif($args[$l] eq "DDU"){
			$flag[1] += 1;
			if ($flag[1] == 1){
				$total[1] = $l + 3;
			}
		}
		elsif($args[$l] eq "DUU"){
			$flag[2] += 1;
			if ($flag[2] == 1){
				$total[2] = $l + 3;
			}
		}
		elsif($args[$l] eq "DUD"){
			$flag[3] += 1;
			if ($flag[3] == 1){
				$total[3] = $l + 3;
			}
		}
		elsif($args[$l] eq "UUU"){
			$flag[4] += 1;
			if ($flag[4] == 1){
				$total[4] = $l + 3;
			}
		}
		elsif($args[$l] eq "UUD"){
			$flag[5] += 1;
			if ($flag[5] == 1){
				$total[5] = $l + 3;
			}
		}
		elsif($args[$l] eq "UDD"){
			$flag[6] += 1;
			if ($flag[6] == 1){
				$total[6] = $l + 3;
			}
		}
		else{
			$flag[7] += 1;
			if($flag[7] == 1){
				$total[7] = $l + 3;
			}
		}
	}
	return @total;
}

my @test = ();

for(my $a = 0;$a <= 9999;$a++){
	my @num = prob;
	$test[$a] = [@num];
}

my @sum = (0,0,0,0,0,0,0,0);

for(my $b = 0;$b <= 7;$b++){
	for(my $c = 0;$c <= 9999;$c++){
		$sum[$b] = $sum[$b] + $test[$c][$b];
	}
}
			
my @probability = ();

for(my $d = 0;$d <= 7;$d++){
	$probability[$d] = $sum[$d]/10000.0;
}
my $m = ($probability[1] + $probability[2] + $probability[5] + $probability[6])/4.0;

print "DDU + DUU + UUD + UDD : ";
print $m;
print "\n";

my $n = ($probability[0] + $probability[4])/2.0;

print "DDD + UUU : ";
print $n;
print "\n";	