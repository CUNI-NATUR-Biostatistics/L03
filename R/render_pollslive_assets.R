library(grid)
library(digest)
library(here)
here::i_am("R/render_pollslive_assets.R")
output_dir <- here::here("pollslive", "assets")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)
colours <- c(parchment="#F4F1EC", graphite="#2E2E2E", olive="#8A8A8A", indigo="#5D2890", orange="#F3A712", white="#FFFFFF", light="#F0EDE8")
# Neutral reproduction of the familiar L02 graph-choice gallery: all four candidates are shown without highlighting.
grDevices::png(here::here(output_dir,"l02-graph-choice-gallery.png"),width=1600,height=900,res=160,type="cairo",bg=colours[["parchment"]])
grid.newpage()
xs <- c(0.27,0.73,0.27,0.73); ys <- c(0.73,0.73,0.27,0.27)
for(i in 1:4) grid.roundrect(x=xs[[i]],y=ys[[i]],width=0.39,height=0.36,r=unit(0.02,"npc"),gp=gpar(fill="white",col=colours[["light"]],lwd=2))
# Candidate A: points
px <- c(.14,.18,.21,.24,.28,.31,.35,.38); py <- c(.65,.69,.67,.72,.74,.77,.78,.82)
for (i in seq_along(px)) { grid.circle(x=px[[i]], y=py[[i]], r=unit(0.009, "npc"), gp=gpar(fill=colours[["indigo"]], col=colours[["indigo"]])) }
# Candidate B: one histogram
for(i in 1:6) grid.rect(x=.60+(i-1)*.052,y=.61+c(.06,.10,.13,.11,.07,.04)[i]/2,width=.043,height=c(.06,.10,.13,.11,.07,.04)[i],just=c("left","bottom"),gp=gpar(fill=colours[["orange"]],col="white"))
# Candidate C: pie chart
grid.circle(x=.27,y=.27,r=.105,gp=gpar(fill=colours[["light"]],col=colours[["olive"]],lwd=2));grid.polygon(x=c(.27,.27,.36),y=c(.27,.375,.27),gp=gpar(fill=colours[["orange"]],col="white"));grid.polygon(x=c(.27,.36,.27),y=c(.27,.27,.165),gp=gpar(fill=colours[["indigo"]],col="white"))
# Candidate D: frequency table
for(x in c(.60,.73,.86)) grid.segments(x0=x,y0=.16,x1=x,y1=.38,gp=gpar(col=colours[["olive"]],lwd=1.5));for(y in c(.16,.215,.27,.325,.38)) grid.segments(x0=.60,y0=y,x1=.86,y1=y,gp=gpar(col=colours[["olive"]],lwd=1.5))
for(i in 1:4) grid.text(LETTERS[[i]],x=xs[[i]]-.17,y=ys[[i]]+.14,gp=gpar(col=colours[["graphite"]],fontsize=20,fontface="bold"))
grDevices::dev.off()
expected <- c("l02-penguin-scatterplot.png"="fcd5fa7a34369d856bdd8c0fd2e6e472411d5a0785d17cdefa9e76681f7e6c03","l02-correlation-not-causation.png"="729b9922ba4fd23452917e5b92d98a8b3221a6d137b6d948a4cbbdefd8cfc199")
for(filename in names(expected)){path<-here::here(output_dir,filename);stopifnot(file.exists(path),identical(digest(file=path,algo="sha256"),unname(expected[[filename]])))}
