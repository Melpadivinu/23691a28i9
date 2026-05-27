d<-c(35,40,50,90,30,22,77,84)
print("Dataset:")
print(data)
mean_val<-mean(data)
print(paste("Mean =",mean_val))
median_value<-median(data)
print(paste("Median=",median_value))
mode_function<-function(x){
  uniq_values<-unique(x)
  uniq_values[which.max(tabulate(match(x,uniq_values)))]
}
mode_value<-mode_function(data)
print(paste("Mode=",mode_value))
max_value<-max(data)
print(paste("maximum=",max_value))
min_value<-min(data)
print(paste("minimum=",min_value))
variance_value<-var(data)
print(paste("variane=",variance_value))
sd_value<-sd(data)
print(paste("Standand Derivation=",sd_value))
summary(d)
barplot(d)
lines(d)


