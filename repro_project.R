library(tidyverse)

data = readxl::read_xlsx("journal.pone.0177924.s001.xlsx")

ggplot(data, aes(x = drsmem , y = post_cing_suvr)) +
  geom_point() +
  coord_cartesian(ylim= c(.6,2)) +
  scale_x_discrete("Memory DRS-2 Score",limits = c(15,20,25)) +
  scale_y_discrete("Posterior Cingulate ROI SUVr",expand = c(0,0), limits = seq(.6,1.8,.3)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

ggplot(data, aes(x = hvl_total_recall , y = post_cing_suvr)) +
  geom_point() +
  coord_cartesian(ylim= c(.6,2)) +
  scale_x_discrete("Hopkins Verbal Learning Score",limits = c(15,20,25)) +
  scale_y_discrete("Posterior Cingulate ROI SUVr",expand = c(0,0), limits = seq(.6,1.8,.3)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.background = element_blank(), axis.line = element_line(colour = "black"))

