#step 1 

#install.packages('reticulate')
library(reticulate)

#step 2 
#install_minicoda()

envs <- conda_list()

#step 3 
# Here we need to create a Virtual envirnoment for Python to install use conda_create 
#conda_create('rpython', packages = c('python=3.9' , 'pandas' , 'numpy'))

#conda_create('rpy', packages = c('python=3.7' , 'pandas' , 'numpy' , "pyreadstat"))

use_condaenv( 'rpy' , required = TRUE)
#to see the list of conda 
conda_list()
reticulate::use_python(python = "C:\\Users\\tatav\\AppData\\Local\\r-miniconda\\envs\\rpy\\python.exe" , required = TRUE)
reticulate::py_config()
# To activate this environment, use
#
#     $ conda activate rpython
#
# To deactivate an active environment, use
#
#     $ conda deactivate

#[1] "C:\\Users\\tatav\\AppData\\Local\\r-miniconda\\envs\\rpython\\python.exe"
# conda_list()
#name                                                                   python
#1 r-miniconda                C:\\Users\\tatav\\AppData\\Local\\r-miniconda\\python.exe
#2     rpython C:\\Users\\tatav\\AppData\\Local\\r-miniconda\\envs\\rpython\\python.exe

#repl_python()

#py_install()

py_available()

py_numpy_available()

?py_available()


mydata = {'productcode':['AA','AA','AA','BB','BB','BB'],
  sales':[1010, 1025.2, 1404.2, 1251.7, 1160, 1604.8],
cost' : [1020, 1625.2, 1204, 1003.7, 1020, 1124]}
df = pd.DataFrame(mydata)