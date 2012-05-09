#!/usr/bin/env Rscript

homepage <- read.csv('homepage.tsv', sep = '\t')
homepage$. <- homepage$. - homepage$.request_data
numeric_columns <- c('.', '.request_data')

fisher <- list(
  within.businessy = fisher.test(subset(homepage, businessy)[numeric_columns])
, within.notbusinessy = fisher.test(subset(homepage,!businessy)[numeric_columns])
, within.roundone = fisher.test(subset(homepage, round == 'one')[numeric_columns])
, within.roundtwo = fisher.test(subset(homepage, round == 'two')[numeric_columns])
, businessy.v.notbusinessy = fisher.test(
    homepage[1:2, numeric_columns]
  + homepage[3:4, numeric_columns]
  )
)

p.values <- unlist(lapply(fisher, function(f) {f$p.value}))
p.values.adjusted <- p.values / 5 #Bonferroni
print(round(p.values.adjusted, 2))
