run_analysis <- function()
{       
        ## Please set your working directory to the folder "UCI HAR Dataset", which
        ## should contain the folders "test" and "train" with the expected files inside
        ## them before running this function. Otherwise it will not work.
        
        ## Loading the package "dplyr" that will be used below to evaluate the mean
        ## of a lot of columns in a single line of code.
        library(dplyr)
        
        ## Reading the columns names from the "features.txt" file. This vector will be used to
        ## name the columns further in this function, in accordance with the fourth requirement:
        ## "Appropriately labels the data set with descriptive variable names".
        columns_name <- read.table("features.txt")
        
        
        ## Reading the three files related to the test data: Subjects, test labels and test sets.
        sub_test_data <- read.table("test/subject_test.txt", header = FALSE, col.names="Subject")
        y_test_data <- read.table("test/y_test.txt", header = FALSE, col.names="Activity")
        x_test_data <- read.table("test/X_test.txt", header = FALSE, col.names=columns_name[,2])
        
        
        ## Binding the three files together (by columns)
        test_data <- cbind(sub_test_data, y_test_data, x_test_data)
        
        
        ## Reading the three files related to the train data: Subjects, train labels and train sets.
        sub_train_data <- read.table("train/subject_train.txt", header = FALSE, col.names="Subject")
        y_train_data <- read.table("train/y_train.txt", header = FALSE, col.names="Activity")
        x_train_data <- read.table("train/X_train.txt", header = FALSE, col.names=columns_name[,2])
        
        
        ## Binding the three files together (by columns)
        train_data <- cbind(sub_train_data, y_train_data, x_train_data)
        
        
        ## Binding the test and train data files by rows (they have the same columns). 
        data_files <- rbind(test_data, train_data)
        
        ## At this point this function delivers one data set ("data_files" variable)
        ## that matches the requested in the first requirement: "Merges the training
        ## and the test sets to create one data set".
        
        
        ## Replacing the numeric values from the activity actions (from 1 to 6) with the
        ## labels provided in the file "activity_labels.txt" in order to attend the third
        ## requirement: "Uses descriptive activity names to name the activities in the data set".
        data_files$Activity[data_files$Activity == 1] <- "WALKING"
        data_files$Activity[data_files$Activity == 2] <- "WALKING_UPSTAIRS"
        data_files$Activity[data_files$Activity == 3] <- "WALKING_DOWNSTAIRS"
        data_files$Activity[data_files$Activity == 4] <- "SITTING"
        data_files$Activity[data_files$Activity == 5] <- "STANDING"
        data_files$Activity[data_files$Activity == 6] <- "LAYING"
        
        
        ## Creating a data set to comply with the second requirement: "Extracts only 
        ## the measurements on the mean and standard deviation for each measurement".
        ## The subsetting is using the columns number instead of its names to simplify
        ## the code and make this line smaller. See the documentation for the description
        ## of each column.
        mean_std_data <- data_files[, c(1, 2, 3, 4, 5, 6, 7, 8, 43, 44, 45, 46, 47, 48, 83, 
                84, 85, 86, 87, 88, 123, 124, 125, 126, 127, 128, 163, 164, 165, 166, 167, 
                168, 203, 204, 216, 217, 229, 230, 242, 243, 255, 256, 268, 269, 270, 271, 
                272, 273, 347, 348, 349, 350, 351, 352, 426, 427, 428, 429, 430, 431, 505, 
                506, 518, 519, 531, 532, 544, 545)]
        
        
        ## Finally it is creating a new data set applying the mean to all 66 columns of data
        ## grouping by the two first columns (Activity and Subject) as required by the fifth
        ## requirement: "From the data set in step 4, creates a second, independent tidy 
        ## data set with the average of each variable for each activity and each subject."
        summary_data <- mean_std_data %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
        
        return(summary_data)
        
}

