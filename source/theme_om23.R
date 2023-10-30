theme_om23 <- function () { 
  theme_bw(base_size=10) %+replace% 
    theme(
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA),
      strip.background = element_rect(fill = "black"),
      strip.text = element_text(color = "white", face = "bold"),
      panel.border = element_rect(color = "black", fill = NA, linewidth = 1),
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_blank(),
      axis.text = element_text(color = "black", face = "bold"),
      panel.spacing = unit(1, "lines")
    )
}