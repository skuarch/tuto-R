# graficos

# Basicos
# --- Lineas
# Define the cars vector with 5 values
carros <- c(1, 3, 6, 4, 9)
# Graph the cars vector with all defaults
plot(carros)
## Let's add a title, a line to connect the points, and some color: ##
# Graph cars using blue points overlayed by a line 
plot(carros, type="o", col="blue")
# Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=4)
# Now let's add a red line for trucks and specify the y-axis range directly so 
# it will be large enough to fit the truck data
# Define 2 vectors
camionetas <- c(2, 5, 4, 5, 12)
# Graph cars using a y axis that ranges from 0 to 12
plot(carros, type="o", col="blue", ylim=c(0,12))
# Graph trucks with red dashed line and square points
lines(camionetas, type="o", pch=22, lty=2, col="red")
## from scratch ##
# Next let's change the axes labels to match our data and add a legend. 
# We'll also compute the y-axis values using the max function so any changes to our data will 
# be automatically reflected in our graph.
# Calculate range from 0 to max value of cars and trucks
rango <- range(0, carros, camionetas)
# Graph autos using y axis that ranges from 0 to max 
# value in cars or trucks vector.  Turn off axes and 
# annotations (axis labels) so we can specify them ourself
plot(cars, type="o", col="blue", ylim=rango, axes=FALSE, ann=FALSE)
# Make x axis using Mon-Fri labels
axis(1, at=1:5, lab=c("Lun","Mar","Mie","Jue","Vie"))
# Make y axis with horizontal labels that display ticks at 
# every 4 marks. 4*0:g_range[2] is equivalent to c(0,4,8,12).
axis(2, las=1, at=4*0:rango[2])
# Create box around plot
box()
# Graph trucks with red dashed line and square points
lines(camionetas, type="o", pch=22, lty=2, col="red")
# Create a title with a red, bold/italic font
title(main="Autos", col.main="red", font.main=4)
# Label the x and y axes with dark green text
title(xlab="Dias", col.lab=rgb(0,0.5,0))
title(ylab="Total", col.lab=rgb(0,0.5,0))
# Create a legend at (1, g_range[2]) that is slightly smaller 
# (cex) and uses the same line colors and points used by 
# the actual plots 
legend(1, rango[2], c("carros","camionetas"), cex=0.8, 
       col=c("blue","red"), pch=21:22, lty=1:2);
# --- Barras
# usando el mismo vector de carros
barplot(carros)
# Graph cars with specified labels for axes.  Use blue 
# borders and diagnal lines in bars.
barplot(carros, main="autos", xlab="Dias",  
        ylab="Total", names.arg=c("Lun","Mar","Mie","Jue","Vie"), 
        border="blue", density=c(10,20,30,40,50))
# arcoiris
# Graph autos with adjacent bars using rainbow colors
vehiculos <- cbind(carros, camionetas)
vehiculos
as.matrix(vehiculos)
barplot(as.matrix(vehiculos), main="Autos", ylab= "Total",
        beside=TRUE, col=rainbow(5))
# Place the legend at the top-left corner with no frame  
# using rainbow colors
legend("topleft", c("Lun","Mar","Mie","Jue","Vie"), cex=0.6, 
       bty="n", fill=rainbow(5));
# colores lineales
help("par")
# Expand right side of clipping rect to make room for the legend
par(xpd=T, mar=par()$mar+c(0,0,0,4))
# Graph autos (transposing the matrix) using heat colors,  
# put 10% of the space between each bar, and make labels  
# smaller with horizontal y-axis labels
help("t")
t(vehiculos)
barplot(t(vehiculos), main="Autos", ylab="Total", 
        col=heat.colors(3), space=0.1, cex.axis=0.8, las=1,
        names.arg=c("Lun","Mar","Mie","Jue","Vie"), cex=0.8) 
# Restore default clipping rect
par(mar=c(5, 4, 4, 2) + 0.1)
# --- Histogramas
# Create a histogram for suvs
hist(carros)
hist(autos, col="lightblue", ylim=c(0,10))
# --- Pie charts
# Create a pie chart for cars
pie(carros)
# Create a pie chart with defined heading and
# custom colors and labels
pie(carros, main="Carros", col=rainbow(length(carros)),
    labels=c("Lun","Mar","Mie","Jue","Vie"))
# en blanco y negro
# Define some colors ideal for black & white print
colors <- c("white","grey70","grey90","grey50","black")
# Calculate the percentage for each day, rounded to one 
# decimal place
car_labels <- round(carros/sum(carros) * 100, 1)
# Concatenate a '%' char after each value
car_labels <- paste(car_labels, "%", sep="")
# Create a pie chart with defined heading and custom colors
# and labels
pie(carros, main="Cars", col=colors, labels=car_labels,
    cex=0.8)
# Create a legend at the right   
legend(1.5, 0.5, c("Lun","Mar","Mie","Jue","Vie"), cex=0.8, 
       fill=colors)
# --- Dot charts
# Create a dotchart for autos
dotchart(t(vehiculos))
# Create a colored dotchart for autos with smaller labels
dotchart(t(vehiculos), color=c("red","blue"),
         main="Dotchart para Autos", cex=0.8)

