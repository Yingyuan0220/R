# Name: Yingyuan Zhang
# Email: zhang963@wisc.edu

rm(list = ls())

w=scan(file="WI_donations.txt",what=numeric())
n=scan(file="NY_donations.txt",what=numeric())
# Find the sum of donations from WI and the sum of donations from NY.
WI.sum=sum(w)
NY.sum=sum(n)
cat(sep="", "WI sum=", WI.sum, "\n")
cat(sep="", "NY sum=", NY.sum, "\n")
# Find the sum of small donations from each state. I've set small=100# (below). Let's say "small donation" are those such that
#   -100 <= donation <= 100.
WI.sum.small=sum(w[w<=100&w>=-100])
NY.sum.small=sum(n[n<=100&n>=-100])
cat(sep="", "WI.sum.small=", WI.sum.small, "\n")
cat(sep="", "NY.sum.small=", NY.sum.small, "\n")
# Find the sum of big donations from each state. Let's say "big
# donations" are those such that
#   donation < -100 or donation > 100.
WI.sum.big=sum(w[w>100|w< -100])
NY.sum.big=sum(n[n>100|n< -100])
cat(sep="", "WI.sum.big=", WI.sum.big, "\n")
cat(sep="", "NY.sum.big=", NY.sum.big, "\n")
# Find the ratio of the sum of small donations to the sum of all
# donations from each state.
WI.small.ratio=sum(w[w<=100&w>=-100])/sum(w)
NY.small.ratio=sum(n[n<=100&n>=-100])/sum(n)
cat(sep="", "WI.small.ratio=", WI.small.ratio, "\n")
cat(sep="", "NY.small.ratio=", NY.small.ratio, "\n")
# Find the mean positive donation from each state. (Do not include
# zero or negative donations.)
WI.mean.pos=mean(w[w>0])
NY.mean.pos=mean(n[n>0])
cat(sep="", "WI.mean.pos=", WI.mean.pos, "\n")
cat(sep="", "NY.mean.pos=", NY.mean.pos, "\n")
# Find the median positive donation from each state. (Do not include
# zero or negative donations.)
WI.median.pos=median(w[w>0])
NY.median.pos=median(n[n>0])
cat(sep="", "WI.median.pos=", WI.median.pos, "\n")
cat(sep="", "NY.median.pos=", NY.median.pos, "\n")
# Find the largest and second-largest positive donation from each
# state. Write code, including a cat() statement or two, to produce
# formatted output exactly like this (except that the numbers should
# be correct, not 0):
WI.largest=sort(w,decreasing=TRUE)[1]
WI.second.largest=sort(w,decreasing=TRUE)[2]
NY.largest=sort(n,decreasing=TRUE)[1]
NY.second.largest=sort(n,decreasing=TRUE)[2]
cat(sep="", "WI.largest=", WI.largest, ", ", "WI.second.largest=",WI.second.largest, "\n")
cat(sep="", "NY.largest=", NY.largest, ", ", "NY.second.largest=",NY.second.largest, "\n")



















