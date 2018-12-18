# Prepare json with:
```sh
perl -e '@f=`ls -1 *.vcf`;foreach(@f){chomp;system "../vg/vg construct -r uc.fa -v $_ > $_.vg\n../vg/vg view -j $_.vg > $_.json"}'
```
