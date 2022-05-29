# Soal 1
# 1a
# Data Sebelum melakukan aktivitas
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)

# Data Setelah melakukan aktivitas
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# Standar Devisiasi selisih pasangan
sd(x-y)

# 1b
t.test(x, y, alternative = "greater", var.equal = FALSE)

# 1c

# Soal 2
install.packages("BSDA")
library(BSDA)

# 2a
# Penjelasan di readme

# 2b
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
alternative = "greater", mu = 20000,
conf.level = 0.95) 

# 2c
# Penjelasan di readme

# Soal 3
# 3a
# Penjelasan di readme


# 3b 
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)

# 3c
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="black")

# 3d
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

# 3e
# Penjelasan di readme

# 3f
# Penjelasan di readme
