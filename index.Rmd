---
title: "Проверка RMarkdown"
output: html_document
df_print: paged
toc: yes
toc_position: right
toc_depth: 3
toc_float: yes
bibliography: 869369.bib
---
## Вот это код из одного домашнего задания.
```{r}
library("tidyverse")

dog_names <- read_csv("https://raw.githubusercontent.com/r-classes/2019_2020_ds4dh_hw_2_dplyr_tidyr_ggplot2/master/data/dog_names.csv")

dog_names %>% 
  filter(sex != "Unknown") %>%
  select(age, sex) %>%
  count(age, sex) %>%
  mutate(ages = n/sum(n)) %>%
  distinct(age, sex, ages) %>%
  pivot_wider(names_from = sex, values_from = ages)
  
```
## А тут нет кода. *Или*?.. О **нет**!
```{python, python.reticulate = FALSE}
print("привет я короткий код на питоне")
```
да, говорили же мне

> будь *осторожнее*, [питон](https://www.python.org) не дремлет[^1]. ![](https://icdn.lenta.ru/images/2017/03/28/19/20170328193923429/pic_91b068ba63ea00ccd2913fde6a7c9a75.jpg)

Возможно, так писал @Rossum:1995:PRM:869369, но я не особо в этом уверен. 

[^1]: на самом деле не говорили.
