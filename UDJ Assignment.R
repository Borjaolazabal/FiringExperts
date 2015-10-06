expertsdata= read.csv("S13FiringExperts.csv")
attach(expertsdata)

# Start writing to an output file
sink('udj-regression results.txt')

regmodeljc=lm(US....Actual.~Jackie.Chan)
summary(regmodeljc)

regmodelb=lm(US....Actual.~Brad)
summary(regmodelb)

regmodels=lm(US....Actual.~Shahrukh)
summary(regmodels)

anova(regmodeljc, regmodelb,regmodels)

regmodeljcb=lm(US....Actual.~Jackie.Chan + Brad)
summary(regmodeljcb)

regmodelbs=lm(US....Actual.~Brad + Shahrukh)
summary(regmodelbs)

regmodelsjc=lm(US....Actual.~Shahrukh + Jackie.Chan)
summary(regmodelsjc)

anova(regmodeljcb, regmodelbs,regmodelsjc)

sink()