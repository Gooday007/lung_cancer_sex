# 1999-2022年全美男女在肺癌中的发病率趋势
result1 <- ggplot(data = clean_sex2,
                  mapping = aes(x = YEAR, y = AGE_ADJUSTED_RATE, colour = SEX, group = SEX))+
  # geom  
  geom_point(size = 2.5)+
  geom_ribbon(aes(ymax = AGE_ADJUSTED_CI_UPPER, ymin = AGE_ADJUSTED_CI_LOWER, fill = SEX, group = SEX), alpha = 0.3, colour = NA)+
  geom_line(aes(group = SEX), size = 1)+
  geom_smooth(stat = "identity")+
  # scale  
  labs(title = "1999-2022年全美男女在肺癌中的发病率趋势", x = "YEAR", y = "AGE-ADJUSTED RATE(per 100,000)")
result1

# 男女发病率差距图
result2 <- ggplot(creat_list, aes(x = YEAR, y = gender_gap))+
  geom_line(size = 1)+
  labs(title = "男女发病率差距图", x = "YEAR", y = "gender gap")
result2

# 合并
p_come <- (result1 + result2) + 
  plot_annotation(tag_levels = "A")
p_come