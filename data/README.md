  The preprocessed data consists of two main components. The first component involves extracting cloud features using CMV to train the machine learning (ML) model. The second component involves cutting and stacking sequences of cloud images for training 3D-CNN and CNN-LSTM models.

 1. Cloud index estimation 
     - use`CI-Candidate_Estimate.m`and`CI-Subpixel_Estimate.m` to extract CMV (code executes simulation in `extract_cmv_HS.slx`or `extract_cmv_block_matching.slx` and Farneback method use `extract_cmv_FRB.ipynb` in Python) from cloud image in *example_pics*, the result table save in *ci_estimate* 
     - transform cloud table by using `preprocess_cloud_df.ipynb`
     - merge cloud information, clear sky irradiance and measurement table (that use `concat_measuement_data.ipynb` to concat 2 years data file) by part 1) in `merge_all_data.ipynb`
	
	all estimated cloud index (from cloud mask pics) in the project report is uploaded in [estimated cloud index (Cloud mask)](https://drive.google.com/drive/folders/1h2NqPEx6eGDgDgXsG7e97gPURHRlS1LI?usp=sharing), and estimated cloud index (from R channel pics) only HS method is uploaded in [estimated cloud index (R channel)](https://drive.google.com/drive/folders/18iWSSjoRp2EsbZOofE_m7pR7KHpEvcwc?usp=drive_link). 
* Note that m-files will export the csv of estimated cloud index of all 56 ISL site stations without datetime index since an array in MATLAB cannot contain both 'string' and 'numeric value' at the same time. User can recover it from the filenames of "fds.Files" in MATLAB workspace.
2. Cut and Stack sequence image
    - use `Cut_DefineLabel_CNN.ipynb` to cut and stack cloud image then merge filename ([label_df_r.csv](https://drive.google.com/file/d/1-e95bByMYcPNSY-UZrBLO2wsSjl-TNoI/view?usp=sharing) generated from the process) with clear sky irradiance and measurement data by part 2) in `merge_all_data.ipynb` to train CNN models.
