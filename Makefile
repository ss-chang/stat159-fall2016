

# Declare phony target
.PHONY: all

# all	
all: data eda






# Download Advertising.csv
data : 
	cd code/data; curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> Advertising.csv

# Perform exploratory data analysis
eda : 
	cd code/scripts; Rscript -e 'source("eda-script.R")'


