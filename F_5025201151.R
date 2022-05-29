# Soal 1
# 1a
# Data Sebelum melakukan aktivitas
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)

# Data Setelah melakukan aktivitas
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# Standar Devisiasi selisih pasangan
sd(x-y)

# 1b
t.test(x,y,paired = TRUE)

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
qt(p = 0.05, df = 2, lower.tail=FALSE)

# 3e
# Penjelasan di readme

# 3f
# Penjelasan di readme

# Soal 4
# 4a

dataoneway <- read.table("onewayanova.txt",h=T)
attach(dataoneway)
names(dataoneway)

dataoneway$Group <- as.factor(dataoneway$Group)
dataoneway$Group = factor(dataoneway$Group,labels = c("grup 1", "grup 2", "grup 3"))

class(dataoneway$Group)

Group1 <- subset(dataoneway, Group == "grup 1")
Group2 <- subset(dataoneway, Group == "grup 2")
Group3 <- subset(dataoneway, Group == "grup 3")

qqnorm(Group1$Length)
qqline(Group1$Length)

qqnorm(Group2$Length)
qqline(Group2$Length)

qqnorm(Group3$Length)
qqline(Group3$Length)

# 4b
bartlett.test(Length ~ Group, data = dataoneway)

# 4c 
model1 = lm(Length ~ Group, data = dataoneway)
anova(model1)

# Poin 4d 
# Readme

# Poin 4e

TukeyHSD(aov(model1))

# Poin 4f


library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + 
  scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

# Soal 5
# 5a
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)
# 5b
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

# 5c
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

# 5d
tukey <- TukeyHSD(anova)
print(tukey)

# 5e
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)

write.csv("GTL_summary.csv")
