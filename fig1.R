library(ggplot2)
library(tidyr)

cval<-read.csv("~/Documents/Elias/Baylor/Papers/10. Whales - SUBMITTED/FINAL/Fig1_redone.csv", header=T,stringsAsFactors = FALSE)

cval[,3]<-as.numeric(cval[,3])

cval$Type<-factor(cval$Type,levels=c("Rodents","Primates","Bats",
                                      "Carnivora","T_artyodactyls","Cetaceans"))
ele<-c("Cetaceans","Terrestrial artiodactyls","Carnivores","Bats","Primates","Rodents")

#Figure for publication
pdf("~/Documents/Elias/Baylor/Papers/10. Whales - SUBMITTED/FINAL/4563_Fig1.pdf",
     width=5,height=3)

ggplot(cval,
       aes(y=Type,x=Gsize))+
  geom_jitter(size=2,height=.2,width=.2)+
  theme_classic()+
  #scale_color_brewer(type="div",palette="Set1")+
  scale_y_discrete(labels=rev(ele))+
  xlab("Genome size (pg)")+
  theme(legend.position = "none",
        axis.text.x=element_text(color='black',size=10),
        axis.text.y=element_text(color='black',size=15),
        axis.title.x=element_text(color='black',size=15),
        axis.title.y=element_blank(),
        panel.border=element_rect(color='black',fill=NA,size=2))

dev.off()

#Color version of the above

pdf("~/Documents/Elias/Baylor/Papers/10. Whales - SUBMITTED/FINAL/4563_Fig1_col.pdf",
    width=5,height=3)

ggplot(cval,
       aes(y=Type,x=Gsize,color=Type))+
  geom_jitter(size=2,height=.2,width=.2)+
  scale_color_brewer(type="div", palette="Set2")+
  theme_classic()+
  scale_y_discrete(labels=rev(ele))+
  xlab("Genome size (pg)")+
  theme(legend.position = "none",
        axis.text.x=element_text(color='black',size=10),
        axis.text.y=element_text(color='black',size=15),
        axis.title.x=element_text(color='black',size=15),
        axis.title.y=element_blank(),
        panel.border=element_rect(color='black',fill=NA,size=2))

dev.off()

# Figuring out the numbers of each class

length(cval[cval$Type=="Cetaceans",2])
length(unique(cval[cval$Type=="Cetaceans",2]))

length(cval[cval$Type=="T_artyodactyls",2])
length(unique(cval[cval$Type=="T_artyodactyls",2]))

length(cval[cval$Type=="Carnivora",2])
length(unique(cval[cval$Type=="Carnivora",2]))

length(cval[cval$Type=="Bats",2])
length(unique(cval[cval$Type=="Bats",2]))

length(cval[cval$Type=="Rodents",2])
length(unique(cval[cval$Type=="Rodents",2]))

length(cval[cval$Type=="Primates",2])
length(unique(cval[cval$Type=="Primates",2]))

length(cval[cval$Type=="Rodents",2])
length(unique(cval[cval$Type=="Rodents",2]))


