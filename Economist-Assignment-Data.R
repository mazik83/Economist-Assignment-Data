###
library (ggplot2)
library (data.table)
###
df <- fread("EconomistData.csv", drop = 1)
pl <- ggplot(df, aes(x = CPI, y = HDI, color = Region)) + geom_point(size = 4, shape = 1)

##adding a trend line - geom_smooth
pl2 <- pl + geom_smooth(aes(group=1), method = 'lm', formula = y~log(x), se = F, color = 'red')
print(pl2)