library(data.table)
library(tidyverse)
library(ggplot2)
library(cowplot)
library(latex2exp)
library(ggpubr)

df <- read.csv("results_df_for_kde.csv")
#df <- df[df$model %in% c("SVR", "LGBM", "ANN", "CNNLSTM"), ]/

df$fh_step <- factor(df$fh_step, 
                     levels=c("30 min", "60 min", "90 min", "120 min", "150 min","180 min", "210 min", "240 min"))

df$model <- factor(df$model, 
                     levels=c("Linear", "SVR", "RF", "LGBM", "ANN","3D-CNN", "CNN-LSTM"))

corr_plot <- ggplot(data =df, aes(x = I_pred, y = I_actual)) +
  geom_hex()+
  scale_fill_gradient(limits = c(0, 100),low = "yellow", high = "purple")+
  theme(text = element_text(family = "serif"))+
  xlab(expression(paste('Forecasted Irradiance '~"["*W/m^2*"]")))+
  ylab(expression(paste('Actual' ,' Irradiance '~"["*W/m^2*"]")))+
  theme(text = element_text(family = "serif"),axis.text = element_text(size = 14),
        axis.title=element_text(size = 14), plot.title = element_text(size = 16),
        legend.text = element_text(size = 14),legend.title = element_text(size = 16),
        panel.border = element_rect(color = "black", fill = NA, size = 1))+
  scale_y_continuous(limits = c(0, 1150),breaks = seq(0, 1200, by = 400))

corr_plot + facet_grid(rows= vars(fh_step), cols=vars(model))+
  geom_density_2d(size = 0.075, color = "blue")+ 
  scale_x_continuous(limits = c(0, 1150), breaks = c(400, 1200))+
  coord_equal()+theme_bw()


