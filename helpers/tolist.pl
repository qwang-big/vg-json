# extract info from vg json
$s='';
# input json file
open(F,"<$ARGV[0]");
while(<F>){
chomp;$s.=$_
}
close F;
# create file directory
mkdir($ARGV[1]);
# create temp edge list
open(O,">$ARGV[1].txt");
while($s=~/{"from":"(\w+)","to":"(\w+)"}/g){
print O "$1\t$2\n"
}
close O;
# create node list
open(O,">$ARGV[1]/node.csv");
print O "id,seq\n";
while($s=~/{"sequence":"(\w+)","id":"(\w+)"}/g){
print O "$2,$1\n"
}
close O;
