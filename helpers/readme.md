helper functions for reading vg json, run:
```sh
perl -e 'for(1..8){system "perl tolist.pl ../tests/$_.json $_"}'
perl -e 'for(1..8){system "Rscript tocsv.r $_.txt"}'
```
