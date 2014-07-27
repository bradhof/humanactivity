Human Activity for Samsung devices - Tidy Data Set
===================================================
Coursera Project for Getting and Cleaning Data.  The goal is to prepare tidy data that can be used for later analysi
The final output (tidy_set2.txt) is a data set that contains the average values for the following measurements

Usage
=========
The run_analysis.R file assumes the following data sets from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones are loaded in the working directory
* test/x_test.txt - the main testing dataset for the features
* test/y_test.txt - the list of activities for each row in x_test.txt
* test/subjectTest - the list of subjects in the test set
* train/x_train.txt - the main traing dataset for the features
* train/y_train.txt - the list of activities for each row in x_train.txt
* train/subject_train.txt - the list of subjects in the training set
* activity_labels.txt - the activity labels (WALKING, etc)
* features.txt - the column headers for the features

Example
---------
source(run_analysis.R)

tidySet2 <- prepareData()



Output
-------
A tidy dataset containing the averages of each std() and mean() variable (grouped by activity and subject) for both the training and testing datasets
Two data sets are written to the working directory as CSV files



Feature Selection 
=================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a |Median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  "-XYZ" is used to denote 3-axial signals in the X, Y and Z directions.
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation


Variables
----------
|subject|         activity         |tBodyAcc-mean()-X |tBodyAcc-mean()-Y |tBodyAcc-mean()-Z|
|-----------------|----------------|----------------------|----------------------|----------------------|
| Min.   : 1.00   |Length:40       |   Min.   :0.2657|    Min.   :-0.02095|   Min.   :-0.1183|  
| 1st Qu.: 8.75   |Class :character|   1st Qu.:0.2725|   1st Qu.:-0.01860 |  1st Qu.:-0.1109|  
| Median :15.50   |Mode  :character|   Median :0.2748|    Median :-0.01800|   Median :-0.1087|  
| Mean   :15.65   |                |  Mean   :0.2746 |   Mean   :-0.01755 |  Mean   :-0.1089  |
| 3rd Qu.:22.25   |                |  3rd Qu.:0.2773 |   3rd Qu.:-0.01633 |  3rd Qu.:-0.1068  |
| Max.   :30.00   |                |  Max.   :0.2808 |   Max.   :-0.01299 |  Max.   :-0.1010  |
 
|tBodyAcc-std()-X|tBodyAcc-std()-Y|tBodyAcc-std()-Z|tGravityAcc-mean()-X|tGravityAcc-mean()-Y
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.9865   |Min.   :-0.9649   |Min.   :-0.9589   |Min.   :0.4753       |Min.   :-0.242392   
|1st Qu.:-0.6813   |1st Qu.:-0.5891   |1st Qu.:-0.7007   |1st Qu.:0.6418       |1st Qu.:-0.061560   
|Median :-0.6133   |Median :-0.5271   |Median :-0.6496   |Median :0.6824       |Median : 0.011704   
|Mean   :-0.6295   |Mean   :-0.5269   |Mean   :-0.6395   |Mean   :0.6864       |Mean   :-0.004978   
|3rd Qu.:-0.5646   |3rd Qu.:-0.4316   |3rd Qu.:-0.5472   |3rd Qu.:0.7102       |3rd Qu.: 0.049827   
|Max.   :-0.2353   |Max.   : 0.2375   |Max.   :-0.2935   |Max.   :0.9521       |Max.   : 0.209283   
 
|tGravityAcc-mean()-Z |tGravityAcc-std()-X |tGravityAcc-std()-Y |tGravityAcc-std()-Z |tBodyAccJerk-mean()-X|
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.16118     |Min.   :-0.9892     |Min.   :-0.9823     |Min.   :-0.9654     |Min.   :0.07017      |
|1st Qu.: 0.03785     |1st Qu.:-0.9735     |1st Qu.:-0.9607     |1st Qu.:-0.9491     |1st Qu.:0.07684      |
|Median : 0.07859     |Median :-0.9651     |Median :-0.9568     |Median :-0.9417     |Median :0.07850      |
|Mean   : 0.08239     |Mean   :-0.9658     |Mean   :-0.9539     |Mean   :-0.9383     |Mean   :0.07885      |
|3rd Qu.: 0.14045     |3rd Qu.:-0.9587     |3rd Qu.:-0.9507     |3rd Qu.:-0.9299     |3rd Qu.:0.08139      |
|Max.   : 0.31193     |Max.   :-0.9412     |Max.   :-0.8997     |Max.   :-0.8619     |Max.   :0.08945      |
 
|tBodyAccJerk-mean()-Y |tBodyAccJerk-mean()-Z |tBodyAccJerk-std()-X |tBodyAccJerk-std()-Y|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.003319     |Min.   :-0.020760     |Min.   :-0.9872      |Min.   :-0.98090    |
|1st Qu.: 0.004327     |1st Qu.:-0.007234     |1st Qu.:-0.7389      |1st Qu.:-0.70032    |
|Median : 0.007196     |Median :-0.004227     |Median :-0.6463      |Median :-0.62042    |
|Mean   : 0.007718     |Mean   :-0.005216     |Mean   :-0.6595      |Mean   :-0.62314    |
|3rd Qu.: 0.010540     |3rd Qu.:-0.001059     |3rd Qu.:-0.5760      |3rd Qu.:-0.53352    |
|Max.   : 0.020047     |Max.   : 0.003405     |Max.   :-0.3004      |Max.   :-0.02874    |
 
|tBodyAccJerk-std()-Z |tBodyGyro-Mean()-X  |tBodyGyro-Mean()-Y |tBodyGyro-Mean()-Z |tBodyGyro-std()-X|
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.9854      |Min.   :-0.070132   |Min.   :-0.10312   |Min.   :0.06067    |Min.   :-0.9805  |
|1st Qu.:-0.8203      |1st Qu.:-0.039770   |1st Qu.:-0.08306   |1st Qu.:0.08427    |1st Qu.:-0.7781  |
|Median :-0.7833      |Median :-0.026890   |Median :-0.07708   |Median :0.08717    |Median :-0.7283  |
|Mean   :-0.7822      |Mean   :-0.029906   |Mean   :-0.07600   |Mean   :0.08904    |Mean   :-0.7299  |
|3rd Qu.:-0.7213      |3rd Qu.:-0.019940   |3rd Qu.:-0.07008   |3rd Qu.:0.09732    |3rd Qu.:-0.6751  |
|Max.   :-0.5686      |Max.   : 0.007483   |Max.   :-0.04443   |Max.   :0.10909    |Max.   :-0.4343  |
 
|tBodyGyro-std()-Y |tBodyGyro-std()-Z |tBodyGyroJerk-Mean()-X |tBodyGyroJerk-Mean()-Y|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.9738   |Min.   :-0.9772   |Min.   :-0.11619       |Min.   :-0.04939  |    
|1st Qu.:-0.7862   |1st Qu.:-0.7263   |1st Qu.:-0.10382       |1st Qu.:-0.04440  |   
|Median :-0.7191   |Median :-0.6710   |Median :-0.09828       |Median :-0.04169  |  
|Mean   :-0.6996   |Mean   :-0.6717   |Mean   :-0.09749       |Mean   :-0.04209  |    
|3rd Qu.:-0.6240   |3rd Qu.:-0.6024   |3rd Qu.:-0.09260       |3rd Qu.:-0.03995  |    
|Max.   :-0.1514   |Max.   :-0.1060   |Max.   :-0.07311       |Max.   :-0.03593  |    
 
|tBodyGyroJerk-Mean()-Z |tBodyGyroJerk-std()-X |tBodyGyroJerk-std()-Y |tBodyGyroJerk-std()-Z|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.06648       |Min.   :-0.9857       |Min.   :-0.9871       |Min.   :-0.9890      |
|1st Qu.:-0.05765       |1st Qu.:-0.7995       |1st Qu.:-0.8687       |1st Qu.:-0.8090      |
|Median :-0.05447       |Median :-0.7348       |Median :-0.8126       |Median :-0.7525      |
|Mean   :-0.05486       |Mean   :-0.7437       |Mean   :-0.8019       |Mean   :-0.7505      |
|3rd Qu.:-0.05262       |3rd Qu.:-0.6786       |3rd Qu.:-0.7539       |3rd Qu.:-0.6932      |
|Max.   :-0.04507       |Max.   :-0.4229       |Max.   :-0.4092       |Max.   :-0.2179      |
 
|tBodyAccMag-Mean() |tBodyAccMag-std() |tGravityAccMag-Mean() |tGravityAccMag-std() |tBodyAccJerkMag-Mean()|
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.9733    |Min.   :-0.9674   |Min.   :-0.9733       |Min.   :-0.9674      |Min.   :-0.9854       |
|1st Qu.:-0.6231    |1st Qu.:-0.6658   |1st Qu.:-0.6231       |1st Qu.:-0.6658      |1st Qu.:-0.7292       |
|Median :-0.5482    |Median :-0.5978   |Median :-0.5482       |Median :-0.5978      |Median :-0.6627       |
|Mean   :-0.5705    |Mean   :-0.6111   |Mean   :-0.5705       |Mean   :-0.6111      |Mean   :-0.6685       |
|3rd Qu.:-0.4796    |3rd Qu.:-0.5522   |3rd Qu.:-0.4796       |3rd Qu.:-0.5522      |3rd Qu.:-0.5840       |
|Max.   :-0.0895    |Max.   :-0.2156   |Max.   :-0.0895       |Max.   :-0.2156      |Max.   :-0.2635       |
 
|tBodyAccJerkMag-std() |tBodyGyroMag-Mean() |tBodyGyroMag-std() |tBodyGyroJerkMag-Mean()|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.9826       |Min.   :-0.96529    |Min.   :-0.9661    |Min.   :-0.9883        |
|1st Qu.:-0.7131       |1st Qu.:-0.68534    |1st Qu.:-0.7506    |1st Qu.:-0.8287        |
|Median :-0.6253       |Median :-0.62534    |Median :-0.6827    |Median :-0.7868        |
|Mean   :-0.6481       |Mean   :-0.62209    |Mean   :-0.6776    |Mean   :-0.7758        |
|3rd Qu.:-0.5635       |3rd Qu.:-0.54077    |3rd Qu.:-0.5879    |3rd Qu.:-0.7003        |
|Max.   :-0.2301       |Max.   :-0.07373    |Max.   :-0.2349    |Max.   :-0.3699        |
 
|tBodyGyroJerkMag-std() |fBodyAcc-Mean()-X |fBodyAcc-Mean()-Y |fBodyAcc-Mean()-Z |fBodyAcc-std()-X |
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.9872        |Min.   :-0.9863   |Min.   :-0.9671   |Min.   :-0.9704   |Min.   :-0.9868  |
|1st Qu.:-0.8632        |1st Qu.:-0.7098   |1st Qu.:-0.6302   |1st Qu.:-0.7370   |1st Qu.:-0.6746  |
|Median :-0.8023        |Median :-0.6203   |Median :-0.5519   |Median :-0.6884   |Median :-0.6114  |
|Mean   :-0.7919        |Mean   :-0.6440   |Mean   :-0.5544   |Mean   :-0.6893   |Mean   :-0.6252  |
|3rd Qu.:-0.7340        |3rd Qu.:-0.5792   |3rd Qu.:-0.4536   |3rd Qu.:-0.6181   |3rd Qu.:-0.5569  |
|Max.   :-0.4310        |Max.   :-0.2775   |Max.   : 0.1291   |Max.   :-0.4372   |Max.   :-0.2211  
 
|fBodyAcc-std()-Y  |fBodyAcc-std()-Z  |fBodyAcc-MeanFreq()-X |fBodyAcc-MeanFreq()-Y |fBodyAcc-MeanFreq()-Z|
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.9653   |Min.   :-0.9556   |Min.   :-0.36996      |Min.   :-0.15861      |Min.   :-0.134093    |
|1st Qu.:-0.6142   |1st Qu.:-0.7121   |1st Qu.:-0.25813      |1st Qu.:-0.02812      |1st Qu.: 0.005818    |
|Median :-0.5538   |Median :-0.6560   |Median :-0.21423      |Median : 0.03380      |Median : 0.042961    |
|Mean   :-0.5440   |Mean   :-0.6432   |Mean   :-0.20765      |Mean   : 0.01578      |Mean   : 0.043345    |
|3rd Qu.:-0.4610   |3rd Qu.:-0.5544   |3rd Qu.:-0.17800      |3rd Qu.: 0.06790      |3rd Qu.: 0.088966    |
|Max.   : 0.2112   |Max.   :-0.2750   |Max.   : 0.03151      |Max.   : 0.13203      |Max.   : 0.294566    |
 
|fBodyAccJerk-Mean()-X |fBodyAccJerk-Mean()-Y |fBodyAccJerk-Mean()-Z |fBodyAccJerk-std()-X|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.9870       |Min.   :-0.98065      |Min.   :-0.9829       |Min.   :-0.9886     |
|1st Qu.:-0.7502       |1st Qu.:-0.71580      |1st Qu.:-0.8083       |1st Qu.:-0.7507     |
|Median :-0.6558       |Median :-0.63683      |Median :-0.7645       |Median :-0.6668     |
|Mean   :-0.6762       |Mean   :-0.64309      |Mean   :-0.7642       |Mean   :-0.6732     |
|3rd Qu.:-0.5976       |3rd Qu.:-0.56046      |3rd Qu.:-0.7011       |3rd Qu.:-0.5931     |
|Max.   :-0.3669       |Max.   :-0.09979      |Max.   :-0.5574       |Max.   :-0.2950     |
 
|fBodyAccJerk-std()-Y |fBodyAccJerk-std()-Z |fBodyAccJerk-MeanFreq()-X |fBodyAccJerk-MeanFreq()-Y|
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.98267     |Min.   :-0.9865      |Min.   :-0.31976          |Min.   :-0.404496        |
|1st Qu.:-0.70409     |1st Qu.:-0.8302      |1st Qu.:-0.09744          |1st Qu.:-0.270349        |
|Median :-0.63107     |Median :-0.8021      |Median :-0.04825          |Median :-0.214881        |
|Mean   :-0.62748     |Mean   :-0.7990      |Mean   :-0.03456          |Mean   :-0.210109        |
|3rd Qu.:-0.54141     |3rd Qu.:-0.7485      |3rd Qu.: 0.01833          |3rd Qu.:-0.159452        |
|Max.   :-0.01682     |Max.   :-0.5784      |Max.   : 0.23999          |Max.   : 0.004036        |
 
|fBodyAccJerk-MeanFreq()-Z |fBodyGyro-Mean()-X |fBodyGyro-Mean()-Y |fBodyGyro-Mean()-Z |fBodyGyro-std()-X|
|-----------------|----------------|----------------------|----------------------|----------------------|
|Min.   :-0.29029          |Min.   :-0.9766    |Min.   :-0.9769    |Min.   :-0.97801   |Min.   :-0.9819 | 
|1st Qu.:-0.16856          |1st Qu.:-0.7372    |1st Qu.:-0.7964    |1st Qu.:-0.72723   |1st Qu.:-0.7933  |
|Median :-0.10331          |Median :-0.6812    |Median :-0.7404    |Median :-0.65591   |Median :-0.7492  |
|Mean   :-0.11707          |Mean   :-0.6839    |Mean   :-0.7244    |Mean   :-0.66095   |Mean   :-0.7463  |
|3rd Qu.:-0.06781          |3rd Qu.:-0.6273    |3rd Qu.:-0.6385    |3rd Qu.:-0.59684   |3rd Qu.:-0.6923  |
|Max.   : 0.12536          |Max.   :-0.3104    |Max.   :-0.2196    |Max.   :-0.05388   |Max.   :-0.4753  |

|fBodyGyro-std()-Y |fBodyGyro-std()-Z |fBodyGyro-MeanFreq()-X |fBodyGyro-MeanFreq()-Y|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.9726   |Min.   :-0.9795   |Min.   :-0.34150       |Min.   :-0.39319      |
|1st Qu.:-0.7745   |1st Qu.:-0.7560   |1st Qu.:-0.14351       |1st Qu.:-0.24415      |
|Median :-0.7205   |Median :-0.7006   |Median :-0.11129       |Median :-0.18452      |
|Mean   :-0.6901   |Mean   :-0.7071   |Mean   :-0.10988       |Mean   :-0.18280      |
|3rd Qu.:-0.6072   |3rd Qu.:-0.6494   |3rd Qu.:-0.04712       |3rd Qu.:-0.09611      |
|Max.   :-0.1193   |Max.   :-0.2094   |Max.   : 0.02891       |Max.   : 0.06395      |
 
|fBodyGyro-MeanFreq()-Z |fBodyAccMag-Mean() |fBodyAccMag-std() |fBodyAccMag-MeanFreq()|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.21282       |Min.   :-0.9713    |Min.   :-0.9699   |Min.   :-0.12853 |     
|1st Qu.:-0.08650       |1st Qu.:-0.6670    |1st Qu.:-0.7242   |1st Qu.: 0.03496 |    
|Median :-0.04369       |Median :-0.5933    |Median :-0.6681   |Median : 0.08276 |   
|Mean   :-0.04996       |Mean   :-0.6072    |Mean   :-0.6756   |Mean   : 0.07854 |  
|3rd Qu.:-0.00968       |3rd Qu.:-0.5250    |3rd Qu.:-0.6267   |3rd Qu.: 0.12864 | 
|Max.   : 0.18796       |Max.   :-0.1853    |Max.   :-0.3596   |Max.   : 0.23534 |
 
|fBodyBodyAccJerkMag-Mean() |fBodyBodyAccJerkMag-std() |fBodyBodyAccJerkMag-MeanFreq()|
|-----------------|----------------|----------------------|
|Min.   :-0.9816            |Min.   :-0.9829           |Min.   :0.05844               |
|1st Qu.:-0.7085            |1st Qu.:-0.7209           |1st Qu.:0.13929               |
|Median :-0.6201            |Median :-0.6388           |Median :0.17407               |
|Mean   :-0.6414            |Mean   :-0.6598           |Mean   :0.17608               |
|3rd Qu.:-0.5534            |3rd Qu.:-0.5808           |3rd Qu.:0.20638               |
|Max.   :-0.2257            |Max.   :-0.2437           |Max.   :0.36818               |
 
|fBodyBodyGyroMag-Mean() |fBodyBodyGyroMag-std() |fBodyBodyGyroMag-MeanFreq() |fBodyBodyGyroJerkMag-Mean()|
|-----------------|----------------|----------------------|----------------------|
|Min.   :-0.9734         |Min.   :-0.9673        |Min.   :-0.32954            |Min.   :-0.9873            |
|1st Qu.:-0.7838         |1st Qu.:-0.7821        |1st Qu.:-0.12243            |1st Qu.:-0.8577            |
|Median :-0.7189         |Median :-0.7176        |Median :-0.02544            |Median :-0.8035            |
|Mean   :-0.7122         |Mean   :-0.7124        |Mean   :-0.05023            |Mean   :-0.7934            |
|3rd Qu.:-0.6299         |3rd Qu.:-0.6515        |3rd Qu.: 0.01348            |3rd Qu.:-0.7360            |
|Max.   :-0.2677         |Max.   :-0.3468        |Max.   : 0.15472            |Max.   :-0.4408            |

|fBodyBodyGyroJerkMag-std() |fBodyBodyGyroJerkMag-MeanFreq() |angle(tBodyAccMean,gravity)|
|-----------------------------|-------------------------------|---------------------------|
|Min.   :-0.9877            |Min.   :-0.12202                |Min.   :-0.028019          |
|1st Qu.:-0.8798            |1st Qu.: 0.07901                |1st Qu.:-0.001016          |
|Median :-0.8106            |Median : 0.12490                |Median : 0.005806          |
|Mean   :-0.8054            |Mean   : 0.12443                |Mean   : 0.006236          |
|3rd Qu.:-0.7593            |3rd Qu.: 0.16360                |3rd Qu.: 0.013689          |
|Max.   :-0.4604            |Max.   : 0.28443                |Max.   : 0.037608          |
 
|angle(tBodyAccJerkMean),gravityMean) |angle(tBodyGyroMean,gravityMean)|
|-----------------|----------------|----------------------------------------|
|Min.   :-0.044776                    |Min.   :-0.060297               |
|1st Qu.:-0.012863                    |1st Qu.:-0.014180               |
|Median : 0.001496                    |Median : 0.008418               |
|Mean   : 0.001479                    |Mean   : 0.013884               |
|3rd Qu.: 0.016379                    |3rd Qu.: 0.051760               |
|Max.   : 0.048694                    |Max.   : 0.118882               |
 
|angle(tBodyGyroJerkMean,gravityMean) |angle(X,gravityMean) |angle(Y,gravityMean) |angle(Z,gravityMean)|
|------------------------------------|----------------------|---------------------|--------------------------|
|Min.   :-0.06449                     |Min.   :-0.7784      |Min.   :-0.11928     |Min.   :-0.20900    |
|1st Qu.:-0.02437                     |1st Qu.:-0.5615      |1st Qu.: 0.01983     |1st Qu.:-0.09181    |
|Median :-0.01294                     |Median :-0.5093      |Median : 0.06291     |Median :-0.04404    |
|Mean   :-0.00822                     |Mean   :-0.5150      |Mean   : 0.06908     |Mean   :-0.04586    |
|3rd Qu.: 0.01146                     |3rd Qu.:-0.4519      |3rd Qu.: 0.11777     |3rd Qu.:-0.01218    |
|Max.   : 0.08477                     |Max.   :-0.2977      |Max.   : 0.25930     |Max.   : 0.12150   |