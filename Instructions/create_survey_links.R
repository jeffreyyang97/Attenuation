
#https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=REC-IND|CMA-MUL&value=18-3|4-20&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
tasks <- c("SAV",
           "DIG",
           "IND",
           "CMA",
           "POA",
           "PRD",
           "EXT",
           "FOR",
           "GGI",
           "ENS",
           "EFF",
           "PRS",
           "PAC",
           "FAI",
           "BEU",
           "VOT",
           "CHT",
           "REC",
           "SEA",
           "MUL",
           "PRO",
           "CEE",
           "PRE",
           "TID",
           "SIA",
           "NEW",
           "EGB",
           "DIL",
           "DIS",
           "EGI",
           "TAX",
           "POL",
           "STO",
           "FAP",
           "GPT")
i <- 1

tasks1 <- c(
  "IND",
  "CMA",
  "MUL",
  "FOR",
  "BEU",
  "REC",
  "PRS",
  "SEA",
  "SIA",
  "TAX",
  "PRO",
  "NEW",
  "PRE",
  "CEE",
  "STO",
  "EGB"
)

tasks2<- c(
  "SAV",
  "DIG",
  "POA",
  "PRD",
  "EXT",
  "EGI",
  "DIS",
  "ENS",
  "EFF",
  "PAC",
  "FAI",
  "TID",
  "CHT",
  "POL",
  "VOT",
  "GPT"
)

tasks_df <-data.frame(tasks1 = tasks1,
                      tasks2 = tasks2,
                      value1 = NA,
                      value2 =NA
) 

task1_tmp <- 0


for (i in 1:nrow(tasks_df)) {
  
  task1_tmp <- tasks_df[[i,"tasks1"]]
  task2_tmp <- tasks_df[[i,"tasks2"]]
  value1 <- 0
  value2 <- 0
  j <- 1
  for (task in tasks) {
    
    if(task == task1_tmp){
      value1<- j
    }
    if(task == task2_tmp){
      value2<- j
    }
    j <- j + 1
  }
  tasks_df[i,"value1"] <- value1
  tasks_df[i,"value2"] <- value2
  
  print(paste0(
    "https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=",
    task1_tmp,
    "-",
    task2_tmp,
    "&value=",
    value1,
    "-",
    value2,
    "&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789"
  ))
  
}





# IND-SAV:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=IND-SAV&value=3-1&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# CMA-DIG:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=CMA-DIG&value=4-2&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# MUL-POA:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=MUL-POA&value=20-5&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# FOR-PRD:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=FOR-PRD&value=8-6&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# BEU-EXT:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=BEU-EXT&value=15-7&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# REC-EGI:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=REC-EGI&value=18-30&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# PRS-DIS:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PRS-DIS&value=12-29&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# SEA-ENS:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=SEA-ENS&value=19-10&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# SIA-EFF:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=SIA-EFF&value=25-11&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# TAX-PAC:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=TAX-PAC&value=31-13&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# PRO-FAI:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PRO-FAI&value=21-14&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# NEW-TID:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=NEW-TID&value=26-24&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# PRE-CHT:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PRE-CHT&value=23-17&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# CEE-POL:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=CEE-POL&value=22-32&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# STO-VOT:    https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=STO-VOT&value=33-16&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789




#https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=REC-IND|CMA-MUL&value=18-3|4-20&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
tasks <- c("SAV",
           "DIG",
           "IND",
           "CMA",
           "POA",
           "PRD",
           "EXT",
           "FOR",
           "GGI",
           "ENS",
           "EFF",
           "PRS",
           "PAC",
           "FAI",
           "BEU",
           "VOT",
           "CHT",
           "REC",
           "SEA",
           "MUL",
           "PRO",
           "CEE",
           "PRE",
           "TID",
           "SIA",
           "NEW",
           "EGB",
           "DIL",
           "DIS",
           "EGI",
           "TAX",
           "POL",
           "STO",
           "FAP",
           "GPT")
i <- 1


tasks_df <-data.frame(tasks = tasks,
                      value =NA
) 

task1_tmp <- 0


for (i in 1:nrow(tasks_df)) {
  
  task1_tmp <- tasks_df[[i,"tasks"]]
  value1 <- 0
  j <- 1
  for (task in tasks) {
    
    if(task == task1_tmp){
      value1<- j
    }

    j <- j + 1
  }
  tasks_df[i,"value"] <- value1

  print(paste0(
    "https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=",
    task1_tmp,

    "&value=",
    value1,
    "&PROLIFIC_PID={{%PROLIFIC_PID%}}&STUDY_ID={{%STUDY_ID%}}&SESSION_ID={{%SESSION_ID%}}"
  ))
  
}

# 
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=SAV&value=1&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=DIG&value=2&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=IND&value=3&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=CMA&value=4&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=POA&value=5&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PRD&value=6&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=EXT&value=7&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=FOR&value=8&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=GGI&value=9&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=ENS&value=10&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=EFF&value=11&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PRS&value=12&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PAC&value=13&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=FAI&value=14&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=BEU&value=15&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=VOT&value=16&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=CHT&value=17&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=REC&value=18&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=SEA&value=19&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=MUL&value=20&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PRO&value=21&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=CEE&value=22&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=PRE&value=23&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=TID&value=24&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=SIA&value=25&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=NEW&value=26&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=EGB&value=27&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=DIL&value=28&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=DIS&value=29&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=EGI&value=30&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=TAX&value=31&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=POL&value=32&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=STO&value=33&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=FAP&value=34&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=GPT&value=35&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789
# 


y1 <- c(112, 109, 132, 125, 101, 106, 121, 128, 105, 100, 128, 132, 119)
y2 <- c(130, 127, 114, 107, 117, 122, 105, 112, 122, 117, 111, 115, 137)
par <- c(0, 0.01, 0.03, 0.05, 0.10, 0.25, 0.50, 0.75, 0.90, 0.95, 0.97, 0.99, 1)
for (i in 1:13) {
  print(y2[i] + y2[i]* (y2[i] - y1[i])/y1[i] )
}



