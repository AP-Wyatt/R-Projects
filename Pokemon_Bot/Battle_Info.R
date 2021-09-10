library(KeyboardSimulator)
info=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(177,227)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="c",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.2)
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(709,658)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="v",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="enter",hold=FALSE)
  keybd.type_string(string="SendOut")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="s",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="a",hold=FALSE)
  keybd.release(button="ctrl")
  keybd.press(button="backspace",hold=FALSE)
  Sys.sleep(0.2)
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(400,127)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="c",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(786,658)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="v",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="s",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="a",hold=FALSE)
  keybd.release(button="ctrl")
  keybd.press(button="backspace",hold=FALSE)
  Sys.sleep(0.1)
}
info2=function(x){
  info()
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(x=83,y=478)
  for(i in 1:3){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(0.2)
  for(i in 1:95){
  keybd.press(button="shift",hold=TRUE)
  keybd.press(button="right",hold=FALSE)
  keybd.release(button="shift")
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="c",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(861,658)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(1)
  keybd.type_string(string='one two three')
  keybd.press(button="enter",hold=FALSE)
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="v",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="s",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="a",hold=FALSE)
  keybd.release(button="ctrl")
  keybd.press(button="backspace",hold=FALSE)
  Sys.sleep(0.2)
}
info3=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(x=83,y=550)
  for(i in 1:3){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(0.2)
  for(i in 1:95){
    keybd.press(button="shift",hold=TRUE)
    keybd.press(button="right",hold=FALSE)
    keybd.release(button="shift")
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="c",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(937,658)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="v",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="s",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="a",hold=FALSE)
  keybd.release(button="ctrl")
  keybd.press(button="backspace",hold=FALSE)
  Sys.sleep(0.2)
}
info4=function(x){
  info2()
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  Sys.sleep(0.1)
  mouse.move(x=745,y=662)
  for(i in 1:3){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="c",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(1009,658)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="v",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="enter",hold=FALSE)
  keybd.type_string(string="Premature")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="s",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="a",hold=FALSE)
  keybd.release(button="ctrl")
  keybd.press(button="backspace",hold=FALSE)
  Sys.sleep(0.2)
}

Move1=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(97,509)
  mouse.click(button="left",hold=FALSE)
}

Move2=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(235,509)
  mouse.click(button="left",hold=FALSE)
}

Move3=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(395,509)
  mouse.click(button="left",hold=FALSE)
}

Move4=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(550,509)
  mouse.click(button="left",hold=FALSE)
}

Cleanup=function(x){
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  for(i in 1:4){
  Sys.sleep(0.1)
  mouse.move(680,749)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(1)
  mouse.move(700,645)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(1)
  mouse.move(936,32)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  keybd.press(button="enter",hold=FALSE)
  Sys.sleep(0.1)
  }
}

Send_Out=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  Send_Out_Possibilities=c(62,162,262,362,462,562)
  mouse.move(sample(Send_Out_Possibilities,size=1,replace=TRUE),509)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  Cleanup()
}

Send_Out2=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,509)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info5()
  Sys.sleep(0.2)
  if(isTRUE(My_Moves_Data$one[1]=="Switch")) Rand_SendOut() else(Team$x=c(Team$x[2],Team$x[1],Team$x[3],Team$x[4],Team$x[5],Team$x[6]))
  write.csv(Team,'../desktop/Team.txt')
}

Send_Out3=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,509)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info2()
  Sys.sleep(0.2)
  if(isTRUE(My_Moves_Data$one[1]=="Switch")) Rand_SendOut() else(Team$x=c(Team$x[3],Team$x[2],Team$x[1],Team$x[4],Team$x[5],Team$x[6]))
  write.csv(Team,'../desktop/Team.txt')
}

Send_Out4=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,509)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info2()
  Sys.sleep(0.2)
  if(isTRUE(My_Moves_Data$one[1]=="Switch")) Rand_SendOut() else(Team$x=c(Team$x[4],Team$x[2],Team$x[3],Team$x[1],Team$x[5],Team$x[6]))
  write.csv(Team,'../desktop/Team.txt')
}

Send_Out5=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,509)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info2()
  Sys.sleep(0.2)
  if(isTRUE(My_Moves_Data$one[1]=="Switch")) Rand_SendOut() else(Team$x=c(Team$x[5],Team$x[2],Team$x[3],Team$x[4],Team$x[1],Team$x[6]))
  write.csv(Team,'../desktop/Team.txt')
}

Send_Out6=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,509)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info2()
  Sys.sleep(0.2)
  if(isTRUE(My_Moves_Data$one[1]=="Switch")) Rand_SendOut() else(Team$x=c(Team$x[6],Team$x[2],Team$x[3],Team$x[4],Team$x[5],Team$x[1]))
  write.csv(Team,'../desktop/Team.txt')
}

Rand_Switch=function(x){
    mouse.move(x=487,y=750)
    mouse.click(button="left",hold=FALSE)
    Sys.sleep(0.1)
    Send_Out_Possibilities=c(162,262,362,462,562)
    Sample=sample(Send_Out_Possibilities,size=1,replace=TRUE)
    v1=0
    if(isTRUE(Sample==162)) v1=2
    if(isTRUE(Sample==262)) v1=3
    if(isTRUE(Sample==362)) v1=4
    if(isTRUE(Sample==462)) v1=5
    if(isTRUE(Sample==562)) v1=6
    Sys.sleep(0.1)
    if(isTRUE(v1==2)) Switch2()
    if(isTRUE(v1==3)) Switch3()
    if(isTRUE(v1==4)) Switch4()
    if(isTRUE(v1==5)) Switch5()
    if(isTRUE(v1==6)) Switch6()
    mouse.click(button="left",hold=FALSE)
    Cleanup()
}

Rand_SendOut=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  Send_Out_Possibilities=c(162,262,362,462,562)
  Sample=sample(Send_Out_Possibilities,size=1,replace=TRUE)
  v1=0
  if(isTRUE(Sample==162)) v1=2
  if(isTRUE(Sample==262)) v1=3
  if(isTRUE(Sample==362)) v1=4
  if(isTRUE(Sample==462)) v1=5
  if(isTRUE(Sample==562)) v1=6
  Sys.sleep(0.1)
  if(isTRUE(v1==2)) SendOut2()
  if(isTRUE(v1==3)) SendOut3()
  if(isTRUE(v1==4)) SendOut4()
  if(isTRUE(v1==5)) SendOut5()
  if(isTRUE(v1==6)) SendOut6()
  mouse.click(button="left",hold=FALSE)
  Cleanup()
}

Initial_Teamget=function(x){
  info3()
  My_Team=read.delim('../desktop/My_Team.txt',header=TRUE,sep=',',col.names="Switch")
  Pokemon1=trimws(paste(My_Team$Switch[1]))
  Pokemon2=trimws(paste(My_Team$Switch[2]))
  Pokemon3=trimws(paste(My_Team$Switch[3]))
  Pokemon4=trimws(paste(My_Team$Switch[4]))
  Pokemon5=trimws(paste(My_Team$Switch[5]))
  Pokemon6=trimws(paste(My_Team$Switch[6]))
  Team=c(Pokemon1,Pokemon2,Pokemon3,Pokemon4,Pokemon5,Pokemon6)
  write.csv(Team,'../desktop/Team.txt')
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  for(i in 1:1){
    Sys.sleep(0.1)
    mouse.move(680,749)
    mouse.click(button="left",hold=FALSE)
    Sys.sleep(1)
    mouse.move(700,645)
    mouse.click(button="left",hold=FALSE)
    Sys.sleep(1)
    mouse.move(936,32)
    mouse.click(button="left",hold=FALSE)
    Sys.sleep(0.1)
    keybd.press(button="enter",hold=FALSE)
    Sys.sleep(0.1)
  }
}

info5=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(177,227)
  Sys.sleep(2)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="c",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.2)
  mouse.move(1365,744)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(1010,658)
  for(i in 1:2){
    mouse.click(button="left",hold=FALSE)
  }
  Sys.sleep(1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="v",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="enter",hold=FALSE)
  keybd.type_string(string="SendOut")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="s",hold=FALSE)
  keybd.release(button="ctrl")
  Sys.sleep(0.1)
  keybd.press(button="ctrl",hold=TRUE)
  keybd.press(button="a",hold=FALSE)
  keybd.release(button="ctrl")
  keybd.press(button="backspace",hold=FALSE)
}

Switch1=function(x){
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  Send_Out_Possibilities=c(62,162,262,362,462,562)
  mouse.move(62,575)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
}

Switch2=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,575)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info5()
  Sys.sleep(0.2)
  New_A=read.delim('../desktop/New_Active.txt',header=FALSE)
  New_Active=trimws(New_A$V1[1])
  if(isTRUE(New_Active=="SendOut")) Rand_Switch() else(Team$x=c(Team$x[2],Team$x[1],Team$x[3],Team$x[4],Team$x[5],Team$x[6]))
  write.csv(Team,'../desktop/Team.txt')
}

Switch3=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,575)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info5()
  Sys.sleep(0.2)
  New_A=read.delim('../desktop/New_Active.txt',header=FALSE)
  New_Active=trimws(New_A$V1[1])
  if(isTRUE(New_Active=="SendOut")) Rand_Switch() else(Team$x=c(Team$x[3],Team$x[2],Team$x[1],Team$x[4],Team$x[5],Team$x[6]))
  write.csv(Team,'C:/users/aindr/desktop/Team.txt')
}

Switch4=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,575)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info5()
  Sys.sleep(0.2)
  New_A=read.delim('../desktop/New_Active.txt',header=FALSE)
  New_Active=trimws(New_A$V1[1])
  if(isTRUE(New_Active=="SendOut")) Rand_Switch() else(Team$x=c(Team$x[4],Team$x[2],Team$x[3],Team$x[1],Team$x[5],Team$x[6]))
  write.csv(Team,'../desktop/Team.txt')
}

Switch5=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,575)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info5()
  Sys.sleep(0.2)
  New_A=read.delim('../desktop/New_Active.txt',header=FALSE)
  New_Active=trimws(New_A$V1[1])
  if(isTRUE(New_Active=="SendOut")) Rand_Switch() else(Team$x=c(Team$x[5],Team$x[2],Team$x[3],Team$x[4],Team$x[1],Team$x[6]))
  write.csv(Team,'../desktop/Team.txt')
}

Switch6=function(x){
  Team=read.delim('../desktop/Team.txt',header=TRUE,sep=',')
  mouse.move(x=487,y=750)
  mouse.click(button="left",hold=FALSE)
  Sys.sleep(0.1)
  mouse.move(162,575)
  Sys.sleep(0.1)
  mouse.click(button="left",hold=FALSE)
  info5()
  Sys.sleep(0.2)
  New_A=read.delim('../desktop/New_Active.txt',header=FALSE)
  New_Active=trimws(New_A$V1[1])
  if(isTRUE(New_Active=="SendOut")) Rand_Switch() else(Team$x=c(Team$x[6],Team$x[2],Team$x[3],Team$x[4],Team$x[5],Team$x[1]))
  write.csv(Team,'../desktop/Team.txt')
}
