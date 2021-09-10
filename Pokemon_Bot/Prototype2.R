Stats_Table=read.delim('../desktop/Usable_Bot_Tables/Stats_Table.txt',header=TRUE,sep=',')
Damage_Table=read.delim('../desktop/Usable_Bot_Tables/Damage_Table.txt',header=TRUE,sep=',')
Attacks_Table=read.delim('../desktop/Usable_Bot_Tables/Attacks_Table.txt',header=TRUE,sep=',')
Attack_Types_Table=read.delim('../desktop/Usable_Bot_Tables/Attack_Types_Table.txt',header=TRUE,sep=',')
Levels_And_Opponent_Moves_Table=read.delim('../desktop/Usable_Bot_Tables/Levels_And_Opponent_Moves_Table.txt',header=TRUE,sep=',')
Types_Data=read.delim('../desktop/Usable_Bot_Tables/Types_Data.txt',header=TRUE,sep=',')
Problem_Moves=read.delim('../desktop/Usable_Bot_Tables/Problem_Moves.txt',header=TRUE,sep=',')

Types=c("Normal","Fire","Water","Electric","Grass","Ice","Fighting","Poison",
      "Ground","Flying","Psychic","Bug","Rock","Ghost","Dragon","Dark","Steel")
No_copies=seq(from=0.01,to=0.02,by=0.0001)

library(KeyboardSimulator)
rstudioapi::jobRunScript('../desktop/R Scripts/Pokemon_and_Web_Scraping/Showdown_Bot/Battle_Info.R',exportEnv='R_GlobalEnv')

Setup=function(x){
info2()
My_Moves_Data=read.delim('../desktop/My_Moves.txt',header=TRUE,sep=' ',fill=TRUE)
A_P=read.delim('../desktop/Active_Pokemon.txt',header=FALSE)
Active_Pokemon=trimws(paste(A_P$V1[1]))
Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
Switch1_Typing=c(Types_Data$Type[grep(pattern=Team$x[1],Types_Data$Name,ignore.case=TRUE)])
Switch2_Typing=c(Types_Data$Type[grep(pattern=Team$x[2],Types_Data$Name,ignore.case=TRUE)])
Switch3_Typing=c(Types_Data$Type[grep(pattern=Team$x[3],Types_Data$Name,ignore.case=TRUE)])
Switch4_Typing=c(Types_Data$Type[grep(pattern=Team$x[4],Types_Data$Name,ignore.case=TRUE)])
Switch5_Typing=c(Types_Data$Type[grep(pattern=Team$x[5],Types_Data$Name,ignore.case=TRUE)])
Switch6_Typing=c(Types_Data$Type[grep(pattern=Team$x[6],Types_Data$Name,ignore.case=TRUE)])
Switch1_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Team$x[1]],Damage_Table$Damage2[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage3[Damage_Table$Name==Team$x[1]],Damage_Table$Damage4[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage5[Damage_Table$Name==Team$x[1]],Damage_Table$Damage6[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage7[Damage_Table$Name==Team$x[1]],Damage_Table$Damage8[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage9[Damage_Table$Name==Team$x[1]],Damage_Table$Damage10[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage11[Damage_Table$Name==Team$x[1]],Damage_Table$Damage12[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage13[Damage_Table$Name==Team$x[1]],Damage_Table$Damage14[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage15[Damage_Table$Name==Team$x[1]],Damage_Table$Damage16[Damage_Table$Name==Team$x[1]],
                       Damage_Table$Damage17[Damage_Table$Name==Team$x[1]])
Switch2_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Team$x[2]],Damage_Table$Damage2[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage3[Damage_Table$Name==Team$x[2]],Damage_Table$Damage4[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage5[Damage_Table$Name==Team$x[2]],Damage_Table$Damage6[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage7[Damage_Table$Name==Team$x[2]],Damage_Table$Damage8[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage9[Damage_Table$Name==Team$x[2]],Damage_Table$Damage10[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage11[Damage_Table$Name==Team$x[2]],Damage_Table$Damage12[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage13[Damage_Table$Name==Team$x[2]],Damage_Table$Damage14[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage15[Damage_Table$Name==Team$x[2]],Damage_Table$Damage16[Damage_Table$Name==Team$x[2]],
                       Damage_Table$Damage17[Damage_Table$Name==Team$x[2]])
Switch3_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Team$x[3]],Damage_Table$Damage2[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage3[Damage_Table$Name==Team$x[3]],Damage_Table$Damage4[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage5[Damage_Table$Name==Team$x[3]],Damage_Table$Damage6[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage7[Damage_Table$Name==Team$x[3]],Damage_Table$Damage8[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage9[Damage_Table$Name==Team$x[3]],Damage_Table$Damage10[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage11[Damage_Table$Name==Team$x[3]],Damage_Table$Damage12[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage13[Damage_Table$Name==Team$x[3]],Damage_Table$Damage14[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage15[Damage_Table$Name==Team$x[3]],Damage_Table$Damage16[Damage_Table$Name==Team$x[3]],
                       Damage_Table$Damage17[Damage_Table$Name==Team$x[3]])
Switch4_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Team$x[4]],Damage_Table$Damage2[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage3[Damage_Table$Name==Team$x[4]],Damage_Table$Damage4[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage5[Damage_Table$Name==Team$x[4]],Damage_Table$Damage6[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage7[Damage_Table$Name==Team$x[4]],Damage_Table$Damage8[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage9[Damage_Table$Name==Team$x[4]],Damage_Table$Damage10[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage11[Damage_Table$Name==Team$x[4]],Damage_Table$Damage12[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage13[Damage_Table$Name==Team$x[4]],Damage_Table$Damage14[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage15[Damage_Table$Name==Team$x[4]],Damage_Table$Damage16[Damage_Table$Name==Team$x[4]],
                       Damage_Table$Damage17[Damage_Table$Name==Team$x[4]])
Switch5_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Team$x[5]],Damage_Table$Damage2[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage3[Damage_Table$Name==Team$x[5]],Damage_Table$Damage4[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage5[Damage_Table$Name==Team$x[5]],Damage_Table$Damage6[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage7[Damage_Table$Name==Team$x[5]],Damage_Table$Damage8[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage9[Damage_Table$Name==Team$x[5]],Damage_Table$Damage10[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage11[Damage_Table$Name==Team$x[5]],Damage_Table$Damage12[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage13[Damage_Table$Name==Team$x[5]],Damage_Table$Damage14[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage15[Damage_Table$Name==Team$x[5]],Damage_Table$Damage16[Damage_Table$Name==Team$x[5]],
                       Damage_Table$Damage17[Damage_Table$Name==Team$x[5]])
Switch6_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Team$x[6]],Damage_Table$Damage2[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage3[Damage_Table$Name==Team$x[6]],Damage_Table$Damage4[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage5[Damage_Table$Name==Team$x[6]],Damage_Table$Damage6[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage7[Damage_Table$Name==Team$x[6]],Damage_Table$Damage8[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage9[Damage_Table$Name==Team$x[6]],Damage_Table$Damage10[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage11[Damage_Table$Name==Team$x[6]],Damage_Table$Damage12[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage13[Damage_Table$Name==Team$x[6]],Damage_Table$Damage14[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage15[Damage_Table$Name==Team$x[6]],Damage_Table$Damage16[Damage_Table$Name==Team$x[6]],
                       Damage_Table$Damage17[Damage_Table$Name==Team$x[6]])
Switch_Decision_Table=data.frame(Types,Switch1_Damage_Taken,Switch2_Damage_Taken,Switch3_Damage_Taken,
                                 Switch4_Damage_Taken,Switch5_Damage_Taken,Switch6_Damage_Taken)
write.csv(Switch_Decision_Table,'../desktop/Switch_Decision_Table.txt')

if(isTRUE(My_Moves_Data=="Waiting for opponent... Cancel")){
  Setup()
}

if(isFALSE(Active_Pokemon=="Dummy_User")|isFALSE(Active_Pokemon=="SendOut")){
  My_Typing=c(Types_Data$Type[grep(pattern=Active_Pokemon,Types_Data$Name,ignore.case=TRUE)])
  My_level=Levels_And_Opponent_Moves_Table$Level[grep(pattern=Active_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)]
  My_Move_Names=trimws(c(paste(My_Moves_Data$one[2],na.omit(My_Moves_Data$two[2])),paste(My_Moves_Data$two[3],na.omit(My_Moves_Data$three[3])),
                        paste(My_Moves_Data$two[4],na.omit(My_Moves_Data$three[4])),paste(My_Moves_Data$two[5],na.omit(My_Moves_Data$three[5]))))
  for(i in 1:length(My_Move_Names)){
  if(isTRUE(My_Move_Names[i]=="Trick Room")) My_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=My_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
  if(isTRUE(My_Move_Names[i]=="Thunder")) My_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=My_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
  if(isTRUE(My_Move_Names[i]=="Bug Bite")) My_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=My_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
  if(isTRUE(My_Move_Names[i]=="Toxic Spikes")) My_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=My_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
  }
  My_Move_Type=c(Attack_Types_Table$Type[grep(pattern=My_Move_Names[1],Attack_Types_Table$Name,ignore.case=TRUE,)],
                 Attack_Types_Table$Type[grep(pattern=My_Move_Names[2],Attack_Types_Table$Name,ignore.case=TRUE,)],
                 Attack_Types_Table$Type[grep(pattern=My_Move_Names[3],Attack_Types_Table$Name,ignore.case=TRUE,)],
                 Attack_Types_Table$Type[grep(pattern=My_Move_Names[4],Attack_Types_Table$Name,ignore.case=TRUE,)])
  My_Move_Stat=c(Attacks_Table$Stat[grep(pattern=My_Move_Names[1],Attacks_Table$Name,ignore.case=TRUE)],
                 Attacks_Table$Stat[grep(pattern=My_Move_Names[2],Attacks_Table$Name,ignore.case=TRUE)],
                 Attacks_Table$Stat[grep(pattern=My_Move_Names[3],Attacks_Table$Name,ignore.case=TRUE)],
                 Attacks_Table$Stat[grep(pattern=My_Move_Names[4],Attacks_Table$Name,ignore.case=TRUE)])
  My_Move_Power=as.integer(c(Attacks_Table$Power[grep(pattern=My_Move_Names[1],Attacks_Table$Name,ignore.case=TRUE)],
                             Attacks_Table$Power[grep(pattern=My_Move_Names[2],Attacks_Table$Name,ignore.case=TRUE)],
                             Attacks_Table$Power[grep(pattern=My_Move_Names[3],Attacks_Table$Name,ignore.case=TRUE)],
                             Attacks_Table$Power[grep(pattern=My_Move_Names[4],Attacks_Table$Name,ignore.case=TRUE)]))
  for(i in 1:length(My_Move_Power)){
    if(isTRUE(is.na(My_Move_Power[i]))) My_Move_Power[i]=0
    Randomiser=c(0,0,0,1)
    if(isTRUE(sample(Randomiser,size=1,replace=TRUE)==1)&isTRUE(My_Move_Power[i]==0)) My_Move_Power[i]=100
  }
  My_Damage_Moves=data.frame(My_Move_Names,My_Move_Type,My_Move_Stat,My_Move_Power)
  My_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage2[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage3[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage4[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage5[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage6[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage7[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage8[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage9[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage10[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage11[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage12[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage13[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage14[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage15[Damage_Table$Name==Active_Pokemon],Damage_Table$Damage16[Damage_Table$Name==Active_Pokemon],
                    Damage_Table$Damage17[Damage_Table$Name==Active_Pokemon])
  Active_Pokemon_Stats=c(Stats_Table$HP[grep(pattern=Active_Pokemon,Stats_Table$Name)],Stats_Table$Atk[grep(pattern=Active_Pokemon,Stats_Table$Name)],
                         Stats_Table$Def[grep(pattern=Active_Pokemon,Stats_Table$Name)],Stats_Table$SpA[grep(pattern=Active_Pokemon,Stats_Table$Name)],
                         Stats_Table$SpD[grep(pattern=Active_Pokemon,Stats_Table$Name)],Stats_Table$Spe[grep(pattern=Active_Pokemon,Stats_Table$Name)])
  
  Target_Pokemon=trimws(paste(read.delim('../desktop/Target_Pokemon.txt',header=FALSE)))
  Target_Pokemon_Typing=c(Types_Data$Type[grep(pattern=Target_Pokemon,Types_Data$Name,ignore.case=TRUE)])
  Target_Level=Levels_And_Opponent_Moves_Table$Level[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)]
  Target_Move_Names=c(Levels_And_Opponent_Moves_Table$Move1[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move2[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move3[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move4[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move5[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move6[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move7[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move8[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move9[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)],
                      Levels_And_Opponent_Moves_Table$Move10[grep(pattern=Target_Pokemon,Levels_And_Opponent_Moves_Table$Name,ignore.case=TRUE)])
  for(i in 1:length(Target_Move_Names)){
    if(isTRUE(Target_Move_Names[i]=="")) Target_Move_Names[i]=0
    if(isTRUE(is.na(Target_Move_Names[i]))) Target_Move_Names[i]=0
  }
  for(i in 1:length(Target_Move_Names)){
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Fighting")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Grass")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Ice")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Dragon")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Flying")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Dark")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Steel")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Fire")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Water")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Electric")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Psychic")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Poison")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Bug")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Rock")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Ground")) Target_Move_Names[i]="Hidden Power"
  if(isTRUE(Target_Move_Names[i]=="Hidden Power Ghost")) Target_Move_Names[i]="Hidden Power"
  }
  for(i in 1:length(Target_Move_Names)){
    if(isTRUE(Target_Move_Names[i]=="Trick Room")) Target_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=Target_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
    if(isTRUE(Target_Move_Names[i]=="Thunder")) Target_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=Target_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
    if(isTRUE(Target_Move_Names[i]=="Bug Bite")) Target_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=Target_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
    if(isTRUE(Target_Move_Names[i]=="Toxic Spikes")) Target_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=Target_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
    if(isTRUE(Target_Move_Names[i]=="Zen Headbutt")) Target_Move_Names[i]=paste(Problem_Moves$New_Name[grep(pattern=Target_Move_Names[i],Problem_Moves$Name,ignore.case=TRUE)])
    }
  Target_Move_Type=c(Attack_Types_Table$Type[grep(pattern=Target_Move_Names[1],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[2],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[3],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[4],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[5],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[6],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[7],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[8],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[9],Attack_Types_Table$Name,ignore.case=TRUE)],
                     Attack_Types_Table$Type[grep(pattern=Target_Move_Names[10],Attack_Types_Table$Name,ignore.case=TRUE)])
  Target_Move_Stat=c(Attacks_Table$Stat[grep(pattern=Target_Move_Names[1],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[2],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[3],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[4],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[5],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[6],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[7],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[8],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[9],Attacks_Table$Name,ignore.case=TRUE)],
                     Attacks_Table$Stat[grep(pattern=Target_Move_Names[10],Attacks_Table$Name,ignore.case=TRUE)])
  Target_Move_Power=as.integer(c(Attacks_Table$Power[grep(pattern=Target_Move_Names[1],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[2],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[3],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[4],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[5],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[6],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[7],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[8],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[9],Attacks_Table$Name)],
                                 Attacks_Table$Power[grep(pattern=Target_Move_Names[10],Attacks_Table$Name)]))
  if(isTRUE((length(Target_Move_Power))==(length(Target_Move_Stat)-1))) Target_Move_Power[length(Target_Move_Stat)]=NA
  for(i in 1:length(Target_Move_Power)){
    if(isTRUE(is.na(Target_Move_Power[i]))) Target_Move_Power[i]=60
  }
  for(i in 1:length(Target_Move_Names)){
    if(isTRUE(Target_Move_Names[i]==0)) Target_Move_Names[i]=NA
  }
  Target_Move_Names=na.omit(Target_Move_Names)
  Target_Damage_Moves=data.frame(Target_Move_Names,Target_Move_Type,Target_Move_Stat,Target_Move_Power)
  Target_Damage_Taken=c(Damage_Table$Damage1[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage2[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage3[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage4[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage5[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage6[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage7[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage8[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage9[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage10[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage11[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage12[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage13[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage14[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage15[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage16[Damage_Table$Name==Target_Pokemon],
                        Damage_Table$Damage17[Damage_Table$Name==Target_Pokemon])
  Target_Pokemon_Stats=c(Stats_Table$HP[grep(pattern=Target_Pokemon,Stats_Table$Name)],
                         Stats_Table$Atk[grep(pattern=Target_Pokemon,Stats_Table$Name)],
                         Stats_Table$Def[grep(pattern=Target_Pokemon,Stats_Table$Name)],
                         Stats_Table$SpA[grep(pattern=Target_Pokemon,Stats_Table$Name)],
                         Stats_Table$SpD[grep(pattern=Target_Pokemon,Stats_Table$Name)],
                         Stats_Table$Spe[grep(pattern=Target_Pokemon,Stats_Table$Name)])
  Target_Typing=data.frame(Types,Target_Damage_Taken)
  
  SendOut_Decision=function(x){
    Switch_Decision_Table=read.delim('../desktop/Switch_Decision_Table.txt',header=TRUE,sep=',')
    if(isTRUE((Switch_Decision_Table$Switch2_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch2_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) Send_Out2() 
      else(if((isTRUE(Switch_Decision_Table$Switch3_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch3_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) SendOut3() 
        else(if(isTRUE((Switch_Decision_Table$Switch4_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch4_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) SendOut4() 
          else(if(isTRUE((Switch_Decision_Table$Switch5_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch5_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) SendOut5() 
            else(if(isTRUE((Switch_Decision_Table$Switch6_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch6_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) SendOut6() 
              else(Rand_Switch())))))
  }
  
  if(isTRUE(My_Moves_Data$one[1]=="Switch")){ SendOut_Decision()
    Sys.sleep(1)
    Setup()
    Sys.sleep(0.1)
  }
  
  Switch_Decision=function(x){
    Switch_Decision_Table=read.delim('../desktop/Switch_Decision_Table.txt',header=TRUE,sep=',')
    if(isTRUE((Switch_Decision_Table$Switch2_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch2_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) Switch2() 
      else(if((isTRUE(Switch_Decision_Table$Switch3_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch3_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) Switch3() 
        else(if(isTRUE((Switch_Decision_Table$Switch4_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch4_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) Switch4() 
          else(if(isTRUE((Switch_Decision_Table$Switch5_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch5_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) Switch5() 
            else(if(isTRUE((Switch_Decision_Table$Switch6_Damage_Taken[Types==Target_Pokemon_Typing[1]]+Switch_Decision_Table$Switch6_Damage_Taken[Types==Target_Pokemon_Typing[2]]))<0.26) Switch6() 
              else(Rand_Switch())))))
  }
  
  My_Score=c()
  for(i in 1:4){
    x=My_Move_Names[i]
    if(isTRUE(My_Move_Stat[i]=="Atk")) Damage_Formula=(((((((2*My_level)/5)+2)*(My_Move_Power[i])*(Active_Pokemon_Stats[2]/Target_Pokemon_Stats[3])))/50)+2)
    if(isTRUE(My_Move_Stat[i]=="SpA")) Damage_Formula=(((((((2*My_level)/5)+2)*(My_Move_Power[i])*(Active_Pokemon_Stats[4]/Target_Pokemon_Stats[5])))/50)+2)
    if(isTRUE(My_Move_Stat[i]=="Other")) Damage_Formula=0
    Modifier=Target_Typing$Target_Damage_Taken[Target_Typing$Types==My_Move_Type[i]]
    if(isTRUE(grepl(pattern=My_Move_Type[i],My_Typing,ignore.case=TRUE))) My_Damage=Damage_Formula*Modifier*1.5 else(My_Damage=Damage_Formula*Modifier)
    My_Score[i]=(Target_Pokemon_Stats[1]-My_Damage)
  }
  Enemy_Score=c()
  for(i in 1:length(Target_Move_Names)){
    if(isTRUE(Target_Move_Stat[i]=="Atk")) Enemy_Damage_Formula=(((((((2*Target_Level)/5)+2)*(Target_Move_Power[i])*(Target_Pokemon_Stats[2]/Active_Pokemon_Stats[3])))/50)+2)
    if(isTRUE(Target_Move_Stat[i]=="SpA")) Enemy_Damage_Formula=(((((((2*Target_Level)/5)+2)*(Target_Move_Power[i])*(Target_Pokemon_Stats[4]/Active_Pokemon_Stats[5])))/50)+2)
    if(isTRUE(Target_Move_Stat[i]=="Other")) Enemy_Damage_Formula=0
    Enemy_Modifier=Target_Typing$Target_Damage_Taken[Target_Typing$Types==Target_Move_Type[i]]
    if(isTRUE(grepl(pattern=Target_Move_Type[i],Target_Pokemon_Typing,ignore.case=TRUE))) Enemy_Damage=Enemy_Damage_Formula*Enemy_Modifier*1.5 else(Enemy_Damage=Enemy_Damage_Formula*Enemy_Modifier)
    No_copies=seq(from=0.01,to=0.02,by=0.0001)
    Enemy_Score[i]=(Active_Pokemon_Stats[1]-Enemy_Damage)
  }
  Enemy_Table=data.frame(Target_Move_Names,Enemy_Score)
  My_Score2=c()
  for(i in 1:length(My_Score)){
  My_Score2[i]=1-(My_Score[i]/Target_Pokemon_Stats[1])
  }
  Enemy_Score2=1-(mean(Enemy_Score)/Active_Pokemon_Stats[1])
  
  Score=c()
  for(i in 1:length(My_Move_Names)){
    Score[i]=(Enemy_Score2-My_Score2[i])-sample(No_copies,size=1,replace=FALSE)
  }
  
  
  Decision_Table=data.frame(My_Move_Names,Score)
  if(isTRUE((max(Score))<=0)){
  if(isTRUE(Decision_Table$My_Move_Names[Decision_Table$Score==min(Score)]==My_Move_Names[1])) Move1() 
  if(isTRUE(Decision_Table$My_Move_Names[Decision_Table$Score==min(Score)]==My_Move_Names[2])) Move2() 
  if(isTRUE(Decision_Table$My_Move_Names[Decision_Table$Score==min(Score)]==My_Move_Names[3])) Move3() 
  if(isTRUE(Decision_Table$My_Move_Names[Decision_Table$Score==min(Score)]==My_Move_Names[4])) Move4() 
  }else(Switch_Decision())
  Cleanup()
  Sys.sleep(0.1)
  }
}


