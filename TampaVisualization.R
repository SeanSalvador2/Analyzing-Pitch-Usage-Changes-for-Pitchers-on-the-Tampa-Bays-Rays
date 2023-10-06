#Data Visualization of Pitch Usage Changes 

rays_df <- read.csv(file.choose())

#Import libraries
library(ggplot2)
library(dplyr)
library(tidyr)
#Make list of columns of interest for graphing
usages = c('ff_pct', 'sl_pct', 'ch_pct', 'cu_pct','si_pct', 'fc_pct', 'fs_pct', 'kn_pct')
#Make a data frame for each player
Font_df = rays_df[1:2, usages]
Nuno_df = rays_df[3:4, usages]
Cedeno_df = rays_df[5:6, usages]
Romo_df = rays_df[7:8, usages]
Cishek_df = rays_df[9:10, usages]

#Visualize Pitch Trends for each pitcher
#Starting with Wilmer Font:

# Drop columns that are all 0s
Font_df <- Font_df %>%
  select(where(~!all(. == 0)))

# Add a column for the years
Font_df$Year <- c("Before Rays", "With Rays")

# Reshape data for easier plotting
Font_df_long <- Font_df %>%
  pivot_longer(cols = c(ff_pct, sl_pct, cu_pct, si_pct, fs_pct),
               names_to = "Pitch_Type",
               values_to = "Usage")
# Step 1: Create a ggplot object with the data and aesthetics
pltFont <- ggplot(data = Font_df_long, aes(x = Year, y = Usage, 
                                     color = Pitch_Type, group = Pitch_Type)) 
pltFont <- pltFont + labs(title = "Wilmer Font Pitch Usage Change With Rays",
       x = "Year",
       y = "Usage %")

# Step 2: Add the data layer
pltFont <- pltFont + geom_point()

# Step 3: Add the line layer
pltFont <- pltFont + geom_line()

# Step 4: Customize the plot
pltFont <- pltFont + scale_color_manual(values = c("red", "blue", "green", "purple", "orange")) 

# Step 5: Display the plot
print(pltFont)


#Next: Vidal Nuno, Nuno_df
# Drop columns that are all 0s
Nuno_df <- Nuno_df %>%
  select(where(~!all(. == 0)))

# Add a column for the years
Nuno_df$Year <- c("Before Rays", "With Rays")

# Reshape data for easier plotting
Nuno_df_long <- Nuno_df %>%
  pivot_longer(cols = c(ff_pct, sl_pct, ch_pct, cu_pct, si_pct),
               names_to = "Pitch_Type",
               values_to = "Usage")

# Step 1: Create a ggplot object with the data and aesthetics
pltNuno <- ggplot(data = Nuno_df_long, aes(x = Year, y = Usage, 
                                           color = Pitch_Type, group = Pitch_Type)) 
pltNuno <- pltNuno + labs(title = "Vidal Nuno Pitch Usage Change With Rays",
                          x = "Year",
                          y = "Usage %")

# Step 2: Add the data layer
pltNuno <- pltNuno + geom_point()

# Step 3: Add the line layer
pltNuno <- pltNuno + geom_line()

# Step 4: Customize the plot
pltNuno <- pltNuno + scale_color_manual(values = c("red", "blue", "green", "purple", "orange")) 

# Step 5: Display the plot
print(pltNuno)


#Next: Xavier Cedeno, Cedeno_df
# Drop columns that are all 0s
Cedeno_df <- Cedeno_df %>%
  select(where(~!all(. == 0)))

# Add a column for the years
Cedeno_df$Year <- c("Before Rays", "With Rays")

# Reshape data for easier plotting
Cedeno_df_long <- Cedeno_df %>%
  pivot_longer(cols = c(ff_pct, ch_pct, cu_pct, si_pct),
               names_to = "Pitch_Type",
               values_to = "Usage")

# Step 1: Create a ggplot object with the data and aesthetics
pltCedeno <- ggplot(data = Cedeno_df_long, aes(x = Year, y = Usage, 
                                           color = Pitch_Type, group = Pitch_Type)) 
pltCedeno <- pltCedeno + labs(title = "Xavier Cedeno Pitch Usage Change With Rays",
                          x = "Year",
                          y = "Usage %")

# Step 2: Add the data layer
pltCedeno <- pltCedeno + geom_point()

# Step 3: Add the line layer
pltCedeno <- pltCedeno + geom_line()

# Step 4: Customize the plot
pltCedeno <- pltCedeno + scale_color_manual(values = c("red", "blue", "green", "purple", "orange")) 

# Step 5: Display the plot
print(pltCedeno)


#Next: Sergio Romo, Romo_df
# Drop columns that are all 0s
Romo_df <- Romo_df %>%
  select(where(~!all(. == 0)))

# Add a column for the years
Romo_df$Year <- c("Before Rays", "With Rays")

# Reshape data for easier plotting
Romo_df_long <- Romo_df %>%
  pivot_longer(cols = c(ff_pct, sl_pct, ch_pct, si_pct),
               names_to = "Pitch_Type",
               values_to = "Usage")

# Step 1: Create a ggplot object with the data and aesthetics
pltRomo <- ggplot(data = Romo_df_long, aes(x = Year, y = Usage, 
                                           color = Pitch_Type, group = Pitch_Type)) 
pltRomo <- pltRomo + labs(title = "Sergio Romo Pitch Usage Change With Rays",
                          x = "Year",
                          y = "Usage %")

# Step 2: Add the data layer
pltRomo <- pltRomo + geom_point()

# Step 3: Add the line layer
pltRomo <- pltRomo + geom_line()

# Step 4: Customize the plot
pltRomo <- pltRomo + scale_color_manual(values = c("red", "blue", "green", "purple", "orange")) 

# Step 5: Display the plot
print(pltRomo)


#Last Plot: Steve Cishek, Cishek_df
# Drop columns that are all 0s
Cishek_df <- Cishek_df %>%
  select(where(~!all(. == 0)))

# Add a column for the years
Cishek_df$Year <- c("Before Rays", "With Rays")

# Reshape data for easier plotting
Cishek_df_long <- Cishek_df %>%
  pivot_longer(cols = c(ff_pct, sl_pct, ch_pct, si_pct),
               names_to = "Pitch_Type",
               values_to = "Usage")

# Step 1: Create a ggplot object with the data and aesthetics
pltCishek <- ggplot(data = Cishek_df_long, aes(x = Year, y = Usage, 
                                           color = Pitch_Type, group = Pitch_Type)) 
pltCishek <- pltCishek + labs(title = "Steve Cishek Pitch Usage Change With Rays",
                          x = "Year",
                          y = "Usage %")

# Step 2: Add the data layer
pltCishek <- pltCishek + geom_point()

# Step 3: Add the line layer
pltCishek <- pltCishek + geom_line()

# Step 4: Customize the plot
pltCishek <- pltCishek + scale_color_manual(values = c("red", "blue", "green", "purple", "orange")) 

# Step 5: Display the plot
print(pltCishek)

#Future Idea: Graph stuff plus vs pitch usages 