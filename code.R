#setwd('/Users/yasarrafiahmed/codebase/CreatingSkillGraph/')
args = commandArgs(trailingOnly=TRUE)

df <- read.csv('Skills.csv')

library(ggplot2)
colnames(df) <- c('Domain','Skillset','Experience')
p <- ggplot(df) + 
    geom_bar(stat='identity',position = 'identity', aes(x=Skillset,y=Experience, fill = Experience)) +
    ggtitle(paste('Expertise Graph -',args[1])) + facet_grid(~Domain,scales = 'free') + 
    theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
    scale_fill_continuous(low='blue',high='orange')

ggsave('Expertise_graph.png',plot = p)
