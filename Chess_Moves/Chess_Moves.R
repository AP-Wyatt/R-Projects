a=c(0.1,0.9,0,0,0,0,17,25)
b=c(0.2,10,0,0,0,0,18,26)
c=c(0.3,11,0,0,0,0,19,27)
d=c(0.4,12,0,0,0,0,20,28)
e=c(0.5,13,0,0,0,0,21,29)
f=c(0.6,14,0,0,0,0,22,30)
g=c(0.7,15,0,0,0,0,23,31)
h=c(0.8,16,0,0,0,0,24,32)

a=rep(0,length=8)
b=rep(0,length=8)
c=rep(0,length=8)
d=rep(0,length=8)
e=rep(0,length=8)
f=rep(0,length=8)
g=rep(0,length=8)
h=rep(0,length=8)

Board_Data=c(a,b,c,d,e,f,g,h)
Board=matrix(Board_Data,nrow=8,ncol=8)

White_Mover=function(x){
Piece=c(0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,10:32)
Piece_Position=c()
for(i in 1:32){
if(isTRUE(grep(Piece[i],Board)>0)) Piece_Position[i]=grep(Piece[i],Board) else(Piece_Position[i]=NA)
}
Has_Moved=rep(0,length=32)
Just_Moved=rep(0,length=16)
Special_Moves=data.frame(Piece,Has_Moved,Just_Moved)
In_Check_White=0
WKP=c(-9,-8,-7,-1,1,7,8,9)
WNP=c(10,6,17,15,-10,-6,-17,-15)

All_White_A_Pawn_Moves=c()
Pawn_Piece=c()
for(i in 9:16){
  All_White_A_Pawn_Moves1=c()
  All_White_A_Pawn_Moves2=c()
  All_White_A_Pawn_Moves3=c()
  All_White_A_Pawn_Moves4=c()
  All_White_A_Pawn_Moves5=c()
  All_White_A_Pawn_Moves6=c()
if(isTRUE(Board[Piece_Position[i]+1]==0)) All_White_A_Pawn_Moves1[i]=Piece_Position[i]+1 else(All_White_A_Pawn_Moves1[i]=NA)
if(isTRUE(Board[Piece_Position[i]+1]==0)&isTRUE(Board[Piece_Position[i]+2]==0)&isTRUE(Has_Moved[i]==0)) All_White_A_Pawn_Moves2[i]=Piece_Position[i]+2 else(All_White_A_Pawn_Moves2[i]=NA)
if(isTRUE(Board[Piece_Position[i]+9]>16)) All_White_A_Pawn_Moves3[i]=Piece_Position[i]+9 else(All_White_A_Pawn_Moves3[i]=NA)
if(isTRUE(Board[Piece_Position[i]-7]>16)) All_White_A_Pawn_Moves4[i]=Piece_Position[i]-7 else(All_White_A_Pawn_Moves4[i]=NA)
if(isTRUE(Board[Piece_Position[i]+8]>16)&isTRUE(Board[Piece_Position[i]+8]<25)&isTRUE(Just_Moved[i]==1)) All_White_A_Pawn_Moves5[i]=Piece_Position[i]+9 else(All_White_A_Pawn_Moves5[i]=NA)
if(isTRUE(Board[Piece_Position[i]-8]>16)&isTRUE(Board[Piece_Position[i]-8]<25)&isTRUE(Just_Moved[i]==1)) All_White_A_Pawn_Moves6[i]=Piece_Position[i]-7 else(All_White_A_Pawn_Moves6[i]=NA)
All_White_A_Pawn_Moves=append(All_White_A_Pawn_Moves,na.omit(c(All_White_A_Pawn_Moves1,All_White_A_Pawn_Moves2,All_White_A_Pawn_Moves3,All_White_A_Pawn_Moves4,All_White_A_Pawn_Moves5,All_White_A_Pawn_Moves6),after=length(All_White_A_Pawn_Moves)))
Pawn_Piece=append(Pawn_Piece,rep(i,length(na.omit(c(All_White_A_Pawn_Moves1,All_White_A_Pawn_Moves2,All_White_A_Pawn_Moves3,All_White_A_Pawn_Moves4,All_White_A_Pawn_Moves5,All_White_A_Pawn_Moves6)))),after=length(Pawn_Piece))
}

All_White_A_Rook_Moves=c()
Rook_Piece=c()
for(i in seq(from=1,to=8,by=7)){
  All_White_A_Rook_Moves1=c()
  All_White_A_Rook_Moves2=c()
  All_White_A_Rook_Moves3=c()
  All_White_A_Rook_Moves4=c()
    for(k in 1:7){
if(isTRUE(Board[Piece_Position[i]+k]==0)|isTRUE(Board[Piece_Position[i]+k]>16)) All_White_A_Rook_Moves1[k]=Piece_Position[i]+k else(All_White_A_Rook_Moves1[k]=NA)
if(isTRUE(is.na(All_White_A_Rook_Moves1[k-1]))|isTRUE(Board[All_White_A_Rook_Moves1[k-1]]>16)) All_White_A_Rook_Moves1[k]=NA
if(isTRUE(floor((All_White_A_Rook_Moves1[k]-0.001)/8)>floor(Piece_Position[i]/8))) All_White_A_Rook_Moves1[k]=NA
if(isTRUE(Board[Piece_Position[i]-k]==0)|isTRUE(Board[Piece_Position[i]-k]>16)) All_White_A_Rook_Moves2[k]=Piece_Position[i]-k else(All_White_A_Rook_Moves2[k]=NA)
if(isTRUE(is.na(All_White_A_Rook_Moves2[k-1]))|isTRUE(Board[All_White_A_Rook_Moves2[k-1]]>16)) All_White_A_Rook_Moves2[k]=NA
if(isTRUE(floor((All_White_A_Rook_Moves2[k]-0.001)/8)<floor(Piece_Position[i]/8))) All_White_A_Rook_Moves2[k]=NA
if(isTRUE(Board[Piece_Position[i]+(k*8)]==0)|isTRUE(Board[Piece_Position[i]+(k*8)]>16)) All_White_A_Rook_Moves3[k]=Piece_Position[i]+(k*8) else(All_White_A_Rook_Moves3[k]=NA)
if(isTRUE(is.na(All_White_A_Rook_Moves3[k-1]))|isTRUE(Board[All_White_A_Rook_Moves3[k-1]]>16)) All_White_A_Rook_Moves3[k]=NA
if(isTRUE(Board[Piece_Position[i]-(k*8)]==0)|isTRUE(Board[Piece_Position[i]-(k*8)]>16)) All_White_A_Rook_Moves4[k]=Piece_Position[i]-(k*8) else(All_White_A_Rook_Moves4[k]=NA)
if(isTRUE(is.na(All_White_A_Rook_Moves4[k-1]))|isTRUE(Board[All_White_A_Rook_Moves4[k-1]]>16)) All_White_A_Rook_Moves4[k]=NA
  }
  All_White_A_Rook_Moves=append(All_White_A_Rook_Moves,na.omit(c(All_White_A_Rook_Moves1,All_White_A_Rook_Moves2,All_White_A_Rook_Moves3,All_White_A_Rook_Moves4)),after=length(All_White_A_Rook_Moves))
  Rook_Piece=append(Rook_Piece,rep(i,length(na.omit(c(All_White_A_Rook_Moves1,All_White_A_Rook_Moves2,All_White_A_Rook_Moves3,All_White_A_Rook_Moves4)))),after=length(Rook_Piece))
}

All_White_Knight_Moves=c()
Knight_Piece=c()
for(i in seq(from=2,to=7,by=5)){
  All_White_B_Knight_Moves1=c()
  for(k in 1:1){
if(isTRUE(Board[Piece_Position[i]+10]==0)|isTRUE(Board[Piece_Position[i]+10]>16)) All_White_B_Knight_Moves1[k]=Piece_Position[i]+10 else(All_White_B_Knight_Moves1[k]=NA)
if(isTRUE(Board[Piece_Position[i]+6]==0)|isTRUE(Board[Piece_Position[i]+6]>16)) All_White_B_Knight_Moves1[k+1]=Piece_Position[i]+6 else(All_White_B_Knight_Moves1[k+1]=NA)
if(isTRUE(Board[Piece_Position[i]+17]==0)|isTRUE(Board[Piece_Position[i]+17]>16)) All_White_B_Knight_Moves1[k+2]=Piece_Position[i]+17 else(All_White_B_Knight_Moves1[k+2]=NA)
if(isTRUE(Board[Piece_Position[i]+15]==0)|isTRUE(Board[Piece_Position[i]+15]>16)) All_White_B_Knight_Moves1[k+3]=Piece_Position[i]+15 else(All_White_B_Knight_Moves1[k+3]=NA)
if(isTRUE(Board[Piece_Position[i]-10]==0)|isTRUE(Board[Piece_Position[i]-10]>16)) All_White_B_Knight_Moves1[k+4]=Piece_Position[i]-10 else(All_White_B_Knight_Moves1[k+4]=NA)
if(isTRUE(Board[Piece_Position[i]-6]==0)|isTRUE(Board[Piece_Position[i]-6]>16)) All_White_B_Knight_Moves1[k+5]=Piece_Position[i]-6 else(All_White_B_Knight_Moves1[k+5]=NA)
if(isTRUE(Board[Piece_Position[i]-17]==0)|isTRUE(Board[Piece_Position[i]-17]>16)) All_White_B_Knight_Moves1[k+6]=Piece_Position[i]-17 else(All_White_B_Knight_Moves1[k+6]=NA)
if(isTRUE(Board[Piece_Position[i]-15]==0)|isTRUE(Board[Piece_Position[i]-15]>16)) All_White_B_Knight_Moves1[k+7]=Piece_Position[i]-15 else(All_White_B_Knight_Moves1[k+7]=NA)
if(isTRUE((((ceiling(Piece_Position[i]/8))*8)-Piece_Position[i])==1)) All_White_B_Knight_Moves1[c(1,6)]=NA
if(isTRUE((((ceiling(Piece_Position[i]/8))*8)-Piece_Position[i])==6)) All_White_B_Knight_Moves1[c(2,4)]=NA
if(isTRUE((((ceiling(Piece_Position[i]/8))*8)-Piece_Position[i])==0)) All_White_B_Knight_Moves1[c(1,3,6,8)]=NA
if(isTRUE((((ceiling(Piece_Position[i]/8))*8)-Piece_Position[i])==7)) All_White_B_Knight_Moves1[c(2,4,5,7)]=NA
  }
  All_White_Knight_Moves=append(All_White_Knight_Moves,na.omit(c(All_White_B_Knight_Moves1)),after=length(All_White_Knight_Moves))
  Knight_Piece=append(Knight_Piece,rep(i,length(na.omit(c(All_White_B_Knight_Moves1)))),after=length(Knight_Piece))
}

All_White_Bishop_Moves=c()
Bishop_Piece=c()
for(i in 3:3){
  All_White_C_Bishop_Moves1=c()
  All_White_C_Bishop_Moves2=c()
  All_White_C_Bishop_Moves3=c()
  All_White_C_Bishop_Moves4=c()
  for(k in 1:8){
if(isTRUE(Board[Piece_Position[i]+(k*9)]==0)|isTRUE(Board[Piece_Position[i]+(k*9)]>16)) All_White_C_Bishop_Moves1[k]=Piece_Position[i]+(k*9) else(All_White_C_Bishop_Moves1[k]=NA)
if(isTRUE(is.na(All_White_C_Bishop_Moves1[k-1]))|isTRUE(Board[All_White_C_Bishop_Moves1[k-1]]>16)) All_White_C_Bishop_Moves1[k]=NA
if(isTRUE((floor((All_White_C_Bishop_Moves1[k]-0.001)/8))>(floor(((Piece_Position[i])-0.001)/8)+k))) All_White_C_Bishop_Moves1[k]=NA
if(isTRUE(Board[Piece_Position[i]-(k*9)]==0)|isTRUE(Board[Piece_Position[i]-(k*9)]>16)) All_White_C_Bishop_Moves2[k]=Piece_Position[i]-(k*9) else(All_White_C_Bishop_Moves2[k]=NA)
if(isTRUE(is.na(All_White_C_Bishop_Moves2[k-1]))|isTRUE(Board[All_White_C_Bishop_Moves2[k-1]]>16)) All_White_C_Bishop_Moves2[k]=NA
if(isTRUE((floor((All_White_C_Bishop_Moves2[k]-0.001)/8))<(floor(((Piece_Position[i])-0.001)/8)-k))) All_White_C_Bishop_Moves2[k]=NA
if(isTRUE(Board[Piece_Position[i]+(k*7)]==0)|isTRUE(Board[Piece_Position[i]+(k*7)]>16)) All_White_C_Bishop_Moves3[k]=Piece_Position[i]+(k*7) else(All_White_C_Bishop_Moves3[k]=NA)
if(isTRUE(is.na(All_White_C_Bishop_Moves3[k-1]))|isTRUE(Board[All_White_C_Bishop_Moves3[k-1]]>16)) All_White_C_Bishop_Moves3[k]=NA
if(isTRUE((floor((All_White_C_Bishop_Moves3[k]-0.001)/8))<(floor(((Piece_Position[i])-0.001)/8)+k))) All_White_C_Bishop_Moves3[k]=NA
if(isTRUE(Board[Piece_Position[i]-(k*7)]==0)|isTRUE(Board[Piece_Position[i]-(k*7)]>16)) All_White_C_Bishop_Moves4[k]=Piece_Position[i]-(k*7) else(All_White_C_Bishop_Moves4[k]=NA)
if(isTRUE(is.na(All_White_C_Bishop_Moves4[k-1]))|isTRUE(Board[All_White_C_Bishop_Moves4[k-1]]>16)) All_White_C_Bishop_Moves4[k]=NA
if(isTRUE((floor((All_White_C_Bishop_Moves4[k]-0.001)/8))>(floor(((Piece_Position[i])-0.001)/8)-k))) All_White_C_Bishop_Moves4[k]=NA
  }
  All_White_Bishop_Moves=append(All_White_Bishop_Moves,na.omit(c(All_White_C_Bishop_Moves1,All_White_C_Bishop_Moves2,All_White_C_Bishop_Moves3,All_White_C_Bishop_Moves4)),after=length(All_White_Bishop_Moves))
  Bishop_Piece=append(Bishop_Piece,rep(i,length(na.omit(c(All_White_C_Bishop_Moves1,All_White_C_Bishop_Moves2,All_White_C_Bishop_Moves3,All_White_C_Bishop_Moves4))),after=length(Bishop_Piece)))
}

All_White_Queen_Moves=c()
Queen_Piece=c()
for(i in seq(from=4,to=40,by=36)){
  All_White_Queen_Moves1=c()
  All_White_Queen_Moves2=c()
  All_White_Queen_Moves3=c()
  All_White_Queen_Moves4=c()
  All_White_Queen_Moves5=c()
  All_White_Queen_Moves6=c()
  All_White_Queen_Moves7=c()
  All_White_Queen_Moves8=c()
  for(k in 1:8){
  if(isTRUE(Board[Piece_Position[i]+k]==0)|isTRUE(Board[Piece_Position[i]+k]>16)) All_White_Queen_Moves1[k]=Piece_Position[i]+k else(All_White_Queen_Moves1[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves1[k-1]))|isTRUE(Board[All_White_Queen_Moves1[k-1]]>16)) All_White_Queen_Moves1[k]=NA
  if(isTRUE(floor((All_White_Queen_Moves1[k]-0.001)/8)>floor(Piece_Position[i]/8))) All_White_Queen_Moves1[k]=NA
  if(isTRUE(Board[Piece_Position[i]-k]==0)|isTRUE(Board[Piece_Position[i]-k]>16)) All_White_Queen_Moves2[k]=Piece_Position[i]-k else(All_White_Queen_Moves2[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves2[k-1]))|isTRUE(Board[All_White_Queen_Moves2[k-1]]>16)) All_White_Queen_Moves2[k]=NA
  if(isTRUE(floor((All_White_Queen_Moves2[k]-0.001)/8)<floor(Piece_Position[i]/8))) All_White_Queen_Moves2[k]=NA
  if(isTRUE(Board[Piece_Position[i]+(k*8)]==0)|isTRUE(Board[Piece_Position[i]+(k*8)]>16)) All_White_Queen_Moves3[k]=Piece_Position[i]+(k*8) else(All_White_Queen_Moves3[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves3[k-1]))|isTRUE(Board[All_White_Queen_Moves3[k-1]]>16)) All_White_Queen_Moves3[k]=NA
  if(isTRUE(Board[Piece_Position[i]-(k*8)]==0)|isTRUE(Board[Piece_Position[i]-(k*8)]>16)) All_White_Queen_Moves4[k]=Piece_Position[i]-(k*8) else(All_White_Queen_Moves4[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves4[k-1]))|isTRUE(Board[All_White_Queen_Moves4[k-1]]>16)) All_White_Queen_Moves4[k]=NA
  if(isTRUE(Board[Piece_Position[i]+(k*9)]==0)|isTRUE(Board[Piece_Position[i]+(k*9)]>16)) All_White_Queen_Moves5[k]=Piece_Position[i]+(k*9) else(All_White_Queen_Moves5[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves5[k-1]))|isTRUE(Board[All_White_Queen_Moves5[k-1]]>16)) All_White_Queen_Moves5[k]=NA
  if(isTRUE((floor((All_White_Queen_Moves5[k]-0.001)/8))>(floor(((Piece_Position[i])-0.001)/8)+k))) All_White_Queen_Moves5[k]=NA
  if(isTRUE(Board[Piece_Position[i]-(k*9)]==0)|isTRUE(Board[Piece_Position[i]-(k*9)]>16)) All_White_Queen_Moves6[k]=Piece_Position[i]-(k*9) else(All_White_Queen_Moves6[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves6[k-1]))|isTRUE(Board[All_White_Queen_Moves6[k-1]]>16)) All_White_Queen_Moves6[k]=NA
  if(isTRUE((floor((All_White_Queen_Moves6[k]-0.001)/8))<(floor(((Piece_Position[i])-0.001)/8)-k))) All_White_Queen_Moves6[k]=NA
  if(isTRUE(Board[Piece_Position[i]+(k*7)]==0)|isTRUE(Board[Piece_Position[i]+(k*7)]>16)) All_White_Queen_Moves7[k]=Piece_Position[i]+(k*7) else(All_White_Queen_Moves7[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves7[k-1]))|isTRUE(Board[All_White_Queen_Moves7[k-1]]>16)) All_White_Queen_Moves7[k]=NA
  if(isTRUE((floor((All_White_Queen_Moves7[k]-0.001)/8))<(floor(((Piece_Position[i])-0.001)/8)+k))) All_White_Queen_Moves7[k]=NA
  if(isTRUE(Board[Piece_Position[i]-(k*7)]==0)|isTRUE(Board[Piece_Position[i]-(k*7)]>16)) All_White_Queen_Moves8[k]=Piece_Position[i]-(k*7) else(All_White_Queen_Moves8[k]=NA)
  if(isTRUE(is.na(All_White_Queen_Moves8[k-1]))|isTRUE(Board[All_White_Queen_Moves8[k-1]]>16)) All_White_Queen_Moves8[k]=NA
  if(isTRUE((floor((All_White_Queen_Moves8[k]-0.001)/8))>(floor(((Piece_Position[i])-0.001)/8)-k))) All_White_Queen_Moves8[k]=NA
  }
  All_White_Queen_Moves=append(All_White_Queen_Moves,na.omit(c(All_White_Queen_Moves1,All_White_Queen_Moves2,All_White_Queen_Moves3,All_White_Queen_Moves4,All_White_Queen_Moves5,All_White_Queen_Moves6,All_White_Queen_Moves7,All_White_Queen_Moves8)),after=length(All_White_Queen_Moves))
  Queen_Piece=append(Queen_Piece,rep(i,length(na.omit(c(All_White_Queen_Moves1,All_White_Queen_Moves2,All_White_Queen_Moves3,All_White_Queen_Moves4,All_White_Queen_Moves5,All_White_Queen_Moves6,All_White_Queen_Moves7,All_White_Queen_Moves8))),after=length(Queen_Piece)))
}

All_White_King_Moves1=c()
All_White_King_Moves2=c()
for(i in 5:5){
  for(k in 1:8){
    NX=c()
    RX1=c()
    RX2=c()
    RX3=c()
    RX4=c()
    RX5=c()
    RX6=c()
    RX7=c()
    RX8=c()
    QX1=c()
    QX2=c()
    QX3=c()
    QX4=c()
    QX5=c()
    QX6=c()
    QX7=c()
    QX8=c()
    BX1=c()
    BX2=c()
    BX3=c()
    BX4=c()
    BX5=c()
    BX6=c()
    BX7=c()
    BX8=c()
  if(isTRUE(Board[Piece_Position[i]+WKP[k]]==0)|isTRUE(Board[Piece_Position[i]+WKP[k]]>16)) All_White_King_Moves1[k]=Piece_Position[i]+WKP[k] else(All_White_King_Moves1[k]=NA)
  if(isTRUE(Board[(Piece_Position[i]+(WKP[k]+9))]>16)&isTRUE(Board[(Piece_Position[i]+(WKP[k]+9))]<25)) All_White_King_Moves1[k]=NA
  if(isTRUE(Board[(Piece_Position[i]+(WKP[k]-7))]>16)&isTRUE(Board[(Piece_Position[i]+(WKP[k]-7))]<25)) All_White_King_Moves1[k]=NA
  if(isTRUE((((ceiling((Piece_Position[i])/8))*8)-Piece_Position[i])==7)) All_White_King_Moves1[c(1,4,6)]=NA
  if(isTRUE((((ceiling((Piece_Position[i])/8))*8)-Piece_Position[i])==0)) All_White_King_Moves1[c(3,5,8)]=NA
  if(isTRUE((Board[Piece_Position[25]+k])==0)&isTRUE(floor((((Piece_Position[25]+k)-0.001)/8))==floor(((Piece_Position[25])/8)-0.001))) RX1[k]=Piece_Position[25]+k else(RX1[k]=NA)
  if(isTRUE((Board[Piece_Position[25]-k])==0)&isTRUE(floor((((Piece_Position[25]-k)-0.001)/8))==floor(((Piece_Position[25])/8)-0.001))) RX2[k]=Piece_Position[25]-k else(RX2[k]=NA)
  if(isTRUE((Board[Piece_Position[32]+k])==0)&isTRUE(floor((((Piece_Position[32]+k)-0.001)/8))==floor(((Piece_Position[32])/8)-0.001))) RX3[k]=Piece_Position[32]+k else(RX3[k]=NA)
  if(isTRUE((Board[Piece_Position[32]-k])==0)&isTRUE(floor((((Piece_Position[32]-k)-0.001)/8))==floor(((Piece_Position[32])/8)-0.001))) RX4[k]=Piece_Position[32]-k else(RX4[k]=NA)
  if(isTRUE((Board[Piece_Position[28]+k])==0)&isTRUE(floor((((Piece_Position[28]+k)-0.001)/8))==floor(((Piece_Position[28])/8)-0.001))) QX1[k]=Piece_Position[28]+k else(QX1[k]=NA)
  if(isTRUE((Board[Piece_Position[28]-k])==0)&isTRUE(floor((((Piece_Position[28]-k)-0.001)/8))==floor(((Piece_Position[28])/8)-0.001))) QX2[k]=Piece_Position[28]-k else(QX2[k]=NA)
  if(isTRUE((Board[Piece_Position[25]+(k*8)])==0)) RX1[k]=Piece_Position[25]+k else(RX5[k]=NA)
  if(isTRUE((Board[Piece_Position[25]-(k*8)])==0)) RX2[k]=Piece_Position[25]-k else(RX6[k]=NA)
  if(isTRUE((Board[Piece_Position[32]+(k*8)])==0)) RX3[k]=Piece_Position[32]+k else(RX7[k]=NA)
  if(isTRUE((Board[Piece_Position[32]-(k*8)])==0)) RX4[k]=Piece_Position[32]-k else(RX8[k]=NA)
  if(isTRUE((Board[Piece_Position[28]+(k*8)])==0)) QX1[k]=Piece_Position[28]+k else(QX3[k]=NA)
  if(isTRUE((Board[Piece_Position[28]-(k*8)])==0)) QX2[k]=Piece_Position[28]-k else(QX4[k]=NA)
  if(isTRUE(is.na(RX1[k-1]))) RX1[k]=NA
  if(isTRUE(is.na(RX2[k-1]))) RX2[k]=NA
  if(isTRUE(is.na(RX3[k-1]))) RX3[k]=NA
  if(isTRUE(is.na(RX4[k-1]))) RX4[k]=NA
  if(isTRUE(is.na(QX1[k-1]))) QX1[k]=NA
  if(isTRUE(is.na(QX2[k-1]))) QX2[k]=NA
  if(isTRUE(is.na(RX5[k-1]))) RX5[k]=NA
  if(isTRUE(is.na(RX6[k-1]))) RX6[k]=NA
  if(isTRUE(is.na(RX7[k-1]))) RX7[k]=NA
  if(isTRUE(is.na(RX8[k-1]))) RX8[k]=NA
  if(isTRUE(is.na(QX3[k-1]))) QX3[k]=NA
  if(isTRUE(is.na(QX4[k-1]))) QX4[k]=NA
  if(isTRUE(Board[Piece_Position[26]+WNP[k]]==0)) NX[k]=Piece_Position[26]+WNP[k]
  if(isTRUE((((ceiling(Piece_Position[26]/8))*8)-Piece_Position[26])==1)) NX[c(1,6)]=NA
  if(isTRUE((((ceiling(Piece_Position[26]/8))*8)-Piece_Position[26])==6)) NX[c(2,4)]=NA
  if(isTRUE((((ceiling(Piece_Position[26]/8))*8)-Piece_Position[26])==0)) NX[c(1,3,6,8)]=NA
  if(isTRUE((((ceiling(Piece_Position[26]/8))*8)-Piece_Position[26])==7)) NX[c(2,4,5,7)]=NA
  if(isTRUE(Board[Piece_Position[27]+(k*9)]==0)&isFALSE((floor((Piece_Position[27]+(k*9)-0.001)/8))>(floor(((Piece_Position[27])-0.001)/8)+k))) BX1[k]=Piece_Position[27]+(k*9) else(BX1[k]=NA)
  if(isTRUE(Board[Piece_Position[27]-(k*9)]==0)&isFALSE((floor((Piece_Position[27]-(k*9)-0.001)/8))<(floor(((Piece_Position[27])-0.001)/8)-k))) BX2[k]=Piece_Position[27]-(k*9) else(BX2[k]=NA)
  if(isTRUE(Board[Piece_Position[27]+(k*7)]==0)&isFALSE((floor((Piece_Position[27]+(k*7)-0.001)/8))<(floor(((Piece_Position[27])-0.001)/8)+k))) BX3[k]=Piece_Position[27]+(k*7) else(BX3[k]=NA)
  if(isTRUE(Board[Piece_Position[27]-(k*7)]==0)&isFALSE((floor((Piece_Position[27]-(k*7)-0.001)/8))>(floor(((Piece_Position[27])-0.001)/8)-k))) BX4[k]=Piece_Position[27]-(k*7) else(BX4[k]=NA)
  if(isTRUE(is.na(BX1[k-1]))) BX1[k]=NA
  if(isTRUE(is.na(BX2[k-1]))) BX2[k]=NA
  if(isTRUE(is.na(BX3[k-1]))) BX3[k]=NA
  if(isTRUE(is.na(BX4[k-1]))) BX4[k]=NA
  if(isTRUE(Board[Piece_Position[31]+(k*9)]==0)&isFALSE((floor((Piece_Position[31]+(k*9)-0.001)/8))>(floor(((Piece_Position[31])-0.001)/8)+k))) BX5[k]=Piece_Position[31]+(k*9) else(BX5[k]=NA)
  if(isTRUE(Board[Piece_Position[31]-(k*9)]==0)&isFALSE((floor((Piece_Position[31]-(k*9)-0.001)/8))<(floor(((Piece_Position[31])-0.001)/8)-k))) BX6[k]=Piece_Position[31]-(k*9) else(BX6[k]=NA)
  if(isTRUE(Board[Piece_Position[31]+(k*7)]==0)&isFALSE((floor((Piece_Position[31]+(k*7)-0.001)/8))<(floor(((Piece_Position[31])-0.001)/8)+k))) BX7[k]=Piece_Position[31]+(k*7) else(BX7[k]=NA)
  if(isTRUE(Board[Piece_Position[31]-(k*7)]==0)&isFALSE((floor((Piece_Position[31]-(k*7)-0.001)/8))>(floor(((Piece_Position[31])-0.001)/8)-k))) BX8[k]=Piece_Position[31]-(k*7) else(BX8[k]=NA)
  if(isTRUE(is.na(BX5[k-1]))) BX5[k]=NA
  if(isTRUE(is.na(BX6[k-1]))) BX6[k]=NA
  if(isTRUE(is.na(BX7[k-1]))) BX7[k]=NA
  if(isTRUE(is.na(BX8[k-1]))) BX8[k]=NA
  if(isTRUE(Board[Piece_Position[28]+(k*9)]==0)&isFALSE((floor((Piece_Position[28]+(k*9)-0.001)/8))>(floor(((Piece_Position[28])-0.001)/8)+k))) QX5[k]=Piece_Position[31]+(k*9) else(QX5[k]=NA)
  if(isTRUE(Board[Piece_Position[28]-(k*9)]==0)&isFALSE((floor((Piece_Position[28]-(k*9)-0.001)/8))<(floor(((Piece_Position[28])-0.001)/8)-k))) QX6[k]=Piece_Position[31]-(k*9) else(QX6[k]=NA)
  if(isTRUE(Board[Piece_Position[28]+(k*7)]==0)&isFALSE((floor((Piece_Position[28]+(k*7)-0.001)/8))<(floor(((Piece_Position[28])-0.001)/8)+k))) QX7[k]=Piece_Position[31]+(k*7) else(QX7[k]=NA)
  if(isTRUE(Board[Piece_Position[28]-(k*7)]==0)&isFALSE((floor((Piece_Position[28]-(k*7)-0.001)/8))>(floor(((Piece_Position[28])-0.001)/8)-k))) QX8[k]=Piece_Position[31]-(k*7) else(QX8[k]=NA)
  if(isTRUE(is.na(BX5[k-1]))) QX5[k]=NA
  if(isTRUE(is.na(BX6[k-1]))) QX6[k]=NA
  if(isTRUE(is.na(BX7[k-1]))) QX7[k]=NA
  if(isTRUE(is.na(BX8[k-1]))) QX8[k]=NA
  }
}
RX=na.omit(c(RX1,RX2,RX3,RX4,QX1,QX2))
NX=na.omit(NX)
BX=na.omit(c(BX1,BX2,BX3,BX4,BX5,BX6,BX7,BX8,QX5,QX6,QX7,QX8))
All_White_King_Moves1[All_White_King_Moves1==intersect(All_White_King_Moves1,RX)]=NA
All_White_King_Moves1[All_White_King_Moves1==intersect(All_White_King_Moves1,NX)]=NA
All_White_King_Moves1[All_White_King_Moves1==intersect(All_White_King_Moves1,BX)]=NA
All_White_King_Moves=na.omit(All_White_King_Moves1)
King_Piece=rep(5,length(All_White_King_Moves))
White_Moves=c(All_White_A_Pawn_Moves,All_White_A_Rook_Moves,All_White_Knight_Moves,All_White_Bishop_Moves,All_White_Queen_Moves,All_White_King_Moves)
White_Pieces=c(Pawn_Piece,Rook_Piece,Knight_Piece,Bishop_Piece,Queen_Piece,King_Piece)
White_Legal_Moves=data.frame(White_Moves,White_Pieces)
Possibilities=c(1:length(White_Moves))
v2=sample(Possibilities,size=1,replace=TRUE)

if(isTRUE(length(All_White_King_Moves>0))&isTRUE(isTRUE(grepl(pattern=Piece_Position[5],RX))|grepl(pattern=Piece_Position[5],NX)|grepl(pattern=Piece_Position[5],BX)|isTRUE(Board[(Piece_Position[i]+(WKP[k]+9))]==0.5)|isTRUE(Board[(Piece_Position[i]+(WKP[k]-7))]==0.5))) In_Check_White=1 else((print(c(White_Legal_Moves$White_Pieces[v2],White_Legal_Moves$White_Moves[v2]))))
if(isTRUE(In_Check_White==1)){
Check_Path=c()
if(isTRUE(grepl(pattern=Piece_Position[5],RX))) Check_Path=RX
if(isTRUE(grepl(pattern=Piece_Position[5],NX))) Check_Path=NX
if(isTRUE(grepl(pattern=Piece_Position[5],BX))) Check_Path=BX
if(isTRUE(grepl(pattern=Piece_Position[5],RX))) Check_Path=RX
White_Check_Moves=append(White_King_Moves,intersect(White_Legal_Moves$White_Moves,Check_Path),after=length(All_White_King_Moves))
White_Check_Piece=append(King_Piece,intersect(White_Legal_Moves$White_Pieces,White_Check_Moves),after=length(King_Piece))
White_Check=data.frame(White_Check_Moves,White_Check_Pieces)
v1=sample(White_Check_Moves,size=1,replace=FALSE)
print(c(White_Check$White_Check_Piece[White_Check_Moves=v1],White_Check$White_Check_Moves[White_Check_Moves==v1]))}
}
White_Mover()
