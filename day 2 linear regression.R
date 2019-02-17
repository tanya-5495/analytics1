#Modeling
#linear regression - simple, multiple
#y ~ x1(SLR);y~ x1+x2....(MLR)
#y-Dependent variable, x- Independent

head(women)
#y~ weight, x= height
cor(women$height, women$weight) 
#strenght and direction of relationship
cov(women$height, women$weight) # direction of relatioship, +/- no value of magnitude, here it is positive
# height increases, weight increases
plot(women$height,women$weight)
#perform linear modelling
fit1 = lm(weight~height, data = women)
summary(fit1)
#F stats Pvalue << 0.05 : Linear Model exist
# at least 1  IV is significat in predicting DV
#Multiple Rsquare = .991 coeff of Determination
# more than 1 IV, we use adjusted R-squared, muktiple R-squared when one IV
# 99% of the variation in y is expalined by x
#y=mx+c: y= -87 + 3.45*height
range(women$height)
#only do interpolation not exterpolation
women$weight
women$height
(y= -87 + 3.45* women$height)
#predicted weights for actual heights
fitted(fit1) # 26=27
residuals(fit1) # difference between predicted and actual weights
summary(fit1)
summary(residuals(fit1))
(newdata1 = data.frame(height=c(60.4,59.9,77)))
(p1 =predict(fit1,newdata = newdata1,type = 'response'))
cbind(newdata1,p1)
# check for assumptions of linear regressions
plot(fit1)

