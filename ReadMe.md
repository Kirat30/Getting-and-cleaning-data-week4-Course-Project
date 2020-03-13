ReadMe
================
Author:Kirt Preet Singh

## Project Overview

Johns Hopkins University Course 3: Getting and Cleaning Data Coursere
Project. - Project Objectives: Write an R script which performs the following operations:

  - Merges the training and the test sets to create one data set.
  - Extracts only the measurements on the mean and standard deviation for each measurement.
  - Uses descriptive activity names to name the activities in the data set
  - Appropriately labels the data set with descriptive variable names.
  - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
  
### Data Source

A full description is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

### Data For the project

‘README.txt’

  - ‘features\_info.txt’: Shows information about the variables used on
    the feature vector.

  - ‘features.txt’: List of all features.

  - ‘activity\_labels.txt’: Links the class labels with their activity
    name.

  - ‘train/X\_train.txt’: Training set.

  - ‘train/y\_train.txt’: Training labels.

  - ‘test/X\_test.txt’: Test set.

  - ‘test/y\_test.txt’: Test labels.

#### The following files are available for the train and test data. Their descriptions are equivalent.

  - ‘train/subject\_train.txt’: Each row identifies the subject who
    performed the activity for each window sample. Its range is from 1
    to 30.

  - ‘train/Inertial Signals/total\_acc\_x\_train.txt’: The acceleration
    signal from the smartphone accelerometer X axis in standard gravity
    units ‘g’. Every row shows a 128 element vector. The same
    description applies for the ‘total\_acc\_x\_train.txt’ and
    ‘total\_acc\_z\_train.txt’ files for the Y and Z axis.

  - ‘train/Inertial Signals/body\_acc\_x\_train.txt’: The body
    acceleration signal obtained by subtracting the gravity from the
    total acceleration.

  - ‘train/Inertial Signals/body\_gyro\_x\_train.txt’: The angular
    velocity vector measured by the gyroscope for each window sample.
    The units are radians/second.

## Notes:

  - Features are normalized and bounded within [-1,1].
  - Each feature vector is a row on the text file.

## License:

Use of this dataset in publications must be acknowledged by referencing
the following publication \[1\]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or
explicit can be addressed to the authors or their institutions for its
use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita.
November 2012.
