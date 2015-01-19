# Code Book

This is the data dictionary for `mean_activities.txt`

### Original data set study design

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.


Each row in `mean_activities.txt` aside from the header row is a series of activity, subject and measurement vectors.  The measurement vectors are:

- Averaged Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.  
- Averaged Triaxial Angular velocity from the gyroscope.  


### Data definitions

activity
```
  The activity label with possible values  
      WALKING  
      WALKING_UPSTAIRS  
      WALKING_DOWNSTAIRS  
      SITTING  
      STANDING  
      LAYING  
```
      
subject  
```
  An identifier of the subject who carried out the experiment
```
  
### Measurements  

The remaining values are averages of measurements in the mean or standard deviation which were originally normalized and bounded within [-1, 1] before the average was taken in this analysis.
  
```
tbodyaccmeanx  
tbodyaccmeany  
tbodyaccmeanz  
tbodyaccstdx  
tbodyaccstdy  
tbodyaccstdz  
tgravityaccmeanx  
tgravityaccmeany  
tgravityaccmeanz  
tgravityaccstdx  
tgravityaccstdy  
tgravityaccstdz  
tbodyaccjerkmeanx  
tbodyaccjerkmeany  
tbodyaccjerkmeanz  
tbodyaccjerkstdx  
tbodyaccjerkstdy  
tbodyaccjerkstdz  
tbodygyromeanx  
tbodygyromeany  
tbodygyromeanz  
tbodygyrostdx  
tbodygyrostdy  
tbodygyrostdz  
tbodygyrojerkmeanx  
tbodygyrojerkmeany  
tbodygyrojerkmeanz  
tbodygyrojerkstdx  
tbodygyrojerkstdy  
tbodygyrojerkstdz  
tbodyaccmagmean  
tbodyaccmagstd  
tgravityaccmagmean  
tgravityaccmagstd  
tbodyaccjerkmagmean  
tbodyaccjerkmagstd  
tbodygyromagmean  
tbodygyromagstd  
tbodygyrojerkmagmean  
tbodygyrojerkmagstd  
fbodyaccmeanx  
fbodyaccmeany  
fbodyaccmeanz  
fbodyaccstdx  
fbodyaccstdy  
fbodyaccstdz  
fbodyaccjerkmeanx  
fbodyaccjerkmeany  
fbodyaccjerkmeanz  
fbodyaccjerkstdx  
fbodyaccjerkstdy  
fbodyaccjerkstdz  
fbodygyromeanx  
fbodygyromeany  
fbodygyromeanz  
fbodygyrostdx  
fbodygyrostdy  
fbodygyrostdz  
fbodyaccmagmean  
fbodyaccmagstd  
fbodybodyaccjerkmagmean  
fbodybodyaccjerkmagstd  
fbodybodygyromagmean  
fbodybodygyromagstd  
fbodybodygyrojerkmagmean  
fbodybodygyrojerkmagstd
```