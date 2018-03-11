# --- ggplot2
# Ggplot2 library
install.package(ggplot2)
library(ggplot2)
help("ggplot")
help("aes")
# Use the mtcars dataset.
head(mtcars)
# Basic barplot:
ggplot(mtcars, aes(x=as.factor(cyl) )) + geom_bar()
# 1: uniform color. Color is for the border, fill is for the inside
ggplot(mtcars, aes(x=as.factor(cyl) )) +
  geom_bar(color="blue", fill=rgb(0.1,0.4,0.5,0.7) )
# 2: Using Hue
ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + geom_bar( ) +
  scale_fill_hue(c = 40)
# 3: Using RColorBrewer
ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + geom_bar( ) +
  scale_fill_brewer(palette = "Set1")
# 4: Using greyscale:
ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) + geom_bar( ) +
  scale_fill_grey(start = 0.25, end = 0.75)
# 5: Set manualy
ggplot(mtcars, aes(x=as.factor(cyl), fill=as.factor(cyl) )) +  geom_bar( ) +
  scale_fill_manual(values = c("red", "green", "blue") )
# --- Pros!
install.packages("plotly")
library(plotly)
head(mtcars)
mtcars$am[which(mtcars$am == 0)] <- 'Automatic'
mtcars$am[which(mtcars$am == 1)] <- 'Manual'
mtcars$am <- as.factor(mtcars$am)
# Thus, iris %>% head() is equivalent to head(iris).
plot_ly(mtcars, x = ~wt, y = ~hp, z = ~qsec, color = ~am, colors = c('#BF382A', '#0C4B8E')) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Weight'),
                      yaxis = list(title = 'Gross horsepower'),
                      zaxis = list(title = '1/4 mile time')))
help("add_markers")
plot_ly(mtcars, x = ~wt, y = ~hp, z = ~qsec,
        marker = list(color = ~mpg, colorscale = c('#FFE1A1', '#683531'), showscale = TRUE)) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Weight'),
                      yaxis = list(title = 'Gross horsepower'),
                      zaxis = list(title = '1/4 mile time')),
         annotations = list(
           x = 1.13,
           y = 1.05,
           text = 'Miles/(US) gallon',
           xref = 'paper',
           yref = 'paper',
           showarrow = FALSE
         ))
help("plot_ly")

