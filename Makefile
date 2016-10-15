# Declare phony target
.PHONY: all eda regression session tests report clean

# all	
all: eda regression report



# Download Advertising.csv
data : 
	cd data; curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> Advertising.csv

# Perform exploratory data analysis
eda : 
	cd code/scripts; Rscript -e 'source("eda-script.R")'

# Perform regression analyses
regression :
	cd code/scripts; Rscript -e 'source("regression-script.R")'

# Generate session information
session :
	cd code/scripts; Rscript -e 'source("session-info-script.R")'

# Execute unit tests on regression functions
tests: 
	Rscript -e 'source("test-that.R")'

# Generate report.pdf file
report:
	cd report; Rscript -e "library(rmarkdown); render('report.Rmd', 'pdf_document')"

# Clean output file
clean:
	cd report; rm -f report.pdf


