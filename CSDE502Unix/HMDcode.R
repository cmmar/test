### HMDcode.R
### 11/30/17 cmm

### set working directory where files are located
setwd("/homes/cmmar/CSDE502Unix")

### read data file
dd <- read.table(file="Australia_Births.dat", header=TRUE)
# > str(dd)
# 'data.frame':	155 obs. of  4 variables:
#   $ Year  : int  1860 1861 1862 1863 1864 1865 1866 1867 1868 1869 ...
# $ Female: int  23262 23806 24896 25134 26838 27986 27457 28922 29896 29527 ...
# $ Male  : int  24464 25102 26483 26233 28608 29175 28927 30245 31269 30996 ...
# $ Total : int  47726 48908 51379 51367 55446 57161 56384 59167 61165 60523 ...

### figuring out axis limits
# > min(dd[,2:4])
# [1] 23262
# > max(dd[,2:4])
# [1] 309582
# > min(dd$Year)
# [1] 1860
# > max(dd$Year)
# [1] 2014

### default margins (bottom, left, top, right) in inches
# > par()$mai
# [1] 1.02 0.82 0.82 0.42

###### plot in thousands
### create plot as .pdf
pdf(file="AustraliaBirths.pdf", height=12, width=18)

### increase margins
par(mai=c(1.25, 1.25, 1, .5))

### plot total
plot(dd$Year, dd$Total/1000, ylim=c(0,325), type="l",
     xaxt="n", yaxt="n", cex.lab=1.5, font.lab=2, font.main=2,cex.main=1.5,
     xlab="Year", ylab="Thousands",main="Australia: Births")

### x-axis, bold
axis(side=1, at=c(seq(1860,2000,10), 2014), cex.axis=1.2, font=2 )
### y-axis, bold
axis(side=2, at=seq(0,325,25), labels=seq(0,325,25), las=1, cex.axis=1.2, font=2)

### grid lines
segments(x0=seq(1860, 2000, 20), x1=seq(1860, 2000, 20), y0=-10, y1=500, lty="dotted")
segments(y0=seq(0, 3000, 50), y1=seq(0, 3000, 50), x0=-10, x1=3000, lty="dotted")

### plot females
lines(dd$Year, dd$Female/1000, col="red")
### plot males
lines(dd$Year, dd$Male/1000, col="blue")

legend(1860,300, legend=c("Total","Male","Female"), lty=1, col=c("black","blue","red"))

dev.off()
