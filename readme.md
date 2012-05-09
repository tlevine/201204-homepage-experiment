An experiment was conducted to see how homepage layout affected whether
people would arrive at the /request_data page. The design is documented
in [a Google Spreadsheet](https://docs.google.com/a/scraperwiki.com/spreadsheet/ccc?key=0AmgaEqd-YKjXdGNENndyR1BScFMtdG45OEJyQXZaR2c)

I ran post-hoc pairwise Fisher's Exact Test on the six obvious comparisons.

    Unadjusted p-values

    within.businessy      within.notbusinessy          within.roundone 
                0.67                     0.71                     0.00 
     within.roundtwo businessy.v.notbusinessy      roundone.v.roundtwo 
                0.00                     0.00                     0.56 

    Bonferroni-adjusted p-values

    within.businessy      within.notbusinessy          within.roundone 
                4.03                     4.24                     0.00 
     within.roundtwo businessy.v.notbusinessy      roundone.v.roundtwo 
                0.00                     0.00                     3.34 

The adjusted p-values show significance for the differences between
businessy and non-businessy, and the unadjusted p-values show no
significant differences within businessyness conditions; it seems that
the businessyness rather an the minimalness explains the high score
for the minimal layout and that the minimal layout performed
unremarkably differently from the original blobby layout.
