This is the public repository that holds Shannon Chang's Homework 3 for Stat 159, taken 
Fall 2016 at UC Berkeley. This homework assignment deals with a reproduction of the 
multiple linear regression detailed Chapter 3 of Gareth James, Daniela Witten, Trevor 
Hastie, and Robert Tibshirani's 
[_An Introduction to Statistical Learning_](http://www-bcf.usc.edu/~gareth/ISL/ISLR%20First%20Printing.pdf). 
The analysis is carried out on the 
[`Advertising.csv`](http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv) dataset 
that is paired with the textbook, and contains data on product sales in over two 
hundred different markets along with the advertising budgets for the product in 
each market by different mediums: `TV`, `Radio`, and `Newspaper`.  
  
The file structure for this repository is as follows:  
  
    .gitignore
    README.md
    LICENSE
    Makefile
    session-info.txt                     # produced by session-info-script.R
    code/
      README.md
      test-that.R
      functions/
        regression-functions.R
      scripts/
        eda-script.R
        regression-script.R
        session-info-script.R
      tests/
        test-regression.R
    data/
      README.md
      Advertising.csv
      eda-output.txt                      # produced by eda-script.R
      correlation-matrix.RData            # produced by eda-script.R
      regression.RData                    # produced by regression-script.R
    images/
        histogram-sales.png                # produced by eda-script.R
        histogram-tv.png                   # produced by eda-script.R
        histogram-radio.png                # produced by eda-script.R
        histogram-newspaper.png            # produced by eda-script.R
        scatterplot-matrix.png             # produced by eda-script.R
        scatterplot-tv-sales.png           # produced by regression-script.R
        scatterplot-radio-sales.png        # produced by regression-script.R
        scatterplot-newspaper-sales.png    # produced by regression-script.R
        residual-plot.png                  # produced by regression-script.R
        scale-location-plot.png            # produced by regression-script.R
        normal-qq-plot.png                 # produced by regression-script.R
    report/
        report.Rmd
        report.pdf

  
To recreate this analysis and its accompanying report in a local directory, clone this 
repository and cd into the stat159-fall2016 directory from bash. Then type 
`git branch hw03` to switch from the `master` branch to `hw03`. Then, type `make` to 
create the output report.pdf file. 
  
<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" /></a><br />This media content in this repository is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/">Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License</a>.Attribution-NonCommercial-ShareAlike 4.0 International License</a>.  
The code content is licensed under an MIT License detailed in the LICENSE file. 

The author, Shannon Chang, may be contacted at sschang@berkeley.edu.