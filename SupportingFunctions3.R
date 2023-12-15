#Supporting Function
#Summarizes the data

#Number of Screens Ran
#<-function(x){
Data<-read.csv("allData.csv", sep= ",")
screenRun<-nrow(Data) #

#Percent of patients screened that were infected
infectedSum = 0 
totalSum = 0
for(i in 1:screenRun){
  if(Data$marker01[i] == 1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker02[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker03[i] == "1"){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker04[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker05[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker06[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker07[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker08[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker09[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else if(Data$marker10[i] ==1){
    infectedSum = infectedSum + 1
    totalSum = totalSum + 1
  }else{
    totalSum = totalSum + 1
  }
}

PercentInfected = infectedSum/totalSum
PercentInfected = PercentInfected*100

#Percent of Patients of that identify as Male or Female

#Age distribution of patients
child= 0 # Ages 0 - 8
preteen = 0 # Ages 9 - 12
teen = 0 # Ages 13 -19
adult = 0 #Ages 20 - 59
senior = 0 #Ages 60+

for(i in 1:screenRun){
  if(Data$age[i] >= 0 && Data$age[i] < 9){
    child = child + 1
  }else if(Data$age[i] >= 9 && Data$age[i] <13){
    preteen =preteen + 1
  }else if(Data$age[i] >= 13 && Data$age[i] <20 ){
    teen = teen + 1
  }else if(Data$age[i] >= 20 && Data$age[i] < 60 ){
    adult = adult + 1
  }else if(Data$age[i] >= 60){
    senior = senior + 1
  }
}


