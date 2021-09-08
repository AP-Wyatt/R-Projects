x1=read.delim('../desktop/Foil_Competitions/Cairo_Results.txt',header=FALSE)
x2=read.delim('../desktop/Foil_Competitions/Tokyo_Results.txt',header=FALSE)
x3=read.delim('../desktop/Foil_Competitions/Paris_Results.txt',header=FALSE)
x4=read.delim('../desktop/Foil_Competitions/StPetersburg_Results.txt',header=FALSE)
x5=read.delim('../desktop/Foil_Competitions/Bonn_Results.txt',header=FALSE)
x6=read.delim('../desktop/Foil_Competitions/Doha_Results.txt',header=FALSE)
x7=read.delim('../desktop/Foil_Competitions/Shanghai_Results.txt',header=FALSE)
x8=read.delim('../desktop/Foil_Competitions/Anaheim_Results.txt',header=FALSE)
x9=read.delim('../desktop/Foil_Competitions/Turin_2018.txt',header=FALSE)
x10=read.delim('../desktop/Foil_Competitions/Bonn_2018.txt',header=FALSE)
x11=read.delim('../desktop/Foil_Competitions/Cairo_2017.txt',header=FALSE)
x12=read.delim('../desktop/Foil_Competitions/Tokyo_2017.txt',header=FALSE)
x13=read.delim('../desktop/Foil_Competitions/StPetersburg_2018.txt',header=FALSE)
x14=read.delim('../desktop/Foil_Competitions/CIP.txt',header=FALSE)
x15=read.delim('../desktop/Foil_Competitions/Turin_Results.txt',header=FALSE)

Competitors1=c()
Competitors2=c()
Competitors3=c()
Competitors4=c()
Competitors5=c()
Competitors6=c()
Competitors7=c()
Competitors8=c()
Competitors9=c()
Competitors10=c()
Competitors11=c()
Competitors12=c()
Competitors13=c()
Competitors14=c()
Competitors15=c()
for(i in 1:190){
  if(isTRUE(nchar(x1$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x1$V1[i]))) Competitors1[i]=x1$V1[i]
  if(isTRUE(nchar(x2$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x2$V1[i]))) Competitors2[i]=x2$V1[i]
  if(isTRUE(nchar(x3$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x3$V1[i]))) Competitors3[i]=x3$V1[i]
  if(isTRUE(nchar(x4$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x4$V1[i]))) Competitors4[i]=x4$V1[i]
  if(isTRUE(nchar(x5$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x5$V1[i]))) Competitors5[i]=x5$V1[i]
  if(isTRUE(nchar(x6$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x6$V1[i]))) Competitors6[i]=x6$V1[i]
  if(isTRUE(nchar(x7$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x7$V1[i]))) Competitors7[i]=x7$V1[i]
  if(isTRUE(nchar(x8$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x8$V1[i]))) Competitors8[i]=x8$V1[i]
  if(isTRUE(nchar(x9$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x9$V1[i]))) Competitors9[i]=x9$V1[i]
  if(isTRUE(nchar(x10$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x10$V1[i]))) Competitors10[i]=x10$V1[i]
  if(isTRUE(nchar(x11$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x11$V1[i]))) Competitors11[i]=x11$V1[i]
  if(isTRUE(nchar(x12$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x12$V1[i]))) Competitors12[i]=x12$V1[i]
  if(isTRUE(nchar(x13$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x13$V1[i]))) Competitors13[i]=x13$V1[i]
  if(isTRUE(nchar(x14$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x14$V1[i]))) Competitors14[i]=x14$V1[i]
  if(isTRUE(nchar(x15$V1[i],type="width")>3)&isFALSE(grepl(pattern="Table",x15$V1[i]))) Competitors15[i]=x15$V1[i]

}
Competitors=na.omit(c(Competitors1,Competitors2,Competitors3,Competitors4,Competitors5,Competitors6,
                      Competitors7,Competitors8,Competitors9,Competitors10,
                      Competitors11,Competitors12,Competitors13,Competitors14,Competitors15))
Competitors=unique(Competitors)
Rating=rep(1500,length(Competitors))
Table=data.frame(Competitors,Rating)
write.csv(Table,'../desktop/Elo_Ratings.txt',row.names=FALSE)

Ratings_Updater=function(c){
  Table=read.csv('../desktop/Elo_Ratings.txt')
  Competition=gsub(pattern="Table",NA,c$V1)
  Competition=na.omit(Competition)
  for(i in seq(from=1,to=length(Competition),by=6)){
RA=Table$Rating[grep(pattern=Competition[i],Table$Competitors)]
RB=Table$Rating[grep(pattern=Competition[i+3],Table$Competitors)]
EA=1/(1+(10^((RB-RA)/400)))
EB=1/(1+(10^((RA-RB)/400)))
Score_A=as.integer(Competition[i+2])
Score_B=as.integer(Competition[i+5])
Score_Total=Score_A+Score_B
SA=Score_A/Score_Total
SB=Score_B/Score_Total
R_Prime_A=RA+24*(SA-EA)
R_Prime_B=RB+24*(SB-EB)
Table$Rating[Table$Competitors==Competition[i]]=R_Prime_A
Table$Rating[Table$Competitors==Competition[i+3]]=R_Prime_B
}
write.csv(Table,'../desktop/Elo_Ratings.txt',row.names=FALSE)
}

Running=function(){
  Ratings_Updater(x1)
  Ratings_Updater(x2)
  Ratings_Updater(x3)
  Ratings_Updater(x4)
  Ratings_Updater(x5)
  Ratings_Updater(x6)
  Ratings_Updater(x7)
  Ratings_Updater(x8)
  Ratings_Updater(x9)
  Ratings_Updater(x10)
  Ratings_Updater(x11)
  Ratings_Updater(x12)
  Ratings_Updater(x13)
  Ratings_Updater(x14)
  Ratings_Updater(x15)
}

for(j in 1:100){
  Running()
}

z=read.csv('../desktop/Elo_Ratings.txt')
y=sort(z$Rating,decreasing=TRUE)

v1=c()
for(i in 1:length(y)){
  v1[i]=z$Competitors[z$Rating==y[i]]
}
Rank=data.frame(v1,y)
View(Rank)
