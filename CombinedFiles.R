# Supporting Function #1 
# Combing all the Files from both Country into a super file

#Compling all the information from the file given
CombFiles<-function(x,y){
  getwd("x")
  for (screen_i.csv in 120:175){
    if(i == 120){
      file.create("allData.csv");
    }else{
      file.copy("allData.csv","screen_i.csv",overwrite = FALSE)
    }   
}