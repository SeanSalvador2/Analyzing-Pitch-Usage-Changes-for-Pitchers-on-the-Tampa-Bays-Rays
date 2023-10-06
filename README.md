# Analyzing-Pitch-Usage-Changes-for-Pitchers-on-the-Tampa-Bays-Rays
#### Introduction/Goal: 
Goal was to experience completing a baseball data pipeline that utilized SQL, Python and R in order to see how the Rays - often touted as the best pitching development team in the MLB - adjusted the pitch usages of their incoming pitchers. 

#### SQL Preprocessing/Selection:
- Summary: Goal was to use the lahman database to identify pitchers that were traded/changed teams from 2015-2019. Also included ERA column and created new FIP column to track performance with each team. 
  - *End year is 2019 because that’s the most recent update to the SQL lahman database 
  - *Start year is 2015 because that’s when statcast began
- Exported resulting table as csv to make Python pandas dataframe

#### Data Processing With Python
- Utilized a variety of pandas methods to validate dataframe and then adjust dataframe to only have players that were traded to the Rays. In order to find the Rays pitchers that saw the most improvement after being traded, created a new column that calculated the change in FIP (After joining Rays - before Rays). After sorting by FIP improvement, merged the dataframe with pitch data from statcast so each row also contained pitch usage information. Final result was a table containing 10 rows and 5 pitchers, 2 rows per pitcher. 1st row showing information on pitcher immediately before getting traded to Rays, and 2nd row showing information on pitcher for first stint while on the Rays.
- Exported resulting table as csv to make R dataframe
  
#### Data Visualization in R
- Before actually plotting data, had to use data manipulation packages and methods in order to make it possible to actually graph data in desired manner.
Used ggplot2 and its layering capabilities to create 5 different graphs for each pitcher, showing how the Rays altered how much they throw each of their pitches.

#### Final Thoughts
- Would like to scale up project to include every pitcher traded to the Rays, so there are enough data points to look for a pattern. 
  - In order to do so, there are lots of places for code optimization to make changes simple.
- As a potential way to understand why pitch usages go up or down, would like to try graphing stuff+ or other pitch metric against pitch usage (hypothesis being that the Rays have their pitchers throw their nastier stuff more). 
- On the other hand, also want to explore other cases like Steve Cishek where the Rays hardly/did not adjust pitch usage yet performance still drastically (-1 in FIP, -2 in ERA), current guess is that if they don’t adjust pitch usages then they likely adjusted the pitch itself (velocity, break, location → stuff). 
