
#https://harvard.az1.qualtrics.com/jfe/form/SV_eksPrqI859x6d8O?Task=REC-IND|CMA-MUL&value=18-3|4-20&PROLIFIC_PID=123&STUDY_ID=456&SESSION_ID=6789

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
  "STO"
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
  "VOT"
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
