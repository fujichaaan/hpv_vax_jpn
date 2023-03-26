library(tidyverse); library(readxl)


# data preparation --------------------------------------------------------

hpv2 <- read_csv("hpv2.csv")

# data viz (highlight JPN: dotplot) --------------------------------------

hpv2 |>
  mutate(jpn = factor(case_when(iso3 == "JPN"  ~ "JPN1",
                                iso3 == "JPN2" ~ "JPN2",
                                .default = "others"),
                      levels = c("others", "JPN1", "JPN2")),
         hpv = hpv / 100) |>
  ggplot(aes(x = hpv)) +
  geom_dotplot(aes(fill = jpn), alpha = 0.95, color = "#dcdcdc",
               binwidth = 0.04, stackdir = "center") +
  geom_segment(aes(x = 0.15, y = 0.3, xend = 0.02, yend = 0.025),
               color = "#808080", size = 0.2, alpha = 0.8) +
  geom_label(aes(x = 0.16, y = 0.3, label = "Japan (0.3%)"),
             hjust = 0,　vjust = 0.5, color = "black", fill = "#E0FFFE",
             label.size = NA, size = 8) +
  geom_segment(aes(x = 0.3, y = -0.3, xend = 0.16, yend = -0.025),
               color = "#808080", size = 0.2, alpha = 0.8) +
  geom_label(aes(x = 0.16, y = -0.3, label = "Japan (14.4%)\nMinpapi, 2021"),
             hjust = 0,　vjust = 0.5, color = "black", fill = "#E0FFFE", 
             label.size = NA, size = 8) +
  labs(title = "HPV vax coverage in JPN was 98th of 99 countries",
       subtitle = "Now back to 14.4% (Reports from Minpapi project, 2021)",
       caption = "Country-specific HPV vaccination program coverages estimates for girls in 2019.\nRef: Bruni L, et al. Prev Med (2021)") +
  scale_y_continuous(NULL, breaks = NULL) +
  scale_x_continuous(labels = scales::percent) +
  scale_fill_manual(values = c("#c0c0c0", "#FE9A33", "#66CCCC")) +
  theme_minimal() +
  theme(plot.background 　　= element_rect(fill = "#66CCCC"),
        panel.background    = element_rect(fill = "#E0FFFE"),
        axis.title.x        = element_blank(),
        axis.text           = element_text(size = 24),
        axis.ticks.x        = element_line(size = 0.3, color = "#808080"), 
        axis.ticks.length.x = unit(.35, "cm"),
        plot.title          = element_text(color = "Black", size = 37, face = "bold"),
        plot.subtitle       = element_text(color = "Black", size = 20),
        plot.caption        = element_text(color = "Black", size = 14),
        legend.position     = "none")
