library(tidyverse); library(readxl)


# data preparation --------------------------------------------------------

hpv2 <- read_csv("hpv2.csv")

# data viz (highlight JPN: dotplot) --------------------------------------

hpv2 |>
  mutate(jpn = factor(case_when(iso3 == "JPN"  ~ "日本1",
                                iso3 == "JPN2" ~ "日本2",
                                .default = "それ以外")),
         hpv = hpv / 100) |>
  ggplot(aes(x = hpv)) +
  geom_dotplot(aes(fill = jpn), alpha = 0.95, color = "#dcdcdc",
               binwidth = 0.04, stackdir = "center") +
  geom_segment(aes(x = 0.15, y = 0.3, xend = 0.02, yend = 0.025),
               color = "#808080", size = 0.2, alpha = 0.8) +
  geom_label(aes(x = 0.16, y = 0.3, label = "日本 (0.3%)"),
             hjust = 0,　vjust = 0.5, color = "black", fill = "#E0FFFE", label.size = NA,
             family = "HiraKakuPro-W3", size = 8) +
  geom_segment(aes(x = 0.3, y = -0.3, xend = 0.16, yend = -0.025),
               color = "#808080", size = 0.2, alpha = 0.8) +
  geom_label(aes(x = 0.16, y = -0.3, label = "日本 (14.4%)\nみんパピ調べ（2021）"),
             hjust = 0,　vjust = 0.5, color = "black", fill = "#E0FFFE", label.size = NA,
             family = "HiraKakuPro-W3", size = 8) +
  labs(title = "日本のHPVワクチン接種率は，99カ国中98位...",
       subtitle = "現在は14.4%まで回復（みんパピ調べ，2021年8月）",
       caption = "世界98カ国の女児のHPVワクチン初回接種[推定値]の割合（2019年，%）\nBruni L, et al. Prev Med (2021) より") +
  scale_y_continuous(NULL, breaks = NULL) +
  scale_x_continuous(labels = scales::percent) +
  scale_fill_manual(values = c("#c0c0c0", "#FE9A33", "#66CCCC")) +
  theme_minimal(base_family = "HiraKakuPro-W3") +
  theme(plot.background 　　= element_rect(fill = "#66CCCC"),
        panel.background    = element_rect(fill = "#E0FFFE"),
        axis.title.x        = element_blank(),
        axis.text           = element_text(size = 24),
        axis.ticks.x        = element_line(size = 0.3, color = "#808080"), 
        axis.ticks.length.x = unit(.35, "cm"),
        plot.title          = element_text(color = "Black", size = 38, "HiraKakuPro-W6"),
        plot.subtitle       = element_text(color = "Black", size = 20),
        plot.caption        = element_text(color = "Black", size = 14),
        legend.position     = "none")
